import os

def write_f(path, content):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)
    print("Wrote:", path)

write_f("scratch/build_dc/android/content/Context.java", """package android.content;
public class Context {
    public Context getApplicationContext() { return this; }
}
""")

write_f("scratch/build_dc/android/content/DialogInterface.java", """package android.content;
public interface DialogInterface {
    interface OnClickListener {
        void onClick(DialogInterface dialog, int which);
    }
    void dismiss();
}
""")

write_f("scratch/build_dc/android/view/View.java", """package android.view;
import android.content.Context;
public class View {
    public View(Context c) {}
}
""")

write_f("scratch/build_dc/android/widget/TextView.java", """package android.widget;
import android.content.Context;
import android.view.View;
public class TextView extends View {
    public TextView(Context c) { super(c); }
    public CharSequence getText() { return ""; }
    public void setText(CharSequence s) {}
}
""")

write_f("scratch/build_dc/android/widget/EditText.java", """package android.widget;
import android.content.Context;
public class EditText extends TextView {
    public EditText(Context c) { super(c); }
    public void setInputType(int t) {}
    public void setHint(CharSequence h) {}
}
""")

write_f("scratch/build_dc/android/text/InputType.java", """package android.text;
public class InputType {
    public static final int TYPE_CLASS_NUMBER = 2;
    public static final int TYPE_NUMBER_FLAG_DECIMAL = 8192;
}
""")

write_f("scratch/build_dc/android/widget/Toast.java", """package android.widget;
import android.content.Context;
public class Toast {
    public static final int LENGTH_SHORT = 0;
    public static final int LENGTH_LONG = 1;
    public static Toast makeText(Context c, CharSequence s, int d) { return new Toast(); }
    public void show() {}
}
""")

write_f("scratch/build_dc/android/app/Activity.java", """package android.app;
import android.content.Context;
public class Activity extends Context {
    public boolean isFinishing() { return false; }
    public void runOnUiThread(Runnable r) { r.run(); }
}
""")

write_f("scratch/build_dc/android/app/AlertDialog.java", """package android.app;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
public class AlertDialog {
    public static class Builder {
        public Builder(Context c) {}
        public Builder setTitle(CharSequence t) { return this; }
        public Builder setMessage(CharSequence m) { return this; }
        public Builder setView(View v) { return this; }
        public Builder setItems(CharSequence[] items, DialogInterface.OnClickListener l) { return this; }
        public Builder setPositiveButton(CharSequence t, DialogInterface.OnClickListener l) { return this; }
        public Builder setNegativeButton(CharSequence t, DialogInterface.OnClickListener l) { return this; }
        public Builder setNeutralButton(CharSequence t, DialogInterface.OnClickListener l) { return this; }
        public AlertDialog create() { return new AlertDialog(); }
        public AlertDialog show() { return new AlertDialog(); }
    }
    public void show() {}
    public void dismiss() {}
}
""")

write_f("scratch/build_dc/cn/com/magnity/magnitycx/sdk/SharedPreferencesManager.java", """package cn.com.magnity.magnitycx.sdk;
public class SharedPreferencesManager {
    public static int getInt(String key, int def) { return def; }
    public static void putIntWithCommit(String key, int val) {}
}
""")
