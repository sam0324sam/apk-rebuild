.class public final Lokhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"

# interfaces
.implements Lokhttp3/WebSocket;
.implements Lokhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/RealWebSocket$PingRunnable;,
        Lokhttp3/internal/ws/RealWebSocket$Message;,
        Lokhttp3/internal/ws/RealWebSocket$Close;,
        Lokhttp3/internal/ws/RealWebSocket$Streams;,
        Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lokhttp3/internal/ws/RealWebSocket$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealWebSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n*L\n1#1,577:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0018\u0000 ]2\u00020\u00012\u00020\u0002:\u0006[\\]^_`B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020#2\u0006\u00101\u001a\u000202J\u0008\u00103\u001a\u00020/H\u0016J\u001f\u00104\u001a\u00020/2\u0006\u00105\u001a\u0002062\u0008\u00107\u001a\u0004\u0018\u000108H\u0000\u00a2\u0006\u0002\u00089J\u001a\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020#2\u0008\u0010<\u001a\u0004\u0018\u00010\u0017H\u0016J \u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020#2\u0008\u0010<\u001a\u0004\u0018\u00010\u00172\u0006\u0010=\u001a\u00020\nJ\u000e\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020@J\u001c\u0010A\u001a\u00020/2\n\u0010B\u001a\u00060Cj\u0002`D2\u0008\u00105\u001a\u0004\u0018\u000106J\u0016\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)J\u0006\u0010G\u001a\u00020/J\u0018\u0010H\u001a\u00020/2\u0006\u0010;\u001a\u00020#2\u0006\u0010<\u001a\u00020\u0017H\u0016J\u0010\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020\u0017H\u0016J\u0010\u0010I\u001a\u00020/2\u0006\u0010K\u001a\u00020\u001eH\u0016J\u0010\u0010L\u001a\u00020/2\u0006\u0010M\u001a\u00020\u001eH\u0016J\u0010\u0010N\u001a\u00020/2\u0006\u0010M\u001a\u00020\u001eH\u0016J\u000e\u0010O\u001a\u00020\r2\u0006\u0010M\u001a\u00020\u001eJ\u0006\u0010P\u001a\u00020\rJ\u0008\u0010\u001f\u001a\u00020\nH\u0016J\u0006\u0010%\u001a\u00020#J\u0006\u0010&\u001a\u00020#J\u0008\u0010Q\u001a\u00020\u0004H\u0016J\u0008\u0010R\u001a\u00020/H\u0002J\u0010\u0010S\u001a\u00020\r2\u0006\u0010J\u001a\u00020\u0017H\u0016J\u0010\u0010S\u001a\u00020\r2\u0006\u0010K\u001a\u00020\u001eH\u0016J\u0018\u0010S\u001a\u00020\r2\u0006\u0010T\u001a\u00020\u001e2\u0006\u0010U\u001a\u00020#H\u0002J\u0006\u0010\'\u001a\u00020#J\u0006\u0010V\u001a\u00020/J\r\u0010W\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008XJ\r\u0010Y\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008ZR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006a"
    }
    d2 = {
        "Lokhttp3/internal/ws/RealWebSocket;",
        "Lokhttp3/WebSocket;",
        "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;",
        "originalRequest",
        "Lokhttp3/Request;",
        "listener",
        "Lokhttp3/WebSocketListener;",
        "random",
        "Ljava/util/Random;",
        "pingIntervalMillis",
        "",
        "(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;J)V",
        "awaitingPong",
        "",
        "call",
        "Lokhttp3/Call;",
        "cancelFuture",
        "Ljava/util/concurrent/ScheduledFuture;",
        "enqueuedClose",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "failed",
        "key",
        "",
        "getListener$okhttp",
        "()Lokhttp3/WebSocketListener;",
        "messageAndCloseQueue",
        "Ljava/util/ArrayDeque;",
        "",
        "pongQueue",
        "Lokio/ByteString;",
        "queueSize",
        "reader",
        "Lokhttp3/internal/ws/WebSocketReader;",
        "receivedCloseCode",
        "",
        "receivedCloseReason",
        "receivedPingCount",
        "receivedPongCount",
        "sentPingCount",
        "streams",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "writer",
        "Lokhttp3/internal/ws/WebSocketWriter;",
        "writerRunnable",
        "Ljava/lang/Runnable;",
        "awaitTermination",
        "",
        "timeout",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "cancel",
        "checkUpgradeSuccess",
        "response",
        "Lokhttp3/Response;",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "checkUpgradeSuccess$okhttp",
        "close",
        "code",
        "reason",
        "cancelAfterCloseMillis",
        "connect",
        "client",
        "Lokhttp3/OkHttpClient;",
        "failWebSocket",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "initReaderAndWriter",
        "name",
        "loopReader",
        "onReadClose",
        "onReadMessage",
        "text",
        "bytes",
        "onReadPing",
        "payload",
        "onReadPong",
        "pong",
        "processNextFrame",
        "request",
        "runWriter",
        "send",
        "data",
        "formatOpcode",
        "tearDown",
        "writeOneFrame",
        "writeOneFrame$okhttp",
        "writePingFrame",
        "writePingFrame$okhttp",
        "CancelRunnable",
        "Close",
        "Companion",
        "Message",
        "PingRunnable",
        "Streams",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field public static final Companion:Lokhttp3/internal/ws/RealWebSocket$Companion;

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private awaitingPong:Z

.field private call:Lokhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field private final listener:Lokhttp3/WebSocketListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lokhttp3/Request;

.field private final pingIntervalMillis:J

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lokhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private receivedPingCount:I

.field private receivedPongCount:I

.field private sentPingCount:I

.field private streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lokhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lokhttp3/internal/ws/RealWebSocket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/ws/RealWebSocket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->Companion:Lokhttp3/internal/ws/RealWebSocket$Companion;

    .line 562
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;J)V
    .locals 8
    .param p1, "originalRequest"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lokhttp3/WebSocketListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "random"    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "pingIntervalMillis"    # J

    .prologue
    const/4 v2, 0x0

    const-string v0, "originalRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    iput-object p3, p0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    iput-wide p4, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    .line 88
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 91
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 127
    const-string v0, "GET"

    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    .line 128
    .local v7, "$i$a$-require-RealWebSocket$1":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must be GET: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 131
    .end local v7    # "$i$a$-require-RealWebSocket$1":I
    :cond_0
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const/16 v3, 0x10

    new-array v1, v3, [B

    .local v1, "$this$apply":[B
    const/4 v6, 0x0

    .local v6, "$i$a$-apply-RealWebSocket$2":I
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 132
    new-instance v0, Lokhttp3/internal/ws/RealWebSocket$3;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/RealWebSocket$3;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    .line 140
    return-void
.end method

.method private final runWriter()V
    .locals 2

    .prologue
    .line 407
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const-string v1, "Assertion failed"

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 408
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 409
    :cond_1
    return-void
.end method

.method private final declared-synchronized send(Lokio/ByteString;I)Z
    .locals 6
    .param p1, "data"    # Lokio/ByteString;
    .param p2, "formatOpcode"    # I

    .prologue
    const/4 v0, 0x0

    .line 352
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 355
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 356
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_2
    :try_start_2
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 362
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lokhttp3/internal/ws/RealWebSocket$Message;-><init>(ILokio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final awaitTermination(ILjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    int-to-long v2, p1

    invoke-interface {v0, v2, v3, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 270
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 148
    return-void
.end method

.method public final checkUpgradeSuccess$okhttp(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)V
    .locals 10
    .param p1, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "exchange"    # Lokhttp3/internal/connection/Exchange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/16 v7, 0x27

    const/4 v6, 0x0

    const-string v4, "response"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x65

    if-eq v4, v5, :cond_0

    .line 196
    new-instance v4, Ljava/net/ProtocolException;

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected HTTP 101 response but was \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 200
    :cond_0
    const-string v4, "Connection"

    invoke-static {p1, v4, v6, v8, v6}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "headerConnection":Ljava/lang/String;
    const-string v4, "Upgrade"

    invoke-static {v4, v2, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 202
    new-instance v4, Ljava/net/ProtocolException;

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 206
    :cond_1
    const-string v4, "Upgrade"

    invoke-static {p1, v4, v6, v8, v6}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "headerUpgrade":Ljava/lang/String;
    const-string v4, "websocket"

    invoke-static {v4, v3, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    new-instance v4, Ljava/net/ProtocolException;

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 212
    :cond_2
    const-string v4, "Sec-WebSocket-Accept"

    invoke-static {p1, v4, v6, v8, v6}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "headerAccept":Ljava/lang/String;
    sget-object v4, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "acceptExpected":Ljava/lang/String;
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 215
    new-instance v4, Ljava/net/ProtocolException;

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' but was \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 219
    :cond_3
    if-nez p2, :cond_4

    .line 220
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Web Socket exchange missing: bad interceptor?"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 222
    :cond_4
    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 377
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized close(ILjava/lang/String;J)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "cancelAfterCloseMillis"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 385
    monitor-enter p0

    :try_start_0
    sget-object v4, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-virtual {v4, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 387
    const/4 v1, 0x0

    check-cast v1, Lokio/ByteString;

    .line 388
    .local v1, "reasonBytes":Lokio/ByteString;
    if-eqz p2, :cond_1

    .line 389
    sget-object v4, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v4, p2}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x7b

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 391
    .local v0, "$i$a$-require-RealWebSocket$close$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason.size() > 123: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v0    # "$i$a$-require-RealWebSocket$close$1":I
    .end local v1    # "reasonBytes":Lokio/ByteString;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "reasonBytes":Lokio/ByteString;
    :cond_0
    move v4, v3

    .line 390
    goto :goto_0

    .line 395
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 403
    :goto_1
    monitor-exit p0

    return v2

    .line 398
    :cond_3
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 401
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v4, Lokhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v4, p1, v1, p3, p4}, Lokhttp3/internal/ws/RealWebSocket$Close;-><init>(ILokio/ByteString;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final connect(Lokhttp3/OkHttpClient;)V
    .locals 5
    .param p1, "client"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "client"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 152
    sget-object v3, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 153
    sget-object v3, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 155
    .local v1, "webSocketClient":Lokhttp3/OkHttpClient;
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 156
    const-string v3, "Upgrade"

    const-string v4, "websocket"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 157
    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 158
    const-string v3, "Sec-WebSocket-Key"

    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 159
    const-string v3, "Sec-WebSocket-Version"

    const-string v4, "13"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 161
    .local v0, "request":Lokhttp3/Request;
    sget-object v2, Lokhttp3/RealCall;->Companion:Lokhttp3/RealCall$Companion;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lokhttp3/RealCall$Companion;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v2

    check-cast v2, Lokhttp3/Call;

    iput-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    .line 162
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v2, Lokhttp3/internal/ws/RealWebSocket$connect$1;

    invoke-direct {v2, p0, v0}, Lokhttp3/internal/ws/RealWebSocket$connect$1;-><init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;)V

    check-cast v2, Lokhttp3/Callback;

    invoke-interface {v3, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 191
    return-void
.end method

.method public final failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v2, "e"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    const/4 v1, 0x0

    .line 522
    .local v1, "streamsToClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 523
    .local v0, "$i$a$-synchronized-RealWebSocket$failWebSocket$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    .line 535
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    .end local p1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 524
    .restart local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    .line 525
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 526
    const/4 v2, 0x0

    check-cast v2, Lokhttp3/internal/ws/RealWebSocket$Streams;

    iput-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 527
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 528
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :cond_3
    monitor-exit p0

    .line 531
    nop

    .line 532
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    check-cast p0, Lokhttp3/WebSocket;

    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "e":Ljava/lang/Exception;
    invoke-virtual {v2, p0, p1, p2}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 534
    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 522
    .restart local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    .restart local p1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 535
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    .end local p1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 534
    if-eqz v1, :cond_4

    check-cast v1, Ljava/io/Closeable;

    .end local v1    # "streamsToClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    throw v2
.end method

.method public final getListener$okhttp()Lokhttp3/WebSocketListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    return-object v0
.end method

.method public final initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "streams"    # Lokhttp3/internal/ws/RealWebSocket$Streams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    monitor-enter p0

    nop

    const/4 v7, 0x0

    .line 227
    .local v7, "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    :try_start_0
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 228
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getClient()Z

    move-result v1

    invoke-virtual {p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getSink()Lokio/BufferedSink;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/ws/WebSocketWriter;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 229
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 230
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 232
    :cond_0
    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v1, p0}, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    check-cast v1, Ljava/lang/Runnable;

    iget-wide v2, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    iget-wide v4, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 231
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 234
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_0
    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 237
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    .line 239
    new-instance v1, Lokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getClient()Z

    move-result v2

    invoke-virtual {p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getSource()Lokio/BufferedSource;

    move-result-object v3

    move-object v0, p0

    check-cast v0, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-direct {v1, v2, v3, v0}, Lokhttp3/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    .line 240
    return-void

    :cond_3
    move v0, v9

    .line 234
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loopReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    :goto_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    .line 249
    :cond_1
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const-string v6, "reason"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    if-eq p1, v7, :cond_0

    move v6, v4

    :goto_0
    if-nez v6, :cond_1

    const-string v5, "Failed requirement."

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_0
    move v6, v5

    goto :goto_0

    .line 316
    :cond_1
    check-cast v3, Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 317
    .local v3, "toClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    nop

    const/4 v2, 0x0

    .line 318
    .local v2, "$i$a$-synchronized-RealWebSocket$onReadClose$1":I
    :try_start_0
    iget v6, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-ne v6, v7, :cond_2

    :goto_1
    if-nez v4, :cond_3

    const/4 v1, 0x0

    .local v1, "$i$a$-check-RealWebSocket$onReadClose$1$1":I
    const-string v5, "already closed"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .end local v1    # "$i$a$-check-RealWebSocket$onReadClose$1$1":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    move v4, v5

    .line 318
    goto :goto_1

    .line 319
    :cond_3
    :try_start_1
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 320
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 321
    iget-boolean v4, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 322
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 323
    const/4 v4, 0x0

    check-cast v4, Lokhttp3/internal/ws/RealWebSocket$Streams;

    iput-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 324
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 325
    :cond_5
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v4, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 327
    :cond_7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    monitor-exit p0

    .line 329
    nop

    .line 330
    :try_start_2
    iget-object v5, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v0, p0

    check-cast v0, Lokhttp3/WebSocket;

    move-object v4, v0

    invoke-virtual {v5, v4, p1, p2}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 332
    if-eqz v3, :cond_8

    .line 333
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    check-cast p0, Lokhttp3/WebSocket;

    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual {v4, p0, p1, p2}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    :cond_8
    if-eqz v3, :cond_9

    check-cast v3, Ljava/io/Closeable;

    .end local v3    # "toClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    :cond_9
    return-void

    .restart local v3    # "toClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    :catchall_1
    move-exception v4

    .line 336
    if-eqz v3, :cond_a

    check-cast v3, Ljava/io/Closeable;

    .end local v3    # "toClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    throw v4
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    check-cast p0, Lokhttp3/WebSocket;

    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual {v0, p0, p1}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onReadMessage(Lokio/ByteString;)V
    .locals 1
    .param p1, "bytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    check-cast p0, Lokhttp3/WebSocket;

    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual {v0, p0, p1}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    .line 296
    return-void
.end method

.method public declared-synchronized onReadPing(Lokio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 304
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReadPong(Lokio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pong(Lokio/ByteString;)Z
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    monitor-exit p0

    return v0

    .line 371
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    const/4 v0, 0x1

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final processNextFrame()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 257
    nop

    .line 258
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 259
    iget v2, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 257
    :cond_1
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_0
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized receivedPingCount()I
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized receivedPongCount()I
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v0

    return v0
.end method

.method public send(Lokio/ByteString;)Z
    .locals 1
    .param p1, "bytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized sentPingCount()I
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final tearDown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 278
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 279
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 280
    return-void
.end method

.method public final writeOneFrame$okhttp()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v12, 0x0

    .line 427
    .local v12, "writer":Lokhttp3/internal/ws/WebSocketWriter;
    const/4 v7, 0x0

    .line 428
    .local v7, "pong":Lokio/ByteString;
    const/4 v6, 0x0

    .line 429
    .local v6, "messageOrClose":Ljava/lang/Object;
    const/4 v8, -0x1

    .line 430
    .local v8, "receivedCloseCode":I
    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    .line 431
    .local v9, "receivedCloseReason":Ljava/lang/String;
    const/4 v11, 0x0

    check-cast v11, Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 433
    .local v11, "streamsToClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    nop

    const/4 v2, 0x0

    .line 434
    .local v2, "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    .line 435
    const/4 v13, 0x0

    monitor-exit p0

    .line 486
    .end local v6    # "messageOrClose":Ljava/lang/Object;
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :goto_0
    return v13

    .line 438
    .restart local v6    # "messageOrClose":Ljava/lang/Object;
    .restart local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lokio/ByteString;

    move-object v7, v0

    .line 440
    if-nez v7, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 442
    instance-of v13, v6, Lokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v13, :cond_8

    .line 443
    move-object/from16 v0, p0

    iget v8, v0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 444
    move-object/from16 v0, p0

    iget-object v9, v0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 445
    const/4 v13, -0x1

    if-eq v8, v13, :cond_6

    .line 446
    move-object/from16 v0, p0

    iget-object v11, v0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 447
    const/4 v13, 0x0

    check-cast v13, Lokhttp3/internal/ws/RealWebSocket$Streams;

    move-object/from16 v0, p0

    iput-object v13, v0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 448
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v13, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v13}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 456
    .end local v6    # "messageOrClose":Ljava/lang/Object;
    :cond_2
    :goto_1
    nop

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    monitor-exit p0

    .line 460
    nop

    .line 461
    if-eqz v7, :cond_9

    .line 462
    if-nez v12, :cond_3

    :try_start_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v12, v7}, Lokhttp3/internal/ws/WebSocketWriter;->writePong(Lokio/ByteString;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 482
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_4
    :goto_2
    const/4 v14, 0x1

    .line 486
    if-eqz v11, :cond_5

    move-object v13, v11

    check-cast v13, Ljava/io/Closeable;

    invoke-static {v13}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    move v13, v14

    goto :goto_0

    .line 451
    .restart local v6    # "messageOrClose":Ljava/lang/Object;
    .restart local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v15, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    new-instance v13, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    check-cast v13, Ljava/lang/Runnable;

    .line 452
    move-object v0, v6

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Close;

    move-object v14, v0

    invoke-virtual {v14}, Lokhttp3/internal/ws/RealWebSocket$Close;->getCancelAfterCloseMillis()J

    move-result-wide v16

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 451
    move-wide/from16 v0, v16

    invoke-interface {v15, v13, v0, v1, v14}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 433
    .end local v6    # "messageOrClose":Ljava/lang/Object;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 454
    .restart local v6    # "messageOrClose":Ljava/lang/Object;
    :cond_8
    if-nez v6, :cond_2

    .line 455
    const/4 v13, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 463
    .end local v6    # "messageOrClose":Ljava/lang/Object;
    :cond_9
    :try_start_4
    instance-of v13, v6, Lokhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v13, :cond_c

    .line 464
    move-object v0, v6

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Message;

    move-object v13, v0

    invoke-virtual {v13}, Lokhttp3/internal/ws/RealWebSocket$Message;->getData()Lokio/ByteString;

    move-result-object v5

    .line 465
    .local v5, "data":Lokio/ByteString;
    if-nez v12, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 466
    :cond_a
    check-cast v6, Lokhttp3/internal/ws/RealWebSocket$Message;

    invoke-virtual {v6}, Lokhttp3/internal/ws/RealWebSocket$Message;->getFormatOpcode()I

    move-result v13

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v14

    int-to-long v14, v14

    .line 465
    invoke-virtual {v12, v13, v14, v15}, Lokhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lokio/Sink;

    move-result-object v13

    .line 466
    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v10

    .line 467
    .local v10, "sink":Lokio/BufferedSink;
    invoke-interface {v10, v5}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 468
    invoke-interface {v10}, Lokio/BufferedSink;->close()V

    .line 469
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    const/4 v3, 0x0

    .line 470
    .local v3, "$i$a$-synchronized-RealWebSocket$writeOneFrame$2":I
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 471
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 469
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 487
    .end local v3    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$2":I
    .end local v5    # "data":Lokio/ByteString;
    .end local v10    # "sink":Lokio/BufferedSink;
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :catchall_1
    move-exception v13

    .line 486
    if-eqz v11, :cond_b

    check-cast v11, Ljava/io/Closeable;

    .end local v11    # "streamsToClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    invoke-static {v11}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_b
    throw v13

    .line 469
    .restart local v3    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$2":I
    .restart local v5    # "data":Lokio/ByteString;
    .restart local v10    # "sink":Lokio/BufferedSink;
    .restart local v11    # "streamsToClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    .restart local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :catchall_2
    move-exception v13

    :try_start_7
    monitor-exit p0

    throw v13

    .line 472
    .end local v3    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$2":I
    .end local v5    # "data":Lokio/ByteString;
    .end local v10    # "sink":Lokio/BufferedSink;
    :cond_c
    instance-of v13, v6, Lokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v13, :cond_f

    .line 473
    move-object v0, v6

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Close;

    move-object v4, v0

    .line 474
    .local v4, "close":Lokhttp3/internal/ws/RealWebSocket$Close;
    if-nez v12, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v4}, Lokhttp3/internal/ws/RealWebSocket$Close;->getCode()I

    move-result v13

    invoke-virtual {v4}, Lokhttp3/internal/ws/RealWebSocket$Close;->getReason()Lokio/ByteString;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lokhttp3/internal/ws/WebSocketWriter;->writeClose(ILokio/ByteString;)V

    .line 477
    if-eqz v11, :cond_4

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    check-cast p0, Lokhttp3/WebSocket;

    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    if-nez v9, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v8, v9}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 481
    .end local v4    # "close":Lokhttp3/internal/ws/RealWebSocket$Close;
    .restart local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_f
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    check-cast v13, Ljava/lang/Throwable;

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public final writePingFrame$okhttp()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x1

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "writer":Lokhttp3/internal/ws/WebSocketWriter;
    const/4 v2, 0x0

    .line 499
    .local v2, "failedPing":I
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 500
    .local v0, "$i$a$-synchronized-RealWebSocket$writePingFrame$1":I
    :try_start_0
    iget-boolean v5, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit p0

    .line 517
    :goto_0
    return-void

    .line 501
    :cond_0
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 502
    iget-boolean v5, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    if-eqz v5, :cond_1

    iget v2, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    .line 503
    :goto_1
    iget v5, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    .line 504
    const/4 v5, 0x1

    iput-boolean v5, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    .line 505
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    monitor-exit p0

    .line 507
    if-eq v2, v4, :cond_2

    .line 508
    new-instance v4, Ljava/net/SocketTimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent ping but didn\'t receive pong within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 509
    iget-wide v6, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms (after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " successful ping/pongs)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 508
    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Exception;

    invoke-virtual {p0, v4, v8}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 502
    goto :goto_1

    .line 499
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 513
    :cond_2
    nop

    .line 514
    if-nez v3, :cond_3

    :try_start_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v3, v4}, Lokhttp3/internal/ws/WebSocketWriter;->writePing(Lokio/ByteString;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/io/IOException;
    check-cast v1, Ljava/lang/Exception;

    .end local v1    # "e":Ljava/io/IOException;
    invoke-virtual {p0, v1, v8}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_0
.end method
