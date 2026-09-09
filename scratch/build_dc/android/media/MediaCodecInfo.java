package android.media;

public class MediaCodecInfo {
    public String getName() {
        return "";
    }

    public boolean isEncoder() {
        return true;
    }

    public String[] getSupportedTypes() {
        return new String[0];
    }

    public CodecCapabilities getCapabilitiesForType(String type) {
        return new CodecCapabilities();
    }

    public static class CodecCapabilities {
        public int[] colorFormats = new int[0];
        public static final int COLOR_FormatYUV420Planar = 19;
        public static final int COLOR_FormatYUV420SemiPlanar = 21;
    }
}
