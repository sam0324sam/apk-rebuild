package android.graphics;

public class Bitmap {
    public enum Config {
        ARGB_8888, RGB_565
    }
    public int getWidth() { return 0; }
    public int getHeight() { return 0; }
    public void setPixels(int[] pixels, int offset, int stride, int x, int y, int width, int height) {}
    public void getPixels(int[] pixels, int offset, int stride, int x, int y, int width, int height) {}
    public static Bitmap createScaledBitmap(Bitmap src, int dstWidth, int dstHeight, boolean filter) { return src; }
    public void setPixel(int x, int y, int color) {}
    public boolean isRecycled() { return false; }
    public void recycle() {}
}
