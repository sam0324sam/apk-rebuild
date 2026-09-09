package android.media;

public class MediaFormat {
    public static final String MIMETYPE_VIDEO_AVC = "video/avc";
    public static final String KEY_COLOR_FORMAT = "color-format";
    public static final String KEY_BIT_RATE = "bitrate";
    public static final String KEY_FRAME_RATE = "frame-rate";
    public static final String KEY_I_FRAME_INTERVAL = "i-frame-interval";

    public static MediaFormat createVideoFormat(String mime, int width, int height) {
        return new MediaFormat();
    }

    public void setInteger(String name, int value) {}
}
