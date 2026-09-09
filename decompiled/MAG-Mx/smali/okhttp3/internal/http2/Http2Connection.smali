.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Builder;,
        Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lokhttp3/internal/http2/Http2Connection$Listener;,
        Lokhttp3/internal/http2/Http2Connection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,933:1\n544#2:934\n527#2:935\n398#2,2:936\n389#2,14:938\n398#2,2:952\n389#2,14:954\n527#2:968\n370#2,5:969\n370#2,5:977\n370#2,5:983\n370#2,5:988\n398#2,2:993\n389#2,14:995\n398#2,2:1009\n389#2,14:1011\n389#2,6:1025\n389#2,6:1031\n37#3,2:974\n10894#4:976\n10895#4:982\n*E\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n171#1:934\n302#1:935\n331#1,2:936\n331#1,14:938\n352#1,2:952\n352#1,14:954\n396#1:968\n441#1,5:969\n453#1,5:977\n460#1,5:983\n465#1,5:988\n816#1,2:993\n816#1,14:995\n836#1,2:1009\n836#1,14:1011\n865#1,6:1025\n881#1,6:1031\n446#1,2:974\n453#1:976\n453#1:982\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 \u008e\u00012\u00020\u0001:\u0008\u008d\u0001\u008e\u0001\u008f\u0001\u0090\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010H\u001a\u00020IJ\u0008\u0010J\u001a\u00020IH\u0016J\'\u0010J\u001a\u00020I2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020L2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0000\u00a2\u0006\u0002\u0008PJ\u0012\u0010Q\u001a\u00020I2\u0008\u0010R\u001a\u0004\u0018\u00010OH\u0002J\u0006\u0010S\u001a\u00020IJ\u0010\u0010T\u001a\u0004\u0018\u00010;2\u0006\u0010U\u001a\u00020\u0010J\u0006\u0010V\u001a\u00020\u0010J&\u0010W\u001a\u00020;2\u0006\u0010X\u001a\u00020\u00102\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0Z2\u0006\u0010\\\u001a\u00020\u0006H\u0002J\u001c\u0010W\u001a\u00020;2\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0Z2\u0006\u0010\\\u001a\u00020\u0006J\u0006\u0010]\u001a\u00020\u0010J-\u0010^\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020\u00102\u0006\u0010c\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008dJ+\u0010e\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0Z2\u0006\u0010c\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008fJ#\u0010g\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0ZH\u0000\u00a2\u0006\u0002\u0008hJ\u001d\u0010i\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u0006\u0010j\u001a\u00020LH\u0000\u00a2\u0006\u0002\u0008kJ$\u0010l\u001a\u00020;2\u0006\u0010X\u001a\u00020\u00102\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0Z2\u0006\u0010\\\u001a\u00020\u0006J\u0015\u0010m\u001a\u00020\u00062\u0006\u0010_\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008nJ\u0017\u0010o\u001a\u0004\u0018\u00010;2\u0006\u0010_\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008pJ\u000e\u0010q\u001a\u00020I2\u0006\u0010r\u001a\u00020\"J\u000e\u0010s\u001a\u00020I2\u0006\u0010t\u001a\u00020LJ\u0012\u0010u\u001a\u00020I2\u0008\u0008\u0002\u0010v\u001a\u00020\u0006H\u0007J\u0015\u0010w\u001a\u00020I2\u0006\u0010x\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008yJ(\u0010z\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u0006\u0010{\u001a\u00020\u00062\u0008\u0010|\u001a\u0004\u0018\u00010}2\u0006\u0010b\u001a\u00020+J,\u0010~\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u0006\u0010{\u001a\u00020\u00062\u000c\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020[0ZH\u0000\u00a2\u0006\u0003\u0008\u0080\u0001J\"\u0010\u0081\u0001\u001a\u00020I2\u0007\u0010\u0082\u0001\u001a\u00020\u00062\u0007\u0010\u0083\u0001\u001a\u00020\u00102\u0007\u0010\u0084\u0001\u001a\u00020\u0010J\u0007\u0010\u0085\u0001\u001a\u00020IJ\u001f\u0010\u0086\u0001\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u0006\u0010t\u001a\u00020LH\u0000\u00a2\u0006\u0003\u0008\u0087\u0001J\u001f\u0010\u0088\u0001\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u0006\u0010j\u001a\u00020LH\u0000\u00a2\u0006\u0003\u0008\u0089\u0001J \u0010\u008a\u0001\u001a\u00020I2\u0006\u0010_\u001a\u00020\u00102\u0007\u0010\u008b\u0001\u001a\u00020+H\u0000\u00a2\u0006\u0003\u0008\u008c\u0001R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00068F@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017\"\u0004\u0008 \u0010\u0019R\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010$R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010,\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020+@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u001e\u0010/\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020+@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010.R\u0015\u00101\u001a\u000602R\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0014\u00105\u001a\u000206X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R \u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020;0:X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u001e\u0010>\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020+@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010.R\u001e\u0010@\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020+@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010.R\u0011\u0010B\u001a\u00020C\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010ER\u000e\u0010F\u001a\u00020GX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0091\u0001"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Connection;",
        "Ljava/io/Closeable;",
        "builder",
        "Lokhttp3/internal/http2/Http2Connection$Builder;",
        "(Lokhttp3/internal/http2/Http2Connection$Builder;)V",
        "awaitingPong",
        "",
        "client",
        "getClient$okhttp",
        "()Z",
        "connectionName",
        "",
        "getConnectionName$okhttp",
        "()Ljava/lang/String;",
        "currentPushRequests",
        "",
        "",
        "<set-?>",
        "isShutdown",
        "setShutdown$okhttp",
        "(Z)V",
        "lastGoodStreamId",
        "getLastGoodStreamId$okhttp",
        "()I",
        "setLastGoodStreamId$okhttp",
        "(I)V",
        "listener",
        "Lokhttp3/internal/http2/Http2Connection$Listener;",
        "getListener$okhttp",
        "()Lokhttp3/internal/http2/Http2Connection$Listener;",
        "nextStreamId",
        "getNextStreamId$okhttp",
        "setNextStreamId$okhttp",
        "okHttpSettings",
        "Lokhttp3/internal/http2/Settings;",
        "getOkHttpSettings",
        "()Lokhttp3/internal/http2/Settings;",
        "peerSettings",
        "getPeerSettings",
        "pushExecutor",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "pushObserver",
        "Lokhttp3/internal/http2/PushObserver;",
        "",
        "readBytesAcknowledged",
        "getReadBytesAcknowledged",
        "()J",
        "readBytesTotal",
        "getReadBytesTotal",
        "readerRunnable",
        "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;",
        "getReaderRunnable",
        "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;",
        "socket",
        "Ljava/net/Socket;",
        "getSocket$okhttp",
        "()Ljava/net/Socket;",
        "streams",
        "",
        "Lokhttp3/internal/http2/Http2Stream;",
        "getStreams$okhttp",
        "()Ljava/util/Map;",
        "writeBytesMaximum",
        "getWriteBytesMaximum",
        "writeBytesTotal",
        "getWriteBytesTotal",
        "writer",
        "Lokhttp3/internal/http2/Http2Writer;",
        "getWriter",
        "()Lokhttp3/internal/http2/Http2Writer;",
        "writerExecutor",
        "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
        "awaitPong",
        "",
        "close",
        "connectionCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "streamCode",
        "cause",
        "Ljava/io/IOException;",
        "close$okhttp",
        "failConnection",
        "e",
        "flush",
        "getStream",
        "id",
        "maxConcurrentStreams",
        "newStream",
        "associatedStreamId",
        "requestHeaders",
        "",
        "Lokhttp3/internal/http2/Header;",
        "out",
        "openStreamCount",
        "pushDataLater",
        "streamId",
        "source",
        "Lokio/BufferedSource;",
        "byteCount",
        "inFinished",
        "pushDataLater$okhttp",
        "pushHeadersLater",
        "pushHeadersLater$okhttp",
        "pushRequestLater",
        "pushRequestLater$okhttp",
        "pushResetLater",
        "errorCode",
        "pushResetLater$okhttp",
        "pushStream",
        "pushedStream",
        "pushedStream$okhttp",
        "removeStream",
        "removeStream$okhttp",
        "setSettings",
        "settings",
        "shutdown",
        "statusCode",
        "start",
        "sendConnectionPreface",
        "updateConnectionFlowControl",
        "read",
        "updateConnectionFlowControl$okhttp",
        "writeData",
        "outFinished",
        "buffer",
        "Lokio/Buffer;",
        "writeHeaders",
        "alternating",
        "writeHeaders$okhttp",
        "writePing",
        "reply",
        "payload1",
        "payload2",
        "writePingAndAwaitPong",
        "writeSynReset",
        "writeSynReset$okhttp",
        "writeSynResetLater",
        "writeSynResetLater$okhttp",
        "writeWindowUpdateLater",
        "unacknowledgedBytesRead",
        "writeWindowUpdateLater$okhttp",
        "Builder",
        "Companion",
        "Listener",
        "ReaderRunnable",
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
.field public static final Companion:Lokhttp3/internal/http2/Http2Connection$Companion;

