.class public final Lokhttp3/internal/http1/Http1ExchangeCodec;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lokhttp3/internal/http/ExchangeCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec\n*L\n1#1,519:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 =2\u00020\u0001:\u0007:;<=>?@B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020\u0015H\u0016J\u0008\u0010 \u001a\u00020\u0015H\u0016J\u0008\u0010!\u001a\u00020\u0018H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020\u000cH\u0002J\u0008\u0010(\u001a\u00020\u0018H\u0002J\u0008\u0010)\u001a\u00020#H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u00020\u0013H\u0002J\u0012\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u00020\u000eH\u0016J\u0010\u00103\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020,H\u0016J\u000e\u00104\u001a\u00020\u00152\u0006\u0010+\u001a\u00020,J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u00105\u001a\u00020\u00152\u0006\u00106\u001a\u00020\u00132\u0006\u00107\u001a\u00020.J\u0010\u00108\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u000c\u00109\u001a\u00020\u000e*\u00020\u001aH\u0002J\u000c\u00109\u001a\u00020\u000e*\u00020,H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lokhttp3/internal/http1/Http1ExchangeCodec;",
        "Lokhttp3/internal/http/ExchangeCodec;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "realConnection",
        "Lokhttp3/internal/connection/RealConnection;",
        "source",
        "Lokio/BufferedSource;",
        "sink",
        "Lokio/BufferedSink;",
        "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V",
        "headerLimit",
        "",
        "isClosed",
        "",
        "()Z",
        "state",
        "",
        "trailers",
        "Lokhttp3/Headers;",
        "cancel",
        "",
        "connection",
        "createRequestBody",
        "Lokio/Sink;",
        "request",
        "Lokhttp3/Request;",
        "contentLength",
        "detachTimeout",
        "timeout",
        "Lokio/ForwardingTimeout;",
        "finishRequest",
        "flushRequest",
        "newChunkedSink",
        "newChunkedSource",
        "Lokio/Source;",
        "url",
        "Lokhttp3/HttpUrl;",
        "newFixedLengthSource",
        "length",
        "newKnownLengthSink",
        "newUnknownLengthSource",
        "openResponseBodySource",
        "response",
        "Lokhttp3/Response;",
        "readHeaderLine",
        "",
        "readHeaders",
        "readResponseHeaders",
        "Lokhttp3/Response$Builder;",
        "expectContinue",
        "reportedContentLength",
        "skipConnectBody",
        "writeRequest",
        "headers",
        "requestLine",
        "writeRequestHeaders",
        "isChunked",
        "AbstractSource",
        "ChunkedSink",
        "ChunkedSource",
        "Companion",
        "FixedLengthSource",
        "KnownLengthSink",
        "UnknownLengthSource",
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
.field public static final Companion:Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;

.field private static final HEADER_LIMIT:I = 0x40000

.field private static final NO_CHUNK_YET:J = -0x1L

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private headerLimit:J

.field private final realConnection:Lokhttp3/internal/connection/RealConnection;

.field private final sink:Lokio/BufferedSink;

.field private final source:Lokio/BufferedSource;

.field private state:I

.field private trailers:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->Companion:Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 2
    .param p1, "client"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "realConnection"    # Lokhttp3/internal/connection/RealConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "source"    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "sink"    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    iput-object p3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    iput-object p4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    .line 73
    const/high16 v0, 0x40000

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    return-void
.end method

