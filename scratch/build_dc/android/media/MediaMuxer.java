package android.media;

import java.io.IOException;
import java.nio.ByteBuffer;

public class MediaMuxer {
    public static class OutputFormat {
        public static final int MUXER_OUTPUT_MPEG_4 = 0;
    }

    public MediaMuxer(String path, int format) throws IOException {}
    public int addTrack(MediaFormat format) { return 0; }
    public void start() {}
    public void stop() {}
    public void release() {}
    public void writeSampleData(int trackIndex, ByteBuffer byteBuf, MediaCodec.BufferInfo bufferInfo) {}
}
