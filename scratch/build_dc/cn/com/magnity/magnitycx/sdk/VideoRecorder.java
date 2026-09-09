package cn.com.magnity.magnitycx.sdk;

import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import cn.com.magnity.magnitycx.MagApplication;

/**
 * Pure Java Android H.264 Video Recorder using MediaCodec and MediaMuxer.
 * Robust implementation compatible with Android 14+ / MediaTek Dimensity 9300+.
 * Features automatic software encoder fallback and visible UI Toast feedback.
 */
public class VideoRecorder {
    private static final String TAG = "VideoRecorder";
    private static final String MIME_TYPE = MediaFormat.MIMETYPE_VIDEO_AVC; // H.264

    private static volatile VideoRecorder sInstance;

    private MediaCodec mEncoder;
    private MediaMuxer mMuxer;
    private int mTrackIndex = -1;
    private boolean mMuxerStarted = false;
    private volatile boolean mIsRecording = false;

    private String mActualOutputPath;
    private int mWidth;
    private int mHeight;
    private int mFps;
    private int mColorFormat;
    private int mYuvSize;

    private int[] mPixelBuffer;
    private byte[] mYuvBuffer;
    private long mFrameIndex = 0;

    public static VideoRecorder getInstance() {
        if (sInstance == null) {
            synchronized (VideoRecorder.class) {
                if (sInstance == null) {
                    sInstance = new VideoRecorder();
                }
            }
        }
        return sInstance;
    }

    private VideoRecorder() {}

    public synchronized boolean isRecording() {
        return mIsRecording;
    }

