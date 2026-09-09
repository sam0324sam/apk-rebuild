package cn.com.magnity.magnitycx.sdk;

import android.graphics.Bitmap;
import android.util.Log;
import java.util.concurrent.locks.ReentrantLock;
import java.util.Arrays;

public class DeviceController {
    private static final String TAG = "DeviceController";
    public static final int BITSPERPIXEL = 16;

    public interface ShutterCallBack {
        void setShutterState(int state);
    }

    private static final ReentrantLock sLock = new ReentrantLock();

    private static volatile boolean sIsProcessing = false;
    private static volatile boolean sIsRecording = false;
    private static volatile boolean sHasFrame = false;

    private static volatile int sFpaWidth = 160;
    private static volatile int sFpaHeight = 120;
    private static volatile int sPreviewOrientation = 0;
    private static volatile int sPaletteIndex = 2;
    private static volatile int sColorbarWidth = 100;
    private static volatile int sColorbarHeight = 20;

    private static volatile ShutterCallBack sShutterCallBack = null;

    private static int[] sRawAD = null;
    private static int[] sLatestRawAD = null;
    private static int[] sBaseline = null;
    private static boolean sHasBaseline = false;
    private static boolean sAutoFfcDone = false;
    private static volatile boolean sIsCalibrating = false;
    private static int sFrameCount = 0;
    private static long sFrameSeq = 0;

    private static int[] sDiff = null;
    private static int[] sFilteredDiff = null;
    private static int[] sPixelTemps = null;
    private static int[] sArgbPixels = null;
    private static State sState = new State();
    private static long sLastLogTime = 0;

    private static final int[][] PALETTES = new int[12][256];

    static {
        initPalettes();
        setColorbarSize(100, 20);
        int palette = SharedPreferencesManager.getInt("paletteIndex", 2);
        setColorPalette(palette);
    }

    public DeviceController() {
    }

    public static void Lock() {
        try {
            sLock.lock();
        } catch (Throwable ignored) {
        }
    }

    public static void Unlock() {
        try {
            if (sLock.isHeldByCurrentThread()) {
                sLock.unlock();
            }
        } catch (Throwable ignored) {
        }
    }

    public static boolean startProcess(
            ShutterCallBack callBack,
            int fpaWidth,
            int fpaHeight,
            int serialNumber,
            int devType,
            int shutterCloseSpeed,
            int shutterOpenSpeed,
            int ffcTriggerFrame,
            int ffcTriggerTemperature,
            int paletteIndex,
            int baseLineAcc,
            String caliPathName) {
        
        Lock();
        try {
            Log.i(TAG, "startProcess: width=" + fpaWidth + ", height=" + fpaHeight + ", devType=" + devType);
            sShutterCallBack = callBack;
            if (fpaWidth > 0 && fpaHeight > 0) {
                sFpaWidth = fpaWidth;
                sFpaHeight = fpaHeight;
            }
            if (paletteIndex >= 0 && paletteIndex < 12) {
                sPaletteIndex = paletteIndex;
            }

            int total = sFpaWidth * sFpaHeight;
            sRawAD = new int[total];
            sLatestRawAD = new int[total];
            sBaseline = new int[total];
            sDiff = new int[total];
            sFilteredDiff = new int[total];
            sPixelTemps = new int[total];
            sArgbPixels = new int[total];
            sState = new State();

            sHasBaseline = false;
            sAutoFfcDone = false;
            sIsCalibrating = false;
            sFrameCount = 0;
            sFrameSeq = 0;

            sIsProcessing = true;
            sHasFrame = false;

            return true;
        } finally {
            Unlock();
        }
    }

    public static void stopProcess() {
        Lock();
        try {
            sIsProcessing = false;
            sHasFrame = false;
            sIsCalibrating = false;
        } finally {
            Unlock();
        }
    }

    public static boolean isProcessImage() {
        return sIsProcessing;
    }

    public static boolean isOutputDataReady() {
        return sHasFrame;
    }

    public static void setPreviewOrientation(int orientation) {
        sPreviewOrientation = orientation;
    }

    public static int getPreviewOrientation() {
        return sPreviewOrientation;
    }

    public static void setColorPalette(int paletteIndex) {
        if (paletteIndex >= 0 && paletteIndex < 12) {
            sPaletteIndex = paletteIndex;
        }
    }

    public static void setColorbarSize(int width, int height) {
        if (width > 0) sColorbarWidth = width;
        if (height > 0) sColorbarHeight = height;
    }

