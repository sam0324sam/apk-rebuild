.class public Lcn/com/magnity/magnitycx/sdk/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "VideoRecorder"

.field private static volatile sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;


# instance fields
.field private mActualOutputPath:Ljava/lang/String;

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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 38
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    .line 62
    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 391
    :try_start_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 392
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 393
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    .line 396
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    .line 398
    :try_start_2
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 401
    :catchall_2
    move-exception v0

    :cond_1
    :goto_2
    nop

    .line 403
    :try_start_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 404
    :catchall_3
    move-exception v0

    :goto_3
    nop

    .line 405
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 409
    :cond_2
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    .line 410
    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    .line 411
    return-void
.end method

.method private drainEncoder(Z)V
    .locals 6

    .line 336
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 340
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

    .line 341
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 342
    if-nez p1, :cond_8

    .line 343
    goto/16 :goto_3

    .line 346
    :cond_2
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 347
    iget-boolean v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    const-string v2, "VideoRecorder"

    if-eqz v1, :cond_3

    .line 348
    const-string v1, "Output format changed after muxer started"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 350
    :cond_3
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 351
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    .line 352
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 354
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

    .line 355
    goto :goto_4

    .line 356
    :cond_4
    if-ltz v1, :cond_9

    .line 358
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 361
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    .line 358
    const/16 v4, 0x15

    if-lt v2, v4, :cond_5

    .line 359
    invoke-virtual {v3, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_2

    .line 361
    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    .line 364
    :goto_2
    if-eqz v2, :cond_9

    .line 365
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 366
    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 369
    :cond_6
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    if-eqz v3, :cond_7

    .line 370
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 371
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 372
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    invoke-virtual {v3, v5, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 375
    :cond_7
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 377
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    .line 378
    nop

    .line 383
    :cond_8
    :goto_3
    return-void

    .line 382
    :cond_9
    :goto_4
    goto/16 :goto_0
.end method

.method public static encodeYUV420P([B[III)V
    .locals 15

    .line 465
    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    .line 466
    nop

    .line 467
    nop

    .line 468
    div-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v2

    .line 471
    nop

    .line 472
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v1, :cond_8

    .line 473
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_7

    .line 474
    add-int/lit8 v9, v7, 0x1

    aget v7, p1, v7

    .line 475
    shr-int/lit8 v10, v7, 0x10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    .line 476
    shr-int/lit8 v12, v7, 0x8

    and-int/2addr v12, v11

    .line 477
    and-int/2addr v7, v11

    .line 479
    mul-int/lit8 v13, v10, 0x42

    mul-int/lit16 v14, v12, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v7, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x10

    .line 480
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

    .line 482
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_6

    rem-int/lit8 v6, v8, 0x2

    if-nez v6, :cond_6

    .line 483
    mul-int/lit8 v6, v10, -0x26

    mul-int/lit8 v13, v12, 0x4a

    sub-int/2addr v6, v13

    mul-int/lit8 v13, v7, 0x70

    add-int/2addr v6, v13

    add-int/lit16 v6, v6, 0x80

    shr-int/lit8 v6, v6, 0x8

    add-int/lit16 v6, v6, 0x80

    .line 484
    mul-int/lit8 v10, v10, 0x70

    mul-int/lit8 v12, v12, 0x5e

    sub-int/2addr v10, v12

    mul-int/lit8 v7, v7, 0x12

    sub-int/2addr v10, v7

    add-int/lit16 v10, v10, 0x80

    shr-int/lit8 v7, v10, 0x8

    add-int/lit16 v7, v7, 0x80

    .line 486
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

    .line 487
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

    .line 473
    :cond_6
    add-int/lit8 v8, v8, 0x1

    move v7, v9

    move v6, v14

    goto :goto_1

    .line 472
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 491
    :cond_8
    return-void
.end method

.method public static encodeYUV420SP([B[III)V
    .locals 12

    .line 434
    mul-int v0, p2, p3

    .line 435
    nop

    .line 436
    nop

    .line 439
    nop

    .line 440
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p3, :cond_8

    .line 441
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_7

    .line 442
    add-int/lit8 v6, v4, 0x1

    aget v4, p1, v4

    .line 443
    shr-int/lit8 v7, v4, 0x10

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 444
    shr-int/lit8 v9, v4, 0x8

    and-int/2addr v9, v8

    .line 445
    and-int/2addr v4, v8

    .line 447
    mul-int/lit8 v10, v7, 0x42

    mul-int/lit16 v11, v9, 0x81

    add-int/2addr v10, v11

    mul-int/lit8 v11, v4, 0x19

    add-int/2addr v10, v11

    add-int/lit16 v10, v10, 0x80

    shr-int/lit8 v10, v10, 0x8

    add-int/lit8 v10, v10, 0x10

    .line 448
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

    .line 450
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    rem-int/lit8 v3, v5, 0x2

    if-nez v3, :cond_6

    .line 451
    mul-int/lit8 v3, v7, -0x26

    mul-int/lit8 v10, v9, 0x4a

    sub-int/2addr v3, v10

    mul-int/lit8 v10, v4, 0x70

    add-int/2addr v3, v10

    add-int/lit16 v3, v3, 0x80

    shr-int/lit8 v3, v3, 0x8

    add-int/lit16 v3, v3, 0x80

    .line 452
    mul-int/lit8 v7, v7, 0x70

    mul-int/lit8 v9, v9, 0x5e

    sub-int/2addr v7, v9

    mul-int/lit8 v4, v4, 0x12

    sub-int/2addr v7, v4

    add-int/lit16 v7, v7, 0x80

    shr-int/lit8 v4, v7, 0x8

    add-int/lit16 v4, v4, 0x80

    .line 454
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

    .line 455
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

    .line 441
    :cond_6
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    move v3, v11

    goto :goto_1

    .line 440
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    :cond_8
    return-void
.end method

.method public static getInstance()Lcn/com/magnity/magnitycx/sdk/VideoRecorder;
    .locals 2

    .line 52
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;-><init>()V

    sput-object v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->sInstance:Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    return-object v0
.end method

.method private initEncoderWithFallback(IIII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    move-object/from16 v1, p0

    const-string v2, "VideoRecorder"

    const-string v3, "video/avc"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    const/16 v5, 0x13

    const/16 v6, 0x15

    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v8

    .line 147
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_6

    .line 148
    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v10

    .line 149
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    .line 150
    :cond_0
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_5

    aget-object v0, v11, v13

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_4

    .line 153
    :try_start_1
    invoke-virtual {v10, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 154
    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v0

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_3

    aget v7, v0, v15

    .line 155
    if-eq v7, v6, :cond_2

    if-ne v7, v5, :cond_1

    goto :goto_3

    .line 154
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 157
    :cond_2
    :goto_3
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 159
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 164
    :catchall_0
    move-exception v0

    :cond_3
    :goto_4
    nop

    .line 150
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 147
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 170
    :cond_6
    goto :goto_6

    .line 168
    :catchall_1
    move-exception v0

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error querying MediaCodecList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_6
    const-string v0, "c2.android.avc.encoder"

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 174
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_7
    const-string v0, "OMX.google.h264.encoder"

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 177
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_8
    const-string v7, "DEFAULT_AVC"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    nop

    .line 182
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 183
    nop

    .line 185
    :try_start_2
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-eqz v0, :cond_9

    .line 186
    :try_start_3
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v10, v0

    goto :goto_8

    .line 227
    :catchall_2
    move-exception v0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v5, p3

    move/from16 v15, p4

    move-object v8, v0

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_10

    .line 188
    :cond_9
    :try_start_4
    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object v10, v0

    .line 191
    :goto_8
    nop

    .line 192
    nop

    .line 193
    nop

    .line 195
    const/4 v11, 0x1

    :try_start_5
    invoke-virtual {v10}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 196
    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v12, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_9
    if-ge v13, v12, :cond_c

    :try_start_6
    aget v8, v0, v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 197
    if-ne v8, v6, :cond_a

    .line 198
    const/4 v15, 0x1

    goto :goto_a

    .line 199
    :cond_a
    if-ne v8, v5, :cond_b

    .line 200
    const/4 v14, 0x1

    .line 196
    :cond_b
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 203
    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_c
    :goto_b
    nop

    .line 205
    if-eqz v15, :cond_d

    .line 206
    const/16 v8, 0x15

    goto :goto_c

    .line 207
    :cond_d
    if-eqz v14, :cond_e

    .line 208
    const/16 v8, 0x13

    goto :goto_c

    .line 207
    :cond_e
    const/16 v8, 0x15

    .line 211
    :goto_c
    move/from16 v12, p1

    move/from16 v13, p2

    :try_start_7
    invoke-static {v3, v12, v13}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v14

    .line 212
    const-string v0, "color-format"

    invoke-virtual {v14, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 213
    const-string v0, "bitrate"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move/from16 v15, p4

    :try_start_8
    invoke-virtual {v14, v0, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 214
    const-string v0, "frame-rate"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move/from16 v5, p3

    :try_start_9
    invoke-virtual {v14, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 215
    const-string v0, "i-frame-interval"

    invoke-virtual {v14, v0, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 217
    :try_start_a
    const-string v0, "bitrate-mode"

    invoke-virtual {v14, v0, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_d

    .line 218
    :catchall_5
    move-exception v0

    :goto_d
    nop

    .line 220
    const/4 v6, 0x0

    :try_start_b
    invoke-virtual {v10, v14, v6, v6, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 221
    invoke-virtual {v10}, Landroid/media/MediaCodec;->start()V

    .line 223
    iput-object v10, v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    .line 224
    iput v8, v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successfully initialized encoder: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " with colorFormat="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 226
    return-void

    .line 227
    :catchall_6
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    goto :goto_e

    :catchall_8
    move-exception v0

    move/from16 v5, p3

    goto :goto_e

    :catchall_9
    move-exception v0

    move/from16 v5, p3

    move/from16 v15, p4

    :goto_e
    const/4 v6, 0x0

    :goto_f
    move-object v8, v0

    goto :goto_10

    :catchall_a
    move-exception v0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v5, p3

    move/from16 v15, p4

    const/4 v6, 0x0

    move-object v8, v0

    move-object v10, v6

    .line 228
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed candidate encoder "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    nop

    .line 230
    if-eqz v10, :cond_f

    .line 231
    :try_start_c
    invoke-virtual {v10}, Landroid/media/MediaCodec;->stop()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_11

    :catchall_b
    move-exception v0

    .line 232
    :goto_11
    :try_start_d
    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception v0

    .line 233
    :goto_12
    nop

    .line 236
    :cond_f
    move-object v0, v8

    const/16 v5, 0x13

    const/16 v6, 0x15

    goto/16 :goto_7

    .line 238
    :cond_10
    if-eqz v0, :cond_11

    .line 239
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All AVC encoders failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 241
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No suitable AVC encoder found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 2

    .line 415
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 416
    new-instance v1, Lcn/com/magnity/magnitycx/sdk/VideoRecorder$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 428
    return-void
.end method


# virtual methods
.method public declared-synchronized isRecording()Z
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 65
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

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 252
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

    .line 253
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

    .line 252
    :cond_1
    move-object v3, p1

    .line 255
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-static {v3, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 256
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    iget v7, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v10, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v11, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 257
    if-eq v4, v3, :cond_2

    .line 258
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    :cond_2
    :goto_0
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    .line 263
    const/16 v2, 0x13

    if-ne p1, v2, :cond_3

    .line 264
    :try_start_2
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-static {v0, p1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->encodeYUV420P([B[III)V

    goto :goto_1

    .line 266
    :cond_3
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-static {v0, p1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->encodeYUV420SP([B[III)V

    .line 270
    :goto_1
    iget-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 271
    if-ltz v5, :cond_5

    .line 273
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    .line 273
    const/16 v2, 0x15

    if-lt p1, v2, :cond_4

    .line 274
    :try_start_3
    invoke-virtual {v0, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_2

    .line 276
    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p1, p1, v5

    .line 278
    :goto_2
    if-eqz p1, :cond_5

    .line 279
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 280
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 281
    iget-wide v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    long-to-double v2, v2

    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-double v6, p1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    double-to-long v8, v2

    .line 282
    :try_start_4
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    iget v7, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 283
    iget-wide v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    .line 288
    :cond_5
    invoke-direct {p0, v1}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->drainEncoder(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 290
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 291
    :try_start_5
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 292
    monitor-exit p0

    return v1

    .line 247
    :cond_6
    :goto_3
    monitor-exit p0

    return v1

    .line 245
    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public declared-synchronized start(Ljava/lang/String;IIII)Z
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 75
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    div-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x10

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    .line 76
    div-int/lit8 p3, p3, 0x10

    mul-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    .line 77
    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    if-gtz p2, :cond_1

    const/16 p2, 0x1e0

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    .line 78
    :cond_1
    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    if-gtz p2, :cond_2

    const/16 p2, 0x280

    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    .line 80
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

    .line 81
    const/16 p2, 0xc8

    if-lt p5, p2, :cond_4

    mul-int/lit16 p5, p5, 0x3e8

    goto :goto_1

    :cond_4
    const p5, 0x1e8480

    .line 83
    :goto_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 85
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_5

    .line 86
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 88
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 89
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 93
    :cond_6
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mActualOutputPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 95
    :try_start_2
    new-instance p3, Landroid/media/MediaMuxer;

    iget-object p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mActualOutputPath:Ljava/lang/String;

    invoke-direct {p3, p4, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    goto :goto_3

    .line 96
    :catchall_0
    move-exception p3

    .line 97
    :try_start_3
    const-string p4, "VideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create MediaMuxer at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", trying app external files dir"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    nop

    .line 100
    const/4 p1, 0x0

    :try_start_4
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object p4

    .line 101
    if-eqz p4, :cond_7

    .line 102
    const-string v1, "media"

    invoke-virtual {p4, v1}, Lcn/com/magnity/magnitycx/MagApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 103
    if-nez p1, :cond_7

    invoke-virtual {p4}, Lcn/com/magnity/magnitycx/MagApplication;->getFilesDir()Ljava/io/File;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 105
    :catchall_1
    move-exception p4

    :cond_7
    :goto_2
    nop

    .line 107
    if-eqz p1, :cond_a

    .line 108
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_8
    new-instance p3, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 111
    :cond_9
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mActualOutputPath:Ljava/lang/String;

    .line 112
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mActualOutputPath:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 113
    nop

    .line 119
    :goto_3
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    iget p3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I

    invoke-direct {p0, p1, p2, p3, p5}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->initEncoderWithFallback(IIII)V

    .line 121
    const/4 p1, -0x1

    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mTrackIndex:I

    .line 122
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mMuxerStarted:Z

    .line 124
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    .line 125
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    mul-int p1, p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mPixelBuffer:[I

    .line 126
    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mYuvBuffer:[B

    .line 127
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    .line 129
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z

    .line 130
    const-string p2, "VideoRecorder"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Recording started successfully: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mActualOutputPath:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mWidth:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mHeight:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "@"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "fps, bitrate="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", colorFormat="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mColorFormat:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string p2, "\u958b\u59cb\u9304\u5f71..."

    invoke-static {p2}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->showToast(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    monitor-exit p0

    return p1

    .line 114
    :cond_a
    :try_start_6
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 133
    :catchall_2
    move-exception p1

    .line 134
    :try_start_7
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

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u9304\u5f71\u555f\u52d5\u5931\u6557: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->showToast(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->cleanup()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 137
    monitor-exit p0

    return v0

    .line 68
    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 10

    monitor-enter p0

    .line 297
    :try_start_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    .line 298
    monitor-exit p0

    return-void

    .line 300
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

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mIsRecording:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 304
    :try_start_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 307
    if-ltz v4, :cond_1

    .line 308
    iget-wide v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFrameIndex:J

    long-to-double v0, v0

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mFps:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-double v2, v2

    const-wide v5, 0x412e848000000000L    # 1000000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-long v7, v0

    .line 309
    :try_start_3
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 312
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->drainEncoder(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :cond_2
    :goto_0
    :try_start_4
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->cleanup()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 318
    goto :goto_1

    .line 314
    :catchall_0
    move-exception v0

    .line 315
    :try_start_5
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 320
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mActualOutputPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 321
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->mActualOutputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9304\u5f71\u5df2\u5132\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->showToast(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 325
    :try_start_7
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_3

    .line 327
    invoke-static {v1, v0}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->notifyMediaSync(Landroid/content/Context;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 329
    :catchall_1
    move-exception v0

    :cond_3
    :goto_2
    nop

    .line 332
    :cond_4
    :try_start_8
    const-string v0, "VideoRecorder"

    const-string v1, "Recording stopped and saved successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 333
    monitor-exit p0

    return-void

    .line 317
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->cleanup()V

    .line 318
    throw v0

    .line 296
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
