.class public Lokhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Response.kt\nokhttp3/Response$Builder\n*L\n1#1,455:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020)2\u0006\u0010K\u001a\u00020)H\u0016J\u0012\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010L\u001a\u00020\u0004H\u0016J\u0012\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010M\u001a\u00020N2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u001a\u0010O\u001a\u00020N2\u0006\u0010J\u001a\u00020)2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010P\u001a\u00020\u00002\u0006\u0010J\u001a\u00020)2\u0006\u0010K\u001a\u00020)H\u0016J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020QH\u0016J\u0015\u0010R\u001a\u00020N2\u0006\u0010S\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008TJ\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010.\u001a\u00020\u00002\u0008\u0010.\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u00101\u001a\u00020\u00002\u0008\u00101\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u000205H\u0016J\u0010\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010J\u001a\u00020)H\u0016J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020AH\u0016J\u0010\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020;H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0005R\u001a\u0010\u0010\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020#X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u000e\"\u0004\u00080\u0010\u0005R\u001c\u00101\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u000e\"\u0004\u00083\u0010\u0005R\u001c\u00104\u001a\u0004\u0018\u000105X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010:\u001a\u00020;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001a\u0010F\u001a\u00020;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010=\"\u0004\u0008H\u0010?\u00a8\u0006V"
    }
    d2 = {
        "Lokhttp3/Response$Builder;",
        "",
        "()V",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)V",
        "body",
        "Lokhttp3/ResponseBody;",
        "getBody$okhttp",
        "()Lokhttp3/ResponseBody;",
        "setBody$okhttp",
        "(Lokhttp3/ResponseBody;)V",
        "cacheResponse",
        "getCacheResponse$okhttp",
        "()Lokhttp3/Response;",
        "setCacheResponse$okhttp",
        "code",
        "",
        "getCode$okhttp",
        "()I",
        "setCode$okhttp",
        "(I)V",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "getExchange$okhttp",
        "()Lokhttp3/internal/connection/Exchange;",
        "setExchange$okhttp",
        "(Lokhttp3/internal/connection/Exchange;)V",
        "handshake",
        "Lokhttp3/Handshake;",
        "getHandshake$okhttp",
        "()Lokhttp3/Handshake;",
        "setHandshake$okhttp",
        "(Lokhttp3/Handshake;)V",
        "headers",
        "Lokhttp3/Headers$Builder;",
        "getHeaders$okhttp",
        "()Lokhttp3/Headers$Builder;",
        "setHeaders$okhttp",
        "(Lokhttp3/Headers$Builder;)V",
        "message",
        "",
        "getMessage$okhttp",
        "()Ljava/lang/String;",
        "setMessage$okhttp",
        "(Ljava/lang/String;)V",
        "networkResponse",
        "getNetworkResponse$okhttp",
        "setNetworkResponse$okhttp",
        "priorResponse",
        "getPriorResponse$okhttp",
        "setPriorResponse$okhttp",
        "protocol",
        "Lokhttp3/Protocol;",
        "getProtocol$okhttp",
        "()Lokhttp3/Protocol;",
        "setProtocol$okhttp",
        "(Lokhttp3/Protocol;)V",
        "receivedResponseAtMillis",
        "",
        "getReceivedResponseAtMillis$okhttp",
        "()J",
        "setReceivedResponseAtMillis$okhttp",
        "(J)V",
        "request",
        "Lokhttp3/Request;",
        "getRequest$okhttp",
        "()Lokhttp3/Request;",
        "setRequest$okhttp",
        "(Lokhttp3/Request;)V",
        "sentRequestAtMillis",
        "getSentRequestAtMillis$okhttp",
        "setSentRequestAtMillis$okhttp",
        "addHeader",
        "name",
        "value",
        "build",
        "checkPriorResponse",
        "",
        "checkSupportResponse",
        "header",
        "Lokhttp3/Headers;",
        "initExchange",
        "deferredTrailers",
        "initExchange$okhttp",
        "removeHeader",
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
.field private body:Lokhttp3/ResponseBody;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cacheResponse:Lokhttp3/Response;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private code:I

