import os

dc_path = r"scratch\build_dc\cn\com\magnity\magnitycx\sdk\DeviceController.java"
with open(dc_path, "r", encoding="utf-8") as f:
    content = f.read()

# 1. Add fields for flip
field_target = "    private static boolean sOffsetLoaded = false;"
field_new = """    private static boolean sOffsetLoaded = false;
    private static int sFlipMode = 0;
    private static boolean sFlipLoaded = false;
    private static int[] sFlippedArgbPixels = null;"""
assert field_target in content, "field_target not found"
content = content.replace(field_target, field_new)

# 2. In pushFrame, load flipMode if not loaded
push_target = """            if (!sOffsetLoaded) {
                try {
                    sManualTempOffset = SharedPreferencesManager.getInt("user_manual_temp_offset", 0);
                    sOffsetLoaded = true;
                    Log.i(TAG, "Loaded sManualTempOffset = " + sManualTempOffset);
                } catch (Throwable ignored) {}
            }"""
push_new = """            if (!sOffsetLoaded) {
                try {
                    sManualTempOffset = SharedPreferencesManager.getInt("user_manual_temp_offset", 0);
                    sOffsetLoaded = true;
                    Log.i(TAG, "Loaded sManualTempOffset = " + sManualTempOffset);
                } catch (Throwable ignored) {}
            }
            if (!sFlipLoaded) {
                try {
                    sFlipMode = SharedPreferencesManager.getInt("flipMode", 0);
                    sFlipLoaded = true;
                    Log.i(TAG, "Loaded sFlipMode = " + sFlipMode);
                } catch (Throwable ignored) {}
            }"""
assert push_target in content, "push_target not found"
content = content.replace(push_target, push_new)

# 3. getOutputBMPData with flip support
bmp_target = """            if (sArgbPixels.length >= bw * bh) {
                try {
                    bmp.setPixels(sArgbPixels, 0, bw, 0, 0, bw, bh);
                    return true;
                } catch (Throwable t) {
                    Log.e(TAG, "bmp.setPixels error", t);
                    return false;
                }
            }
            return false;"""

bmp_new = """            int width = sFpaWidth > 0 ? sFpaWidth : 160;
            int height = sFpaHeight > 0 ? sFpaHeight : 120;
            int total = width * height;
            if (sArgbPixels.length < total) return false;

            try {
                if (sFlipMode == 0) {
                    bmp.setPixels(sArgbPixels, 0, bw, 0, 0, bw, bh);
                    return true;
                }

                if (sFlippedArgbPixels == null || sFlippedArgbPixels.length != total) {
                    sFlippedArgbPixels = new int[total];
                }

                boolean isPortrait = (sPreviewOrientation == 90 || sPreviewOrientation == 270);
                boolean flipH = (sFlipMode & 1) != 0;
                boolean flipV = (sFlipMode & 2) != 0;

                boolean invertX = isPortrait ? flipV : flipH;
                boolean invertY = isPortrait ? flipH : flipV;

                for (int y = 0; y < height; y++) {
                    int srcY = invertY ? (height - 1 - y) : y;
                    int dstRow = y * width;
                    int srcRow = srcY * width;
                    for (int x = 0; x < width; x++) {
                        int srcX = invertX ? (width - 1 - x) : x;
                        sFlippedArgbPixels[dstRow + x] = sArgbPixels[srcRow + srcX];
                    }
                }
                bmp.setPixels(sFlippedArgbPixels, 0, bw, 0, 0, bw, bh);
                return true;
            } catch (Throwable t) {
                Log.e(TAG, "bmp.setPixels error", t);
                return false;
            }"""
assert bmp_target in content, "bmp_target not found"
content = content.replace(bmp_target, bmp_new)

# 4. setExtParameter and getExtParameter
ext_target = """    public static void getExtParameter(ExtPara extPara) {
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
    }"""

ext_new = """    public static void getExtParameter(ExtPara extPara) {
        if (extPara != null) {
            extPara.bIsothermal = false;
            extPara.dwFlip = sFlipMode;
            extPara.intAutoEnlargeRange = 0;
            extPara.intBrightOffset = 0;
            extPara.intContrastOffset = 0;
            extPara.intCurrentEnvTemperature = 25000;
            extPara.intDetailRatio = 0;
        }
    }

    public static void setExtParameter(ExtPara extPara) {
        if (extPara != null) {
            sFlipMode = extPara.dwFlip;
            Log.i(TAG, "setExtParameter: dwFlip = " + sFlipMode);
        }
    }"""
assert ext_target in content, "ext_target not found"
content = content.replace(ext_target, ext_new)

# 5. toggleHorizontalFlip and update showCalibrationDialog
dialog_target = """                    CharSequence[] items = new CharSequence[] {
                        "一鍵校準為 36.4°C (標準額溫)",
                        "一鍵校準為 36.8°C (體溫偏高)",
                        "微調增加 +0.5°C",
                        "微調減少 -0.5°C",
                        "重置補償為 0.0°C"
                    };"""

dialog_new = """                    CharSequence[] items = new CharSequence[] {
                        "一鍵校準為 36.4°C (標準額溫)",
                        "一鍵校準為 36.8°C (體溫偏高)",
                        "微調增加 +0.5°C",
                        "微調減少 -0.5°C",
                        ((sFlipMode & 1) != 0 ? "水平翻轉: [已開啟] (點擊切換為關閉)" : "水平翻轉: [已關閉] (點擊切換為開啟)"),
                        "重置補償為 0.0°C"
                    };"""
assert dialog_target in content, "dialog_target not found"
content = content.replace(dialog_target, dialog_new)

click_target = """                                case 4:
                                    resetCalibration(activity);
                                    break;"""

click_new = """                                case 4:
                                    toggleHorizontalFlip(activity);
                                    break;
                                case 5:
                                    resetCalibration(activity);
                                    break;"""
assert click_target in content, "click_target not found"
content = content.replace(click_target, click_new)

# 6. Add toggleHorizontalFlip method
toggle_method = """    public static void toggleHorizontalFlip(android.content.Context ctx) {
        sFlipMode ^= 1;
        try {
            SharedPreferencesManager.putIntWithCommit("flipMode", sFlipMode);
        } catch (Throwable ignored) {}
        try {
            cn.com.magnity.magnitycx.MagApplication.magParameter.imageFlip = sFlipMode;
        } catch (Throwable ignored) {}
        if (ctx != null) {
            String state = (sFlipMode & 1) != 0 ? "已開啟水平翻轉 (左右鏡像修正)" : "已關閉水平翻轉";
            try {
                android.widget.Toast.makeText(ctx, state, android.widget.Toast.LENGTH_SHORT).show();
            } catch (Throwable ignored) {}
        }
    }
"""
last_brace = content.rfind("}")
content = content[:last_brace] + toggle_method + "\n}\n"

with open(dc_path, "w", encoding="utf-8") as f:
    f.write(content)

print("Updated DeviceController.java for flip support successfully!")
