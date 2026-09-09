.class public final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;,
        Lokhttp3/RealCall$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/RealCall\n*L\n1#1,213:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \'2\u00020\u0001:\u0002&\'B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0000H\u0016J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0008\u0010\u001e\u001a\u00020\u0007H\u0016J\u0008\u0010\u001f\u001a\u00020\u0007H\u0016J\u0006\u0010 \u001a\u00020!J\u0008\u0010\"\u001a\u00020\u0005H\u0016J\u0008\u0010#\u001a\u00020$H\u0016J\u0006\u0010%\u001a\u00020!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lokhttp3/RealCall;",
        "Lokhttp3/Call;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "originalRequest",
        "Lokhttp3/Request;",
        "forWebSocket",
        "",
        "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "executed",
        "getExecuted",
        "()Z",
        "setExecuted",
        "(Z)V",
        "getForWebSocket",
        "getOriginalRequest",
        "()Lokhttp3/Request;",
        "transmitter",
        "Lokhttp3/internal/connection/Transmitter;",
        "cancel",
        "",
        "clone",
        "enqueue",
        "responseCallback",
        "Lokhttp3/Callback;",
        "execute",
        "Lokhttp3/Response;",
        "getResponseWithInterceptorChain",
        "isCanceled",
        "isExecuted",
        "redactedUrl",
        "",
        "request",
        "timeout",
        "Lokio/Timeout;",
        "toLoggableString",
        "AsyncCall",
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
.field public static final Companion:Lokhttp3/RealCall$Companion;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private executed:Z

.field private final forWebSocket:Z

.field private final originalRequest:Lokhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/RealCall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/RealCall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/RealCall;->Companion:Lokhttp3/RealCall$Companion;

    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lokhttp3/Request;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lokhttp3/Request;
    .param p3, "forWebSocket"    # Z
    .param p4, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    return-void
.end method

.method public static final synthetic access$getTransmitter$p(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;
    .locals 2
    .param p0, "$this"    # Lokhttp3/RealCall;

    .prologue
    .line 36
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_0

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setTransmitter$p(Lokhttp3/RealCall;Lokhttp3/internal/connection/Transmitter;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/RealCall;
    .param p1, "<set-?>"    # Lokhttp3/internal/connection/Transmitter;

    .prologue
    .line 36
    iput-object p1, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_0

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    .line 83
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lokhttp3/RealCall;->Companion:Lokhttp3/RealCall$Companion;

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean v3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/RealCall$Companion;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 4
    .param p1, "responseCallback"    # Lokhttp3/Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const-string v3, "responseCallback"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    monitor-enter p0

    nop

    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-synchronized-RealCall$enqueue$1":I
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v3, :cond_0

    :goto_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-RealCall$enqueue$1$1":I
    const-string v3, "Already Executed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0    # "$i$a$-check-RealCall$enqueue$1$1":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 74
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lokhttp3/RealCall;->executed:Z

    .line 76
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    .line 77
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_2

    const-string v3, "transmitter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 78
    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    new-instance v3, Lokhttp3/RealCall$AsyncCall;

    invoke-direct {v3, p0, p1}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v2, v3}, Lokhttp3/Dispatcher;->enqueue$okhttp(Lokhttp3/RealCall$AsyncCall;)V

    .line 79
    return-void
.end method

.method public execute()Lokhttp3/Response;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 58
    monitor-enter p0

    nop

    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-synchronized-RealCall$execute$1":I
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v3, :cond_0

    :goto_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-RealCall$execute$1$1":I
    const-string v3, "Already Executed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v0    # "$i$a$-check-RealCall$execute$1$1":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 59
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lokhttp3/RealCall;->executed:Z

    .line 61
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    .line 62
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_2

    const-string v3, "transmitter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    .line 63
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_3

    const-string v3, "transmitter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 64
    nop

    .line 65
    :try_start_2
    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->executed$okhttp(Lokhttp3/RealCall;)V

    .line 66
    invoke-virtual {p0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 68
    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall;)V

    return-object v2

    .line 69
    :catchall_1
    move-exception v2

    .line 68
    iget-object v3, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall;)V

    throw v2
.end method

.method public final getClient()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getExecuted()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    return v0
.end method

.method public final getForWebSocket()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    return v0
.end method

.method public final getOriginalRequest()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public final getResponseWithInterceptorChain()Lokhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .local v1, "interceptors":Ljava/util/List;
    move-object v2, v1

    .line 169
    check-cast v2, Ljava/util/Collection;

    iget-object v4, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object v2, v1

    .line 170
    check-cast v2, Ljava/util/Collection;

    new-instance v4, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    iget-object v5, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v4, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 171
    check-cast v2, Ljava/util/Collection;

    new-instance v4, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v5, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v5

    invoke-direct {v4, v5}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 172
    check-cast v2, Ljava/util/Collection;

    new-instance v4, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v5, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/Cache;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 173
    check-cast v2, Ljava/util/Collection;

    sget-object v4, Lokhttp3/internal/connection/ConnectInterceptor;->INSTANCE:Lokhttp3/internal/connection/ConnectInterceptor;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v2, :cond_0

    move-object v2, v1

    .line 175
    check-cast v2, Ljava/util/Collection;

    iget-object v4, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    :cond_0
    move-object v2, v1

    .line 177
    check-cast v2, Ljava/util/Collection;

    new-instance v4, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v5, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v4, v5}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_1

    const-string v4, "transmitter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    move-object v6, p0

    check-cast v6, Lokhttp3/Call;

    .line 180
    iget-object v7, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v7}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v7

    iget-object v8, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v8

    iget-object v9, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v9

    .line 179
    invoke-direct/range {v0 .. v9}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;ILokhttp3/Request;Lokhttp3/Call;III)V

    .line 182
    .local v0, "chain":Lokhttp3/internal/http/RealInterceptorChain;
    const/4 v10, 0x0

    .line 183
    .local v10, "calledNoMoreExchanges":Z
    nop

    .line 184
    :try_start_0
    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v12

    .line 185
    .local v12, "response":Lokhttp3/Response;
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_2

    const-string v4, "transmitter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    check-cast v12, Ljava/io/Closeable;

    .end local v12    # "response":Lokhttp3/Response;
    invoke-static {v12}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catch_0
    move-exception v11

    .line 191
    .local v11, "e":Ljava/io/IOException;
    const/4 v10, 0x1

    .line 192
    :try_start_1
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_3

    const-string v4, "transmitter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, v11}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance v2, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 194
    if-nez v10, :cond_5

    .line 195
    iget-object v4, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v4, :cond_4

    const-string v5, "transmitter"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4, v3}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_5
    throw v2

    .line 194
    .restart local v12    # "response":Lokhttp3/Response;
    :cond_6
    nop

    .line 195
    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v2, :cond_7

    const-string v4, "transmitter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2, v3}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v12

    .line 192
    .end local v12    # "response":Lokhttp3/Response;
    .restart local v11    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_2
    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_0

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final redactedUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public final setExecuted(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lokhttp3/RealCall;->executed:Z

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_0

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final toLoggableString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canceled "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v0, :cond_1

    const-string v0, "web socket"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "call"

    goto :goto_1
.end method