.field private exchange:Lokhttp3/internal/connection/Exchange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private handshake:Lokhttp3/Handshake;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private headers:Lokhttp3/Headers$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private networkResponse:Lokhttp3/Response;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private priorResponse:Lokhttp3/Response;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private protocol:Lokhttp3/Protocol;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private receivedResponseAtMillis:J

.field private request:Lokhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 324
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 328
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 329
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 330
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 331
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 333
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 334
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 335
    invoke-virtual {p1}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 336
    invoke-virtual {p1}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 337
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 338
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 339
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 340
    invoke-virtual {p1}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    return-void
.end method

.method private final checkPriorResponse(Lokhttp3/Response;)V
    .locals 5
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 418
    if-eqz p1, :cond_2

    move-object v2, p1

    .local v2, "$this$apply":Lokhttp3/Response;
    const/4 v0, 0x0

    .line 419
    .local v0, "$i$a$-apply-Response$Builder$checkPriorResponse$1":I
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "$i$a$-require-Response$Builder$checkPriorResponse$1$1":I
    const-string v4, "priorResponse.body != null"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v1    # "$i$a$-require-Response$Builder$checkPriorResponse$1$1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 420
    :cond_1
    nop

    .line 421
    .end local v0    # "$i$a$-apply-Response$Builder$checkPriorResponse$1":I
    .end local v2    # "$this$apply":Lokhttp3/Response;
    :cond_2
    return-void
.end method

.method private final checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 404
    if-eqz p2, :cond_8

    move-object v5, p2

    .local v5, "$this$apply":Lokhttp3/Response;
    const/4 v0, 0x0

    .line 405
    .local v0, "$i$a$-apply-Response$Builder$checkSupportResponse$1":I
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-nez v8, :cond_0

    move v8, v6

    :goto_0
    if-nez v8, :cond_1

    const/4 v1, 0x0

    .local v1, "$i$a$-require-Response$Builder$checkSupportResponse$1$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".body != null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .end local v1    # "$i$a$-require-Response$Builder$checkSupportResponse$1$1":I
    :cond_0
    move v8, v7

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {v5}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v8

    if-nez v8, :cond_2

    move v8, v6

    :goto_1
    if-nez v8, :cond_3

    const/4 v2, 0x0

    .local v2, "$i$a$-require-Response$Builder$checkSupportResponse$1$2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".networkResponse != null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .end local v2    # "$i$a$-require-Response$Builder$checkSupportResponse$1$2":I
    :cond_2
    move v8, v7

    goto :goto_1

    .line 407
    :cond_3
    invoke-virtual {v5}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v8

    if-nez v8, :cond_4

    move v8, v6

    :goto_2
    if-nez v8, :cond_5

    const/4 v3, 0x0

    .local v3, "$i$a$-require-Response$Builder$checkSupportResponse$1$3":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".cacheResponse != null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .end local v3    # "$i$a$-require-Response$Builder$checkSupportResponse$1$3":I
    :cond_4
    move v8, v7

    goto :goto_2

    .line 408
    :cond_5
    invoke-virtual {v5}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v8

    if-nez v8, :cond_6

    :goto_3
    if-nez v6, :cond_7

    const/4 v4, 0x0

    .local v4, "$i$a$-require-Response$Builder$checkSupportResponse$1$4":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".priorResponse != null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .end local v4    # "$i$a$-require-Response$Builder$checkSupportResponse$1$4":I
    :cond_6
    move v6, v7

    goto :goto_3

    .line 409
    :cond_7
    nop

    .line 410
    .end local v0    # "$i$a$-apply-Response$Builder$checkSupportResponse$1":I
    .end local v5    # "$this$apply":Lokhttp3/Response;
    :cond_8
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 375
    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 376
    .local v0, "$i$a$-apply-Response$Builder$addHeader$1":I
    iget-object v2, v1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v2, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 377
    nop

    .line 375
    check-cast p0, Lokhttp3/Response$Builder;

    .line 377
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    .locals 2
    .param p1, "body"    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 389
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 390
    .local v0, "$i$a$-apply-Response$Builder$body$1":I
    iput-object p1, v1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 391
    nop

    .line 389
    check-cast p0, Lokhttp3/Response$Builder;

    .line 391
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public build()Lokhttp3/Response;
    .locals 22
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget v3, v0, Lokhttp3/Response$Builder;->code:I

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .local v2, "$i$a$-check-Response$Builder$build$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lokhttp3/Response$Builder;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v2    # "$i$a$-check-Response$Builder$build$1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 437
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    if-nez v4, :cond_2

    const/16 v19, 0x0

    .line 438
    .local v19, "$i$a$-checkNotNull-Response$Builder$build$2":I
    const-string v4, "request == null"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 439
    .end local v19    # "$i$a$-checkNotNull-Response$Builder$build$2":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    if-nez v5, :cond_3

    const/16 v20, 0x0

    .local v20, "$i$a$-checkNotNull-Response$Builder$build$3":I
    const-string v4, "protocol == null"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 440
    .end local v20    # "$i$a$-checkNotNull-Response$Builder$build$3":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    if-nez v6, :cond_4

    const/16 v21, 0x0

    .local v21, "$i$a$-checkNotNull-Response$Builder$build$4":I
    const-string v4, "message == null"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 441
    .end local v21    # "$i$a$-checkNotNull-Response$Builder$build$4":I
    :cond_4
    move-object/from16 v0, p0

    iget v7, v0, Lokhttp3/Response$Builder;->code:I

    .line 442
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v9

    .line 444
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 445
    move-object/from16 v0, p0

    iget-object v11, v0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 448
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 449
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    move-wide/from16 v16, v0

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    move-object/from16 v18, v0

    .line 437
    new-instance v3, Lokhttp3/Response;

    invoke-direct/range {v3 .. v18}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;)V

    return-object v3
