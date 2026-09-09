code = """package cn.com.magnity.magnitycx.sdk;

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

    private static final int FFC_STATE_IDLE = 0;
    private static final int FFC_STATE_CLOSING = 1;
    private static final int FFC_STATE_COLLECTING = 2;
    private static final int FFC_STATE_OPENING = 3;

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
    private static int[] sBaseline = null;
    private static long[] sBaselineSum = null;
    private static int sBaselineCount = 0;
    private static boolean sHasBaseline = false;
    private static int sFfcState = FFC_STATE_IDLE;
    private static int sWaitFrames = 0;

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
        if (sLock.isHeldByCurrentThread()) {
            sLock.unlock();
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
        
        sLock.lock();
        try {
            Log.i(TAG, "startProcess: fpaWidth=" + fpaWidth + ", fpaHeight=" + fpaHeight + ", devType=" + devType);
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
            sBaseline = new int[total];
            sBaselineSum = new long[total];
            sDiff = new int[total];
            sPixelTemps = new int[total];
            sArgbPixels = new int[total];
            sState = new State();

            sHasBaseline = false;
            sBaselineCount = 0;
            sWaitFrames = 0;

            sIsProcessing = true;
            sHasFrame = false;

            // Start FFC calibration cycle: Close shutter blade (0 = close)
            sFfcState = FFC_STATE_CLOSING;
            if (sShutterCallBack != null) {
                try {
                    Log.i(TAG, "Initiating startup FFC: Closing shutter (state 0)");
                    sShutterCallBack.setShutterState(0);
                } catch (Exception e) {
                    Log.w(TAG, "Failed to close shutter: " + e.getMessage());
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
            sFfcState = FFC_STATE_IDLE;
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
        sColorbarWidth = width;
        sColorbarHeight = height;
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

    public static boolean pushFrame(byte[] data, int fpaTemp, int camTemp) {
        if (data == null || data.length < 2) return false;
        sLock.lock();
        try {
            int width = sFpaWidth > 0 ? sFpaWidth : 160;
            int height = sFpaHeight > 0 ? sFpaHeight : 120;
            int total = width * height;

            if (sRawAD == null || sRawAD.length != total) {
                sRawAD = new int[total];
                sBaseline = new int[total];
                sBaselineSum = new long[total];
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
                sRawAD[i] = low | (high << 8);
            }

            // --- FFC State Machine Handling ---
            if (sFfcState == FFC_STATE_CLOSING) {
                sWaitFrames++;
                if (sWaitFrames >= 5) {
                    sFfcState = FFC_STATE_COLLECTING;
                    sWaitFrames = 0;
                    sBaselineCount = 0;
                    Arrays.fill(sBaselineSum, 0);
                    Log.i(TAG, "FFC: Shutter closed. Beginning baseline accumulation.");
                }
            } else if (sFfcState == FFC_STATE_COLLECTING) {
                for (int i = 0; i < processCount; i++) {
                    sBaselineSum[i] += sRawAD[i];
                }
                sBaselineCount++;
                if (sBaselineCount >= 8) {
                    for (int i = 0; i < processCount; i++) {
                        sBaseline[i] = (int)(sBaselineSum[i] / sBaselineCount);
                    }
                    sHasBaseline = true;
                    sFfcState = FFC_STATE_OPENING;
                    sWaitFrames = 0;
                    Log.i(TAG, "FFC: Baseline collected (8 frames). Opening shutter (state 1).");
                    if (sShutterCallBack != null) {
                        try {
                            sShutterCallBack.setShutterState(1); // 1 = open shutter
                        } catch (Exception e) {
                            Log.w(TAG, "Failed to open shutter: " + e.getMessage());
                        }
                    }
                }
            } else if (sFfcState == FFC_STATE_OPENING) {
                sWaitFrames++;
                if (sWaitFrames >= 5) {
                    sFfcState = FFC_STATE_IDLE;
                    sWaitFrames = 0;
                    Log.i(TAG, "FFC: Shutter fully opened. Entering normal imaging mode.");
                }
            }

            // --- NUC & Thermal Image Generation ---
            long sumDiff = 0;
            long sumSqDiff = 0;
            int minDiff = Integer.MAX_VALUE;
            int maxDiff = Integer.MIN_VALUE;
            int minPos = 0;
            int maxPos = 0;

            for (int i = 0; i < processCount; i++) {
                int d;
                if (sHasBaseline) {
                    d = sRawAD[i] - sBaseline[i];
                } else {
                    d = 0;
                }
                sDiff[i] = d;

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
            }

            double meanDiff = (double) sumDiff / processCount;
            double variance = Math.max(0.0, ((double) sumSqDiff / processCount) - (meanDiff * meanDiff));
            double stdDev = Math.sqrt(variance);

            // 2.5-sigma contrast window eliminates dead/hot pixels and stretches scene contrast
            int lowCut = (int) (meanDiff - 2.5 * stdDev);
            int highCut = (int) (meanDiff + 2.5 * stdDev);
            if (highCut <= lowCut) {
                highCut = lowCut + 1;
            }
            int span = highCut - lowCut;

            int baseTemp = (fpaTemp > 5000 && fpaTemp < 100000) ? fpaTemp : 25000;
            int tempPerCount = 70; // 70 mK (0.07 C) per AD count

            int[] hist = new int[256];
            Arrays.fill(hist, 0);

            int palIdx = (sPaletteIndex >= 0 && sPaletteIndex < 12) ? sPaletteIndex : 2;
            int[] palette = PALETTES[palIdx];

            for (int i = 0; i < processCount; i++) {
                int d = sDiff[i];
                int norm = (int) (((long) (d - lowCut) * 255) / span);
                if (norm < 0) norm = 0;
                else if (norm > 255) norm = 255;

                hist[norm]++;
                sArgbPixels[i] = palette[norm];

                // Temperature: base temperature + delta
                sPixelTemps[i] = baseTemp + (d * tempPerCount);
            }

            for (int i = processCount; i < total; i++) {
                sArgbPixels[i] = palette[0];
                sPixelTemps[i] = baseTemp;
            }

            sState.intMinTemperature = baseTemp + (minDiff * tempPerCount);
            sState.intMaxTemperature = baseTemp + (maxDiff * tempPerCount);
            sState.intAveTemperature = baseTemp + (int)(meanDiff * tempPerCount);
            sState.intMinX = minPos % width;
            sState.intMinY = minPos / width;
            sState.intMaxX = maxPos % width;
            sState.intMaxY = maxPos / width;
            sState.intHistTemperature = hist;
            sState.intAveNETDt = 50;
            sState.intSTDTemperature = (int) (stdDev * tempPerCount);

            sHasFrame = true;

            long now = System.currentTimeMillis();
            if (now - sLastLogTime > 1500) {
                sLastLogTime = now;
                Log.i(TAG, "Frame: " + width + "x" + height + " fpaTemp=" + (fpaTemp / 1000.0) + "C meanT=" + (sState.intAveTemperature / 1000.0) + "C tMin=" + (sState.intMinTemperature / 1000.0) + "C tMax=" + (sState.intMaxTemperature / 1000.0) + "C FFCState=" + sFfcState);
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
            } else {
                int w = Math.min(bw, sFpaWidth);
                int h = Math.min(bh, sFpaHeight);
                bmp.setPixels(sArgbPixels, 0, sFpaWidth, 0, 0, w, h);
                return true;
            }
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
            int norm = 255 - (y * 255 / (bh > 1 ? bh - 1 : 1));
            if (norm < 0) norm = 0;
            if (norm > 255) norm = 255;
            int color = palette[norm];
            int row = y * bw;
            for (int x = 0; x < bw; x++) {
                pixels[row + x] = color;
            }
        }
        bmp.setPixels(pixels, 0, bw, 0, 0, bw, bh);
        return true;
    }

    public static void triggerFFC() {
        sLock.lock();
        try {
            if (sShutterCallBack != null) {
                sFfcState = FFC_STATE_CLOSING;
                sWaitFrames = 0;
                sBaselineCount = 0;
                try {
                    Log.i(TAG, "Manual triggerFFC: Closing shutter (state 0)");
                    sShutterCallBack.setShutterState(0);
                } catch (Exception e) {
                    Log.w(TAG, "FFC setShutterState error: " + e.getMessage());
                }
            }
        } finally {
            sLock.unlock();
        }
    }

    public static int[] clientXY2ScreenXY(int clientX, int clientY, int screenWidth, int screenHeight) {
        if (screenWidth <= 0 || screenHeight <= 0) return new int[]{0, 0};
        int w = sFpaWidth > 0 ? sFpaWidth : 160;
        int h = sFpaHeight > 0 ? sFpaHeight : 120;

        int sx, sy;
        switch (sPreviewOrientation) {
            case 90:
                sx = (h - 1 - clientY) * screenWidth / h;
                sy = clientX * screenHeight / w;
                break;
            case 180:
                sx = (w - 1 - clientX) * screenWidth / w;
                sy = (h - 1 - clientY) * screenHeight / h;
                break;
            case 270:
                sx = clientY * screenWidth / h;
                sy = (w - 1 - clientX) * screenHeight / w;
                break;
            case 0:
            default:
                sx = clientX * screenWidth / w;
                sy = clientY * screenHeight / h;
                break;
        }
        return new int[]{Math.max(0, Math.min(screenWidth - 1, sx)), Math.max(0, Math.min(screenHeight - 1, sy))};
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
        switch (sPreviewOrientation) {
            case 90:
                cx = screenY * w / screenHeight;
                cy = h - 1 - (screenX * h / screenWidth);
                break;
            case 180:
                cx = w - 1 - (screenX * w / screenWidth);
                cy = h - 1 - (screenY * h / screenHeight);
                break;
            case 270:
                cx = w - 1 - (screenY * w / screenHeight);
                cy = screenX * h / screenWidth;
                break;
            case 0:
            default:
                cx = screenX * w / screenWidth;
                cy = screenY * h / screenHeight;
                break;
        }
        return new int[]{Math.max(0, Math.min(w - 1, cx)), Math.max(0, Math.min(h - 1, cy))};
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
            PALETTES[0][i] = 0xFF000000 | (i << 16) | (i << 8) | i;
            int inv = 255 - i;
            PALETTES[1][i] = 0xFF000000 | (inv << 16) | (inv << 8) | inv;
            PALETTES[2][i] = calcIronbow(f);
            PALETTES[3][i] = calcRainbow(f);
            PALETTES[4][i] = calcIronbow(f);
            PALETTES[5][i] = calcAutumn(f);
            PALETTES[6][i] = calcWinter(f);
            PALETTES[7][i] = calcHotMetal(f);
            PALETTES[8][i] = calcJet(f);
            PALETTES[9][i] = calcIronbow(f);
            PALETTES[10][i] = calcIronbow(f);
            PALETTES[11][i] = calcIronbow(f);
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
with open(r'scratch\build_dc\cn\com\magnity\magnitycx\sdk\DeviceController.java', 'w', encoding='utf-8') as f:
    f.write(code)
print('DeviceController.java written successfully!')
