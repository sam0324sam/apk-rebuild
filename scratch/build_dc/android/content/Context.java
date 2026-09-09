package android.content;

import java.io.File;

public class Context {
    public Context getApplicationContext() { return this; }
    public File getExternalFilesDir(String type) { return null; }
    public File getFilesDir() { return null; }
}