.end method

.method public cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "cacheResponse"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 398
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 399
    .local v0, "$i$a$-apply-Response$Builder$cacheResponse$1":I
    const-string v2, "cacheResponse"

    invoke-direct {v1, v2, p1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 400
    iput-object p1, v1, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 401
    nop

    .line 398
    check-cast p0, Lokhttp3/Response$Builder;

    .line 401
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public code(I)Lokhttp3/Response$Builder;
    .locals 2
    .param p1, "code"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 351
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 352
    .local v0, "$i$a$-apply-Response$Builder$code$1":I
    iput p1, v1, Lokhttp3/Response$Builder;->code:I

    .line 353
    nop

    .line 351
    check-cast p0, Lokhttp3/Response$Builder;

    .line 353
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public final getBody$okhttp()Lokhttp3/ResponseBody;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public final getCacheResponse$okhttp()Lokhttp3/Response;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public final getCode$okhttp()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lokhttp3/Response$Builder;->code:I

    return v0
.end method

.method public final getExchange$okhttp()Lokhttp3/internal/connection/Exchange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    return-object v0
.end method

.method public final getHandshake$okhttp()Lokhttp3/Handshake;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public final getHeaders$okhttp()Lokhttp3/Headers$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final getMessage$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkResponse$okhttp()Lokhttp3/Response;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public final getPriorResponse$okhttp()Lokhttp3/Response;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public final getProtocol$okhttp()Lokhttp3/Protocol;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method public final getReceivedResponseAtMillis$okhttp()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public final getRequest$okhttp()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public final getSentRequestAtMillis$okhttp()J
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;
    .locals 2
    .param p1, "handshake"    # Lokhttp3/Handshake;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 359
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 360
    .local v0, "$i$a$-apply-Response$Builder$handshake$1":I
    iput-object p1, v1, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 361
    nop

    .line 359
    check-cast p0, Lokhttp3/Response$Builder;

    .line 361
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 367
    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 368
    .local v0, "$i$a$-apply-Response$Builder$header$1":I
    iget-object v2, v1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v2, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 369
    nop

    .line 367
    check-cast p0, Lokhttp3/Response$Builder;

    .line 369
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "headers"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 385
    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 386
    .local v0, "$i$a$-apply-Response$Builder$headers$1":I
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 387
    nop

    .line 385
    check-cast p0, Lokhttp3/Response$Builder;

    .line 387
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public final initExchange$okhttp(Lokhttp3/internal/connection/Exchange;)V
    .locals 1
    .param p1, "deferredTrailers"    # Lokhttp3/internal/connection/Exchange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "deferredTrailers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iput-object p1, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 433
    return-void
.end method

.method public message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "message"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 355
    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 356
    .local v0, "$i$a$-apply-Response$Builder$message$1":I
    iput-object p1, v1, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 357
    nop

    .line 355
    check-cast p0, Lokhttp3/Response$Builder;

    .line 357
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "networkResponse"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 393
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 394
    .local v0, "$i$a$-apply-Response$Builder$networkResponse$1":I
    const-string v2, "networkResponse"

    invoke-direct {v1, v2, p1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 395
    iput-object p1, v1, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 396
    nop

    .line 393
    check-cast p0, Lokhttp3/Response$Builder;

    .line 396
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 2
    .param p1, "priorResponse"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 412
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 413
    .local v0, "$i$a$-apply-Response$Builder$priorResponse$1":I
    invoke-direct {v1, p1}, Lokhttp3/Response$Builder;->checkPriorResponse(Lokhttp3/Response;)V

    .line 414
    iput-object p1, v1, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 415
    nop

    .line 412
    check-cast p0, Lokhttp3/Response$Builder;

    .line 415
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "protocol"    # Lokhttp3/Protocol;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "protocol"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 347
    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 348
    .local v0, "$i$a$-apply-Response$Builder$protocol$1":I
    iput-object p1, v1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 349
    nop

    .line 347
    check-cast p0, Lokhttp3/Response$Builder;

    .line 349
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "receivedResponseAtMillis"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 427
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 428
    .local v0, "$i$a$-apply-Response$Builder$receivedResponseAtMillis$1":I
    iput-wide p1, v1, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 429
    nop

    .line 427
    check-cast p0, Lokhttp3/Response$Builder;

    .line 429
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 380
    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 381
    .local v0, "$i$a$-apply-Response$Builder$removeHeader$1":I
    iget-object v2, v1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 382
    nop

    .line 380
    check-cast p0, Lokhttp3/Response$Builder;

    .line 382
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "request"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "request"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 343
    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 344
    .local v0, "$i$a$-apply-Response$Builder$request$1":I
    iput-object p1, v1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 345
    nop

    .line 343
    check-cast p0, Lokhttp3/Response$Builder;

    .line 345
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    .locals 3
    .param p1, "sentRequestAtMillis"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 423
    move-object v1, p0

    check-cast v1, Lokhttp3/Response$Builder;

    .local v1, "$this$apply":Lokhttp3/Response$Builder;
    const/4 v0, 0x0

    .line 424
    .local v0, "$i$a$-apply-Response$Builder$sentRequestAtMillis$1":I
    iput-wide p1, v1, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 425
    nop

    .line 423
    check-cast p0, Lokhttp3/Response$Builder;

    .line 425
    .end local p0    # "this":Lokhttp3/Response$Builder;
    return-object p0
.end method

.method public final setBody$okhttp(Lokhttp3/ResponseBody;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 315
    iput-object p1, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    return-void
.end method

.method public final setCacheResponse$okhttp(Lokhttp3/Response;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 317
    iput-object p1, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    return-void
.end method

.method public final setCode$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 311
    iput p1, p0, Lokhttp3/Response$Builder;->code:I

    return-void
.end method

.method public final setExchange$okhttp(Lokhttp3/internal/connection/Exchange;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/internal/connection/Exchange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    iput-object p1, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    return-void
.end method

.method public final setHandshake$okhttp(Lokhttp3/Handshake;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Handshake;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 313
    iput-object p1, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    return-void
.end method

.method public final setHeaders$okhttp(Lokhttp3/Headers$Builder;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Headers$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method

.method public final setMessage$okhttp(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    iput-object p1, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    return-void
.end method

.method public final setNetworkResponse$okhttp(Lokhttp3/Response;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 316
    iput-object p1, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    return-void
.end method

.method public final setPriorResponse$okhttp(Lokhttp3/Response;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 318
    iput-object p1, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    return-void
.end method

.method public final setProtocol$okhttp(Lokhttp3/Protocol;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Protocol;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    iput-object p1, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    return-void
.end method

.method public final setReceivedResponseAtMillis$okhttp(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 320
    iput-wide p1, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method public final setRequest$okhttp(Lokhttp3/Request;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 309
    iput-object p1, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    return-void
.end method

.method public final setSentRequestAtMillis$okhttp(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 319
    iput-wide p1, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    return-void
.end method
