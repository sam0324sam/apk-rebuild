.class public final Lokhttp3/internal/connection/ExchangeFinder;
.super Ljava/lang/Object;
.source "ExchangeFinder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExchangeFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExchangeFinder.kt\nokhttp3/internal/connection/ExchangeFinder\n*L\n1#1,317:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010J0\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\u0010H\u0002J8\u0010%\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0006\u0010&\u001a\u00020\u0010J\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\'\u001a\u00020\u0010H\u0002J\u0006\u0010(\u001a\u00020)R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lokhttp3/internal/connection/ExchangeFinder;",
        "",
        "transmitter",
        "Lokhttp3/internal/connection/Transmitter;",
        "connectionPool",
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "address",
        "Lokhttp3/Address;",
        "call",
        "Lokhttp3/Call;",
        "eventListener",
        "Lokhttp3/EventListener;",
        "(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V",
        "connectingConnection",
        "Lokhttp3/internal/connection/RealConnection;",
        "hasStreamFailure",
        "",
        "nextRouteToTry",
        "Lokhttp3/Route;",
        "routeSelection",
        "Lokhttp3/internal/connection/RouteSelector$Selection;",
        "routeSelector",
        "Lokhttp3/internal/connection/RouteSelector;",
        "find",
        "Lokhttp3/internal/http/ExchangeCodec;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "doExtensiveHealthChecks",
        "findConnection",
        "connectTimeout",
        "",
        "readTimeout",
        "writeTimeout",
        "pingIntervalMillis",
        "connectionRetryEnabled",
        "findHealthyConnection",
        "hasRouteToTry",
        "retryCurrentRoute",
        "trackFailure",
        "",
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
.field private final address:Lokhttp3/Address;

.field private final call:Lokhttp3/Call;

.field private connectingConnection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private hasStreamFailure:Z

.field private nextRouteToTry:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;

.field private final transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 5
    .param p1, "transmitter"    # Lokhttp3/internal/connection/Transmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "connectionPool"    # Lokhttp3/internal/connection/RealConnectionPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "address"    # Lokhttp3/Address;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "eventListener"    # Lokhttp3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "transmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iput-object p2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iput-object p3, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iput-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    iput-object p5, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    .line 59
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    .line 60
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnectionPool;->getRouteDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    iget-object v4, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    .line 59
    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    return-void
.end method

