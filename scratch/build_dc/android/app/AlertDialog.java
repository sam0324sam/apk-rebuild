package android.app;
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