.field public static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final listenerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private awaitingPong:Z

.field private final client:Z

.field private final connectionName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isShutdown:Z

.field private lastGoodStreamId:I

.field private final listener:Lokhttp3/internal/http2/Http2Connection$Listener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextStreamId:I

.field private final okHttpSettings:Lokhttp3/internal/http2/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final peerSettings:Lokhttp3/internal/http2/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final pushObserver:Lokhttp3/internal/http2/PushObserver;

.field private readBytesAcknowledged:J

.field private readBytesTotal:J

.field private final readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final socket:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private writeBytesMaximum:J

.field private writeBytesTotal:J

.field private final writer:Lokhttp3/internal/http2/Http2Writer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Connection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection;->Companion:Lokhttp3/internal/http2/Http2Connection$Companion;

    .line 928
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    .line 929
    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    .line 930
    const-string v0, "OkHttp Http2Connection"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 928
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 14
    .param p1, "builder"    # Lokhttp3/internal/http2/Http2Connection$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    .line 82
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getListener$okhttp()Lokhttp3/internal/http2/Http2Connection$Listener;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 84
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 94
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 95
    const-string v1, "OkHttp %s Writer"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 94
    invoke-direct {v0, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 99
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    .line 100
    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v12, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v12, v8, v2

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 99
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 103
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPushObserver$okhttp()Lokhttp3/internal/http2/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 109
    new-instance v11, Lokhttp3/internal/http2/Settings;

    invoke-direct {v11}, Lokhttp3/internal/http2/Settings;-><init>()V

    .local v11, "$this$apply":Lokhttp3/internal/http2/Settings;
    const/4 v9, 0x0

    .line 113
    .local v9, "$i$a$-apply-Http2Connection$okHttpSettings$1":I
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/high16 v0, 0x1000000

    invoke-virtual {v11, v13, v0}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 116
    :cond_0
    nop

    .line 109
    iput-object v11, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 120
    new-instance v11, Lokhttp3/internal/http2/Settings;

    .end local v11    # "$this$apply":Lokhttp3/internal/http2/Settings;
    invoke-direct {v11}, Lokhttp3/internal/http2/Settings;-><init>()V

    .restart local v11    # "$this$apply":Lokhttp3/internal/http2/Settings;
    const/4 v10, 0x0

    .line 121
    .local v10, "$i$a$-apply-Http2Connection$peerSettings$1":I
    const v0, 0xffff

    invoke-virtual {v11, v13, v0}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 122
    const/4 v0, 0x5

    const/16 v1, 0x4000

    invoke-virtual {v11, v0, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 123
    nop

    .line 120
    iput-object v11, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 138
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 141
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getSocket$okhttp()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 142
    new-instance v0, Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getSink$okhttp()Lokio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;-><init>(Lokio/BufferedSink;Z)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 145
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getSource$okhttp()Lokio/BufferedSource;

    move-result-object v2

    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Http2Reader;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 148
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 151
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$1;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/Http2Connection$1;-><init>(Lokhttp3/internal/http2/Http2Connection;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 156
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 158
    :cond_1
    return-void

    .line 88
    .end local v9    # "$i$a$-apply-Http2Connection$okHttpSettings$1":I
    .end local v10    # "$i$a$-apply-Http2Connection$peerSettings$1":I
    .end local v11    # "$this$apply":Lokhttp3/internal/http2/Settings;
    :cond_2
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method public static final synthetic access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic access$getAwaitingPong$p(Lokhttp3/internal/http2/Http2Connection;)Z
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;

    .prologue
    .line 62
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    return v0
.end method

.method public static final synthetic access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;

    .prologue
    .line 62
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getListenerExecutor$cp()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static final synthetic access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;

    .prologue
    .line 62
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    return-object v0
.end method

.method public static final synthetic access$getWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;)J
    .locals 2
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;

    .prologue
    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    return-wide v0
.end method

.method public static final synthetic access$getWriterExecutor$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;

    .prologue
    .line 62
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static final synthetic access$setAwaitingPong$p(Lokhttp3/internal/http2/Http2Connection;Z)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;
    .param p1, "<set-?>"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    return-void
.end method

.method public static final synthetic access$setWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;J)V
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http2/Http2Connection;
    .param p1, "<set-?>"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    return-void
.end method

.method private final failConnection(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 475
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 476
    return-void
.end method

.method private final newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 18
    .param p1, "associatedStreamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    if-nez p3, :cond_1

    const/4 v5, 0x1

    .line 226
    .local v5, "outFinished":Z
    :goto_0
    const/4 v6, 0x0

    .line 227
    .local v6, "inFinished":Z
    const/4 v11, 0x0

    .line 228
    .local v11, "flushHeaders":Z
    const/4 v12, 0x0

    .line 229
    .local v12, "stream":Lokhttp3/internal/http2/Http2Stream;
    const/4 v3, 0x0

    .line 231
    .local v3, "streamId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v13

    nop

    const/4 v9, 0x0

    .line 232
    .local v9, "$i$a$-synchronized-Http2Connection$newStream$1":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    nop

    const/4 v10, 0x0

    .line 233
    .local v10, "$i$a$-synchronized-Http2Connection$newStream$1$1":I
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const v7, 0x3fffffff    # 1.9999999f

    if-le v4, v7, :cond_0

    .line 234
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-eqz v4, :cond_2

    .line 237
    new-instance v4, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v4}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :catchall_0
    move-exception v4

    move-object v2, v12

    .end local v12    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .local v2, "stream":Lokhttp3/internal/http2/Http2Stream;
    :goto_1
    :try_start_2
    monitor-exit p0

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    :catchall_1
    move-exception v4

    .end local v10    # "$i$a$-synchronized-Http2Connection$newStream$1$1":I
    :goto_2
    monitor-exit v13

    throw v4

    .line 225
    .end local v2    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .end local v3    # "streamId":I
    .end local v5    # "outFinished":Z
    .end local v6    # "inFinished":Z
    .end local v9    # "$i$a$-synchronized-Http2Connection$newStream$1":I
    .end local v11    # "flushHeaders":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 239
    .restart local v3    # "streamId":I
    .restart local v5    # "outFinished":Z
    .restart local v6    # "inFinished":Z
    .restart local v9    # "$i$a$-synchronized-Http2Connection$newStream$1":I
    .restart local v10    # "$i$a$-synchronized-Http2Connection$newStream$1$1":I
    .restart local v11    # "flushHeaders":Z
    .restart local v12    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget v3, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 240
    move-object/from16 v0, p0

    iget v4, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 241
    new-instance v2, Lokhttp3/internal/http2/Http2Stream;

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    .end local v12    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v2    # "stream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz p3, :cond_3

    :try_start_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    move-wide/from16 v16, v0

    cmp-long v4, v14, v16

    if-gez v4, :cond_3

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->getWriteBytesTotal()J

    move-result-wide v14

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->getWriteBytesMaximum()J

    move-result-wide v16

    cmp-long v4, v14, v16

    if-ltz v4, :cond_6

    :cond_3
    const/4 v11, 0x1

    .line 245
    :goto_3
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 232
    :try_start_5
    monitor-exit p0

    .line 249
    if-nez p1, :cond_7

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v3, v0}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    .line 255
    :goto_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 231
    monitor-exit v13

    .line 258
    if-eqz v11, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    .line 262
    :cond_5
    return-object v2

    .line 242
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 252
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_9

    const/4 v8, 0x0

    .local v8, "$i$a$-require-Http2Connection$newStream$1$2":I
    const-string v7, "client streams shouldn\'t have associated stream IDs"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .end local v8    # "$i$a$-require-Http2Connection$newStream$1$2":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 254
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v3, v1}, Lokhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 231
    .end local v2    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .end local v10    # "$i$a$-synchronized-Http2Connection$newStream$1$1":I
    .restart local v12    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_2
    move-exception v4

    move-object v2, v12

    .end local v12    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v2    # "stream":Lokhttp3/internal/http2/Http2Stream;
    goto/16 :goto_2

    .line 232
    .restart local v10    # "$i$a$-synchronized-Http2Connection$newStream$1$1":I
    :catchall_3
    move-exception v4

    goto/16 :goto_1
