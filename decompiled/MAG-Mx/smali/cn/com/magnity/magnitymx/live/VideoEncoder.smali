.class public Lcn/com/magnity/magnitymx/live/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;
    }
.end annotation


# static fields
.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private volatile mIsExitThread:Z

.field private mIsRecording:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

.field private mThread:Ljava/lang/Thread;

.field private mTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VideoEncoder;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VideoEncoder;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsExitThread:Z

    return v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VideoEncoder;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VideoEncoder;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VideoEncoder;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/live/VideoEncoder;[B)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VideoEncoder;
    .param p1, "x1"    # [B

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->pushFrame([B)V

    return-void
.end method

.method private drainEncoder(Z)V
    .locals 13
    .param p1, "endOfStream"    # Z

    .prologue
    const/4 v12, 0x0

    .line 208
    const/16 v0, 0x2710

    .line 210
    .local v0, "TIMEOUT_USEC":I
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 212
    .local v2, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v10, 0x2710

    invoke-virtual {v7, v8, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 213
    .local v3, "encoderStatus":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    .line 215
    if-nez p1, :cond_2

    .line 287
    :cond_1
    :goto_1
    return-void

    .line 218
    :cond_2
    sget-boolean v7, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v7, :cond_0

    .line 219
    const-string v7, "no output available, spinning to await EOS"

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_3
    const/4 v7, -0x3

    if-ne v3, v7, :cond_4

    .line 224
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 225
    :cond_4
    const/4 v7, -0x2

    if-ne v3, v7, :cond_6

    .line 227
    iget-boolean v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMuxerStarted:Z

    if-eqz v7, :cond_5

    .line 228
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "format changed twice"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 230
    :cond_5
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 232
    .local v4, "newFormat":Landroid/media/MediaFormat;
    const-string v7, "csd-0"

    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 233
    .local v6, "rawSps":Ljava/nio/ByteBuffer;
    const-string v7, "csd-1"

    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 236
    .local v5, "rawPps":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mTrackIndex:I

    .line 237
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    .line 238
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMuxerStarted:Z

    goto :goto_0

    .line 239
    .end local v4    # "newFormat":Landroid/media/MediaFormat;
    .end local v5    # "rawPps":Ljava/nio/ByteBuffer;
    .end local v6    # "rawSps":Ljava/nio/ByteBuffer;
    :cond_6
    if-gez v3, :cond_7

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_7
    aget-object v1, v2, v3

    .line 245
    .local v1, "encodedData":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_8

    .line 246
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoderOutputBuffer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 250
    :cond_8
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a

    .line 253
    sget-boolean v7, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v7, :cond_9

    .line 254
    const-string v7, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 256
    :cond_9
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v12, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 259
    :cond_a
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v7, :cond_c

    .line 260
    iget-boolean v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMuxerStarted:Z

    if-nez v7, :cond_b

    .line 261
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "muxer hasn\'t started"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 265
    :cond_b
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 268
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v10, 0x1046a

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 269
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v8, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mTrackIndex:I

    iget-object v9, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v7, v8, v1, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 272
    :cond_c
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v3, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 273
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 275
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    .line 276
    if-nez p1, :cond_d

    .line 277
    const-string v7, "reached end of stream unexpectedly"

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 279
    :cond_d
    sget-boolean v7, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v7, :cond_1

    .line 280
    const-string v7, "end of stream reached"

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private pushFrame([B)V
    .locals 10
    .param p1, "buffer"    # [B

    .prologue
    .line 141
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 147
    .local v9, "inputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 148
    .local v1, "inputBufferIndex":I
    if-ltz v1, :cond_1

    .line 149
    aget-object v8, v9, v1

    .line 150
    .local v8, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    const/4 v0, 0x0

    array-length v2, p1

    invoke-virtual {v8, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    array-length v3, p1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 155
    .end local v8    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v1    # "inputBufferIndex":I
    .end local v9    # "inputBuffers":[Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    .line 157
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push media error - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public isRecording()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsRecording:Z

    return v0
.end method

.method public notify_()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 168
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    return-void
.end method

.method public start(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;IIIII)Z
    .locals 7
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bitRate"    # I
    .param p5, "frameRate"    # I
    .param p6, "gop"    # I

    .prologue
    .line 46
    iget-boolean v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsRecording:Z

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->stop()V

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_1

    .line 52
    const-string v3, "Fail to get write permission"

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 53
    const/4 v3, 0x0

    .line 93
    :goto_0
    return v3

    .line 57
    :cond_1
    :try_start_0
    const-string v3, "video/avc"

    invoke-static {v3, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 58
    .local v2, "mediaFormat":Landroid/media/MediaFormat;
    const-string v3, "bitrate"

    invoke-virtual {v2, v3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 59
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 60
    const-string v3, "color-format"

    const/16 v4, 0x13

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    const-string v3, "i-frame-interval"

    invoke-virtual {v2, v3, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 64
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 65
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 67
    new-instance v3, Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v3, -0x1

    iput v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mTrackIndex:I

    .line 74
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMuxerStarted:Z

    .line 76
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 78
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 79
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 81
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 85
    new-instance v3, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;-><init>(Lcn/com/magnity/magnitymx/live/VideoEncoder;Lcn/com/magnity/magnitymx/live/VideoEncoder$1;)V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mThread:Ljava/lang/Thread;

    .line 86
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 88
    sget-boolean v3, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v3, :cond_2

    .line 89
    const-string v3, "start recording"

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 92
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsRecording:Z

    .line 93
    const/4 v3, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "mediaFormat":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init media error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 70
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsRecording:Z

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsRecording:Z

    .line 104
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mIsExitThread:Z

    .line 107
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 108
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 113
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 115
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 119
    :cond_3
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 121
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_4
    :goto_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 133
    :cond_5
    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 135
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "stop recording"

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop media error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method