    public synchronized boolean start(String outputPath, int width, int height, int fps, int bitrateKbps) {
        if (mIsRecording) {
            stop();
        }

        try {
            // Ensure even dimensions (minimum 16-pixel aligned)
            mWidth = (width / 16) * 16;
            mHeight = (height / 16) * 16;
            if (mWidth <= 0) mWidth = 480;
            if (mHeight <= 0) mHeight = 640;

            mFps = (fps >= 5 && fps <= 60) ? fps : 20;
            int bitRate = (bitrateKbps >= 200) ? bitrateKbps * 1000 : 2000000;

            File outputFile = new File(outputPath);
            File parentDir = outputFile.getParentFile();
            if (parentDir != null && !parentDir.exists()) {
                parentDir.mkdirs();
            }
            if (outputFile.exists()) {
                outputFile.delete();
            }

            // 1. Initialize MediaMuxer with path fallback
            mActualOutputPath = outputPath;
            try {
                mMuxer = new MediaMuxer(mActualOutputPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
            } catch (Throwable muxEx) {
                Log.w(TAG, "Failed to create MediaMuxer at " + outputPath + ", trying app external files dir", muxEx);
                File fallbackDir = null;
                try {
                    MagApplication app = MagApplication.getInstance();
                    if (app != null) {
                        fallbackDir = app.getExternalFilesDir("media");
                        if (fallbackDir == null) fallbackDir = app.getFilesDir();
                    }
                } catch (Throwable ignored) {}

                if (fallbackDir != null) {
                    if (!fallbackDir.exists()) fallbackDir.mkdirs();
                    File fbFile = new File(fallbackDir, outputFile.getName());
                    if (fbFile.exists()) fbFile.delete();
                    mActualOutputPath = fbFile.getAbsolutePath();
                    mMuxer = new MediaMuxer(mActualOutputPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
                } else {
                    throw muxEx;
                }
            }

            // 2. Initialize Encoder with fallback
            initEncoderWithFallback(mWidth, mHeight, mFps, bitRate);

            mTrackIndex = -1;
            mMuxerStarted = false;

            mYuvSize = mWidth * mHeight * 3 / 2;
            mPixelBuffer = new int[mWidth * mHeight];
            mYuvBuffer = new byte[mYuvSize];
            mFrameIndex = 0;

            mIsRecording = true;
            Log.i(TAG, "Recording started successfully: " + mActualOutputPath + " (" + mWidth + "x" + mHeight + "@" + mFps + "fps, bitrate=" + bitRate + ", colorFormat=" + mColorFormat + ")");
            showToast("開始錄影...");
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "Failed to start recording: " + t.getMessage(), t);
            showToast("錄影啟動失敗: " + t.getClass().getSimpleName() + " (" + t.getMessage() + ")");
            cleanup();
            return false;
        }
    }

    private void initEncoderWithFallback(int width, int height, int fps, int bitRate) throws Exception {
        List<String> candidateNames = new ArrayList<String>();

        // Query MediaCodecList for AVC encoders that support ByteBuffer YUV input
        try {
            int numCodecs = MediaCodecList.getCodecCount();
            for (int i = 0; i < numCodecs; i++) {
                MediaCodecInfo info = MediaCodecList.getCodecInfoAt(i);
                if (!info.isEncoder()) continue;
                for (String type : info.getSupportedTypes()) {
                    if (type.equalsIgnoreCase(MIME_TYPE)) {
                        try {
                            MediaCodecInfo.CodecCapabilities caps = info.getCapabilitiesForType(type);
                            for (int cf : caps.colorFormats) {
                                if (cf == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar ||
                                    cf == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar) {
                                    String name = info.getName();
                                    if (!candidateNames.contains(name)) {
                                        candidateNames.add(name);
                                    }
                                    break;
                                }
                            }
                        } catch (Throwable ignored) {}
                    }
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "Error querying MediaCodecList: " + t.getMessage());
        }

        // Always ensure standard Google software encoders are available in candidate list
        if (!candidateNames.contains("c2.android.avc.encoder")) {
            candidateNames.add("c2.android.avc.encoder");
        }
        if (!candidateNames.contains("OMX.google.h264.encoder")) {
            candidateNames.add("OMX.google.h264.encoder");
        }
        candidateNames.add("DEFAULT_AVC");

        Throwable lastException = null;
        for (String candidate : candidateNames) {
            MediaCodec codec = null;
            try {
                if ("DEFAULT_AVC".equals(candidate)) {
                    codec = MediaCodec.createEncoderByType(MIME_TYPE);
                } else {
                    codec = MediaCodec.createByCodecName(candidate);
                }

                int chosenColorFormat = MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar;
                boolean hasPlanar = false;
                boolean hasSemiPlanar = false;
                try {
                    MediaCodecInfo.CodecCapabilities caps = codec.getCodecInfo().getCapabilitiesForType(MIME_TYPE);
                    for (int cf : caps.colorFormats) {
                        if (cf == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar) {
                            hasSemiPlanar = true;
                        } else if (cf == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar) {
                            hasPlanar = true;
                        }
                    }
                } catch (Throwable ignored) {}

                if (hasSemiPlanar) {
                    chosenColorFormat = MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar;
                } else if (hasPlanar) {
                    chosenColorFormat = MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar;
                }

                MediaFormat format = MediaFormat.createVideoFormat(MIME_TYPE, width, height);
                format.setInteger(MediaFormat.KEY_COLOR_FORMAT, chosenColorFormat);
                format.setInteger(MediaFormat.KEY_BIT_RATE, bitRate);
                format.setInteger(MediaFormat.KEY_FRAME_RATE, fps);
                format.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, 1);
                try {
                    format.setInteger("bitrate-mode", 1); // VBR
                } catch (Throwable ignored) {}

                codec.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
                codec.start();

                mEncoder = codec;
                mColorFormat = chosenColorFormat;
                Log.i(TAG, "Successfully initialized encoder: " + candidate + " with colorFormat=" + mColorFormat);
                return;
            } catch (Throwable t) {
                Log.w(TAG, "Failed candidate encoder " + candidate + ": " + t.getMessage());
                lastException = t;
                if (codec != null) {
                    try { codec.stop(); } catch (Throwable ignored) {}
                    try { codec.release(); } catch (Throwable ignored) {}
                    codec = null;
                }
            }
        }

        if (lastException != null) {
            throw new RuntimeException("All AVC encoders failed: " + lastException.getMessage(), lastException);
        } else {
            throw new RuntimeException("No suitable AVC encoder found");
        }
    }

    public synchronized boolean recordFrame(Bitmap bmp) {
        if (!mIsRecording || mEncoder == null || bmp == null || bmp.isRecycled()) {
            return false;
        }

        try {
            // Extract pixels
            if (bmp.getWidth() == mWidth && bmp.getHeight() == mHeight) {
                bmp.getPixels(mPixelBuffer, 0, mWidth, 0, 0, mWidth, mHeight);
            } else {
                Bitmap scaled = Bitmap.createScaledBitmap(bmp, mWidth, mHeight, false);
                scaled.getPixels(mPixelBuffer, 0, mWidth, 0, 0, mWidth, mHeight);
                if (scaled != bmp) {
                    scaled.recycle();
                }
            }

            // Convert ARGB to YUV
            if (mColorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar) {
                encodeYUV420P(mYuvBuffer, mPixelBuffer, mWidth, mHeight);
            } else {
                encodeYUV420SP(mYuvBuffer, mPixelBuffer, mWidth, mHeight);
            }

            // Enqueue input buffer to encoder
            int inputBufferIndex = mEncoder.dequeueInputBuffer(10000); // 10ms timeout
            if (inputBufferIndex >= 0) {
                ByteBuffer inputBuffer;
                if (Build.VERSION.SDK_INT >= 21) {
                    inputBuffer = mEncoder.getInputBuffer(inputBufferIndex);
                } else {
                    inputBuffer = mEncoder.getInputBuffers()[inputBufferIndex];
                }
                if (inputBuffer != null) {
                    inputBuffer.clear();
                    inputBuffer.put(mYuvBuffer, 0, mYuvSize);
                    long ptsUs = (long) (mFrameIndex * (1000000.0 / mFps));
                    mEncoder.queueInputBuffer(inputBufferIndex, 0, mYuvSize, ptsUs, 0);
                    mFrameIndex++;
                }
            }

            // Drain output
            drainEncoder(false);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "Error encoding frame: " + t.getMessage(), t);
            return false;
        }
    }

