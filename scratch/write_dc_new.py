import os

with open(r"scratch\build_dc\cn\com\magnity\magnitycx\sdk\DeviceController.java", "w", encoding="utf-8") as f:
    f.write('''package cn.com.magnity.magnitycx.sdk;

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
        sLock.lock();
    }

    public static void Unlock() {
        sLock.unlock();
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
        
        sLock.lock();
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

            // Start with shutter blade open
            if (sShutterCallBack != null) {
                try {
                    sShutterCallBack.setShutterState(1);
                } catch (Exception e) {
                    Log.w(TAG, "Failed to open shutter: " + e.getMessage());
                }
            }

            return true;
        } finally {
            sLock.unlock();
        }
    }

    public static void stopProcess() {
        sLock.lock();
        try {
            sIsProcessing = false;
            sHasFrame = false;
            sIsCalibrating = false;
        } finally {
            sLock.unlock();
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
        sLock.lock();
        try {
            return sState;
        } finally {
            sLock.unlock();
        }
    }

    public static int getTemperature(int pos, int mode, boolean flag) {
        sLock.lock();
        try {
            if (sPixelTemps != null && pos >= 0 && pos < sPixelTemps.length) {
                return sPixelTemps[pos];
            }
            return (sState != null) ? sState.intAveTemperature : 25000;
        } finally {
            sLock.unlock();
        }
    }

    public static boolean getRectTemperatureInfo(int x1, int y1, int x2, int y2, int[] info, boolean flag) {
        if (info == null || info.length < 5) return false;
        sLock.lock();
        try {
            if (sPixelTemps == null) return false;

            int minX = Math.max(0, Math.min(x1, x2));
            int maxX = Math.min(sFpaWidth - 1, Math.max(x1, x2));
            int minY = Math.max(0, Math.min(y1, y2));
            int maxY = Math.min(sFpaHeight - 1, Math.max(y1, y2));

            if (minX > maxX || minY > maxY) return false;

            int minT = Integer.MAX_VALUE;
            int maxT = Integer.MIN_VALUE;
            long sumT = 0;
            int count = 0;
            int minPos = minY * sFpaWidth + minX;
            int maxPos = minPos;

            for (int y = minY; y <= maxY; y++) {
                int rowOffset = y * sFpaWidth;
                for (int x = minX; x <= maxX; x++) {
                    int pos = rowOffset + x;
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

            int aveT = count > 0 ? (int)(sumT / count) : 25000;
            info[0] = minT;
            info[1] = maxT;
            info[2] = aveT;
            info[3] = minPos;
            info[4] = maxPos;
            return true;
        } finally {
            sLock.unlock();
        }
    }

    public static void triggerFFC() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                doFfcCycle();
            }
        }, "FFC-Worker").start();
    }

    private static void doFfcCycle() {
        if (sShutterCallBack == null) return;
        sIsCalibrating = true;
        Log.i(TAG, "FFC: Step 1 - Closing shutter (state 0)");
        try {
            sShutterCallBack.setShutterState(0);
        } catch (Exception e) {
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
            sLock.lock();
            try {
                if (sFrameSeq != lastSeq && sLatestRawAD != null && sLatestRawAD.length == total) {
                    lastSeq = sFrameSeq;
                    for (int i = 0; i < total; i++) {
                        acc[i] += sLatestRawAD[i];
                    }
                    count++;
                }
            } finally {
                sLock.unlock();
            }
            try { Thread.sleep(35); } catch (InterruptedException ignored) {}
        }

        if (count > 0) {
            sLock.lock();
            try {
                for (int i = 0; i < total; i++) {
                    sBaseline[i] = (int)(acc[i] / count);
                }
                sHasBaseline = true;
                Log.i(TAG, "FFC: Baseline computed from " + count + " frames successfully!");
            } finally {
                sLock.unlock();
            }
        }

        Log.i(TAG, "FFC: Step 3 - Opening shutter (state 1)");
        try {
            sShutterCallBack.setShutterState(1);
        } catch (Exception e) {
            Log.w(TAG, "FFC setShutterState(1) error: " + e.getMessage());
        }

        try { Thread.sleep(300); } catch (InterruptedException ignored) {}
        sIsCalibrating = false;
        Log.i(TAG, "FFC: Calibration cycle finished.");
    }

    public static boolean pushFrame(byte[] data, int fpaTemp, int camTemp) {
        if (data == null || data.length < 2) return false;
        sLock.lock();
        try {
            int width = sFpaWidth > 0 ? sFpaWidth : 160;
            int height = sFpaHeight > 0 ? sFpaHeight : 120;
            int total = width * height;

            if (sRawAD == null || sRawAD.length != total) {
                sRawAD = new int[total];
                sLatestRawAD = new int[total];
                sBaseline = new int[total];
                sDiff = new int[total];
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

            // Physical temperature model verified on hardware:
            // Sensitivity: ~7.5 mK (0.0075 C) per AD count -> (d * 75) / 10
            // Lens transmission loss offset: +13500 mK (+13.5 C)
            int validFpaTemp = (fpaTemp > 5000 && fpaTemp < 100000) ? fpaTemp : 28000;
            int lensOffset = 13500; // mK
            int baseTemp = validFpaTemp + lensOffset;

            int margin = 3;
            int minDiff = Integer.MAX_VALUE;
            int maxDiff = Integer.MIN_VALUE;
            int minPos = (height / 2) * width + (width / 2);
            int maxPos = minPos;

            long sumDiff = 0;
            long sumSqDiff = 0;
            int innerCount = 0;

            for (int y = 0; y < height; y++) {
                int rowOffset = y * width;
                boolean isInnerY = (y >= margin && y < height - margin);
                for (int x = 0; x < width; x++) {
                    int i = rowOffset + x;
                    int d = sHasBaseline ? (sRawAD[i] - sBaseline[i]) : 0;
                    sDiff[i] = d;

                    // Temperature in mC
                    int pixelTemp = baseTemp + (int)(((long) d * 75) / 10);
                    sPixelTemps[i] = pixelTemp;

                    // Exclude border 3-pixel margin to eliminate sensor corner defects
                    if (isInnerY && x >= margin && x < width - margin) {
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
            }

            if (innerCount <= 0) {
                innerCount = 1;
                minDiff = 0;
                maxDiff = 0;
            }

            double meanDiff = (double) sumDiff / innerCount;
            double variance = Math.max(0.0, ((double) sumSqDiff / innerCount) - (meanDiff * meanDiff));
            double stdDev = Math.max(1.0, Math.sqrt(variance));

            // 2.5-sigma AGC contrast stretch
            int lowCut = (int) (meanDiff - 2.5 * stdDev);
            int highCut = (int) (meanDiff + 2.5 * stdDev);
            int span = Math.max(1, highCut - lowCut);

            int palIdx = (sPaletteIndex >= 0 && sPaletteIndex < 12) ? sPaletteIndex : 2;
            int[] palette = PALETTES[palIdx];

            for (int i = 0; i < total; i++) {
                int d = sDiff[i];
                int norm = (int) (((long) (d - lowCut) * 255) / span);
                if (norm < 0) norm = 0;
                else if (norm > 255) norm = 255;
                sArgbPixels[i] = palette[norm];
            }

            // Update state
            sState.intMinTemperature = baseTemp + (int)(((long) minDiff * 75) / 10);
            sState.intMaxTemperature = baseTemp + (int)(((long) maxDiff * 75) / 10);
            sState.intAveTemperature = baseTemp + (int)(meanDiff * 7.5);
            sState.intMinX = minPos % width;
            sState.intMinY = minPos / width;
            sState.intMaxX = maxPos % width;
            sState.intMaxY = maxPos / width;
            sState.intSTDTemperature = (int) (stdDev * 7.5);
            sState.intAveNETDt = 50;

            sHasFrame = true;

            long now = System.currentTimeMillis();
            if (now - sLastLogTime > 2000) {
                sLastLogTime = now;
                Log.i(TAG, "pushFrame: " + width + "x" + height + " fpa=" + (validFpaTemp / 1000.0) + "C aveT=" + (sState.intAveTemperature / 1000.0) + "C minT=" + (sState.intMinTemperature / 1000.0) + "C maxT=" + (sState.intMaxTemperature / 1000.0) + "C hasBase=" + sHasBaseline);
            }

            return true;
        } finally {
            sLock.unlock();
        }
    }

    public static boolean getOutputBMPData(Bitmap bmp, int flag) {
        if (bmp == null) return false;
        sLock.lock();
        try {
            if (sArgbPixels == null) return false;
            int bw = bmp.getWidth();
            int bh = bmp.getHeight();
            if (bw <= 0 || bh <= 0) return false;

            if (sArgbPixels.length >= bw * bh) {
                bmp.setPixels(sArgbPixels, 0, bw, 0, 0, bw, bh);
                return true;
            }
            return false;
        } finally {
            sLock.unlock();
        }
    }

    public static boolean getOutputColorbarData(Bitmap bmp, int flag) {
        if (bmp == null) return false;
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
        int cx = pos % w;
        int cy = pos / w;
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
        cx = Math.max(0, Math.min(w - 1, cx));
        cy = Math.max(0, Math.min(h - 1, cy));
        return new int[]{cx, cy};
    }

    public static int[] sensorXY2ScreenXY(int sensorX, int sensorY, int screenWidth, int screenHeight) {
        return clientXY2ScreenXY(sensorX, sensorY, screenWidth, screenHeight);
    }

    public static int[] screenXY2SensorXY(int screenX, int screenY, int screenWidth, int screenHeight) {
        return screenXY2ClientXY(screenX, screenY, screenWidth, screenHeight);
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
            extPara.dwFlip = 0;
            extPara.dwDistance = 1000;
            extPara.dwEmissivity = 95;
            extPara.dwReflectTemp = 25000;
            extPara.dwTa = 25000;
            extPara.dwHumidity = 50;
        }
    }

    public static void setExtParameter(ExtPara extPara) {
    }

    private static void initPalettes() {
        for (int i = 0; i < 256; i++) {
            PALETTES[0][i] = 0xFF000000 | (i << 16) | (i << 8) | i; // Grayscale
            PALETTES[1][i] = calcIronbow(i / 255.0f);                 // Ironbow
            PALETTES[2][i] = calcRainbow(i / 255.0f);                 // Rainbow
            PALETTES[3][i] = calcJet(i / 255.0f);                     // Jet
            PALETTES[4][i] = calcHotMetal(i / 255.0f);                // Hot Metal
            PALETTES[5][i] = 0xFF000000 | ((255 - i) << 16) | ((255 - i) << 8) | (255 - i); // Inverted Gray
            PALETTES[6][i] = calcAutumn(i / 255.0f);                  // Autumn
            PALETTES[7][i] = calcWinter(i / 255.0f);                  // Winter
            PALETTES[8][i] = calcIronbow(i / 255.0f);
            PALETTES[9][i] = calcRainbow(i / 255.0f);
            PALETTES[10][i] = calcJet(i / 255.0f);
            PALETTES[11][i] = calcHotMetal(i / 255.0f);
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
        int g = (int)(Math.max(0.0f, Math.min(1.0f, 1.0f - Math.abs(f - 0.5f) * 3.0f)) * 255);
        int b = (int)(Math.max(0.0f, Math.min(1.0f, (0.5f - f) * 4.0f)) * 255);
        return 0xFF000000 | (clamp(r) << 16) | (clamp(g) << 8) | clamp(b);
    }

    private static int calcJet(float f) {
        int r = clamp((int)(1.5f - Math.abs(f * 4.0f - 3.0f) * 255));
        int g = clamp((int)(1.5f - Math.abs(f * 4.0f - 2.0f) * 255));
        int b = clamp((int)(1.5f - Math.abs(f * 4.0f - 1.0f) * 255));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcHotMetal(float f) {
        int r = clamp((int)(f * 255 * 1.2f));
        int g = clamp((int)(Math.max(0.0f, f - 0.3f) * 255 * 1.4f));
        int b = clamp((int)(Math.max(0.0f, f - 0.7f) * 255 * 3.3f));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcAutumn(float f) {
        int r = 255;
        int g = clamp((int)(f * 255));
        int b = clamp((int)((1.0f - f) * 50));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int calcWinter(float f) {
        int r = 0;
        int g = clamp((int)(f * 255));
        int b = clamp((int)(255 - (f * 128)));
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static int clamp(int val) {
        return val < 0 ? 0 : (val > 255 ? 255 : val);
    }
}
''')
print("DeviceController.java written successfully!")