.method public static final synthetic access$detachTimeout(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokio/ForwardingTimeout;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;
    .param p1, "timeout"    # Lokio/ForwardingTimeout;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->detachTimeout(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method public static final synthetic access$getClient$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static final synthetic access$getRealConnection$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public static final synthetic access$getSink$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSink;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method public static final synthetic access$getState$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;

    .prologue
    .line 64
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return v0
.end method

.method public static final synthetic access$getTrailers$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;

    .prologue
    .line 64
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    return-object v0
.end method

.method public static final synthetic access$readHeaders(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;

    .prologue
    .line 64
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaders()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setState$p(Lokhttp3/internal/http1/Http1ExchangeCodec;I)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;
    .param p1, "<set-?>"    # I

    .prologue
    .line 64
    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return-void
.end method

.method public static final synthetic access$setTrailers$p(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/Headers;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/http1/Http1ExchangeCodec;
    .param p1, "<set-?>"    # Lokhttp3/Headers;

    .prologue
    .line 64
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    return-void
.end method

.method private final detachTimeout(Lokio/ForwardingTimeout;)V
    .locals 2
    .param p1, "timeout"    # Lokio/ForwardingTimeout;

    .prologue
    .line 264
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 265
    .local v0, "oldDelegate":Lokio/Timeout;
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 266
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 267
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 268
    return-void
.end method

.method private final isChunked(Lokhttp3/Request;)Z
    .locals 3
    .param p1, "$this$isChunked"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 79
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final isChunked(Lokhttp3/Response;)Z
    .locals 4
    .param p1, "$this$isChunked"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 76
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    const/4 v2, 0x2

    invoke-static {p1, v1, v3, v2, v3}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final newChunkedSink()Lokio/Sink;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 228
    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    if-ne v2, v1, :cond_0

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http1ExchangeCodec$newChunkedSink$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$newChunkedSink$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 230
    new-instance v1, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;

    invoke-direct {v1, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    check-cast v1, Lokio/Sink;

    return-object v1
.end method

.method private final newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
    .locals 3
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .prologue
    .line 246
    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http1ExchangeCodec$newChunkedSource$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$newChunkedSource$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 247
    :cond_1
    const/4 v1, 0x5

    iput v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 248
    new-instance v1, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;

    invoke-direct {v1, p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    check-cast v1, Lokio/Source;

    return-object v1
.end method

.method private final newFixedLengthSource(J)Lokio/Source;
    .locals 3
    .param p1, "length"    # J

    .prologue
    .line 240
    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http1ExchangeCodec$newFixedLengthSource$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$newFixedLengthSource$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 241
    :cond_1
    const/4 v1, 0x5

    iput v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 242
    new-instance v1, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    invoke-direct {v1, p0, p1, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V

    check-cast v1, Lokio/Source;

    return-object v1
.end method

.method private final newKnownLengthSink()Lokio/Sink;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 234
    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    if-ne v2, v1, :cond_0

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http1ExchangeCodec$newKnownLengthSink$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$newKnownLengthSink$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 235
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 236
    new-instance v1, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;

    invoke-direct {v1, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    check-cast v1, Lokio/Sink;

    return-object v1
.end method

.method private final newUnknownLengthSource()Lokio/Source;
    .locals 3

    .prologue
    .line 252
    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http1ExchangeCodec$newUnknownLengthSource$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$newUnknownLengthSource$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 253
    :cond_1
    const/4 v1, 0x5

    iput v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 254
    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 255
    new-instance v1, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;

    invoke-direct {v1, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    check-cast v1, Lokio/Source;

    return-object v1
.end method

.method private final readHeaderLine()Ljava/lang/String;
    .locals 6

    .prologue
    .line 210
    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "line":Ljava/lang/String;
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    .line 212
    return-object v0
.end method

.method private final readHeaders()Lokhttp3/Headers;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 219
    .local v0, "headers":Lokhttp3/Headers$Builder;
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    :goto_0
    move-object v2, v1

    .line 220
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {v0, v1}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 222
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    .line 220
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    .line 107
    :cond_0
    return-void
.end method

.method public connection()Lokhttp3/internal/connection/RealConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "contentLength"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    nop

    .line 95
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    .line 96
    const-string v1, "Duplex connections are not supported for HTTP/1"

    .line 95
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->isChunked(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSink()Lokio/Sink;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 98
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newKnownLengthSink()Lokio/Sink;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public finishRequest()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 159
    return-void
.end method

.method public flushRequest()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 155
    return-void
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openResponseBodySource(Lokhttp3/Response;)Lokio/Source;
    .locals 4
    .param p1, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "response"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    nop

    .line 135
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v2

    .line 139
    :goto_0
    return-object v2

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->isChunked(Lokhttp3/Response;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;

    move-result-object v2

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v0

    .line 139
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 140
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newUnknownLengthSource()Lokio/Source;

    move-result-object v2

    goto :goto_0
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 9
    .param p1, "expectContinue"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 176
    iget v6, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    if-ne v6, v7, :cond_1

    :cond_0
    :goto_0
    if-nez v5, :cond_2

    const/4 v0, 0x0

    .line 177
    .local v0, "$i$a$-check-Http1ExchangeCodec$readResponseHeaders$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$readResponseHeaders$1":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 180
    :cond_2
    nop

    .line 181
    :try_start_0
    sget-object v5, Lokhttp3/internal/http/StatusLine;->Companion:Lokhttp3/internal/http/StatusLine$Companion;

    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaderLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/internal/http/StatusLine$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v4

    .line 183
    .local v4, "statusLine":Lokhttp3/internal/http/StatusLine;
    new-instance v5, Lokhttp3/Response$Builder;

    invoke-direct {v5}, Lokhttp3/Response$Builder;-><init>()V

    .line 184
    iget-object v6, v4, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v5

    .line 185
    iget v6, v4, Lokhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v5

    .line 186
    iget-object v6, v4, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v5

    .line 187
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaders()Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 189
    .local v3, "responseBuilder":Lokhttp3/Response$Builder;
    nop

    .line 190
    if-eqz p1, :cond_3

    iget v5, v4, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne v5, v8, :cond_3

    .line 191
    const/4 v3, 0x0

    .line 189
    .end local v3    # "responseBuilder":Lokhttp3/Response$Builder;
    :goto_1
    return-object v3

    .line 193
    .restart local v3    # "responseBuilder":Lokhttp3/Response$Builder;
    :cond_3
    iget v5, v4, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne v5, v8, :cond_4

    .line 194
    const/4 v5, 0x3

    iput v5, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    .end local v3    # "responseBuilder":Lokhttp3/Response$Builder;
    .end local v4    # "statusLine":Lokhttp3/internal/http/StatusLine;
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/EOFException;
    iget-object v5, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 205
    .local v1, "address":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected end of stream on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Ljava/lang/Throwable;

    .end local v2    # "e":Ljava/io/EOFException;
    invoke-direct {v5, v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 198
    .end local v1    # "address":Ljava/lang/String;
    .restart local v3    # "responseBuilder":Lokhttp3/Response$Builder;
    .restart local v4    # "statusLine":Lokhttp3/internal/http/StatusLine;
    :cond_4
    const/4 v5, 0x4

    :try_start_1
    iput v5, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 204
    .end local v3    # "responseBuilder":Lokhttp3/Response$Builder;
    .end local v4    # "statusLine":Lokhttp3/internal/http/StatusLine;
    .restart local v2    # "e":Ljava/io/EOFException;
    :cond_5
    const-string v1, "unknown"

    goto :goto_2
.end method

.method public reportedContentLength(Lokhttp3/Response;)J
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    nop

    .line 127
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 126
    :goto_0
    return-wide v0

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->isChunked(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final skipConnectBody(Lokhttp3/Response;)V
    .locals 6
    .param p1, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {p1}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v2

    .line 276
    .local v2, "contentLength":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0, v2, v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    .line 278
    .local v0, "body":Lokio/Source;
    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 279
    invoke-interface {v0}, Lokio/Source;->close()V

    goto :goto_0
.end method

.method public trailers()Lokhttp3/Headers;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 149
    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http1ExchangeCodec$trailers$1":I
    const-string v2, "too early; can\'t read the trailers yet"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$trailers$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    if-eqz v1, :cond_2

    :goto_1
    return-object v1

    :cond_2
    sget-object v1, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    goto :goto_1
.end method

.method public final writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .locals 6
    .param p1, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "requestLine"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "headers"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestLine"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Http1ExchangeCodec$writeRequest$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .end local v0    # "$i$a$-check-Http1ExchangeCodec$writeRequest$1":I
    :cond_0
    move v2, v1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-interface {v2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 165
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 166
    iget-object v4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    .line 167
    const-string v5, ": "

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    .line 168
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    .line 169
    const-string v5, "\r\n"

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 165
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    goto :goto_1

    .line 171
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    const-string v4, "\r\n"

    invoke-interface {v2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 172
    iput v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    .line 173
    return-void
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "request"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lokhttp3/internal/http/RequestLine;->INSTANCE:Lokhttp3/internal/http/RequestLine;

    .line 121
    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    const-string v3, "realConnection!!.route().proxy.type()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, p1, v2}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 123
    return-void
.end method