.end method

.method public static synthetic start$default(Lokhttp3/internal/http2/Http2Connection;ZILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 486
    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized awaitPong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 395
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    if-eqz v2, :cond_1

    .line 396
    move-object v1, p0

    .local v1, "$this$wait$iv":Lokhttp3/internal/http2/Http2Connection;
    const/4 v0, 0x0

    .line 968
    .local v0, "$i$f$wait":I
    if-nez v1, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v0    # "$i$f$wait":I
    .end local v1    # "$this$wait$iv":Lokhttp3/internal/http2/Http2Connection;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 968
    .restart local v0    # "$i$f$wait":I
    .restart local v1    # "$this$wait$iv":Lokhttp3/internal/http2/Http2Connection;
    :cond_0
    :try_start_1
    check-cast v1, Ljava/lang/Object;

    .end local v1    # "$this$wait$iv":Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    .end local v0    # "$i$f$wait":I
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 432
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 433
    return-void
.end method

.method public final close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 20
    .param p1, "connectionCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "streamCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "cause"    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v17, "connectionCode"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "streamCode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-static/range {p0 .. p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    sget-boolean v18, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v18, :cond_1

    if-nez v17, :cond_1

    const-string v18, "Assertion failed"

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 441
    :cond_1
    const/4 v9, 0x0

    .line 969
    .local v9, "$i$f$ignoreIoExceptions":I
    nop

    .line 970
    const/4 v3, 0x0

    .line 442
    .local v3, "$i$a$-ignoreIoExceptions-Http2Connection$close$1":I
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_1
    nop

    .line 445
    const/4 v15, 0x0

    check-cast v15, [Lokhttp3/internal/http2/Http2Stream;

    .line 446
    .local v15, "streamsToClose":[Lokhttp3/internal/http2/Http2Stream;
    monitor-enter p0

    nop

    const/4 v7, 0x0

    .line 447
    .local v7, "$i$a$-synchronized-Http2Connection$close$2":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x1

    :goto_2
    if-eqz v17, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    .local v12, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v10, 0x0

    .line 974
    .local v10, "$i$f$toTypedArray":I
    move-object/from16 v16, v12

    .line 975
    .local v16, "thisCollection$iv":Ljava/util/Collection;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_3

    new-instance v17, Lkotlin/TypeCastException;

    const-string v18, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct/range {v17 .. v18}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local v10    # "$i$f$toTypedArray":I
    .end local v12    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v16    # "thisCollection$iv":Ljava/util/Collection;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 447
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 975
    .restart local v10    # "$i$f$toTypedArray":I
    .restart local v12    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v16    # "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    :try_start_2
    move-object/from16 v0, v17

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    move-object v15, v0

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    .line 451
    .end local v10    # "$i$f$toTypedArray":I
    .end local v12    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v16    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    monitor-exit p0

    .line 453
    if-eqz v15, :cond_5

    move-object v11, v15

    .local v11, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 976
    .local v8, "$i$f$forEach":I
    array-length v0, v11

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-object v13, v11, v17

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "stream":Lokhttp3/internal/http2/Http2Stream;
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$a$-forEach-Http2Connection$close$3":I
    const/4 v9, 0x0

    .line 977
    nop

    .line 978
    const/4 v4, 0x0

    .line 455
    .local v4, "$i$a$-ignoreIoExceptions-Http2Connection$close$3$1":I
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 980
    :goto_4
    nop

    .line 457
    nop

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 460
    .end local v2    # "$i$a$-forEach-Http2Connection$close$3":I
    .end local v4    # "$i$a$-ignoreIoExceptions-Http2Connection$close$3$1":I
    .end local v8    # "$i$f$forEach":I
    .end local v11    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_5
    const/4 v9, 0x0

    .line 983
    nop

    .line 984
    const/4 v5, 0x0

    .line 461
    .local v5, "$i$a$-ignoreIoExceptions-Http2Connection$close$4":I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 986
    :goto_5
    nop

    .line 465
    const/4 v9, 0x0

    .line 988
    nop

    .line 989
    const/4 v6, 0x0

    .line 466
    .local v6, "$i$a$-ignoreIoExceptions-Http2Connection$close$5":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 991
    :goto_6
    nop

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 472
    return-void

    .line 971
    .end local v5    # "$i$a$-ignoreIoExceptions-Http2Connection$close$4":I
    .end local v6    # "$i$a$-ignoreIoExceptions-Http2Connection$close$5":I
    .end local v7    # "$i$a$-synchronized-Http2Connection$close$2":I
    .end local v15    # "streamsToClose":[Lokhttp3/internal/http2/Http2Stream;
    :catch_0
    move-exception v17

    goto/16 :goto_1

    .line 979
    .restart local v2    # "$i$a$-forEach-Http2Connection$close$3":I
    .restart local v4    # "$i$a$-ignoreIoExceptions-Http2Connection$close$3$1":I
    .restart local v7    # "$i$a$-synchronized-Http2Connection$close$2":I
    .restart local v8    # "$i$f$forEach":I
    .restart local v11    # "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v13    # "element$iv":Ljava/lang/Object;
    .restart local v14    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v15    # "streamsToClose":[Lokhttp3/internal/http2/Http2Stream;
    :catch_1
    move-exception v19

    goto :goto_4

    .line 990
    .end local v2    # "$i$a$-forEach-Http2Connection$close$3":I
    .end local v4    # "$i$a$-ignoreIoExceptions-Http2Connection$close$3$1":I
    .end local v8    # "$i$f$forEach":I
    .end local v11    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v5    # "$i$a$-ignoreIoExceptions-Http2Connection$close$4":I
    .restart local v6    # "$i$a$-ignoreIoExceptions-Http2Connection$close$5":I
    :catch_2
    move-exception v17

    goto :goto_6

    .line 985
    .end local v6    # "$i$a$-ignoreIoExceptions-Http2Connection$close$5":I
    :catch_3
    move-exception v17

    goto :goto_5
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    .line 403
    return-void
.end method

.method public final getClient$okhttp()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    return v0
.end method

.method public final getConnectionName$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastGoodStreamId$okhttp()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    return v0
.end method

.method public final getListener$okhttp()Lokhttp3/internal/http2/Http2Connection$Listener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    return-object v0
.end method

.method public final getNextStreamId$okhttp()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    return v0
.end method

.method public final getOkHttpSettings()Lokhttp3/internal/http2/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public final getPeerSettings()Lokhttp3/internal/http2/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public final getReadBytesAcknowledged()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    return-wide v0
.end method

.method public final getReadBytesTotal()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    return-wide v0
.end method

.method public final getReaderRunnable()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-object v0
.end method

.method public final getSocket$okhttp()Ljava/net/Socket;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final declared-synchronized getStream(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 2
    .param p1, "id"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getStreams$okhttp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method public final getWriteBytesMaximum()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    return-wide v0
.end method

.method public final getWriteBytesTotal()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    return-wide v0
.end method

.method public final getWriter()Lokhttp3/internal/http2/Http2Writer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    return-object v0
.end method

.method public final declared-synchronized isShutdown()Z
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxConcurrentStreams()I
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 1
    .param p1, "requestHeaders"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final pushDataLater$okhttp(ILokio/BufferedSource;IZ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 862
    .local v4, "buffer":Lokio/Buffer;
    int-to-long v2, p3

    invoke-interface {p2, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 863
    int-to-long v2, p3

    invoke-interface {p2, v4, v2, v3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 864
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Push Data["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1025
    .local v7, "$i$f$execute":I
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;

    move-object v2, p0

    move v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1030
    nop

    .line 877
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v7    # "$i$f$execute":I
    :cond_0
    return-void
.end method

.method public final pushHeadersLater$okhttp(ILjava/util/List;Z)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v0, :cond_0

    .line 836
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Push Headers["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1009
    .local v7, "$i$f$tryExecute":I
    nop

    .line 1010
    .local v8, "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    const/4 v6, 0x0

    .line 1011
    .local v6, "$i$f$execute":I
    :try_start_0
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    nop

    .line 848
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$execute":I
    .end local v7    # "$i$f$tryExecute":I
    .end local v8    # "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    :cond_0
    return-void

    .line 1022
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$execute":I
    .restart local v7    # "$i$f$tryExecute":I
    .restart local v8    # "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final pushRequestLater$okhttp(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v5, "requestHeaders"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 809
    .local v0, "$i$a$-synchronized-Http2Connection$pushRequestLater$1":I
    :try_start_0
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 810
    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, v5}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    monitor-exit p0

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    :try_start_1
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    monitor-exit p0

    .line 815
    iget-boolean v5, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v5, :cond_0

    .line 816
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OkHttp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Push Request["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 993
    .local v2, "$i$f$tryExecute":I
    nop

    .line 994
    .local v3, "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    .line 995
    .local v1, "$i$f$execute":I
    :try_start_2
    new-instance v5, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;

    invoke-direct {v5, v4, p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1007
    :goto_1
    nop

    goto :goto_0

    .line 808
    .end local v1    # "$i$f$execute":I
    .end local v2    # "$i$f$tryExecute":I
    .end local v3    # "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    .end local v4    # "name$iv":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1006
    .restart local v1    # "$i$f$execute":I
    .restart local v2    # "$i$f$tryExecute":I
    .restart local v3    # "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    .restart local v4    # "name$iv":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public final pushResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "errorCode"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v2, :cond_0

    .line 881
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OkHttp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Push Reset["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1031
    .local v0, "$i$f$execute":I
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;

    invoke-direct {v3, v1, p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1036
    nop

    .line 888
    .end local v0    # "$i$f$execute":I
    .end local v1    # "name$iv":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 3
    .param p1, "associatedStreamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "requestHeaders"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http2Connection$pushStream$1":I
    const-string v2, "Client cannot push requests."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-Http2Connection$pushStream$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v1

    return-object v1
.end method

.method public final pushedStream$okhttp(I)Z
    .locals 1
    .param p1, "streamId"    # I

    .prologue
    .line 805
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 5
    .param p1, "streamId"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/http2/Http2Stream;

    .line 171
    .local v2, "stream":Lokhttp3/internal/http2/Http2Stream;
    move-object v1, p0

    .local v1, "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    const/4 v0, 0x0

    .line 934
    .local v0, "$i$f$notifyAll":I
    if-nez v1, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v0    # "$i$f$notifyAll":I
    .end local v1    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    .end local v2    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 934
    .restart local v0    # "$i$f$notifyAll":I
    .restart local v1    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    .restart local v2    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_0
    :try_start_1
    check-cast v1, Ljava/lang/Object;

    .end local v1    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    monitor-exit p0

    return-object v2
.end method

.method public final setLastGoodStreamId$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 85
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    return-void
.end method

.method public final setNextStreamId$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 88
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    return-void
.end method

.method public final setSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 4
    .param p1, "settings"    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "settings"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v3

    nop

    const/4 v0, 0x0

    .line 502
    .local v0, "$i$a$-synchronized-Http2Connection$setSettings$1":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    const/4 v1, 0x0

    .line 503
    .local v1, "$i$a$-synchronized-Http2Connection$setSettings$1$1":I
    :try_start_1
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-eqz v2, :cond_0

    .line 504
    new-instance v2, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v2}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    .end local v1    # "$i$a$-synchronized-Http2Connection$setSettings$1$1":I
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 506
    .restart local v1    # "$i$a$-synchronized-Http2Connection$setSettings$1$1":I
    :cond_0
    :try_start_3
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v2, p1}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 507
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    :try_start_4
    monitor-exit p0

    .line 508
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, p1}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 509
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 501
    monitor-exit v3

    .line 510
    return-void
.end method

.method public final setShutdown$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    return-void
.end method

.method public final shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 6
    .param p1, "statusCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "statusCode"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v4

    nop

    const/4 v0, 0x0

    .line 413
    .local v0, "$i$a$-synchronized-Http2Connection$shutdown$1":I
    const/4 v2, 0x0

    .line 414
    .local v2, "lastGoodStreamId":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    const/4 v1, 0x0

    .line 415
    .local v1, "$i$a$-synchronized-Http2Connection$shutdown$1$1":I
    :try_start_1
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 416
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    .line 419
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 420
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    :try_start_4
    monitor-exit p0

    .line 423
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sget-object v5, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v3, v2, p1, v5}, Lokhttp3/internal/http2/Http2Writer;->goAway(ILokhttp3/internal/http2/ErrorCode;[B)V

    .line 424
    nop

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 412
    monitor-exit v4

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit p0

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 412
    .end local v1    # "$i$a$-synchronized-Http2Connection$shutdown$1$1":I
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->start$default(Lokhttp3/internal/http2/Http2Connection;ZILjava/lang/Object;)V

    return-void
.end method

.method public final start(Z)V
    .locals 6
    .param p1, "sendConnectionPreface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const v3, 0xffff

    .line 487
    if-eqz p1, :cond_0

    .line 488
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 489
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 490
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    .line 491
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_0

    .line 492
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 495
    .end local v0    # "windowSize":I
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    check-cast v1, Ljava/lang/Runnable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OkHttp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 496
    return-void
.end method

.method public final declared-synchronized updateConnectionFlowControl$okhttp(J)V
    .locals 7
    .param p1, "read"    # J

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    .line 181
    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    sub-long v0, v2, v4

    .line 182
    .local v0, "readBytesToAcknowledge":J
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 183
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater$okhttp(IJ)V

    .line 184
    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "readBytesToAcknowledge":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final writeData(IZLokio/Buffer;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const-wide/16 v6, 0x0

    cmp-long v5, p4, v6

    if-nez v5, :cond_2

    .line 295
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, p1, p3, v6}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    .line 325
    :cond_0
    return-void

    .line 317
    .local v0, "$i$a$-synchronized-Http2Connection$writeData$1":I
    .local v4, "toWrite":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_1
    :try_start_0
    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    iget-wide v8, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    sub-long/2addr v6, v8

    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 318
    iget v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 319
    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    iget v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    .line 320
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    .line 322
    iget v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v6, v5

    sub-long/2addr p4, v6

    .line 323
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v5, p4, v8

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    iget v7, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v6, v5, p1, p3, v7}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    .line 300
    .end local v0    # "$i$a$-synchronized-Http2Connection$writeData$1":I
    .end local v4    # "toWrite":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, p4, v6

    if-lez v5, :cond_0

    .line 301
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 302
    .restart local v4    # "toWrite":Lkotlin/jvm/internal/Ref$IntRef;
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 303
    .restart local v0    # "$i$a$-synchronized-Http2Connection$writeData$1":I
    nop

    .line 304
    :goto_1
    :try_start_1
    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    iget-wide v8, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 307
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 308
    new-instance v5, Ljava/io/IOException;

    const-string v6, "stream closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :catch_0
    move-exception v3

    .line 313
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 314
    new-instance v5, Ljava/io/InterruptedIOException;

    invoke-direct {v5}, Ljava/io/InterruptedIOException;-><init>()V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 310
    :cond_3
    move-object v2, p0

    .local v2, "$this$wait$iv":Lokhttp3/internal/http2/Http2Connection;
    const/4 v1, 0x0

    .line 935
    .local v1, "$i$f$wait":I
    if-nez v2, :cond_4

    :try_start_3
    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    check-cast v2, Ljava/lang/Object;

    .end local v2    # "$this$wait$iv":Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 323
    .end local v1    # "$i$f$wait":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final writeHeaders$okhttp(IZLjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "alternating"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "alternating"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    .line 272
    return-void
.end method

.method public final writePing(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "failedDueToMissingPong":Z
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 369
    .local v0, "$i$a$-synchronized-Http2Connection$writePing$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    .line 370
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    .line 371
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    .line 372
    if-eqz v2, :cond_0

    .line 373
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    .line 382
    .end local v0    # "$i$a$-synchronized-Http2Connection$writePing$1":I
    .end local v2    # "failedDueToMissingPong":Z
    :goto_0
    return-void

    .line 368
    .restart local v0    # "$i$a$-synchronized-Http2Connection$writePing$1":I
    .restart local v2    # "failedDueToMissingPong":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 378
    .end local v0    # "$i$a$-synchronized-Http2Connection$writePing$1":I
    .end local v2    # "failedDueToMissingPong":Z
    :cond_0
    nop

    .line 379
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v3, p1, p2, p3}, Lokhttp3/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public final writePingAndAwaitPong()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    const v1, 0x4f4b6f6b

    const v2, -0xf607257

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 389
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection;->awaitPong()V

    .line 390
    return-void
.end method

.method public final writeSynReset$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 346
    return-void
.end method

.method public final writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v4, "errorCode"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OkHttp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "name$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 936
    .local v1, "$i$f$tryExecute":I
    nop

    .line 937
    .local v2, "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    const/4 v0, 0x0

    .line 938
    .local v0, "$i$f$execute":I
    :try_start_0
    new-instance v4, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;

    invoke-direct {v4, v3, p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    nop

    .line 338
    return-void

    .line 949
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public final writeWindowUpdateLater$okhttp(IJ)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 352
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp Window Update "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " stream "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 952
    .local v7, "$i$f$tryExecute":I
    nop

    .line 953
    .local v8, "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    const/4 v6, 0x0

    .line 954
    .local v6, "$i$f$execute":I
    :try_start_0
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$tryExecute$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;IJ)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :goto_0
    nop

    .line 359
    return-void

    .line 965
    :catch_0
    move-exception v0

    goto :goto_0
.end method
