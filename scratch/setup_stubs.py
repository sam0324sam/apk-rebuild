import os

# 1. Update MediaCodec.java
with open(r"scratch\build_dc\android\media\MediaCodec.java", "w", encoding="utf-8") as f:
    f.write("""package android.media;

import java.io.IOException;
import java.nio.ByteBuffer;

public class MediaCodec {
    public static final int CONFIGURE_FLAG_ENCODE = 1;
    public static final int BUFFER_FLAG_END_OF_STREAM = 4;
    public static final int BUFFER_FLAG_CODEC_CONFIG = 2;
    public static final int INFO_TRY_AGAIN_LATER = -1;
    public static final int INFO_OUTPUT_FORMAT_CHANGED = -2;

    public static MediaCodec createEncoderByType(String type) throws IOException {
        return new MediaCodec();
    }

    public static MediaCodec createByCodecName(String name) throws IOException {
        return new MediaCodec();
    }

    public void configure(MediaFormat format, Object surface, Object crypto, int flags) {}
    public void start() {}
    public void stop() {}
    public void release() {}
    public MediaCodecInfo getCodecInfo() { return new MediaCodecInfo(); }

    public int dequeueInputBuffer(long timeoutUs) { return 0; }
    public ByteBuffer getInputBuffer(int index) { return null; }
    public ByteBuffer[] getInputBuffers() { return new ByteBuffer[0]; }
    public void queueInputBuffer(int index, int offset, int size, long presentationTimeUs, int flags) {}

    public int dequeueOutputBuffer(BufferInfo info, long timeoutUs) { return 0; }
    public ByteBuffer getOutputBuffer(int index) { return null; }
    public ByteBuffer[] getOutputBuffers() { return new ByteBuffer[0]; }
    public void releaseOutputBuffer(int index, boolean render) {}
    public MediaFormat getOutputFormat() { return new MediaFormat(); }

    public static class BufferInfo {
        public int offset;
        public int size;
        public long presentationTimeUs;
        public int flags;
    }
}
""")

# 2. Update MediaCodecInfo.java
with open(r"scratch\build_dc\android\media\MediaCodecInfo.java", "w", encoding="utf-8") as f:
    f.write("""package android.media;

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
""")

# 3. Looper.java
os.makedirs(r"scratch\build_dc\android\os", exist_ok=True)
with open(r"scratch\build_dc\android\os\Looper.java", "w", encoding="utf-8") as f:
    f.write("""package android.os;

public class Looper {
    public static Looper getMainLooper() {
        return new Looper();
    }
}
""")

# 4. Handler.java
with open(r"scratch\build_dc\android\os\Handler.java", "w", encoding="utf-8") as f:
    f.write("""package android.os;

public class Handler {
    public Handler() {}
    public Handler(Looper looper) {}
    public boolean post(Runnable r) { return true; }
}
""")

# 5. Context.java
with open(r"scratch\build_dc\android\content\Context.java", "w", encoding="utf-8") as f:
    f.write("""package android.content;

import java.io.File;

public class Context {
    public Context getApplicationContext() { return this; }
    public File getExternalFilesDir(String type) { return null; }
    public File getFilesDir() { return null; }
}
""")

# 6. MagApplication.java
with open(r"scratch\build_dc\cn\com\magnity\magnitycx\MagApplication.java", "w", encoding="utf-8") as f:
    f.write("""package cn.com.magnity.magnitycx;

import android.content.Context;
import cn.com.magnity.magnitycx.sdk.MagParameter;

public class MagApplication extends Context {
    public static MagParameter magParameter = new MagParameter();
    private static MagApplication instance_ = new MagApplication();
    public static MagApplication getInstance() {
        return instance_;
    }
}
""")

# 7. GlobalFunc.java
with open(r"scratch\build_dc\cn\com\magnity\magnitycx\sdk\GlobalFunc.java", "w", encoding="utf-8") as f:
    f.write("""package cn.com.magnity.magnitycx.sdk;

import android.content.Context;
import java.io.File;

public class GlobalFunc {
    public static void notifyMediaSync(Context c, File f) {}
}
""")

print("All stubs written successfully!")
