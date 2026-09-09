.class public final Lokhttp3/internal/connection/RealConnectionPool;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnectionPool$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Util.kt\nokhttp3/internal/Util\n*L\n1#1,269:1\n1522#2,4:270\n544#3:274\n*E\n*S KotlinDebug\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n*L\n68#1,4:270\n119#1:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000i\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003*\u0001\n\u0018\u0000 12\u00020\u0001:\u00011B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0014J\u0006\u0010$\u001a\u00020\u0003J\u0006\u0010%\u001a\u00020\u001dJ\u0006\u0010&\u001a\u00020\u0003J\u0018\u0010\'\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0005H\u0002J\u000e\u0010(\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0014J.\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010/2\u0006\u00100\u001a\u00020\rR\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u00062"
    }
    d2 = {
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "",
        "maxIdleConnections",
        "",
        "keepAliveDuration",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "(IJLjava/util/concurrent/TimeUnit;)V",
        "cleanupRunnable",
        "okhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1",
        "Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;",
        "cleanupRunning",
        "",
        "getCleanupRunning",
        "()Z",
        "setCleanupRunning",
        "(Z)V",
        "connections",
        "Ljava/util/ArrayDeque;",
        "Lokhttp3/internal/connection/RealConnection;",
        "keepAliveDurationNs",
        "routeDatabase",
        "Lokhttp3/internal/connection/RouteDatabase;",
        "getRouteDatabase",
        "()Lokhttp3/internal/connection/RouteDatabase;",
        "cleanup",
        "now",
        "connectFailed",
        "",
        "failedRoute",
        "Lokhttp3/Route;",
        "failure",
        "Ljava/io/IOException;",
        "connectionBecameIdle",
        "connection",
        "connectionCount",
        "evictAll",
        "idleConnectionCount",
        "pruneAndGetAllocationCount",
        "put",
        "transmitterAcquirePooledConnection",
        "address",
        "Lokhttp3/Address;",
        "transmitter",
        "Lokhttp3/internal/connection/Transmitter;",
        "routes",
        "",
        "requireMultiplexed",
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
.field public static final Companion:Lokhttp3/internal/connection/RealConnectionPool$Companion;

.field private static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

.field private cleanupRunning:Z

.field private final connections:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field private final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnectionPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/RealConnectionPool;->Companion:Lokhttp3/internal/connection/RealConnectionPool$Companion;

    .line 258
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 259
    const/4 v2, 0x0

    .line 260
    const v3, 0x7fffffff

    .line 261
    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 262
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    .line 263
    const-string v0, "OkHttp ConnectionPool"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 258
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "timeUnit"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    .line 41
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 43
    new-instance v1, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

    invoke-direct {v1, p0}, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;-><init>(Lokhttp3/internal/connection/RealConnectionPool;)V

    iput-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

    .line 58
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    .line 59
    new-instance v1, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v1}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 64
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-RealConnectionPool$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-require-RealConnectionPool$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method private final pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .locals 8
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;
    .param p2, "now"    # J

    .prologue
    .line 211
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v3

    .line 212
    .local v3, "references":Ljava/util/List;
    const/4 v0, 0x0

    .line 213
    .local v0, "i":I
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 214
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 216
    .local v2, "reference":Ljava/lang/ref/Reference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 218
    goto :goto_0

    .line 222
    :cond_1
    if-nez v2, :cond_2

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type okhttp3.internal.connection.Transmitter.TransmitterReference"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move-object v4, v2

    check-cast v4, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    .line 223
    .local v4, "transmitterRef":Lokhttp3/internal/connection/Transmitter$TransmitterReference;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was leaked. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "message":Ljava/lang/String;
    sget-object v5, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    invoke-virtual {v4}, Lokhttp3/internal/connection/Transmitter$TransmitterReference;->getCallStackTrace()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 231
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    iget-wide v6, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    sub-long v6, p2, v6

    invoke-virtual {p1, v6, v7}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNanos$okhttp(J)V

    .line 233
    const/4 v5, 0x0

    .line 237
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "reference":Ljava/lang/ref/Reference;
    .end local v4    # "transmitterRef":Lokhttp3/internal/connection/Transmitter$TransmitterReference;
    :goto_1
    return v5

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public final cleanup(J)J
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "inUseConnectionCount":I
    const/4 v2, 0x0

    .line 153
    .local v2, "idleConnectionCount":I
    const/4 v6, 0x0

    check-cast v6, Lokhttp3/internal/connection/RealConnection;

    .line 154
    .local v6, "longestIdleConnection":Lokhttp3/internal/connection/RealConnection;
    const-wide/high16 v8, -0x8000000000000000L

    .line 157
    .local v8, "longestIdleDurationNs":J
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 158
    .local v0, "$i$a$-synchronized-RealConnectionPool$cleanup$1":I
    :try_start_0
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 160
    .local v1, "connection":Lokhttp3/internal/connection/RealConnection;
    const-string v10, "connection"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, p2}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v10

    if-lez v10, :cond_1

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 162
    goto :goto_0

    .line 165
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 168
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->getIdleAtNanos$okhttp()J

    move-result-wide v10

    sub-long v4, p1, v10

    .line 169
    .local v4, "idleDurationNs":J
    cmp-long v10, v4, v8

    if-lez v10, :cond_0

    .line 170
    move-wide v8, v4

    .line 171
    move-object v6, v1

    goto :goto_0

    .line 175
    .end local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    .end local v4    # "idleDurationNs":J
    :cond_2
    nop

    .line 176
    iget-wide v10, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    iget v7, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-le v2, v7, :cond_5

    .line 180
    :cond_3
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v6}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    nop

    .line 157
    monitor-exit p0

    .line 199
    if-nez v6, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 202
    const-wide/16 v10, 0x0

    :goto_1
    return-wide v10

    .line 182
    :cond_5
    if-lez v2, :cond_6

    .line 184
    :try_start_1
    iget-wide v10, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v10, v8

    monitor-exit p0

    goto :goto_1

    .line 186
    :cond_6
    if-lez v3, :cond_7

    .line 189
    :try_start_2
    iget-wide v10, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_1

    .line 193
    :cond_7
    const/4 v7, 0x0

    :try_start_3
    iput-boolean v7, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    const-wide/16 v10, -0x1

    monitor-exit p0

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public final connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 4
    .param p1, "failedRoute"    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "failure"    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "failedRoute"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "failure"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    .line 244
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    .line 245
    .local v0, "address":Lokhttp3/Address;
    invoke-virtual {v0}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    .line 246
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    .line 245
    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 249
    .end local v0    # "address":Lokhttp3/Address;
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v1, p1}, Lokhttp3/internal/connection/RouteDatabase;->failed(Lokhttp3/Route;)V

    .line 250
    return-void
