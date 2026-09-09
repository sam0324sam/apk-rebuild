.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,675:1\n544#2:676\n544#2:677\n*E\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n*L\n449#1:676\n472#1:677\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u001d\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\"J\u0008\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002R\u001a\u0010\u0007\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
        "maxByteCount",
        "",
        "finished",
        "",
        "(Lokhttp3/internal/http2/Http2Stream;JZ)V",
        "closed",
        "getClosed$okhttp",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "getFinished$okhttp",
        "setFinished$okhttp",
        "readBuffer",
        "Lokio/Buffer;",
        "getReadBuffer",
        "()Lokio/Buffer;",
        "receiveBuffer",
        "getReceiveBuffer",
        "trailers",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "setTrailers",
        "(Lokhttp3/Headers;)V",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
        "receive",
        "source",
        "Lokio/BufferedSource;",
        "receive$okhttp",
        "timeout",
        "Lokio/Timeout;",
        "updateConnectionFlowControl",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiveBuffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.field private trailers:Lokhttp3/Headers;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;JZ)V
    .locals 2
    .param p1, "$outer"    # Lokhttp3/internal/http2/Http2Stream;
    .param p2, "maxByteCount"    # J
    .param p4, "finished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .prologue
    .line 312
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 323
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 326
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-void
.end method

.method private final updateConnectionFlowControl(J)V
    .locals 3
    .param p1, "read"    # J

    .prologue
    .line 406
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const-string v1, "Assertion failed"

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 408
    return-void
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    const-wide/16 v4, 0x0

    .line 472
    .local v4, "bytesDiscarded":J
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v6

    nop

    const/4 v0, 0x0

    .line 473
    .local v0, "$i$a$-synchronized-Http2Stream$FramingSource$close$1":I
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 474
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 475
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 476
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v2, "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    const/4 v1, 0x0

    .line 677
    .local v1, "$i$f$notifyAll":I
    if-nez v2, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v3, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v1    # "$i$f$notifyAll":I
    .end local v2    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 677
    .restart local v1    # "$i$f$notifyAll":I
    .restart local v2    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    :cond_0
    :try_start_1
    check-cast v2, Ljava/lang/Object;

    .end local v2    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 477
    nop

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    monitor-exit v6

    .line 478
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 479
    invoke-direct {p0, v4, v5}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 481
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary$okhttp()V

    .line 482
    return-void
.end method

.method public final getClosed$okhttp()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    return v0
.end method

.method public final getFinished$okhttp()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    return v0
.end method

