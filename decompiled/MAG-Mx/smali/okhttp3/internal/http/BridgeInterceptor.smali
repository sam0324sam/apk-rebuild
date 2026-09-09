.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBridgeInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1596#2,3:119\n*E\n*S KotlinDebug\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n*L\n111#1,3:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/internal/http/BridgeInterceptor;",
        "Lokhttp3/Interceptor;",
        "cookieJar",
        "Lokhttp3/CookieJar;",
        "(Lokhttp3/CookieJar;)V",
        "cookieHeader",
        "",
        "cookies",
        "",
        "Lokhttp3/Cookie;",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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
.field private final cookieJar:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 1
    .param p1, "cookieJar"    # Lokhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    return-void
.end method

.method private final cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p1, "cookies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "$this$buildString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "$i$a$-buildString-BridgeInterceptor$cookieHeader$1":I
    move-object v4, p1

    .line 112
    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 119
    .local v2, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .line 120
    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index$iv":I
    .local v7, "index$iv":I
    if-gez v6, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v8, Lokhttp3/Cookie;

    .end local v8    # "item$iv":Ljava/lang/Object;
    move v5, v6

    .local v5, "index":I
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$a$-forEachIndexed-BridgeInterceptor$cookieHeader$1$1":I
    if-lez v5, :cond_1

    const-string v10, "; "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    invoke-virtual {v8}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    nop

    move v6, v7

    .end local v7    # "index$iv":I
    .restart local v6    # "index$iv":I
    goto :goto_0

    .line 121
    .end local v1    # "$i$a$-forEachIndexed-BridgeInterceptor$cookieHeader$1$1":I
    .end local v5    # "index":I
    :cond_2
    nop

    .line 116
    nop

    nop

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    return-object v9
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 22
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
    const-string v17, "chain"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v16

    .line 40
    .local v16, "userRequest":Lokhttp3/Request;
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v11

    .line 42
    .local v11, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 43
    .local v4, "body":Lokhttp3/RequestBody;
    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    .line 45
    .local v5, "contentType":Lokhttp3/MediaType;
    if-eqz v5, :cond_0

    .line 46
    const-string v17, "Content-Type"

    invoke-virtual {v5}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 49
    :cond_0
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    .line 50
    .local v6, "contentLength":J
    const-wide/16 v18, -0x1

    cmp-long v17, v6, v18

    if-eqz v17, :cond_8

    .line 51
    const-string v17, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 52
    const-string v17, "Transfer-Encoding"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 56
    .end local v5    # "contentType":Lokhttp3/MediaType;
    .end local v6    # "contentLength":J
    :cond_1
    :goto_0
    const-string v17, "Host"

    invoke-virtual/range {v16 .. v17}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2

    .line 60
    const-string v17, "Host"

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Lokhttp3/internal/Util;->toHostHeader$default(Lokhttp3/HttpUrl;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 63
    :cond_2
    const-string v17, "Connection"

    invoke-virtual/range {v16 .. v17}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_3

    .line 64
    const-string v17, "Connection"

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 69
    :cond_3
    const/4 v15, 0x0

    .line 70
    .local v15, "transparentGzip":Z
    const-string v17, "Accept-Encoding"

    invoke-virtual/range {v16 .. v17}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    const-string v17, "Range"

    invoke-virtual/range {v16 .. v17}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    .line 71
    const/4 v15, 0x1

    .line 72
    const-string v17, "Accept-Encoding"

    const-string v18, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 75
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v8

    .local v8, "cookies":Ljava/util/List;
    move-object/from16 v17, v8

    .line 76
    check-cast v17, Ljava/util/Collection;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, 0x1

    :goto_1
    if-eqz v17, :cond_5

    .line 77
    const-string v17, "Cookie"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 80
    :cond_5
    const-string v17, "User-Agent"

    invoke-virtual/range {v16 .. v17}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6

    .line 81
    const-string v17, "User-Agent"

    const-string v18, "okhttp/4.2.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 84
    :cond_6
    invoke-virtual {v11}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v10

    .line 86
    .local v10, "networkResponse":Lokhttp3/Response;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v18

    invoke-virtual {v10}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 88
    invoke-virtual {v10}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v17

    .line 89
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v13

    .line 91
    .local v13, "responseBuilder":Lokhttp3/Response$Builder;
    if-eqz v15, :cond_7

    .line 92
    const-string v17, "gzip"

    const-string v18, "Content-Encoding"

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v10, v0, v1, v2, v3}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 93
    invoke-static {v10}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 94
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    .line 95
    .local v12, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v12, :cond_7

    .line 96
    new-instance v9, Lokio/GzipSource;

    invoke-virtual {v12}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v17

    check-cast v17, Lokio/Source;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 97
    .local v9, "gzipSource":Lokio/GzipSource;
    invoke-virtual {v10}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v17

    .line 98
    const-string v18, "Content-Encoding"

    invoke-virtual/range {v17 .. v18}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v17

    .line 99
    const-string v18, "Content-Length"

    invoke-virtual/range {v17 .. v18}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v17

    .line 100
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v14

    .line 101
    .local v14, "strippedHeaders":Lokhttp3/Headers;
    invoke-virtual {v13, v14}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 102
    const-string v17, "Content-Type"

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v10, v0, v1, v2, v3}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "contentType":Ljava/lang/String;
    new-instance v17, Lokhttp3/internal/http/RealResponseBody;

    const-wide/16 v18, -0x1

    check-cast v9, Lokio/Source;

    .end local v9    # "gzipSource":Lokio/GzipSource;
    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v5, v1, v2, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    check-cast v17, Lokhttp3/ResponseBody;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 107
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v12    # "responseBody":Lokhttp3/ResponseBody;
    .end local v14    # "strippedHeaders":Lokhttp3/Headers;
    :cond_7
    invoke-virtual {v13}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v17

    return-object v17

    .line 54
    .end local v8    # "cookies":Ljava/util/List;
    .end local v10    # "networkResponse":Lokhttp3/Response;
    .end local v13    # "responseBuilder":Lokhttp3/Response$Builder;
    .end local v15    # "transparentGzip":Z
    .local v5, "contentType":Lokhttp3/MediaType;
    .restart local v6    # "contentLength":J
    :cond_8
    const-string v17, "Transfer-Encoding"

    const-string v18, "chunked"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 55
    const-string v17, "Content-Length"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_0

    .line 76
    .end local v5    # "contentType":Lokhttp3/MediaType;
    .end local v6    # "contentLength":J
    .restart local v8    # "cookies":Ljava/util/List;
    .restart local v15    # "transparentGzip":Z
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1
.end method
