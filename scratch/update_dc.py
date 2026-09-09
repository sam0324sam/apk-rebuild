import os

dc_path = r"scratch\build_dc\cn\com\magnity\magnitycx\sdk\DeviceController.java"
with open(dc_path, "r", encoding="utf-8") as f:
    content = f.read()

# Replace lensOffset = 16300 with lensOffset = 0 and sManualTempOffset
target_str = """            int validFpaTemp = (fpaTemp > 5000 && fpaTemp < 100000) ? fpaTemp : 28000;
            int lensOffset = 16300; // mK
            int baseTemp = validFpaTemp + lensOffset;"""

new_str = """            if (!sOffsetLoaded) {
                try {
                    sManualTempOffset = SharedPreferencesManager.getInt("user_manual_temp_offset", 0);
                    sOffsetLoaded = true;
                    Log.i(TAG, "Loaded sManualTempOffset = " + sManualTempOffset);
                } catch (Throwable ignored) {}
            }

            int validFpaTemp = (fpaTemp > 5000 && fpaTemp < 100000) ? fpaTemp : 28000;
            int lensOffset = 0; // mK: Removed hardcoded +16.3C offset
            int baseTemp = validFpaTemp + lensOffset + sManualTempOffset;"""

assert target_str in content, "target_str not found in DeviceController.java"
content = content.replace(target_str, new_str)

# Add field declarations
field_target = "    private static boolean sAutoFfcDone = false;"
field_new = """    private static boolean sAutoFfcDone = false;
    private static int sManualTempOffset = 0;
    private static boolean sOffsetLoaded = false;"""
assert field_target in content, "field_target not found"
content = content.replace(field_target, field_new)

# Add new calibration methods before the last closing brace
last_brace = content.rfind("}")
methods_code = """
    public static void adjustTempOffset(android.content.Context ctx, int delta) {
        sManualTempOffset += delta;
        try {
            SharedPreferencesManager.putIntWithCommit("user_manual_temp_offset", sManualTempOffset);
        } catch (Throwable ignored) {}
        if (ctx != null) {
            float offsetC = sManualTempOffset / 1000.0f;
            float currentC = sState.intAveTemperature / 1000.0f;
            String msg = String.format(java.util.Locale.US, "溫度校準補償: %+.1f°C\\n(目前讀數: %.1f°C)", offsetC, currentC);
            try {
                android.widget.Toast.makeText(ctx, msg, android.widget.Toast.LENGTH_SHORT).show();
            } catch (Throwable ignored) {}
        }
    }

    public static void adjustTempOffsetUp(android.content.Context ctx) {
        adjustTempOffset(ctx, 500);
    }

    public static void adjustTempOffsetDown(android.content.Context ctx) {
        adjustTempOffset(ctx, -500);
    }

    public static void calibrateToTarget(android.content.Context ctx, int targetMilliK) {
        int current = sState.intAveTemperature;
        if (current <= 0) current = 35000;
        int delta = targetMilliK - current;
        sManualTempOffset += delta;
        try {
            SharedPreferencesManager.putIntWithCommit("user_manual_temp_offset", sManualTempOffset);
        } catch (Throwable ignored) {}
        if (ctx != null) {
            float offsetC = sManualTempOffset / 1000.0f;
            float targetC = targetMilliK / 1000.0f;
            String msg = String.format(java.util.Locale.US, "已校準目標溫度為 %.1f°C\\n(總補償量: %+.1f°C)", targetC, offsetC);
            try {
                android.widget.Toast.makeText(ctx, msg, android.widget.Toast.LENGTH_SHORT).show();
            } catch (Throwable ignored) {}
        }
    }

    public static void resetCalibration(android.content.Context ctx) {
        sManualTempOffset = 0;
        try {
            SharedPreferencesManager.putIntWithCommit("user_manual_temp_offset", 0);
        } catch (Throwable ignored) {}
        if (ctx != null) {
            try {
                android.widget.Toast.makeText(ctx, "溫度校準已重置 (0.0°C)", android.widget.Toast.LENGTH_SHORT).show();
            } catch (Throwable ignored) {}
        }
    }

    public static void showCalibrationDialog(final android.app.Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    float curC = sState.intAveTemperature / 1000.0f;
                    float offC = sManualTempOffset / 1000.0f;
                    CharSequence[] items = new CharSequence[] {
                        "一鍵校準為 36.4°C (標準額溫)",
                        "一鍵校準為 36.8°C (體溫偏高)",
                        "微調增加 +0.5°C",
                        "微調減少 -0.5°C",
                        "重置補償為 0.0°C"
                    };
                    android.app.AlertDialog.Builder b = new android.app.AlertDialog.Builder(activity);
                    b.setTitle(String.format(java.util.Locale.US, "溫度校準 (目前: %.1f°C | 補償: %+.1f°C)", curC, offC));
                    b.setItems(items, new android.content.DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(android.content.DialogInterface dialog, int which) {
                            switch (which) {
                                case 0:
                                    calibrateToTarget(activity, 36400);
                                    break;
                                case 1:
                                    calibrateToTarget(activity, 36800);
                                    break;
                                case 2:
                                    adjustTempOffsetUp(activity);
                                    break;
                                case 3:
                                    adjustTempOffsetDown(activity);
                                    break;
                                case 4:
                                    resetCalibration(activity);
                                    break;
                            }
                        }
                    });
                    b.setNegativeButton("取消", null);
                    b.show();
                } catch (Throwable t) {
                    Log.e(TAG, "showCalibrationDialog error", t);
                }
            }
        });
    }
}
"""

new_content = content[:last_brace] + methods_code

with open(dc_path, "w", encoding="utf-8") as f:
    f.write(new_content)

print("Updated DeviceController.java successfully!")