.method public final getReadBuffer()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getReceiveBuffer()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getTrailers()Lokhttp3/Headers;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 16
    .param p1, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "sink"

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-ltz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    if-nez v10, :cond_3

    const/4 v2, 0x0

    .local v2, "$i$a$-require-Http2Stream$FramingSource$read$1":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byteCount < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .end local v2    # "$i$a$-require-Http2Stream$FramingSource$read$1":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 358
    .local v3, "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .local v4, "errorExceptionToDeliver":Ljava/io/IOException;
    .local v5, "tryAgain":Z
    .local v6, "readBytesDelivered":J
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-lez v10, :cond_7

    .line 360
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12, v13}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v6

    .line 361
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v12

    add-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Lokhttp3/internal/http2/Http2Stream;->setReadBytesTotal$okhttp(J)V

    .line 363
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesAcknowledged()J

    move-result-wide v14

    sub-long v8, v12, v14

    .line 364
    .local v8, "unacknowledgedBytesRead":J
    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Connection;->getOkHttpSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-long v12, v10

    cmp-long v10, v8, v12

    if-ltz v10, :cond_2

    .line 368
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v12

    invoke-virtual {v10, v12, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater$okhttp(IJ)V

    .line 369
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadBytesTotal()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lokhttp3/internal/http2/Http2Stream;->setReadBytesAcknowledged$okhttp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v8    # "unacknowledgedBytesRead":J
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 379
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    monitor-exit v11

    .line 383
    if-eqz v5, :cond_8

    .line 341
    .end local v3    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    .end local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    .end local v5    # "tryAgain":Z
    .end local v6    # "readBytesDelivered":J
    :cond_3
    nop

    .line 342
    const/4 v5, 0x0

    .line 343
    .restart local v5    # "tryAgain":Z
    const-wide/16 v6, -0x1

    .line 344
    .restart local v6    # "readBytesDelivered":J
    const/4 v4, 0x0

    check-cast v4, Ljava/io/IOException;

    .line 348
    .restart local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v11

    nop

    const/4 v3, 0x0

    .line 349
    .restart local v3    # "$i$a$-synchronized-Http2Stream$FramingSource$read$2":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    nop

    .line 351
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getErrorCode$okhttp()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->getErrorException$okhttp()Ljava/io/IOException;

    move-result-object v10

    if-eqz v10, :cond_5

    move-object v4, v10

    .line 356
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v10, :cond_1

    .line 357
    new-instance v10, Ljava/io/IOException;

    const-string v12, "stream closed"

    invoke-direct {v10, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :catchall_0
    move-exception v10

    .line 377
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 353
    :cond_5
    :try_start_5
    new-instance v10, Lokhttp3/internal/http2/StreamResetException;

    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v12}, Lokhttp3/internal/http2/Http2Stream;->getErrorCode$okhttp()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v12

    if-nez v12, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-direct {v10, v12}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    check-cast v10, Ljava/io/IOException;

    move-object v4, v10

    goto :goto_2

    .line 371
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v10, :cond_2

    if-nez v4, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Stream;->waitForIo$okhttp()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 374
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 387
    :cond_8
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-eqz v10, :cond_9

    .line 389
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 401
    .end local v6    # "readBytesDelivered":J
    :goto_3
    return-wide v6

    .line 393
    .restart local v6    # "readBytesDelivered":J
    :cond_9
    if-eqz v4, :cond_b

    .line 398
    if-nez v4, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    check-cast v4, Ljava/lang/Throwable;

    .end local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    throw v4

    .line 401
    .restart local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    :cond_b
    const-wide/16 v6, -0x1

    goto :goto_3
.end method

.method public final receive$okhttp(Lokio/BufferedSource;J)V
    .locals 22
    .param p1, "source"    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v15, "source"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v15}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    sget-boolean v16, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v16, :cond_3

    if-nez v15, :cond_3

    const-string v16, "Assertion failed"

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 443
    .local v4, "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    .local v10, "finished":Z
    .local v11, "flowControlError":Z
    .local v12, "read":J
    :cond_1
    sub-long p2, p2, v12

    .line 448
    const-wide/16 v8, 0x0

    .line 449
    .local v8, "bytesDiscarded":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v16, v0

    monitor-enter v16

    nop

    const/4 v5, 0x0

    .line 450
    .local v5, "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v15, :cond_8

    .line 451
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v8

    .line 452
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v15}, Lokio/Buffer;->clear()V

    .line 459
    :cond_2
    :goto_1
    nop

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 449
    monitor-exit v16

    .line 461
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-lez v15, :cond_3

    .line 462
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 419
    .end local v4    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    .end local v5    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    .end local v8    # "bytesDiscarded":J
    .end local v10    # "finished":Z
    .end local v11    # "flowControlError":Z
    .end local v12    # "read":J
    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v15, p2, v16

    if-lez v15, :cond_4

    .line 420
    const/4 v10, 0x0

    .line 421
    .restart local v10    # "finished":Z
    const/4 v11, 0x0

    .line 422
    .restart local v11    # "flowControlError":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v16, v0

    monitor-enter v16

    nop

    const/4 v4, 0x0

    .line 423
    .restart local v4    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 424
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v18

    add-long v18, v18, p2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    move-wide/from16 v20, v0

    cmp-long v15, v18, v20

    if-lez v15, :cond_5

    const/4 v11, 0x1

    .line 425
    :goto_2
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    monitor-exit v16

    .line 428
    if-eqz v11, :cond_6

    .line 429
    invoke-interface/range {p1 .. p3}, Lokio/BufferedSource;->skip(J)V

    .line 430
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v16, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual/range {v15 .. v16}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 465
    .end local v4    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    .end local v10    # "finished":Z
    .end local v11    # "flowControlError":Z
    :cond_4
    :goto_3
    return-void

    .line 424
    .restart local v4    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$1":I
    .restart local v10    # "finished":Z
    .restart local v11    # "flowControlError":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 422
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 435
    :cond_6
    if-eqz v10, :cond_7

    .line 436
    invoke-interface/range {p1 .. p3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_3

    .line 441
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-interface {v0, v15, v1, v2}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v12

    .line 442
    .restart local v12    # "read":J
    const-wide/16 v16, -0x1

    cmp-long v15, v12, v16

    if-nez v15, :cond_1

    new-instance v15, Ljava/io/EOFException;

    invoke-direct {v15}, Ljava/io/EOFException;-><init>()V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 454
    .restart local v5    # "$i$a$-synchronized-Http2Stream$FramingSource$receive$2":I
    .restart local v8    # "bytesDiscarded":J
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-nez v15, :cond_9

    const/4 v14, 0x1

    .line 455
    .local v14, "wasEmpty":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    check-cast v15, Lokio/Source;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 456
    if-eqz v14, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v7, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .local v7, "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    const/4 v6, 0x0

    .line 676
    .local v6, "$i$f$notifyAll":I
    if-nez v7, :cond_a

    new-instance v15, Lkotlin/TypeCastException;

    const-string v17, "null cannot be cast to non-null type java.lang.Object"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 449
    .end local v6    # "$i$f$notifyAll":I
    .end local v7    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    .end local v14    # "wasEmpty":Z
    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    .line 454
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 676
    .restart local v6    # "$i$f$notifyAll":I
    .restart local v7    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    .restart local v14    # "wasEmpty":Z
    :cond_a
    :try_start_3
    check-cast v7, Ljava/lang/Object;

    .end local v7    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1
.end method

.method public final setClosed$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    return-void
.end method

.method public final setFinished$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    return-void
.end method

.method public final setTrailers(Lokhttp3/Headers;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 332
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getReadTimeout$okhttp()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method
