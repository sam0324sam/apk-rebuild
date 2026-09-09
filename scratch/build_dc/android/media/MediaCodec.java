package android.media;

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
