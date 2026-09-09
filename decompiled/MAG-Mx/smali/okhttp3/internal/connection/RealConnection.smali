.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "RealConnection.kt"

# interfaces
.implements Lokhttp3/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,725:1\n1495#2,3:726\n*E\n*S KotlinDebug\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n*L\n544#1,3:726\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 p2\u00020\u00012\u00020\u0002:\u0001pB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u00105\u001a\u000206J>\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\t2\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\t2\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@J(\u0010A\u001a\u0002062\u0006\u00108\u001a\u00020\t2\u0006\u00109\u001a\u00020\t2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0002J\u0010\u0010B\u001a\u0002062\u0006\u0010C\u001a\u00020DH\u0002J0\u0010E\u001a\u0002062\u0006\u00108\u001a\u00020\t2\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\t2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0002J*\u0010F\u001a\u0004\u0018\u00010G2\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\t2\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020JH\u0002J\u0008\u0010K\u001a\u00020GH\u0002J(\u0010L\u001a\u0002062\u0006\u0010C\u001a\u00020D2\u0006\u0010;\u001a\u00020\t2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0002J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J%\u0010M\u001a\u00020\u00172\u0006\u0010N\u001a\u00020O2\u000e\u0010P\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010QH\u0000\u00a2\u0006\u0002\u0008RJ\u000e\u0010S\u001a\u00020\u00172\u0006\u0010T\u001a\u00020\u0017J\u001d\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0000\u00a2\u0006\u0002\u0008[J\u0015\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0000\u00a2\u0006\u0002\u0008`J\u0006\u0010\u0019\u001a\u000206J\u0010\u0010a\u001a\u0002062\u0006\u0010b\u001a\u00020\u000fH\u0016J\u0010\u0010c\u001a\u0002062\u0006\u0010d\u001a\u00020eH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010f\u001a\u00020\u00172\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u00060QH\u0002J\u0008\u0010)\u001a\u00020 H\u0016J\u0010\u0010h\u001a\u0002062\u0006\u0010;\u001a\u00020\tH\u0002J\u000e\u0010i\u001a\u00020\u00172\u0006\u0010I\u001a\u00020JJ\u0008\u0010j\u001a\u00020kH\u0016J\u0017\u0010l\u001a\u0002062\u0008\u0010m\u001a\u0004\u0018\u00010nH\u0000\u00a2\u0006\u0002\u0008oR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018\"\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010,\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010$\"\u0004\u0008.\u0010&R\u001d\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002020100\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104\u00a8\u0006q"
    }
    d2 = {
        "Lokhttp3/internal/connection/RealConnection;",
        "Lokhttp3/internal/http2/Http2Connection$Listener;",
        "Lokhttp3/Connection;",
        "connectionPool",
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "route",
        "Lokhttp3/Route;",
        "(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V",
        "allocationLimit",
        "",
        "getConnectionPool",
        "()Lokhttp3/internal/connection/RealConnectionPool;",
        "handshake",
        "Lokhttp3/Handshake;",
        "http2Connection",
        "Lokhttp3/internal/http2/Http2Connection;",
        "idleAtNanos",
        "",
        "getIdleAtNanos$okhttp",
        "()J",
        "setIdleAtNanos$okhttp",
        "(J)V",
        "isMultiplexed",
        "",
        "()Z",
        "noNewExchanges",
        "getNoNewExchanges",
        "setNoNewExchanges",
        "(Z)V",
        "protocol",
        "Lokhttp3/Protocol;",
        "rawSocket",
        "Ljava/net/Socket;",
        "refusedStreamCount",
        "routeFailureCount",
        "getRouteFailureCount$okhttp",
        "()I",
        "setRouteFailureCount$okhttp",
        "(I)V",
        "sink",
        "Lokio/BufferedSink;",
        "socket",
        "source",
        "Lokio/BufferedSource;",
        "successCount",
        "getSuccessCount$okhttp",
        "setSuccessCount$okhttp",
        "transmitters",
        "",
        "Ljava/lang/ref/Reference;",
        "Lokhttp3/internal/connection/Transmitter;",
        "getTransmitters",
        "()Ljava/util/List;",
        "cancel",
        "",
        "connect",
        "connectTimeout",
        "readTimeout",
        "writeTimeout",
        "pingIntervalMillis",
        "connectionRetryEnabled",
        "call",
        "Lokhttp3/Call;",
        "eventListener",
        "Lokhttp3/EventListener;",
        "connectSocket",
        "connectTls",
        "connectionSpecSelector",
        "Lokhttp3/internal/connection/ConnectionSpecSelector;",
        "connectTunnel",
        "createTunnel",
        "Lokhttp3/Request;",
        "tunnelRequest",
        "url",
        "Lokhttp3/HttpUrl;",
        "createTunnelRequest",
        "establishProtocol",
        "isEligible",
        "address",
        "Lokhttp3/Address;",
        "routes",
        "",
        "isEligible$okhttp",
        "isHealthy",
        "doExtensiveChecks",
        "newCodec",
        "Lokhttp3/internal/http/ExchangeCodec;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "newCodec$okhttp",
        "newWebSocketStreams",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "newWebSocketStreams$okhttp",
        "onSettings",
        "connection",
        "onStream",
        "stream",
        "Lokhttp3/internal/http2/Http2Stream;",
        "routeMatchesAny",
        "candidates",
        "startHttp2",
        "supportsUrl",
        "toString",
        "",
        "trackFailure",
        "e",
        "Ljava/io/IOException;",
        "trackFailure$okhttp",
        "Companion",
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
.field public static final Companion:Lokhttp3/internal/connection/RealConnection$Companion;

.field private static final MAX_TUNNEL_ATTEMPTS:I = 0x15

.field private static final NPE_THROW_WITH_NULL:Ljava/lang/String; = "throw with null exception"


# instance fields
.field private allocationLimit:I

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private handshake:Lokhttp3/Handshake;

.field private http2Connection:Lokhttp3/internal/http2/Http2Connection;

.field private idleAtNanos:J

.field private noNewExchanges:Z

.field private protocol:Lokhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private refusedStreamCount:I

.field private final route:Lokhttp3/Route;

.field private routeFailureCount:I

.field private sink:Lokio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lokio/BufferedSource;

.field private successCount:I

.field private final transmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/Transmitter;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/RealConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/RealConnection;->Companion:Lokhttp3/internal/connection/RealConnection$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V
    .locals 2
    .param p1, "connectionPool"    # Lokhttp3/internal/connection/RealConnectionPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "route"    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    .line 118
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return-void
.end method

.method public static final synthetic access$getHandshake$p(Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Handshake;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/connection/RealConnection;

    .prologue
    .line 70
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public static final synthetic access$getSocket$p(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/connection/RealConnection;

    .prologue
    .line 70
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public static final synthetic access$setHandshake$p(Lokhttp3/internal/connection/RealConnection;Lokhttp3/Handshake;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/connection/RealConnection;
    .param p1, "<set-?>"    # Lokhttp3/Handshake;

    .prologue
    .line 70
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    return-void
.end method

.method public static final synthetic access$setSocket$p(Lokhttp3/internal/connection/RealConnection;Ljava/net/Socket;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/connection/RealConnection;
    .param p1, "<set-?>"    # Ljava/net/Socket;

    .prologue
    .line 70
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-void
.end method

.method private final connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "eventListener"    # Lokhttp3/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    .line 257
    .local v5, "proxy":Ljava/net/Proxy;
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    .line 259
    .local v2, "address":Lokhttp3/Address;
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    if-nez v7, :cond_2

    .line 261
    :goto_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6, v5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 263
    .local v6, "rawSocket":Ljava/net/Socket;
    :cond_0
    :goto_1
    iput-object v6, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 265
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {p4, p3, v7, v5}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 266
    invoke-virtual {v6, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 267
    nop

    .line 268
    :try_start_0
    sget-object v7, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v7}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v8}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-virtual {v7, v6, v8, p1}, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    nop

    .line 280
    :try_start_1
    invoke-static {v6}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v7

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 281
    invoke-static {v6}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v7

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :cond_1
    return-void

    .line 259
    .end local v6    # "rawSocket":Ljava/net/Socket;
    :cond_2
    sget-object v8, Lokhttp3/internal/connection/RealConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-virtual {v2}, Lokhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_1

    .line 269
    .restart local v6    # "rawSocket":Ljava/net/Socket;
    :catch_0
    move-exception v3

    .line 270
    .local v3, "e":Ljava/net/ConnectException;
    new-instance v1, Ljava/net/ConnectException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v8}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .local v1, "$this$apply":Ljava/net/ConnectException;
    const/4 v0, 0x0

    .line 271
    .local v0, "$i$a$-apply-RealConnection$connectSocket$1":I
    check-cast v3, Ljava/lang/Throwable;

    .end local v3    # "e":Ljava/net/ConnectException;
    invoke-virtual {v1, v3}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 272
    nop

    .line 270
    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "$this$apply":Ljava/net/ConnectException;
    throw v1

    .line 282
    .end local v0    # "$i$a$-apply-RealConnection$connectSocket$1":I
    :catch_1
    move-exception v4

    .line 283
    .local v4, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "throw with null exception"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 284
    new-instance v7, Ljava/io/IOException;

    check-cast v4, Ljava/lang/Throwable;

    .end local v4    # "npe":Ljava/lang/NullPointerException;
    invoke-direct {v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final connectTls(Lokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 17
    .param p1, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v12}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    .line 336
    .local v1, "address":Lokhttp3/Address;
    invoke-virtual {v1}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    .line 337
    .local v8, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v10, 0x0

    .line 338
    .local v10, "success":Z
    const/4 v7, 0x0

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 339
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    nop

    .line 341
    if-nez v8, :cond_0

    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->port()I

    move-result v14

    const/4 v15, 0x1

    .line 341
    invoke-virtual {v8, v12, v13, v14, v15}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v12

    if-nez v12, :cond_3

    new-instance v12, Lkotlin/TypeCastException;

    const-string v13, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {v12, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :catchall_0
    move-exception v12

    .line 398
    if-eqz v7, :cond_1

    .line 399
    sget-object v13, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v13}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v13

    invoke-virtual {v13, v7}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 401
    :cond_1
    nop

    .line 402
    if-eqz v7, :cond_2

    check-cast v7, Ljava/net/Socket;

    .end local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_2
    throw v12

    .line 341
    .restart local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_3
    :try_start_1
    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v7, v0

    .line 345
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object v4

    .line 346
    .local v4, "connectionSpec":Lokhttp3/ConnectionSpec;
    invoke-virtual {v4}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 347
    sget-object v12, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v12}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12, v7, v13, v14}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 351
    :cond_4
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 353
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    .line 354
    .local v9, "sslSocketSession":Ljavax/net/ssl/SSLSession;
    sget-object v12, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    const-string v13, "sslSocketSession"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lokhttp3/Handshake$Companion;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v11

    .line 357
    .local v11, "unverifiedHandshake":Lokhttp3/Handshake;
    invoke-virtual {v1}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v12

    if-nez v12, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 358
    invoke-virtual {v11}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    .line 359
    .local v6, "peerCertificates":Ljava/util/List;
    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_0
    if-eqz v12, :cond_8

    .line 360
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v12, Lkotlin/TypeCastException;

    const-string v13, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v12, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 359
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 360
    :cond_7
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 361
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v13, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 366
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n              |Hostname "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 362
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " not verified:\n              |    certificate: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 363
    sget-object v15, Lokhttp3/CertificatePinner;->Companion:Lokhttp3/CertificatePinner$Companion;

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v12, v0

    invoke-virtual {v15, v12}, Lokhttp3/CertificatePinner$Companion;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\n              |    DN: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 364
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    const-string v15, "cert.subjectDN"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\n              |    subjectAltNames: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 365
    sget-object v14, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {v14, v2}, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\n              "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 366
    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 361
    invoke-direct {v13, v12}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    check-cast v0, Ljava/lang/Throwable;

    move-object v12, v0

    throw v12

    .line 368
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_8
    new-instance v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 369
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Hostname "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not verified (no certificates)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 368
    invoke-direct {v12, v13}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    .line 370
    .end local v6    # "peerCertificates":Ljava/util/List;
    :cond_9
    invoke-virtual {v1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 375
    .local v3, "certificatePinner":Lokhttp3/CertificatePinner;
    :cond_a
    new-instance v13, Lokhttp3/Handshake;

    invoke-virtual {v11}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v14

    invoke-virtual {v11}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v15

    .line 376
    invoke-virtual {v11}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v16

    new-instance v12, Lokhttp3/internal/connection/RealConnection$connectTls$1;

    invoke-direct {v12, v3, v11, v1}, Lokhttp3/internal/connection/RealConnection$connectTls$1;-><init>(Lokhttp3/CertificatePinner;Lokhttp3/Handshake;Lokhttp3/Address;)V

    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 375
    move-object/from16 v0, v16

    invoke-direct {v13, v14, v15, v0, v12}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 382
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Lokhttp3/internal/connection/RealConnection$connectTls$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lokhttp3/internal/connection/RealConnection$connectTls$2;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v13, v12}, Lokhttp3/CertificatePinner;->check$okhttp(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 387
    invoke-virtual {v4}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 388
    sget-object v12, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v12}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    invoke-virtual {v12, v7}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "maybeProtocol":Ljava/lang/String;
    :goto_1
    move-object v0, v7

    check-cast v0, Ljava/net/Socket;

    move-object v12, v0

    move-object/from16 v0, p0

    iput-object v12, v0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 393
    move-object v0, v7

    check-cast v0, Ljava/net/Socket;

    move-object v12, v0

    invoke-static {v12}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v12

    invoke-static {v12}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 394
    move-object v0, v7

    check-cast v0, Ljava/net/Socket;

    move-object v12, v0

    invoke-static {v12}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v12

    invoke-static {v12}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 395
    if-eqz v5, :cond_d

    sget-object v12, Lokhttp3/Protocol;->Companion:Lokhttp3/Protocol$Companion;

    invoke-virtual {v12, v5}, Lokhttp3/Protocol$Companion;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v12

    :goto_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    const/4 v10, 0x1

    .line 398
    if-eqz v7, :cond_b

    .line 399
    sget-object v12, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v12}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    invoke-virtual {v12, v7}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 401
    :cond_b
    nop

    .line 404
    return-void

    .line 390
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_c
    const/4 v5, 0x0

    goto :goto_1

    .line 395
    .restart local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_d
    :try_start_2
    sget-object v12, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private final connectTunnel(IIILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "call"    # Lokhttp3/Call;
    .param p5, "eventListener"    # Lokhttp3/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-direct {p0}, Lokhttp3/internal/connection/RealConnection;->createTunnelRequest()Lokhttp3/Request;

    move-result-object v1

    .line 232
    .local v1, "tunnelRequest":Lokhttp3/Request;
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 233
    .local v2, "url":Lokhttp3/HttpUrl;
    const/4 v0, 0x0

    const/16 v5, 0x15

    :goto_0
    if-ge v0, v5, :cond_1

    .line 234
    invoke-direct {p0, p1, p2, p4, p5}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 235
    invoke-direct {p0, p2, p3, v1, v2}, Lokhttp3/internal/connection/RealConnection;->createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v1

    .end local v1    # "tunnelRequest":Lokhttp3/Request;
    if-eqz v1, :cond_1

    .line 240
    .restart local v1    # "tunnelRequest":Lokhttp3/Request;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_0
    move-object v3, v4

    .line 241
    check-cast v3, Ljava/net/Socket;

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    move-object v3, v4

    .line 242
    check-cast v3, Lokio/BufferedSink;

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    move-object v3, v4

    .line 243
    check-cast v3, Lokio/BufferedSource;

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 244
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v6, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v6}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v6

    invoke-virtual {p5, p4, v3, v6, v4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    goto :goto_0

    .line 246
    .end local v0    # "i":I
    .end local v1    # "tunnelRequest":Lokhttp3/Request;
    :cond_1
    return-void
.end method

.method private final createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .locals 11
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lokhttp3/Request;
    .param p4, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    move-object v0, p3

    .line 420
    .local v0, "nextRequest":Lokhttp3/Request;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p4, v7}, Lokhttp3/internal/Util;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP/1.1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "requestLine":Ljava/lang/String;
    :cond_0
    nop

    .line 422
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 423
    .local v4, "source":Lokio/BufferedSource;
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 424
    .local v3, "sink":Lokio/BufferedSink;
    :cond_2
    new-instance v5, Lokhttp3/internal/http1/Http1ExchangeCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v4, v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 425
    .local v5, "tunnelCodec":Lokhttp3/internal/http1/Http1ExchangeCodec;
    invoke-interface {v4}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v6

    int-to-long v8, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 426
    invoke-interface {v3}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v6

    int-to-long v8, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 427
    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;->finishRequest()V

    .line 429
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 430
    :cond_3
    invoke-virtual {v6, v0}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 431
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 432
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v5, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->skipConnectBody(Lokhttp3/Response;)V

    .line 434
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 455
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 440
    :sswitch_0
    invoke-interface {v4}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->exhausted()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->exhausted()Z

    move-result v6

    if-nez v6, :cond_5

    .line 441
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 443
    :cond_5
    const/4 v6, 0x0

    .line 451
    :goto_0
    return-object v6

    .line 447
    :sswitch_1
    iget-object v6, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v6}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v6

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-interface {v6, v7, v2}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    .end local v0    # "nextRequest":Lokhttp3/Request;
    if-eqz v0, :cond_6

    .line 450
    .restart local v0    # "nextRequest":Lokhttp3/Request;
    const-string v6, "close"

    const-string v7, "Connection"

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v2, v7, v8, v9, v10}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    .line 451
    goto :goto_0

    .line 448
    .end local v0    # "nextRequest":Lokhttp3/Request;
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 434
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private final createTunnelRequest()Lokhttp3/Request;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 471
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 472
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 473
    const-string v4, "CONNECT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 474
    const-string v4, "Host"

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 475
    const-string v4, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 476
    const-string v4, "User-Agent"

    const-string v5, "okhttp/4.2.0"

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 477
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 479
    .local v2, "proxyConnectRequest":Lokhttp3/Request;
    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 480
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 481
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 482
    const/16 v4, 0x197

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 483
    const-string v4, "Preemptive Authenticate"

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 484
    sget-object v4, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 485
    invoke-virtual {v3, v8, v9}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 486
    invoke-virtual {v3, v8, v9}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 487
    const-string v4, "Proxy-Authenticate"

    const-string v5, "OkHttp-Preemptive"

    invoke-virtual {v3, v4, v5}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 488
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 490
    .local v1, "fakeAuthChallengeResponse":Lokhttp3/Response;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v3

    .line 491
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-interface {v3, v4, v1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    .line 493
    .local v0, "authenticatedRequest":Lokhttp3/Request;
    if-eqz v0, :cond_0

    .end local v0    # "authenticatedRequest":Lokhttp3/Request;
    :goto_0
    return-object v0

    .restart local v0    # "authenticatedRequest":Lokhttp3/Request;
    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method private final establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 2
    .param p1, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .param p2, "pingIntervalMillis"    # I
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "eventListener"    # Lokhttp3/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 299
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 300
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 305
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p4, p3}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    .line 310
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RealConnection;->connectTls(Lokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 311
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    invoke-virtual {p4, p3, v0}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 313
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_0

    .line 314
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V

    goto :goto_0
.end method

.method private final routeMatchesAny(Ljava/util/List;)Z
    .locals 10
    .param p1, "candidates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Route;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 544
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 726
    .local v1, "$i$f$any":I
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 728
    :goto_0
    return v5

    .line 727
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lokhttp3/Route;

    .local v4, "it":Lokhttp3/Route;
    const/4 v0, 0x0

    .line 545
    .local v0, "$i$a$-any-RealConnection$routeMatchesAny$1":I
    invoke-virtual {v4}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v5, v9, :cond_2

    .line 546
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v5, v9, :cond_2

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 547
    :goto_1
    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    .line 546
    goto :goto_1

    .end local v0    # "$i$a$-any-RealConnection$routeMatchesAny$1":I
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lokhttp3/Route;
    :cond_3
    move v5, v6

    .line 728
    goto :goto_0
.end method

.method private final startHttp2(I)V
    .locals 8
    .param p1, "pingIntervalMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 320
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 321
    .local v2, "socket":Ljava/net/Socket;
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 322
    .local v3, "source":Lokio/BufferedSource;
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 323
    .local v1, "sink":Lokio/BufferedSink;
    :cond_2
    invoke-virtual {v2, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 324
    new-instance v4, Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-direct {v4, v7}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    .line 325
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v3, v1}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v5

    move-object v4, p0

    .line 326
    check-cast v4, Lokhttp3/internal/http2/Http2Connection$Listener;

    invoke-virtual {v5, v4}, Lokhttp3/internal/http2/Http2Connection$Builder;->listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v4

    .line 327
    invoke-virtual {v4, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis(I)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v4

    .line 328
    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Connection$Builder;->build()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    .line 329
    .local v0, "http2Connection":Lokhttp3/internal/http2/Http2Connection;
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 330
    const/4 v4, 0x0

    invoke-static {v0, v6, v7, v4}, Lokhttp3/internal/http2/Http2Connection;->start$default(Lokhttp3/internal/http2/Http2Connection;ZILjava/lang/Object;)V

    .line 331
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 604
    :cond_0
    return-void
.end method

.method public final connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 18
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "eventListener"    # Lokhttp3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v5, "call"

    move-object/from16 v0, p6

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventListener"

    move-object/from16 v0, p7

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_1

    const/4 v11, 0x0

    .local v11, "$i$a$-check-RealConnection$connect$1":I
    const-string v6, "already connected"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .end local v11    # "$i$a$-check-RealConnection$connect$1":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 146
    :cond_1
    const/16 v17, 0x0

    check-cast v17, Lokhttp3/internal/connection/RouteException;

    .line 147
    .local v17, "routeException":Lokhttp3/internal/connection/RouteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v14

    .line 148
    .local v14, "connectionSpecs":Ljava/util/List;
    new-instance v13, Lokhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v13, v14}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 150
    .local v13, "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    if-nez v5, :cond_3

    .line 151
    sget-object v5, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {v14, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 152
    new-instance v6, Lokhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    .line 153
    const-string v7, "CLEARTEXT communication not enabled for client"

    .line 152
    invoke-direct {v5, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/io/IOException;

    invoke-direct {v6, v5}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 155
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, "host":Ljava/lang/String;
    sget-object v5, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    invoke-virtual {v5, v15}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 157
    new-instance v6, Lokhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CLEARTEXT communication to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not permitted by network security policy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-direct {v5, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/io/IOException;

    invoke-direct {v6, v5}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 161
    .end local v15    # "host":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    new-instance v6, Lokhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    .line 163
    const-string v7, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 162
    invoke-direct {v5, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/io/IOException;

    invoke-direct {v6, v5}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 165
    :cond_4
    nop

    .line 168
    nop

    .line 169
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 170
    invoke-direct/range {v5 .. v10}, Lokhttp3/internal/connection/RealConnection;->connectTunnel(IIILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_6

    .line 206
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-nez v5, :cond_b

    .line 207
    new-instance v6, Lokhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/ProtocolException;

    .line 208
    const-string v7, "Too many tunnel connections attempted: 21"

    .line 207
    invoke-direct {v5, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/io/IOException;

    invoke-direct {v6, v5}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 176
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 177
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct {v0, v13, v1, v2, v3}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v6}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5, v6, v7}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v10

    .line 182
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    if-eqz v5, :cond_7

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 183
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v5, :cond_8

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 184
    :cond_8
    const/4 v5, 0x0

    check-cast v5, Ljava/net/Socket;

    move-object/from16 v0, p0

    iput-object v5, v0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 185
    const/4 v5, 0x0

    check-cast v5, Ljava/net/Socket;

    move-object/from16 v0, p0

    iput-object v5, v0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 186
    const/4 v5, 0x0

    check-cast v5, Lokio/BufferedSource;

    move-object/from16 v0, p0

    iput-object v5, v0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 187
    const/4 v5, 0x0

    check-cast v5, Lokio/BufferedSink;

    move-object/from16 v0, p0

    iput-object v5, v0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 188
    const/4 v5, 0x0

    check-cast v5, Lokhttp3/Handshake;

    move-object/from16 v0, p0

    iput-object v5, v0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 189
    const/4 v5, 0x0

    check-cast v5, Lokhttp3/Protocol;

    move-object/from16 v0, p0

    iput-object v5, v0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 190
    const/4 v5, 0x0

    check-cast v5, Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v0, p0

    iput-object v5, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    invoke-virtual/range {v5 .. v10}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 194
    if-nez v17, :cond_a

    .line 195
    new-instance v17, Lokhttp3/internal/connection/RouteException;

    .end local v17    # "routeException":Lokhttp3/internal/connection/RouteException;
    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 198
    .restart local v17    # "routeException":Lokhttp3/internal/connection/RouteException;
    :goto_2
    if-eqz p5, :cond_9

    invoke-virtual {v13, v10}, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 201
    :cond_9
    check-cast v17, Ljava/lang/Throwable;

    .end local v17    # "routeException":Lokhttp3/internal/connection/RouteException;
    throw v17

    .line 197
    .restart local v17    # "routeException":Lokhttp3/internal/connection/RouteException;
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_2

    .line 211
    .end local v10    # "e":Ljava/io/IOException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v16, v0

    .line 212
    .local v16, "http2Connection":Lokhttp3/internal/http2/Http2Connection;
    if-eqz v16, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v6

    nop

    const/4 v12, 0x0

    .line 214
    .local v12, "$i$a$-synchronized-RealConnection$connect$2":I
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 215
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    monitor-exit v6

    .line 217
    .end local v12    # "$i$a$-synchronized-RealConnection$connect$2":I
    :cond_c
    return-void

    .line 213
    .restart local v12    # "$i$a$-synchronized-RealConnection$connect$2":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final getConnectionPool()Lokhttp3/internal/connection/RealConnectionPool;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    return-object v0
.end method

.method public final getIdleAtNanos$okhttp()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return-wide v0
.end method

.method public final getNoNewExchanges()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    return v0
.end method

.method public final getRouteFailureCount$okhttp()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    return v0
.end method

.method public final getSuccessCount$okhttp()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    return v0
.end method

.method public final getTransmitters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/Transmitter;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    return-object v0
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public final isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z
    .locals 6
    .param p1, "address"    # Lokhttp3/Address;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "routes"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Address;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Route;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "address"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v3, v4, :cond_0

    iget-boolean v3, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-eqz v3, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3, p1}, Lokhttp3/Address;->equalsNonHost$okhttp(Lokhttp3/Address;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 509
    goto :goto_0

    .line 518
    :cond_2
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v3, :cond_0

    .line 521
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lokhttp3/internal/connection/RealConnection;->routeMatchesAny(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {p1}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    sget-object v4, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    if-ne v3, v4, :cond_0

    .line 525
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/RealConnection;->supportsUrl(Lokhttp3/HttpUrl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    nop

    .line 529
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v5}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 532
    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "_":Ljavax/net/ssl/SSLPeerUnverifiedException;
    goto :goto_0
.end method

.method public final isHealthy(Z)Z
    .locals 8
    .param p1, "doExtensiveChecks"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 610
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 611
    .local v3, "socket":Ljava/net/Socket;
    :cond_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 612
    .local v4, "source":Lokio/BufferedSource;
    :cond_1
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v5, v6

    .line 634
    :cond_3
    :goto_0
    return v5

    .line 616
    :cond_4
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 617
    .local v1, "http2Connection":Lokhttp3/internal/http2/Http2Connection;
    if-eqz v1, :cond_5

    .line 618
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->isShutdown()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    .line 621
    :cond_5
    if-eqz p1, :cond_3

    .line 622
    nop

    .line 623
    :try_start_0
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 624
    .local v2, "readTimeout":I
    nop

    .line 625
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v3, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 626
    invoke-interface {v4}, Lokio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_6

    move v7, v5

    .line 628
    :goto_1
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v7

    goto :goto_0

    :cond_6
    move v7, v6

    .line 626
    goto :goto_1

    .line 629
    :catchall_0
    move-exception v7

    .line 628
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v7
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 630
    .end local v2    # "readTimeout":I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 632
    :catch_1
    move-exception v0

    .local v0, "_":Ljava/io/IOException;
    move v5, v6

    .line 633
    goto :goto_0
.end method

.method public final isMultiplexed()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newCodec$okhttp(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 8
    .param p1, "client"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v4, "client"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "chain"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 570
    .local v2, "socket":Ljava/net/Socket;
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 571
    .local v3, "source":Lokio/BufferedSource;
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 572
    .local v1, "sink":Lokio/BufferedSink;
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 574
    .local v0, "http2Connection":Lokhttp3/internal/http2/Http2Connection;
    if-eqz v0, :cond_3

    .line 575
    new-instance v4, Lokhttp3/internal/http2/Http2ExchangeCodec;

    invoke-direct {v4, p1, p0, p2, v0}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/http2/Http2Connection;)V

    check-cast v4, Lokhttp3/internal/http/ExchangeCodec;

    .line 574
    :goto_0
    return-object v4

    .line 577
    :cond_3
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 578
    invoke-interface {v3}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v4

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v5

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 579
    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v4

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v5

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 580
    new-instance v4, Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {v4, p1, p0, v3, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    check-cast v4, Lokhttp3/internal/http/ExchangeCodec;

    goto :goto_0
.end method

.method public final newWebSocketStreams$okhttp(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;
    .locals 8
    .param p1, "exchange"    # Lokhttp3/internal/connection/Exchange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "exchange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    if-nez v7, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 587
    .local v7, "socket":Ljava/net/Socket;
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 588
    .local v2, "source":Lokio/BufferedSource;
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 590
    .local v3, "sink":Lokio/BufferedSink;
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 591
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 592
    new-instance v0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/BufferedSource;Lokio/BufferedSink;ZLokio/BufferedSource;Lokio/BufferedSink;)V

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Streams;

    return-object v0
.end method

.method public final noNewExchanges()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 129
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    sget-boolean v2, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const-string v2, "Assertion failed"

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    nop

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$a$-synchronized-RealConnection$noNewExchanges$1":I
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 132
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v2

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSettings(Lokhttp3/internal/http2/Http2Connection;)V
    .locals 3
    .param p1, "connection"    # Lokhttp3/internal/http2/Http2Connection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "connection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    nop

    const/4 v0, 0x0

    .line 649
    .local v0, "$i$a$-synchronized-RealConnection$onSettings$1":I
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 650
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit v2

    .line 651
    return-void

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 2
    .param p1, "stream"    # Lokhttp3/internal/http2/Http2Stream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 644
    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public route()Lokhttp3/Route;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public final setIdleAtNanos$okhttp(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 118
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return-void
.end method

.method public final setNoNewExchanges(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    return-void
.end method

.method public final setRouteFailureCount$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 103
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    return-void
.end method

.method public final setSuccessCount$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 105
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    return-void
.end method

.method public socket()Ljava/net/Socket;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final supportsUrl(Lokhttp3/HttpUrl;)Z
    .locals 6
    .param p1, "url"    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 554
    .local v0, "routeUrl":Lokhttp3/HttpUrl;
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 563
    :goto_0
    return v3

    .line 558
    :cond_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    .line 559
    goto :goto_0

    .line 563
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v1, :cond_4

    sget-object v4, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 564
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 563
    invoke-virtual {v4, v5, v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 704
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 704
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public final trackFailure$okhttp(Ljava/io/IOException;)V
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 660
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    sget-boolean v3, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    const-string v2, "Assertion failed"

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 661
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v3

    nop

    const/4 v0, 0x0

    .line 662
    .local v0, "$i$a$-synchronized-RealConnection$trackFailure$1":I
    :try_start_0
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v1, :cond_3

    .line 663
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    .end local p1    # "e":Ljava/io/IOException;
    iget-object v1, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v4, Lokhttp3/internal/connection/RealConnection$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lokhttp3/internal/http2/ErrorCode;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 679
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 680
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    .line 693
    :cond_2
    :goto_1
    :pswitch_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit v3

    .line 696
    return-void

    .line 666
    :pswitch_1
    :try_start_1
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->refusedStreamCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->refusedStreamCount:I

    .line 667
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->refusedStreamCount:I

    if-le v1, v2, :cond_2

    .line 668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 669
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 683
    .restart local p1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_2

    .line 684
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 687
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v1, :cond_2

    .line 688
    if-eqz p1, :cond_5

    .line 689
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1, v2, p1}, Lokhttp3/internal/connection/RealConnectionPool;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 691
    :cond_5
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
