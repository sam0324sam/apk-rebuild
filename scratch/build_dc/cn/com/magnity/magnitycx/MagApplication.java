package cn.com.magnity.magnitycx;

import android.content.Context;
import cn.com.magnity.magnitycx.sdk.MagParameter;

public class MagApplication extends Context {
    public static MagParameter magParameter = new MagParameter();
    private static MagApplication instance_ = new MagApplication();
    public static MagApplication getInstance() {
        return instance_;
    }
}
