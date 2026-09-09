.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetryAndFollowUpInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryAndFollowUpInterceptor.kt\nokhttp3/internal/http/RetryAndFollowUpInterceptor\n*L\n1#1,330:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/http/RetryAndFollowUpInterceptor;",
        "Lokhttp3/Interceptor;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "(Lokhttp3/OkHttpClient;)V",
        "buildRedirectRequest",
        "Lokhttp3/Request;",
        "userResponse",
        "Lokhttp3/Response;",
        "method",
        "",
        "followUpRequest",
        "route",
        "Lokhttp3/Route;",
        "intercept",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "isRecoverable",
        "",
        "e",
        "Ljava/io/IOException;",
        "requestSendStarted",
        "recover",
        "transmitter",
        "Lokhttp3/internal/connection/Transmitter;",
        "userRequest",
        "requestIsOneShot",
        "retryAfter",
        "",
        "defaultDelay",
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
.field public static final Companion:Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->Companion:Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1, "client"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;
    .locals 8
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v6

    if-nez v6, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-object v2

    .line 276
    :cond_1
    const-string v6, "Location"

    const/4 v7, 0x2

    invoke-static {p1, v6, v2, v7, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6, v0}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 281
    .local v5, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 282
    .local v4, "sameScheme":Z
    if-nez v4, :cond_2

    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    .line 286
    .local v3, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {p2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 287
    sget-object v6, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v6, p2}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v1

    .line 288
    .local v1, "maintainBody":Z
    sget-object v6, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v6, p2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 289
    const-string v6, "GET"

    invoke-virtual {v3, v6, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 293
    :goto_1
    if-nez v1, :cond_3

    .line 295
    const-string v6, "Transfer-Encoding"

    invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 296
    const-string v6, "Content-Length"

    invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 297
    const-string v6, "Content-Type"

    invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 304
    .end local v1    # "maintainBody":Z
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-static {v6, v5}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 305
    const-string v6, "Authorization"

    invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 308
    :cond_4
    invoke-virtual {v3, v5}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    goto/16 :goto_0

    .line 291
    .restart local v1    # "maintainBody":Z
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    .line 292
    .local v2, "requestBody":Lokhttp3/RequestBody;
    :cond_6
    invoke-virtual {v3, p2, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1
.end method

.method private final followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .locals 8
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "route"    # Lokhttp3/Route;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 201
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    .line 203
    .local v3, "responseCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "method":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-object v5

    .line 206
    :sswitch_0
    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    .line 207
    .local v4, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_2

    .line 208
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 210
    :cond_2
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v5

    invoke-interface {v5, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v5

    goto :goto_0

    .line 213
    .end local v4    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_1
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v5

    invoke-interface {v5, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v5

    goto :goto_0

    .line 218
    :sswitch_2
    const-string v6, "GET"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const-string v6, "HEAD"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 221
    :cond_3
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v5

    goto :goto_0

    .line 225
    :sswitch_3
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v5

    goto :goto_0

    .line 232
    :sswitch_4
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    .line 238
    .local v2, "requestBody":Lokhttp3/RequestBody;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    .line 242
    .local v1, "priorResponse":Lokhttp3/Response;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0x198

    if-eq v6, v7, :cond_0

    .line 247
    :cond_5
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v6

    if-gtz v6, :cond_0

    .line 251
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    goto/16 :goto_0

    .line 255
    .end local v1    # "priorResponse":Lokhttp3/Response;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :sswitch_5
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    .line 256
    .restart local v1    # "priorResponse":Lokhttp3/Response;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0x1f7

    if-eq v6, v7, :cond_0

    .line 261
    :cond_6
    const v6, 0x7fffffff

    invoke-direct {p0, p1, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 263
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
        0x1f7 -> :sswitch_5
    .end sparse-switch
.end method

.method private final isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_3

    .line 172
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 177
    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_4

    .line 180
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 184
    :cond_4
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    move v1, v0

    .line 191
    goto :goto_0
.end method

.method private final recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "transmitter"    # Lokhttp3/internal/connection/Transmitter;
    .param p3, "requestSendStarted"    # Z
    .param p4, "userRequest"    # Lokhttp3/Request;

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    :cond_2
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p2}, Lokhttp3/internal/connection/Transmitter;->canRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "userRequest"    # Lokhttp3/Request;

    .prologue
    .line 158
    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    .line 159
    .local v0, "requestBody":Lokhttp3/RequestBody;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final retryAfter(Lokhttp3/Response;I)I
    .locals 4
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "defaultDelay"    # I

    .prologue
    const/4 v3, 0x0

    .line 312
    const-string v1, "Retry-After"

    const/4 v2, 0x2

    invoke-static {p1, v1, v3, v2, v3}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "header":Ljava/lang/String;
    move-object v1, v0

    .line 316
    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "\\d+"

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Integer.valueOf(header)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 319
    .end local v0    # "header":Ljava/lang/String;
    .end local p2    # "defaultDelay":I
    :cond_0
    :goto_0
    return p2

    .restart local v0    # "header":Ljava/lang/String;
    .restart local p2    # "defaultDelay":I
    :cond_1
    const p2, 0x7fffffff

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v14, "chain"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v8

    .local v8, "request":Lokhttp3/Request;
    move-object/from16 v7, p1

    .line 57
    check-cast v7, Lokhttp3/internal/http/RealInterceptorChain;

    .line 58
    .local v7, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v7}, Lokhttp3/internal/http/RealInterceptorChain;->transmitter()Lokhttp3/internal/connection/Transmitter;

    move-result-object v13

    .line 59
    .local v13, "transmitter":Lokhttp3/internal/connection/Transmitter;
    const/4 v5, 0x0

    .line 60
    .local v5, "followUpCount":I
    const/4 v6, 0x0

    check-cast v6, Lokhttp3/Response;

    .line 61
    .local v6, "priorResponse":Lokhttp3/Response;
    :goto_0
    nop

    .line 62
    invoke-virtual {v13, v8}, Lokhttp3/internal/connection/Transmitter;->prepareToConnect(Lokhttp3/Request;)V

    .line 64
    invoke-virtual {v13}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 65
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Canceled"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    .line 68
    :cond_0
    const/4 v10, 0x0

    .line 69
    .local v10, "response":Lokhttp3/Response;
    const/4 v12, 0x0

    .line 70
    .local v12, "success":Z
    nop

    .line 71
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v7, v8, v13, v14}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 72
    const/4 v12, 0x1

    .line 86
    nop

    .line 89
    if-eqz v6, :cond_1

    .line 93
    invoke-virtual {v10}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v14

    .line 94
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v15

    .line 95
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v15

    .line 96
    invoke-virtual {v15}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v15

    .line 94
    invoke-virtual {v14, v15}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v14

    .line 97
    invoke-virtual {v14}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    .line 100
    :cond_1
    invoke-virtual {v10}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object v2

    .line 101
    .local v2, "exchange":Lokhttp3/internal/connection/Exchange;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v11

    .line 102
    .local v11, "route":Lokhttp3/Route;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v3

    .line 104
    .local v3, "followUp":Lokhttp3/Request;
    if-nez v3, :cond_7

    .line 105
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->isDuplex()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 106
    invoke-virtual {v13}, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    .line 113
    :cond_2
    return-object v10

    .line 73
    .end local v2    # "exchange":Lokhttp3/internal/connection/Exchange;
    .end local v3    # "followUp":Lokhttp3/Request;
    .end local v11    # "route":Lokhttp3/Route;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lokhttp3/internal/connection/RouteException;
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13, v15, v8}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 76
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v14

    check-cast v14, Ljava/lang/Throwable;

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v1    # "e":Lokhttp3/internal/connection/RouteException;
    :catchall_0
    move-exception v14

    .line 86
    nop

    .line 87
    invoke-virtual {v13}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    throw v14

    .line 78
    .restart local v1    # "e":Lokhttp3/internal/connection/RouteException;
    :cond_3
    nop

    .line 87
    invoke-virtual {v13}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Lokhttp3/internal/connection/RouteException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    instance-of v14, v1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v14, :cond_4

    const/4 v9, 0x1

    .line 82
    .local v9, "requestSendStarted":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13, v9, v8}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v14

    if-nez v14, :cond_5

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/io/IOException;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v9    # "requestSendStarted":Z
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 83
    .restart local v9    # "requestSendStarted":Z
    :cond_5
    nop

    .line 87
    invoke-virtual {v13}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_0

    .line 101
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "requestSendStarted":Z
    .restart local v2    # "exchange":Lokhttp3/internal/connection/Exchange;
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 111
    .restart local v3    # "followUp":Lokhttp3/Request;
    .restart local v11    # "route":Lokhttp3/Route;
    :cond_7
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 112
    .local v4, "followUpBody":Lokhttp3/RequestBody;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v14

    if-nez v14, :cond_2

    .line 116
    :cond_8
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    if-eqz v14, :cond_9

    check-cast v14, Ljava/io/Closeable;

    invoke-static {v14}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    :cond_9
    invoke-virtual {v13}, Lokhttp3/internal/connection/Transmitter;->hasExchange()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 118
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->detachWithViolence()V

    .line 121
    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/16 v14, 0x14

    if-le v5, v14, :cond_b

    .line 122
    new-instance v14, Ljava/net/ProtocolException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Too many follow-up requests: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    .line 125
    :cond_b
    move-object v8, v3

    .line 126
    move-object v6, v10

    .line 61
    goto/16 :goto_0
.end method