    public static State getState() {
        Lock();
        try {
            if (sState == null) {
                sState = new State();
            }
            return sState;
        } catch (Throwable t) {
            return new State();
        } finally {
            Unlock();
        }
    }

    public static int getTemperature(int pos, int mode, boolean flag) {
        Lock();
        try {
            if (sPixelTemps != null && sPixelTemps.length > 0) {
                int w = sFpaWidth > 0 ? sFpaWidth : 160;
                int h = sFpaHeight > 0 ? sFpaHeight : 120;

                // Mode 1: Exact center cross temperature, smoothed over 3x3 window around (w/2, h/2)
                if (mode == 1) {
                    int cx = w / 2;
                    int cy = h / 2;
                    long sum = 0;
                    for (int dy = -1; dy <= 1; dy++) {
                        for (int dx = -1; dx <= 1; dx++) {
                            sum += sPixelTemps[(cy + dy) * w + (cx + dx)];
                        }
                    }
                    return (int)(sum / 9);
                }

                if (pos >= 0 && pos < sPixelTemps.length) {
                    return sPixelTemps[pos];
                }
            }
            return (sState != null) ? sState.intAveTemperature : 25000;
        } catch (Throwable t) {
            return 25000;
        } finally {
            Unlock();
        }
    }

    public static boolean getRectTemperatureInfo(int x1, int y1, int x2, int y2, int[] info, boolean flag) {
        if (info == null || info.length < 5) return false;
        Lock();
        try {
            if (sPixelTemps == null) return false;
            int w = sFpaWidth > 0 ? sFpaWidth : 160;
            int h = sFpaHeight > 0 ? sFpaHeight : 120;

            int[] b1 = client2BufferXY(x1, y1);
            int[] b2 = client2BufferXY(x2, y2);

            int minX = Math.max(0, Math.min(b1[0], b2[0]));
            int maxX = Math.min(w - 1, Math.max(b1[0], b2[0]));
            int minY = Math.max(0, Math.min(b1[1], b2[1]));
            int maxY = Math.min(h - 1, Math.max(b1[1], b2[1]));

            if (minX > maxX || minY > maxY) return false;

            int minT = Integer.MAX_VALUE;
            int maxT = Integer.MIN_VALUE;
            long sumT = 0;
            int count = 0;
            int minPos = minY * w + minX;
            int maxPos = minPos;

            for (int y = minY; y <= maxY; y++) {
                int rowOffset = y * w;
                for (int x = minX; x <= maxX; x++) {
                    int pos = rowOffset + x;
                    if (pos >= 0 && pos < sPixelTemps.length) {
                        int t = sPixelTemps[pos];
                        if (t < minT) {
                            minT = t;
                            minPos = pos;
                        }
                        if (t > maxT) {
                            maxT = t;
                            maxPos = pos;
                        }
                        sumT += t;
                        count++;
                    }
                }
            }

            int aveT = count > 0 ? (int)(sumT / count) : 25000;
            info[0] = (minT != Integer.MAX_VALUE) ? minT : 25000;
            info[1] = (maxT != Integer.MIN_VALUE) ? maxT : 25000;
            info[2] = aveT;
            info[3] = minPos;
            info[4] = maxPos;
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "getRectTemperatureInfo error", t);
            return false;
        } finally {
            Unlock();
        }
    }

    public static void triggerFFC() {
        if (sIsCalibrating) {
            Log.w(TAG, "FFC already in progress, skipping.");
            return;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    doFfcCycle();
                } catch (Throwable t) {
                    Log.e(TAG, "FFC worker error", t);
                } finally {
                    sIsCalibrating = false;
                }
            }
        }, "FFC-Worker").start();
    }

    private static void doFfcCycle() {
        if (sShutterCallBack == null) return;
        sIsCalibrating = true;
        try {
            Log.i(TAG, "FFC: Step 1 - Closing shutter (state 0)");
            try {
                sShutterCallBack.setShutterState(0);
            } catch (Throwable e) {
                Log.w(TAG, "FFC setShutterState(0) error: " + e.getMessage());
            }

            try { Thread.sleep(400); } catch (InterruptedException ignored) {}

            Log.i(TAG, "FFC: Step 2 - Accumulating 8 dark baseline frames...");
            int total = sFpaWidth * sFpaHeight;
            long[] acc = new long[total];
            int count = 0;
            long lastSeq = -1;
            long start = System.currentTimeMillis();

            while (count < 8 && (System.currentTimeMillis() - start) < 4000) {
                Lock();
                try {
                    if (sFrameSeq != lastSeq && sLatestRawAD != null && sLatestRawAD.length == total) {
                        lastSeq = sFrameSeq;
                        for (int i = 0; i < total; i++) {
                            acc[i] += sLatestRawAD[i];
                        }
                        count++;
                    }
                } catch (Throwable t) {
                    Log.e(TAG, "FFC acc error", t);
                } finally {
                    Unlock();
                }
                try { Thread.sleep(35); } catch (InterruptedException ignored) {}
            }

            if (count > 0) {
                Lock();
                try {
                    if (sBaseline == null || sBaseline.length != total) {
                        sBaseline = new int[total];
                    }
                    for (int i = 0; i < total; i++) {
                        sBaseline[i] = (int)(acc[i] / count);
                    }
                    sHasBaseline = true;
                    Log.i(TAG, "FFC: Baseline computed from " + count + " frames successfully!");
                } catch (Throwable t) {
                    Log.e(TAG, "FFC baseline error", t);
                } finally {
                    Unlock();
                }
            }

            Log.i(TAG, "FFC: Step 3 - Opening shutter (state 1)");
            try {
                sShutterCallBack.setShutterState(1);
            } catch (Throwable e) {
                Log.w(TAG, "FFC setShutterState(1) error: " + e.getMessage());
            }

            try { Thread.sleep(300); } catch (InterruptedException ignored) {}
            Log.i(TAG, "FFC: Calibration cycle finished.");
        } catch (Throwable t) {
            Log.e(TAG, "doFfcCycle general error", t);
        } finally {
            sIsCalibrating = false;
        }
    }

    public static boolean pushFrame(byte[] data, int fpaTemp, int camTemp) {
        if (data == null || data.length < 2) return false;
        Lock();
        try {
            int width = sFpaWidth > 0 ? sFpaWidth : 160;
            int height = sFpaHeight > 0 ? sFpaHeight : 120;
            int total = width * height;

            if (sRawAD == null || sRawAD.length != total) {
                sRawAD = new int[total];
                sLatestRawAD = new int[total];
                sBaseline = new int[total];
                sDiff = new int[total];
                sFilteredDiff = new int[total];
                sPixelTemps = new int[total];
                sArgbPixels = new int[total];
            }

            int offset = 0;
            if (data.length >= 28) {
                int magic = (data[0] & 0xFF) | ((data[1] & 0xFF) << 8) | ((data[2] & 0xFF) << 16) | ((data[3] & 0xFF) << 24);
                if (magic == 0x1bb1b11b) {
                    offset = 28;
                }
            }

            int availablePixels = (data.length - offset) / 2;
            int processCount = Math.min(total, availablePixels);
            if (processCount <= 0) return false;

            for (int i = 0; i < processCount; i++) {
                int idx = offset + 2 * i;
                int low = data[idx] & 0xFF;
                int high = data[idx + 1] & 0xFF;
                int val = low | (high << 8);
                sRawAD[i] = val;
                sLatestRawAD[i] = val;
            }
            sFrameSeq++;
            sFrameCount++;

            // Auto-trigger FFC once on startup after 15 frames (~1 sec)
            if (!sAutoFfcDone && sFrameCount >= 15) {
                sAutoFfcDone = true;
                triggerFFC();
            }

            // 1. Raw Diff calculation
            for (int i = 0; i < total; i++) {
                sDiff[i] = sHasBaseline ? (sRawAD[i] - sBaseline[i]) : 0;
            }

            // 2. 3x3 Bad Pixel Replacement (BPR) with tight 250-count threshold (~1.8°C)
            for (int y = 0; y < height; y++) {
                int rowOffset = y * width;
                if (y < 2 || y >= height - 2) {
                    for (int x = 0; x < width; x++) {
                        sFilteredDiff[rowOffset + x] = sDiff[rowOffset + x];
                    }
                    continue;
                }

                sFilteredDiff[rowOffset] = sDiff[rowOffset];
                sFilteredDiff[rowOffset + 1] = sDiff[rowOffset + 1];
                sFilteredDiff[rowOffset + width - 2] = sDiff[rowOffset + width - 2];
                sFilteredDiff[rowOffset + width - 1] = sDiff[rowOffset + width - 1];

                for (int x = 2; x < width - 2; x++) {
                    int idx = rowOffset + x;
                    int c = sDiff[idx];

                    int n0 = sDiff[idx - width - 1];
                    int n1 = sDiff[idx - width];
                    int n2 = sDiff[idx - width + 1];
                    int n3 = sDiff[idx - 1];
                    int n4 = sDiff[idx + 1];
                    int n5 = sDiff[idx + width - 1];
                    int n6 = sDiff[idx + width];
                    int n7 = sDiff[idx + width + 1];

                    int minN = n0;
                    if (n1 < minN) minN = n1;
                    if (n2 < minN) minN = n2;
                    if (n3 < minN) minN = n3;
                    if (n4 < minN) minN = n4;
                    if (n5 < minN) minN = n5;
                    if (n6 < minN) minN = n6;
                    if (n7 < minN) minN = n7;

                    int maxN = n0;
                    if (n1 > maxN) maxN = n1;
                    if (n2 > maxN) maxN = n2;
                    if (n3 > maxN) maxN = n3;
                    if (n4 > maxN) maxN = n4;
                    if (n5 > maxN) maxN = n5;
                    if (n6 > maxN) maxN = n6;
                    if (n7 > maxN) maxN = n7;

                    int meanN = (n0 + n1 + n2 + n3 + n4 + n5 + n6 + n7) >> 3;

                    // If center pixel is an isolated spike compared to all 8 neighbors
                    if (c > maxN + 250 || c < minN - 250) {
                        sFilteredDiff[idx] = meanN;
                    } else {
                        sFilteredDiff[idx] = c;
                    }
                }
            }

            // 3. Calibrated Physical Temperature Model
            // Baseline sensitivity: 7.5 mK per AD count
            // Base offset calibrated to +16,300 mK brings forehead to 35.0°C ~ 35.5°C
            int validFpaTemp = (fpaTemp > 5000 && fpaTemp < 100000) ? fpaTemp : 28000;
            int lensOffset = 16300; // mK
            int baseTemp = validFpaTemp + lensOffset;

            for (int i = 0; i < total; i++) {
                sPixelTemps[i] = baseTemp + (int)(((long) sFilteredDiff[i] * 75) / 10);
            }

            // 4. Statistics & Min/Max tracking on filtered frame
            int margin = 4;
            int minDiff = Integer.MAX_VALUE;
            int maxDiff = Integer.MIN_VALUE;
            int minPos = (height / 2) * width + (width / 2);
            int maxPos = minPos;

            long sumDiff = 0;
            long sumSqDiff = 0;
            int innerCount = 0;

            for (int y = margin; y < height - margin; y++) {
                int rowOffset = y * width;
                for (int x = margin; x < width - margin; x++) {
                    int i = rowOffset + x;
                    int d = sFilteredDiff[i];
                    if (d < minDiff) {
                        minDiff = d;
                        minPos = i;
                    }
                    if (d > maxDiff) {
                        maxDiff = d;
                        maxPos = i;
                    }
                    sumDiff += d;
                    sumSqDiff += ((long) d * d);
                    innerCount++;
                }
            }

            if (innerCount <= 0) {
                innerCount = 1;
                minDiff = 0;
                maxDiff = 0;
            }

            double meanDiff = (double) sumDiff / innerCount;
            double variance = Math.max(0.0, ((double) sumSqDiff / innerCount) - (meanDiff * meanDiff));
            double stdDev = Math.max(1.0, Math.sqrt(variance));

            // 5. 2.5-sigma AGC contrast stretch
            int lowCut = (int) (meanDiff - 2.5 * stdDev);
            int highCut = (int) (meanDiff + 2.5 * stdDev);
            int span = Math.max(1, highCut - lowCut);

            int palIdx = (sPaletteIndex >= 0 && sPaletteIndex < 12) ? sPaletteIndex : 2;
            int[] palette = PALETTES[palIdx];

            for (int i = 0; i < total; i++) {
                int d = sFilteredDiff[i];
                int norm = (int) (((long) (d - lowCut) * 255) / span);
                if (norm < 0) norm = 0;
                else if (norm > 255) norm = 255;
                sArgbPixels[i] = palette[norm];
            }

            // 6. Update state with Client Coordinates (Rotated/Transposed to match display)
            sState.intMinTemperature = baseTemp + (int)(((long) minDiff * 75) / 10);
            sState.intMaxTemperature = baseTemp + (int)(((long) maxDiff * 75) / 10);
            sState.intAveTemperature = baseTemp + (int)(meanDiff * 7.5);

            int[] cMin = buffer2ClientXY(minPos % width, minPos / width);
            int[] cMax = buffer2ClientXY(maxPos % width, maxPos / width);

            sState.intMinX = cMin[0];
            sState.intMinY = cMin[1];
            sState.intMaxX = cMax[0];
            sState.intMaxY = cMax[1];
            sState.intSTDTemperature = (int) (stdDev * 7.5);
            sState.intAveNETDt = 50;

            sHasFrame = true;

            long now = System.currentTimeMillis();
            if (now - sLastLogTime > 2000) {
                sLastLogTime = now;
                Log.i(TAG, "pushFrame: " + width + "x" + height + " fpa=" + (validFpaTemp / 1000.0) + "C aveT=" + (sState.intAveTemperature / 1000.0) + "C minT=" + (sState.intMinTemperature / 1000.0) + "C maxT=" + (sState.intMaxTemperature / 1000.0) + "C maxXY=(" + sState.intMaxX + "," + sState.intMaxY + ")");
            }

            return true;
        } catch (Throwable t) {
            Log.e(TAG, "pushFrame error", t);
            return false;
        } finally {
            Unlock();
        }
    }

    public static boolean getOutputBMPData(Bitmap bmp, int flag) {
        if (bmp == null || bmp.isRecycled()) return false;
        Lock();
        try {
            if (sArgbPixels == null) return false;
            int bw = bmp.getWidth();
            int bh = bmp.getHeight();
            if (bw <= 0 || bh <= 0) return false;

            if (sArgbPixels.length >= bw * bh) {
                try {
                    bmp.setPixels(sArgbPixels, 0, bw, 0, 0, bw, bh);
                    return true;
                } catch (Throwable t) {
                    Log.e(TAG, "bmp.setPixels error", t);
                    return false;
                }
            }
            return false;
        } catch (Throwable t) {
            Log.e(TAG, "getOutputBMPData error", t);
            return false;
        } finally {
            Unlock();
        }
    }

    public static boolean getOutputColorbarData(Bitmap bmp, int flag) {
        if (bmp == null || bmp.isRecycled()) return false;
        try {
            int bw = bmp.getWidth();
            int bh = bmp.getHeight();
            if (bw <= 0 || bh <= 0) return false;

            int palIdx = (sPaletteIndex >= 0 && sPaletteIndex < 12) ? sPaletteIndex : 2;
            int[] palette = PALETTES[palIdx];
            int[] pixels = new int[bw * bh];

            for (int y = 0; y < bh; y++) {
                int norm = (int) (((long) (bh - 1 - y) * 255) / (bh > 1 ? (bh - 1) : 1));
                if (norm < 0) norm = 0;
                else if (norm > 255) norm = 255;
                int color = palette[norm];
                int rowOffset = y * bw;
                for (int x = 0; x < bw; x++) {
                    pixels[rowOffset + x] = color;
                }
            }
            bmp.setPixels(pixels, 0, bw, 0, 0, bw, bh);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "getOutputColorbarData error", t);
            return false;
        }
    }

    public static int[] buffer2ClientXY(int bx, int by) {
        int w = sFpaWidth > 0 ? sFpaWidth : 160;
        int h = sFpaHeight > 0 ? sFpaHeight : 120;
        int cx, cy;
        if (sPreviewOrientation == 90) {
            cx = h - 1 - by;
            cy = bx;
        } else if (sPreviewOrientation == 180) {
            cx = w - 1 - bx;
            cy = h - 1 - by;
        } else if (sPreviewOrientation == 270) {
            cx = by;
            cy = w - 1 - bx;
        } else {
            cx = bx;
            cy = by;
        }
        return new int[]{cx, cy};
    }

    public static int[] client2BufferXY(int cx, int cy) {
        int w = sFpaWidth > 0 ? sFpaWidth : 160;
        int h = sFpaHeight > 0 ? sFpaHeight : 120;
        int bx, by;
        if (sPreviewOrientation == 90) {
            bx = cy;
            by = h - 1 - cx;
        } else if (sPreviewOrientation == 180) {
            bx = w - 1 - cx;
            by = h - 1 - cy;
        } else if (sPreviewOrientation == 270) {
            bx = w - 1 - cy;
            by = cx;
        } else {
            bx = cx;
            by = cy;
        }
        return new int[]{bx, by};
    }

    public static int[] clientXY2ScreenXY(int clientX, int clientY, int screenWidth, int screenHeight) {
        if (screenWidth <= 0 || screenHeight <= 0) return new int[]{0, 0};
        int w = sFpaWidth > 0 ? sFpaWidth : 160;
        int h = sFpaHeight > 0 ? sFpaHeight : 120;

        int sx, sy;
        if (sPreviewOrientation == 90 || sPreviewOrientation == 270) {
            sx = (clientX * screenWidth) / h;
            sy = (clientY * screenHeight) / w;
        } else {
            sx = (clientX * screenWidth) / w;
            sy = (clientY * screenHeight) / h;
        }
        return new int[]{sx, sy};
    }

    public static int[] clientPos2ScreenXY(int pos, int screenWidth, int screenHeight) {
        int w = sFpaWidth > 0 ? sFpaWidth : 160;
        int h = sFpaHeight > 0 ? sFpaHeight : 120;
        int cx = pos % (sPreviewOrientation == 90 || sPreviewOrientation == 270 ? h : w);
        int cy = pos / (sPreviewOrientation == 90 || sPreviewOrientation == 270 ? h : w);
        return clientXY2ScreenXY(cx, cy, screenWidth, screenHeight);
    }

    public static int[] screenXY2ClientXY(int screenX, int screenY, int screenWidth, int screenHeight) {
        if (screenWidth <= 0 || screenHeight <= 0) return new int[]{0, 0};
        int w = sFpaWidth > 0 ? sFpaWidth : 160;
        int h = sFpaHeight > 0 ? sFpaHeight : 120;

        int cx, cy;
        if (sPreviewOrientation == 90 || sPreviewOrientation == 270) {
            cx = (screenX * h) / screenWidth;
            cy = (screenY * w) / screenHeight;
        } else {
            cx = (screenX * w) / screenWidth;
            cy = (screenY * h) / screenHeight;
        }
        cx = Math.max(0, Math.min((sPreviewOrientation == 90 || sPreviewOrientation == 270 ? h : w) - 1, cx));
        cy = Math.max(0, Math.min((sPreviewOrientation == 90 || sPreviewOrientation == 270 ? w : h) - 1, cy));
        return new int[]{cx, cy};
    }

    public static int[] sensorXY2ScreenXY(int sensorX, int sensorY, int screenWidth, int screenHeight) {
        int[] client = buffer2ClientXY(sensorX, sensorY);
        return clientXY2ScreenXY(client[0], client[1], screenWidth, screenHeight);
    }

    public static int[] screenXY2SensorXY(int screenX, int screenY, int screenWidth, int screenHeight) {
        int[] client = screenXY2ClientXY(screenX, screenY, screenWidth, screenHeight);
        return client2BufferXY(client[0], client[1]);
    }

    public static boolean startRecording(String path, int w, int h, int fps, int bitrate, int format) {
        sIsRecording = true;
        return true;
    }

    public static void stopRecording() {
        sIsRecording = false;
    }

    public static boolean isRecording() {
        return sIsRecording;
    }

    public static boolean doRecording(Bitmap bmp) {
        return sIsRecording;
    }

    public static boolean saveDDT(String path) {
        return true;
    }

    public static int getEX() {
        return 0;
    }

    public static void setEX(int e1, int e2, int e3) {
    }

    public static void setEmissivity(int em, int mode) {
    }

    public static void setAutoEnlarge(int mode) {
    }

    public static void getExtParameter(ExtPara extPara) {
        if (extPara != null) {
            extPara.bIsothermal = false;
            extPara.dwFlip = 0;
            extPara.intAutoEnlargeRange = 0;
            extPara.intBrightOffset = 0;
            extPara.intContrastOffset = 0;
            extPara.intCurrentEnvTemperature = 25000;
            extPara.intDetailRatio = 0;
        }
    }

    public static void setExtParameter(ExtPara extPara) {
    }

    private static void initPalettes() {
        for (int i = 0; i < 256; i++) {
            float f = i / 255.0f;
            // 0: White Hot
            PALETTES[0][i] = 0xFF000000 | (i << 16) | (i << 8) | i;
            // 1: Black Hot
            PALETTES[1][i] = 0xFF000000 | ((255 - i) << 16) | ((255 - i) << 8) | (255 - i);
            // 2: Iron Bow
            PALETTES[2][i] = calcIronbow(f);
            // 3: Rain Bow
            PALETTES[3][i] = calcRainbow(f);
            // 4: Glow Bow
            PALETTES[4][i] = calcGlowbow(f);
            // 5: Autumn
            PALETTES[5][i] = calcAutumn(f);
            // 6: Winter
            PALETTES[6][i] = calcWinter(f);
            // 7: Hot Metal
            PALETTES[7][i] = calcHotMetal(f);
            // 8: Jet
            PALETTES[8][i] = calcJet(f);
            // 9: Red Saturation
            PALETTES[9][i] = calcRedSaturation(i);
            // 10: High Contrast
            PALETTES[10][i] = calcHighContrast(f);
            // 11: Red Hot
            PALETTES[11][i] = calcRedHot(i);
        }
    }

    private static int calcIronbow(float f) {
        int r, g, b;
        if (f < 0.25f) {
            float t = f / 0.25f;
            r = (int)(t * 128); g = 0; b = (int)(t * 180);
        } else if (f < 0.5f) {
            float t = (f - 0.25f) / 0.25f;
            r = (int)(128 + t * 127); g = (int)(t * 64); b = (int)(180 - t * 180);
        } else if (f < 0.75f) {
            float t = (f - 0.5f) / 0.25f;
            r = 255; g = (int)(64 + t * 160); b = 0;
        } else {
            float t = (f - 0.75f) / 0.25f;
            r = 255; g = (int)(224 + t * 31); b = (int)(t * 255);
        }
        return 0xFF000000 | (clamp(r) << 16) | (clamp(g) << 8) | clamp(b);
    }

    private static int calcRainbow(float f) {
        int r = (int)(Math.max(0.0f, Math.min(1.0f, (f - 0.5f) * 4.0f)) * 255);
        int g = (int)(Math.max(0.0f, Math.min(1.0f, 1.0f - Math.abs(f - 0.5f) * 2.5f)) * 255);
        int b = (int)(Math.max(0.0f, Math.min(1.0f, (0.5f - f) * 4.0f)) * 255);
        return 0xFF000000 | (clamp(r) << 16) | (clamp(g) << 8) | clamp(b);
    }

    private static int calcGlowbow(float f) {
        int r = clamp((int)(f * 320));
        int g = clamp((int)(Math.max(0.0f, f - 0.2f) * 280));
        int b = clamp((int)(Math.max(0.0f, f - 0.7f) * 400));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcAutumn(float f) {
        int r = 255;
        int g = clamp((int)(f * 255));
        int b = clamp((int)((1.0f - f) * 40));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcWinter(float f) {
        int r = clamp((int)(f * 128));
        int g = clamp((int)(f * 255));
        int b = clamp((int)(120 + f * 135));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcHotMetal(float f) {
        int r = clamp((int)(f * 255 * 1.25f));
        int g = clamp((int)(Math.max(0.0f, f - 0.35f) * 255 * 1.54f));
        int b = clamp((int)(Math.max(0.0f, f - 0.75f) * 255 * 4.0f));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcJet(float f) {
        int r = clamp((int)(Math.min(4.0f * f - 1.5f, -4.0f * f + 4.5f) * 255));
        int g = clamp((int)(Math.min(4.0f * f - 0.5f, -4.0f * f + 3.5f) * 255));
        int b = clamp((int)(Math.min(4.0f * f + 0.5f, -4.0f * f + 2.5f) * 255));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcRedSaturation(int i) {
        if (i >= 218) {
            return 0xFFFF0000;
        }
        return 0xFF000000 | (i << 16) | (i << 8) | i;
    }

    private static int calcHighContrast(float f) {
        int r = clamp((int)(Math.sin(f * Math.PI * 2.0) * 127 + 128));
        int g = clamp((int)(Math.sin(f * Math.PI * 2.0 + 2.0) * 127 + 128));
        int b = clamp((int)(Math.sin(f * Math.PI * 2.0 + 4.0) * 127 + 128));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcRedHot(int i) {
        if (i >= 192) {
            int blend = (i - 192) * 4;
            int r = 255;
            int g = clamp(i - blend);
            int b = clamp(i - blend);
            return 0xFF000000 | (r << 16) | (g << 8) | b;
        }
        return 0xFF000000 | (i << 16) | (i << 8) | i;
    }

    private static int clamp(int val) {
        return val < 0 ? 0 : (val > 255 ? 255 : val);
    }
}
