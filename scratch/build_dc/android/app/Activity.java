package android.app;
import android.content.Context;
public class Activity extends Context {
    public boolean isFinishing() { return false; }
    public void runOnUiThread(Runnable r) { r.run(); }
}