.method private final findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .locals 21
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v13, 0x0

    .line 148
    .local v13, "foundPooledConnection":Z
    const/4 v2, 0x0

    check-cast v2, Lokhttp3/internal/connection/RealConnection;

    .line 149
    .local v2, "result":Lokhttp3/internal/connection/RealConnection;
    const/16 v18, 0x0

    check-cast v18, Lokhttp3/Route;

    .line 150
    .local v18, "selectedRoute":Lokhttp3/Route;
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 151
    .local v15, "releasedConnection":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/16 v20, 0x0

    .line 152
    .local v20, "toClose":Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v4

    nop

    const/4 v10, 0x0

    .line 153
    .local v10, "$i$a$-synchronized-ExchangeFinder$findConnection$1":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 154
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->releaseConnectionNoEvents()Ljava/net/Socket;

    move-result-object v20

    .line 163
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    .line 166
    const/4 v3, 0x0

    check-cast v3, Lokhttp3/internal/connection/RealConnection;

    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 169
    :cond_2
    if-nez v2, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 172
    const/4 v13, 0x1

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    .line 179
    :cond_3
    :goto_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit v4

    .line 182
    if-eqz v20, :cond_4

    invoke-static/range {v20 .. v20}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 184
    :cond_4
    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_6

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    iget-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/connection/RealConnection;

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast v3, Lokhttp3/Connection;

    invoke-virtual {v4, v5, v3}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 187
    :cond_6
    if-eqz v13, :cond_8

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    if-nez v2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    move-object v3, v2

    check-cast v3, Lokhttp3/Connection;

    invoke-virtual {v4, v5, v3}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 190
    :cond_8
    if-eqz v2, :cond_e

    .line 192
    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    move-object/from16 v16, v2

    .line 269
    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .local v16, "result":Lokhttp3/internal/connection/RealConnection;
    :goto_2
    return-object v16

    .line 160
    .end local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    :cond_a
    const/16 v20, 0x0

    goto :goto_0

    .line 174
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    if-eqz v3, :cond_c

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    move-object/from16 v18, v0

    .line 176
    const/4 v3, 0x0

    check-cast v3, Lokhttp3/Route;

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    goto :goto_1

    .line 177
    :cond_c
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/connection/ExchangeFinder;->retryCurrentRoute()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    goto :goto_1

    .line 196
    :cond_e
    const/4 v14, 0x0

    .line 197
    .local v14, "newRouteSelection":Z
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-nez v3, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 198
    :cond_10
    const/4 v14, 0x1

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 202
    :cond_11
    const/16 v17, 0x0

    check-cast v17, Ljava/util/List;

    .line 203
    .local v17, "routes":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v4

    nop

    const/4 v11, 0x0

    .line 204
    .local v11, "$i$a$-synchronized-ExchangeFinder$findConnection$2":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :catchall_1
    move-exception v3

    :goto_3
    monitor-exit v4

    throw v3

    .line 206
    :cond_12
    if-eqz v14, :cond_25

    .line 209
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-nez v3, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector$Selection;->getRoutes()Ljava/util/List;

    move-result-object v17

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 211
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v7, 0x0

    .line 210
    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v6, v0, v7}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 212
    const/4 v13, 0x1

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    move-object/from16 v16, v2

    .line 217
    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    :goto_4
    if-nez v13, :cond_24

    .line 218
    if-nez v18, :cond_15

    .line 219
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-nez v3, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v18

    .line 224
    :cond_15
    new-instance v2, Lokhttp3/internal/connection/RealConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    if-nez v18, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_16
    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 225
    .end local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    :try_start_6
    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    .line 227
    :goto_5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 203
    monitor-exit v4

    .line 230
    if-eqz v13, :cond_19

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    if-nez v2, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_17
    move-object v3, v2

    check-cast v3, Lokhttp3/Connection;

    invoke-virtual {v4, v5, v3}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 232
    if-nez v2, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    move-object/from16 v16, v2

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_2

    .line 236
    .end local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    :cond_19
    if-nez v2, :cond_1a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 242
    :cond_1a
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    .line 243
    move-object/from16 v0, p0

    iget-object v9, v0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 236
    invoke-virtual/range {v2 .. v9}, Lokhttp3/internal/connection/RealConnection;->connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnectionPool;->getRouteDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v3

    if-nez v2, :cond_1b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    .line 247
    const/16 v19, 0x0

    check-cast v19, Ljava/net/Socket;

    .line 248
    .local v19, "socket":Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v4

    nop

    const/4 v12, 0x0

    .line 249
    .local v12, "$i$a$-synchronized-ExchangeFinder$findConnection$3":I
    const/4 v3, 0x0

    :try_start_7
    check-cast v3, Lokhttp3/internal/connection/RealConnection;

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v6, v0, v7}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 254
    if-nez v2, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1c
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 255
    if-nez v2, :cond_1d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1d
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v19

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    .line 260
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    .line 264
    :goto_6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 248
    monitor-exit v4

    .line 266
    if-eqz v19, :cond_1e

    invoke-static/range {v19 .. v19}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 268
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    if-nez v2, :cond_1f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    move-object v3, v2

    check-cast v3, Lokhttp3/Connection;

    invoke-virtual {v4, v5, v3}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 269
    if-nez v2, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    move-object/from16 v16, v2

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_2

    .line 262
    .end local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    :cond_21
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    if-nez v2, :cond_22

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_22
    invoke-virtual {v3, v2}, Lokhttp3/internal/connection/RealConnectionPool;->put(Lokhttp3/internal/connection/RealConnection;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_23

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_23
    invoke-virtual {v3, v2}, Lokhttp3/internal/connection/Transmitter;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    .line 248
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 203
    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .end local v12    # "$i$a$-synchronized-ExchangeFinder$findConnection$3":I
    .end local v19    # "socket":Ljava/net/Socket;
    .restart local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    :catchall_3
    move-exception v3

    move-object/from16 v2, v16

    .end local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_3

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    :cond_24
    move-object/from16 v2, v16

    .end local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_5

    :cond_25
    move-object/from16 v16, v2

    .end local v2    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v16    # "result":Lokhttp3/internal/connection/RealConnection;
    goto/16 :goto_4
.end method

.method private final findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 4
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :goto_0
    nop

    .line 109
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/ExchangeFinder;->findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    .line 118
    .local v1, "candidate":Lokhttp3/internal/connection/RealConnection;
    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v3

    nop

    const/4 v0, 0x0

    .line 119
    .local v0, "$i$a$-synchronized-ExchangeFinder$findHealthyConnection$1":I
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->getSuccessCount$okhttp()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 120
    monitor-exit v3

    .line 131
    :cond_0
    return-object v1

    .line 122
    :cond_1
    nop

    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit v3

    .line 126
    invoke-virtual {v1, p6}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private final retryCurrentRoute()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getRouteFailureCount$okhttp()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final connectingConnection()Lokhttp3/internal/connection/RealConnection;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const-string v1, "Assertion failed"

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public final find(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;
    .locals 9
    .param p1, "client"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "doExtensiveHealthChecks"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    .line 71
    .local v1, "connectTimeout":I
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    .line 72
    .local v2, "readTimeout":I
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    .line 73
    .local v3, "writeTimeout":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    .line 74
    .local v4, "pingIntervalMillis":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    .line 76
    .local v5, "connectionRetryEnabled":Z
    nop

    move-object v0, p0

    move v6, p3

    .line 77
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/connection/ExchangeFinder;->findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v8

    .line 85
    .local v8, "resultConnection":Lokhttp3/internal/connection/RealConnection;
    invoke-virtual {v8, p1, p2}, Lokhttp3/internal/connection/RealConnection;->newCodec$okhttp(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/internal/http/ExchangeCodec;
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 86
    .end local v8    # "resultConnection":Lokhttp3/internal/connection/RealConnection;
    :catch_0
    move-exception v7

    .line 87
    .local v7, "e":Lokhttp3/internal/connection/RouteException;
    invoke-virtual {p0}, Lokhttp3/internal/connection/ExchangeFinder;->trackFailure()V

    .line 88
    check-cast v7, Ljava/lang/Throwable;

    .end local v7    # "e":Lokhttp3/internal/connection/RouteException;
    throw v7

    .line 89
    :catch_1
    move-exception v7

    .line 90
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lokhttp3/internal/connection/ExchangeFinder;->trackFailure()V

    .line 91
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, v7}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final hasRouteToTry()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 293
    iget-object v4, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v4

    nop

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$a$-synchronized-ExchangeFinder$hasRouteToTry$1":I
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 295
    monitor-exit v4

    .line 302
    :goto_0
    return v2

    .line 297
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/connection/ExchangeFinder;->retryCurrentRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    monitor-exit v4

    goto :goto_0

    .line 302
    :cond_2
    :try_start_2
    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v3

    :goto_1
    if-nez v3, :cond_3

    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    monitor-exit v4

    move v2, v1

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public final hasStreamFailure()Z
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    nop

    const/4 v0, 0x0

    .line 287
    .local v0, "$i$a$-synchronized-ExchangeFinder$hasStreamFailure$1":I
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v2

    .line 286
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public final trackFailure()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 278
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

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

    .line 279
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    nop

    const/4 v0, 0x0

    .line 280
    .local v0, "$i$a$-synchronized-ExchangeFinder$trackFailure$1":I
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    .line 281
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit v2

    .line 282
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
