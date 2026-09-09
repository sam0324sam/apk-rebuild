.class public Lcn/com/magnity/magnitycx/sdk/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "VideoRecorder"

.field private static volatile sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;


# instance fields
.field private mColorFormat:I

.field private mEncoder:Landroid/media/MediaCodec;

.field private mFps:I

.field private mFrameIndex:J

.field private mHeight:I

.field private volatile mIsRecording:Z

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mPixelBuffer:[I

.field private mTrackIndex:I

.field private mWidth:I

.field private mYuvBuffer:[B

.field private mYuvSize:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 30
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    .line 53
    return-void
.end method

.method private static chooseColorFormat(Landroid/media/MediaCodec;)I
    .locals 6

    .line 273
    const/16 v0, 0x15

    if-eqz p0, :cond_4

    .line 275
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    .line 276
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 277
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 278
    if-ne v5, v0, :cond_0

    .line 279
    return v5

    .line 277
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_3

    aget v2, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const/16 v4, 0x13

    if-ne v2, v4, :cond_2

    .line 284
    return v2

    .line 282
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    :cond_3
    goto :goto_2

    .line 287
    :catchall_0
    move-exception p0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooseColorFormat error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VideoRecorder"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4
    :goto_2
    return v0
.end method

.method private cleanup()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 250
    :try_start_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 251
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 252
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    .line 257
    :try_start_2
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 260
    :catchall_2
    move-exception v0

    :cond_1
    :goto_2
    nop

    .line 262
    :try_start_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 263
    :catchall_3
    move-exception v0

    :goto_3
    nop

    .line 264
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 268
    :cond_2
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    .line 269
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    .line 270
    return-void
.end method

.method private drainEncoder(Z)V
    .locals 6

    .line 195
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 199
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x4e20

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 200
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 201
    if-nez p1, :cond_7

    .line 202
    goto/16 :goto_2

    .line 205
    :cond_2
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 206
    iget-boolean v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    const-string v2, "VideoRecorder"

    if-eqz v1, :cond_3

    .line 207
    const-string v1, "Output format changed after muxer started"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 209
    :cond_3
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 210
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    .line 211
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaMuxer started with track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    goto :goto_3

    .line 215
    :cond_4
    if-ltz v1, :cond_8

    .line 217
    nop

    .line 218
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_8

    .line 224
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 225
    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 228
    :cond_5
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    if-eqz v3, :cond_6

    .line 229
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    invoke-virtual {v3, v5, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 234
    :cond_6
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 236
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 237
    nop

    .line 242
    :cond_7
    :goto_2
    return-void

    .line 241
    :cond_8
    :goto_3
    goto/16 :goto_0
.end method

.method public static encodeYUV420P([B[III)V
    .locals 15

    .line 344
    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    .line 345
    nop

    .line 346
    nop

    .line 347
    div-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v2

    .line 350
    nop

    .line 351
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v1, :cond_8

    .line 352
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_7

    .line 353
    add-int/lit8 v9, v7, 0x1

    aget v7, p1, v7

    .line 354
    shr-int/lit8 v10, v7, 0x10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    .line 355
    shr-int/lit8 v12, v7, 0x8

    and-int/2addr v12, v11

    .line 356
    and-int/2addr v7, v11

    .line 358
    mul-int/lit8 v13, v10, 0x42

    mul-int/lit16 v14, v12, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v7, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x10

    .line 359
    add-int/lit8 v14, v6, 0x1

    if-gez v13, :cond_0

    const/4 v13, 0x0

    goto :goto_2

    :cond_0
    if-le v13, v11, :cond_1

    const/16 v13, 0xff

    :cond_1
    :goto_2
    int-to-byte v13, v13

    aput-byte v13, p0, v6

    .line 361
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_6

    rem-int/lit8 v6, v8, 0x2

    if-nez v6, :cond_6

    .line 362
    mul-int/lit8 v6, v10, -0x26

    mul-int/lit8 v13, v12, 0x4a

    sub-int/2addr v6, v13

    mul-int/lit8 v13, v7, 0x70

    add-int/2addr v6, v13

    add-int/lit16 v6, v6, 0x80

    shr-int/lit8 v6, v6, 0x8

    add-int/lit16 v6, v6, 0x80

    .line 363
    mul-int/lit8 v10, v10, 0x70

    mul-int/lit8 v12, v12, 0x5e

    sub-int/2addr v10, v12

    mul-int/lit8 v7, v7, 0x12

    sub-int/2addr v10, v7

    add-int/lit16 v10, v10, 0x80

    shr-int/lit8 v7, v10, 0x8

    add-int/lit16 v7, v7, 0x80

    .line 365
    add-int/lit8 v10, v2, 0x1

    if-gez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    if-le v6, v11, :cond_3

    const/16 v6, 0xff

    :cond_3
    :goto_3
    int-to-byte v6, v6

    aput-byte v6, p0, v2

    .line 366
    add-int/lit8 v2, v3, 0x1

    if-gez v7, :cond_4

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    if-le v7, v11, :cond_5

    goto :goto_4

    :cond_5
    move v11, v7

    :goto_4
    int-to-byte v6, v11

    aput-byte v6, p0, v3

    move v3, v2

    move v2, v10

    .line 352
    :cond_6
    add-int/lit8 v8, v8, 0x1

    move v7, v9

    move v6, v14

    goto :goto_1

    .line 351
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 370
    :cond_8
    return-void
.end method

.method public static encodeYUV420SP([B[III)V
    .locals 12

    .line 313
    mul-int v0, p2, p3

    .line 314
    nop

    .line 315
    nop

    .line 318
    nop

    .line 319
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p3, :cond_8

    .line 320
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_7

    .line 321
    add-int/lit8 v6, v4, 0x1

    aget v4, p1, v4

    .line 322
    shr-int/lit8 v7, v4, 0x10

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 323
    shr-int/lit8 v9, v4, 0x8

    and-int/2addr v9, v8

    .line 324
    and-int/2addr v4, v8

    .line 326
    mul-int/lit8 v10, v7, 0x42

    mul-int/lit16 v11, v9, 0x81

    add-int/2addr v10, v11

    mul-int/lit8 v11, v4, 0x19

    add-int/2addr v10, v11

    add-int/lit16 v10, v10, 0x80

    shr-int/lit8 v10, v10, 0x8

    add-int/lit8 v10, v10, 0x10

    .line 327
    add-int/lit8 v11, v3, 0x1

    if-gez v10, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :cond_0
    if-le v10, v8, :cond_1

    const/16 v10, 0xff

    :cond_1
    :goto_2
    int-to-byte v10, v10

    aput-byte v10, p0, v3

    .line 329
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    rem-int/lit8 v3, v5, 0x2

    if-nez v3, :cond_6

    .line 330
    mul-int/lit8 v3, v7, -0x26

    mul-int/lit8 v10, v9, 0x4a

    sub-int/2addr v3, v10

    mul-int/lit8 v10, v4, 0x70

    add-int/2addr v3, v10

    add-int/lit16 v3, v3, 0x80

    shr-int/lit8 v3, v3, 0x8

    add-int/lit16 v3, v3, 0x80

    .line 331
    mul-int/lit8 v7, v7, 0x70

    mul-int/lit8 v9, v9, 0x5e

    sub-int/2addr v7, v9

    mul-int/lit8 v4, v4, 0x12

    sub-int/2addr v7, v4

    add-int/lit16 v7, v7, 0x80

    shr-int/lit8 v4, v7, 0x8

    add-int/lit16 v4, v4, 0x80

    .line 333
    add-int/lit8 v7, v0, 0x1

    if-gez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    if-le v3, v8, :cond_3

    const/16 v3, 0xff

    :cond_3
    :goto_3
    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 334
    add-int/lit8 v0, v7, 0x1

    if-gez v4, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    if-le v4, v8, :cond_5

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_4
    int-to-byte v3, v8

    aput-byte v3, p0, v7

    .line 320
    :cond_6
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    move v3, v11

    goto :goto_1

    .line 319
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_8
    return-void
.end method

.method public static getInstance()Lcn/com/magnity/magnitycx/sdk/VideoRecorder;
    .locals 2

    .line 43
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;-><init>()V

    sput-object v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    return-object v0
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8

    .line 295
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    .line 296
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 297
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 299
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 300
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 301
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 302
    return-object v3

    .line 300
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 296
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized isRecording()Z
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized recordFrame(Landroid/graphics/Bitmap;)Z
    .locals 12

    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 124
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    if-ne v0, v2, :cond_1

    .line 125
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    iget v6, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v9, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v10, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_0

    .line 124
    :cond_1
    move-object v3, p1

    .line 127
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-static {v3, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 128
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    iget v7, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v10, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v11, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 129
    if-eq v4, v3, :cond_2

    .line 130
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    :cond_2
    :goto_0
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    .line 135
    const/16 v2, 0x13

    if-ne p1, v2, :cond_3

    .line 136
    :try_start_2
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-static {v0, p1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->encodeYUV420P([B[III)V

    goto :goto_1

    .line 138
    :cond_3
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-static {v0, p1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->encodeYUV420SP([B[III)V

    .line 142
    :goto_1
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 143
    if-ltz v5, :cond_4

    .line 145
    nop

    .line 146
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 150
    if-eqz p1, :cond_4

    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 152
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 153
    iget-wide v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    long-to-double v2, v2

    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I

    int-to-double v6, p1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v6

    mul-double v2, v2, v8

    double-to-long v8, v2

    .line 154
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    iget v7, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 155
    iget-wide v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    .line 160
    :cond_4
    invoke-direct {p0, v1}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->drainEncoder(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 162
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 163
    :try_start_3
    const-string v0, "VideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error encoding frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    monitor-exit p0

    return v1

    .line 119
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    .line 117
    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public declared-synchronized start(Ljava/lang/String;IIII)Z
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 66
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    .line 67
    div-int/lit8 p3, p3, 0x2

    mul-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    .line 68
    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    if-gtz p2, :cond_1

    const/16 p2, 0x1e0

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    .line 69
    :cond_1
    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    if-gtz p2, :cond_2

    const/16 p2, 0x280

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    .line 71
    :cond_2
    const/4 p2, 0x5

    if-lt p4, p2, :cond_3

    const/16 p2, 0x3c

    if-gt p4, p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p4, 0x14

    :goto_0
    iput p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I

    .line 72
    const/16 p2, 0xc8

    if-lt p5, p2, :cond_4

    mul-int/lit16 p5, p5, 0x3e8

    goto :goto_1

    :cond_4
    const p5, 0x1e8480

    .line 74
    :goto_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 76
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_5

    .line 77
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 80
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 83
    :cond_6
    const-string p2, "video/avc"

    invoke-static {p2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    .line 84
    iget-object p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-static {p2}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->chooseColorFormat(Landroid/media/MediaCodec;)I

    move-result p2

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I

    .line 86
    const-string p2, "video/avc"

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-static {p2, p3, p4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    .line 87
    const-string p3, "color-format"

    iget p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 88
    const-string p3, "bitrate"

    invoke-virtual {p2, p3, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    const-string p3, "frame-rate"

    iget p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 90
    const-string p3, "i-frame-interval"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    const-string p3, "bitrate-mode"

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 93
    :catchall_0
    move-exception p3

    :goto_2
    nop

    .line 95
    :try_start_3
    iget-object p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1, v1, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    iget-object p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    .line 98
    new-instance p2, Landroid/media/MediaMuxer;

    invoke-direct {p2, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 99
    const/4 p2, -0x1

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    .line 100
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 102
    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    .line 103
    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    mul-int p2, p2, p3

    new-array p2, p2, [I

    iput-object p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    .line 104
    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    .line 105
    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    .line 107
    iput-boolean p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    .line 108
    const-string p2, "VideoRecorder"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording started successfully: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "@"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "fps, bitrate="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", colorFormat="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    monitor-exit p0

    return p4

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    :try_start_4
    const-string p2, "VideoRecorder"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to start recording: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->cleanup()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 113
    monitor-exit p0

    return v0

    .line 59
    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 10

    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 170
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    const-string v0, "VideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping recording (total frames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 176
    :try_start_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 179
    if-ltz v4, :cond_1

    .line 180
    iget-wide v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    long-to-double v0, v0

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I

    int-to-double v2, v2

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v2

    mul-double v0, v0, v5

    double-to-long v7, v0

    .line 181
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 184
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->drainEncoder(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :cond_2
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->cleanup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 190
    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    :try_start_4
    const-string v1, "VideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while signaling EOS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 191
    :goto_1
    :try_start_5
    const-string v0, "VideoRecorder"

    const-string v1, "Recording stopped and saved successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 192
    monitor-exit p0

    return-void

    .line 189
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->cleanup()V

    .line 190
    throw v0

    .line 168
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