    public synchronized void stop() {
        if (!mIsRecording) {
            return;
        }
        Log.i(TAG, "Stopping recording (total frames: " + mFrameIndex + ")...");
        mIsRecording = false;

        try {
            if (mEncoder != null) {
                // Signal End of Stream
                int inputBufferIndex = mEncoder.dequeueInputBuffer(20000);
                if (inputBufferIndex >= 0) {
                    long ptsUs = (long) (mFrameIndex * (1000000.0 / mFps));
                    mEncoder.queueInputBuffer(inputBufferIndex, 0, 0, ptsUs, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                }
                // Drain until EOS
                drainEncoder(true);
            }
        } catch (Throwable t) {
            Log.e(TAG, "Error while signaling EOS: " + t.getMessage(), t);
        } finally {
            cleanup();
        }

        if (mActualOutputPath != null) {
            File savedFile = new File(mActualOutputPath);
            if (savedFile.exists() && savedFile.length() > 0) {
                showToast("錄影已儲存: " + savedFile.getName());
                try {
                    MagApplication app = MagApplication.getInstance();
                    if (app != null) {
                        GlobalFunc.notifyMediaSync(app, savedFile);
                    }
                } catch (Throwable ignored) {}
            }
        }
        Log.i(TAG, "Recording stopped and saved successfully.");
    }

    private void drainEncoder(boolean endOfStream) {
        if (mEncoder == null) return;
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();

        while (true) {
            int encoderStatus = mEncoder.dequeueOutputBuffer(bufferInfo, endOfStream ? 20000 : 0);
            if (encoderStatus == MediaCodec.INFO_TRY_AGAIN_LATER) {
                if (!endOfStream) {
                    break;
                }
                break;
            } else if (encoderStatus == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                if (mMuxerStarted) {
                    Log.w(TAG, "Output format changed after muxer started");
                } else {
                    MediaFormat newFormat = mEncoder.getOutputFormat();
                    mTrackIndex = mMuxer.addTrack(newFormat);
                    mMuxer.start();
                    mMuxerStarted = true;
                    Log.i(TAG, "MediaMuxer started with track " + mTrackIndex);
                }
            } else if (encoderStatus >= 0) {
                ByteBuffer encodedData;
                if (Build.VERSION.SDK_INT >= 21) {
                    encodedData = mEncoder.getOutputBuffer(encoderStatus);
                } else {
                    encodedData = mEncoder.getOutputBuffers()[encoderStatus];
                }

                if (encodedData != null) {
                    if ((bufferInfo.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0) {
                        bufferInfo.size = 0;
                    }

                    if (bufferInfo.size != 0 && mMuxerStarted) {
                        encodedData.position(bufferInfo.offset);
                        encodedData.limit(bufferInfo.offset + bufferInfo.size);
                        mMuxer.writeSampleData(mTrackIndex, encodedData, bufferInfo);
                    }

                    mEncoder.releaseOutputBuffer(encoderStatus, false);

                    if ((bufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                        break;
                    }
                }
            }
        }
    }

    private void cleanup() {
        if (mEncoder != null) {
            try {
                mEncoder.stop();
            } catch (Throwable ignored) {}
            try {
                mEncoder.release();
            } catch (Throwable ignored) {}
            mEncoder = null;
        }

        if (mMuxer != null) {
            try {
                if (mMuxerStarted) {
                    mMuxer.stop();
                }
            } catch (Throwable ignored) {}
            try {
                mMuxer.release();
            } catch (Throwable ignored) {}
            mMuxer = null;
            mMuxerStarted = false;
        }

        mPixelBuffer = null;
        mYuvBuffer = null;
    }

    private static void showToast(final String message) {
        try {
            Handler mainHandler = new Handler(Looper.getMainLooper());
            mainHandler.post(new Runnable() {
                @Override
                public void run() {
                    try {
                        MagApplication app = MagApplication.getInstance();
                        if (app != null) {
                            Toast.makeText(app, message, Toast.LENGTH_LONG).show();
                        }
                    } catch (Throwable ignored) {}
                }
            });
        } catch (Throwable ignored) {}
    }

    /**
     * Convert ARGB_8888 to NV12 (YUV420SemiPlanar).
     */
    public static void encodeYUV420SP(byte[] yuv420sp, int[] argb, int width, int height) {
        final int frameSize = width * height;
        int yIndex = 0;
        int uvIndex = frameSize;

        int r, g, b, y, u, v;
        int index = 0;
        for (int j = 0; j < height; j++) {
            for (int i = 0; i < width; i++) {
                int c = argb[index++];
                r = (c >> 16) & 0xff;
                g = (c >> 8) & 0xff;
                b = c & 0xff;

                y = ((66 * r + 129 * g + 25 * b + 128) >> 8) + 16;
                yuv420sp[yIndex++] = (byte) ((y < 0) ? 0 : ((y > 255) ? 255 : y));

                if (j % 2 == 0 && i % 2 == 0) {
                    u = ((-38 * r - 74 * g + 112 * b + 128) >> 8) + 128;
                    v = ((112 * r - 94 * g - 18 * b + 128) >> 8) + 128;

                    yuv420sp[uvIndex++] = (byte) ((u < 0) ? 0 : ((u > 255) ? 255 : u));
                    yuv420sp[uvIndex++] = (byte) ((v < 0) ? 0 : ((v > 255) ? 255 : v));
                }
            }
        }
    }

    /**
     * Convert ARGB_8888 to I420 (YUV420Planar).
     */
    public static void encodeYUV420P(byte[] yuv420p, int[] argb, int width, int height) {
        final int frameSize = width * height;
        int yIndex = 0;
        int uIndex = frameSize;
        int vIndex = frameSize + frameSize / 4;

        int r, g, b, y, u, v;
        int index = 0;
        for (int j = 0; j < height; j++) {
            for (int i = 0; i < width; i++) {
                int c = argb[index++];
                r = (c >> 16) & 0xff;
                g = (c >> 8) & 0xff;
                b = c & 0xff;

                y = ((66 * r + 129 * g + 25 * b + 128) >> 8) + 16;
                yuv420p[yIndex++] = (byte) ((y < 0) ? 0 : ((y > 255) ? 255 : y));

                if (j % 2 == 0 && i % 2 == 0) {
                    u = ((-38 * r - 74 * g + 112 * b + 128) >> 8) + 128;
                    v = ((112 * r - 94 * g - 18 * b + 128) >> 8) + 128;

                    yuv420p[uIndex++] = (byte) ((u < 0) ? 0 : ((u > 255) ? 255 : u));
                    yuv420p[vIndex++] = (byte) ((v < 0) ? 0 : ((v > 255) ? 255 : v));
                }
            }
        }
    }
}