.end method

.method public final connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 4
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "connection"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v3, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    const-string v3, "Assertion failed"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 114
    :cond_0
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-nez v2, :cond_2

    .line 115
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 116
    const/4 v2, 0x1

    .line 114
    :goto_0
    return v2

    .line 119
    :cond_2
    move-object v1, p0

    .local v1, "$this$notifyAll$iv":Lokhttp3/internal/connection/RealConnectionPool;
    const/4 v0, 0x0

    .line 274
    .local v0, "$i$f$notifyAll":I
    if-nez v1, :cond_3

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    check-cast v1, Ljava/lang/Object;

    .end local v1    # "$this$notifyAll$iv":Lokhttp3/internal/connection/RealConnectionPool;
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 120
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized connectionCount()I
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I
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

.method public final evictAll()V
    .locals 6

    .prologue
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 126
    .local v2, "evictedConnections":Ljava/util/List;
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 127
    .local v0, "$i$a$-synchronized-RealConnectionPool$evictAll$1":I
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "connections.iterator()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 130
    .local v1, "connection":Lokhttp3/internal/connection/RealConnection;
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 132
    const-string v4, "connection"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    .end local v3    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 136
    .restart local v3    # "i":Ljava/util/Iterator;
    :cond_1
    nop

    :try_start_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 139
    .restart local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_1

    .line 141
    .end local v1    # "connection":Lokhttp3/internal/connection/RealConnection;
    :cond_2
    return-void
.end method

.method public final getCleanupRunning()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    return v0
.end method

.method public final getRouteDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public final declared-synchronized idleConnectionCount()I
    .locals 9

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 270
    .local v2, "$i$f$count":I
    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x0

    .line 273
    :cond_0
    monitor-exit p0

    return v4

    .line 271
    :cond_1
    const/4 v4, 0x0

    .line 272
    .local v4, "count$iv":I
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    move-object v6, v0

    .local v6, "it":Lokhttp3/internal/connection/RealConnection;
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$a$-count-RealConnectionPool$idleConnectionCount$1":I
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "$i$a$-count-RealConnectionPool$idleConnectionCount$1":I
    .end local v2    # "$i$f$count":I
    .end local v3    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v4    # "count$iv":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lokhttp3/internal/connection/RealConnection;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public final put(Lokhttp3/internal/connection/RealConnection;)V
    .locals 2
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
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

    .line 101
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    .line 103
    sget-object v1, Lokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public final setCleanupRunning(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    return-void
.end method

.method public final transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z
    .locals 3
    .param p1, "address"    # Lokhttp3/Address;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "transmitter"    # Lokhttp3/internal/connection/Transmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "routes"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "requireMultiplexed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Address;",
            "Lokhttp3/internal/connection/Transmitter;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Route;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const-string v1, "address"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transmitter"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const-string v2, "Assertion failed"

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 90
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 91
    .local v0, "connection":Lokhttp3/internal/connection/RealConnection;
    if-eqz p4, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_2
    invoke-virtual {v0, p1, p3}, Lokhttp3/internal/connection/RealConnection;->isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v1, "connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/Transmitter;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V

    .line 94
    const/4 v1, 0x1

    .line 96
    .end local v0    # "connection":Lokhttp3/internal/connection/RealConnection;
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
