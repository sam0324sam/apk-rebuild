import os

# 1. Create stub for MagApplication and MagParameter
mag_param_path = r"scratch\build_dc\cn\com\magnity\magnitycx\sdk\MagParameter.java"
os.makedirs(os.path.dirname(mag_param_path), exist_ok=True)
with open(mag_param_path, "w", encoding="utf-8") as f:
    f.write("""package cn.com.magnity.magnitycx.sdk;
public class MagParameter {
    public int imageFlip = 0;
}
""")

mag_app_path = r"scratch\build_dc\cn\com\magnity\magnitycx\MagApplication.java"
os.makedirs(os.path.dirname(mag_app_path), exist_ok=True)
with open(mag_app_path, "w", encoding="utf-8") as f:
    f.write("""package cn.com.magnity.magnitycx;
import cn.com.magnity.magnitycx.sdk.MagParameter;
public class MagApplication {
    public static MagParameter magParameter = new MagParameter();
}
""")

print("Created MagApplication and MagParameter stubs successfully!")
