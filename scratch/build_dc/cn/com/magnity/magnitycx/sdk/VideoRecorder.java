package cn.com.magnity.magnitycx.sdk;

import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Build;
import android.util.Log;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/**
 * Pure Java Android H.264 Video Recorder using MediaCodec and MediaMuxer.
 * Compatible with 64-bit Android (API 21+).
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
            // Ensure even dimensions
            mWidth = (width / 2) * 2;
            mHeight = (height / 2) * 2;
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

            mEncoder = MediaCodec.createEncoderByType(MIME_TYPE);
            mColorFormat = chooseColorFormat(mEncoder);

            MediaFormat format = MediaFormat.createVideoFormat(MIME_TYPE, mWidth, mHeight);
            format.setInteger(MediaFormat.KEY_COLOR_FORMAT, mColorFormat);
            format.setInteger(MediaFormat.KEY_BIT_RATE, bitRate);
            format.setInteger(MediaFormat.KEY_FRAME_RATE, mFps);
            format.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, 1);
            try {
                format.setInteger("bitrate-mode", 1); // VBR
            } catch (Throwable ignored) {}

            mEncoder.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
            mEncoder.start();

            mMuxer = new MediaMuxer(outputPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
            mTrackIndex = -1;
            mMuxerStarted = false;

            mYuvSize = mWidth * mHeight * 3 / 2;
            mPixelBuffer = new int[mWidth * mHeight];
            mYuvBuffer = new byte[mYuvSize];
            mFrameIndex = 0;

            mIsRecording = true;
            Log.i(TAG, "Recording started successfully: " + outputPath + " (" + mWidth + "x" + mHeight + "@" + mFps + "fps, bitrate=" + bitRate + ", colorFormat=" + mColorFormat + ")");
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "Failed to start recording: " + t.getMessage(), t);
            cleanup();
            return false;
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
        Log.i(TAG, "Recording stopped and saved successfully.");
    }

    private void drainEncoder(boolean endOfStream) {
        if (mEncoder == null) return;
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();

        while (true) {
            int encoderStatus = mEncoder.dequeueOutputBuffer(bufferInfo, endOfStream ? 20000 : 0);
            if (encoderStatus == MediaCodec.INFO_TRY_AGAIN_LATER) {
                if (!endOfStream) {
                    break; // No more output ready right now
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

    private static int chooseColorFormat(MediaCodec codec) {
        if (codec != null) {
            try {
                MediaCodecInfo codecInfo = codec.getCodecInfo();
                MediaCodecInfo.CodecCapabilities capabilities = codecInfo.getCapabilitiesForType(MIME_TYPE);
                for (int colorFormat : capabilities.colorFormats) {
                    if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar) {
                        return colorFormat; // NV12
                    }
                }
                for (int colorFormat : capabilities.colorFormats) {
                    if (colorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Planar) {
                        return colorFormat; // I420
                    }
                }
            } catch (Throwable t) {
                Log.w(TAG, "chooseColorFormat error: " + t.getMessage());
            }
        }
        return MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar; // default NV12
    }

    private static MediaCodecInfo selectCodec(String mimeType) {
        int numCodecs = MediaCodecList.getCodecCount();
        for (int i = 0; i < numCodecs; i++) {
            MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i);
            if (!codecInfo.isEncoder()) continue;
            String[] types = codecInfo.getSupportedTypes();
            for (String type : types) {
                if (type.equalsIgnoreCase(mimeType)) {
                    return codecInfo;
                }
            }
        }
        return null;
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
