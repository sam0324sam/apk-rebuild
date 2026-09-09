.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/http/CallServerInterceptor;",
        "Lokhttp3/Interceptor;",
        "forWebSocket",
        "",
        "(Z)V",
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
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18
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
    const-string v11, "chain"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p1

    .line 30
    check-cast v5, Lokhttp3/internal/http/RealInterceptorChain;

    .line 31
    .local v5, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v5}, Lokhttp3/internal/http/RealInterceptorChain;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object v4

    .line 32
    .local v4, "exchange":Lokhttp3/internal/connection/Exchange;
    invoke-virtual {v5}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v6

    .line 33
    .local v6, "request":Lokhttp3/Request;
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    .line 34
    .local v7, "requestBody":Lokhttp3/RequestBody;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 36
    .local v12, "sentRequestMillis":J
    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/Exchange;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 38
    const/4 v10, 0x0

    .line 39
    .local v10, "responseHeadersStarted":Z
    const/4 v9, 0x0

    check-cast v9, Lokhttp3/Response$Builder;

    .line 40
    .local v9, "responseBuilder":Lokhttp3/Response$Builder;
    invoke-virtual {v6}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v7, :cond_10

    .line 44
    const-string v11, "100-continue"

    const-string v14, "Expect"

    invoke-virtual {v6, v14}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v11, v14, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 45
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 46
    const/4 v10, 0x1

    .line 47
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 48
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 50
    :cond_0
    if-nez v9, :cond_e

    .line 51
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 53
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    .line 54
    const/4 v11, 0x1

    invoke-virtual {v4, v6, v11}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v11

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 55
    .local v2, "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v7, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 73
    .end local v2    # "bufferedRequestBody":Lokio/BufferedSink;
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v11

    if-nez v11, :cond_3

    .line 76
    :cond_2
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->finishRequest()V

    .line 78
    :cond_3
    if-nez v10, :cond_4

    .line 79
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    .line 81
    :cond_4
    if-nez v9, :cond_5

    .line 82
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v9

    .end local v9    # "responseBuilder":Lokhttp3/Response$Builder;
    if-nez v9, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 85
    .restart local v9    # "responseBuilder":Lokhttp3/Response$Builder;
    :cond_5
    invoke-virtual {v9, v6}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 86
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v14

    if-nez v14, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v14}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v14

    invoke-virtual {v11, v14}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 87
    invoke-virtual {v11, v12, v13}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 89
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v8

    .line 90
    .local v8, "response":Lokhttp3/Response;
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v3

    .line 91
    .local v3, "code":I
    const/16 v11, 0x64

    if-ne v3, v11, :cond_9

    .line 94
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v11

    if-nez v11, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 95
    :cond_7
    invoke-virtual {v11, v6}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 96
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v14

    if-nez v14, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v14}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v14

    invoke-virtual {v11, v14}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 97
    invoke-virtual {v11, v12, v13}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 99
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v8

    .line 100
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v3

    .line 103
    :cond_9
    invoke-virtual {v4, v8}, Lokhttp3/internal/connection/Exchange;->responseHeadersEnd(Lokhttp3/Response;)V

    .line 105
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v11, :cond_11

    const/16 v11, 0x65

    if-ne v3, v11, :cond_11

    .line 107
    invoke-virtual {v8}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    .line 108
    sget-object v14, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    invoke-virtual {v11, v14}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 109
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v8

    .line 115
    :goto_1
    const-string v11, "close"

    invoke-virtual {v8}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v14

    const-string v15, "Connection"

    invoke-virtual {v14, v15}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v11, v14, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_a

    .line 116
    const-string v11, "close"

    const-string v14, "Connection"

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v8, v14, v15, v0, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v11, v14, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 117
    :cond_a
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    .line 119
    :cond_b
    const/16 v11, 0xcc

    if-eq v3, v11, :cond_c

    const/16 v11, 0xcd

    if-ne v3, v11, :cond_14

    :cond_c
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_14

    .line 120
    new-instance v11, Ljava/net/ProtocolException;

    .line 121
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTTP "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " had non-zero Content-Length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-virtual {v14}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_3
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 120
    invoke-direct {v11, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 58
    .end local v3    # "code":I
    .end local v8    # "response":Lokhttp3/Response;
    :cond_d
    const/4 v11, 0x0

    invoke-virtual {v4, v6, v11}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v11

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 59
    .restart local v2    # "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v7, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 60
    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    goto/16 :goto_0

    .line 63
    .end local v2    # "bufferedRequestBody":Lokio/BufferedSink;
    :cond_e
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    .line 64
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v11

    if-nez v11, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual {v11}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v11

    if-nez v11, :cond_1

    .line 68
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    goto/16 :goto_0

    .line 72
    :cond_10
    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    goto/16 :goto_0

    .line 111
    .restart local v3    # "code":I
    .restart local v8    # "response":Lokhttp3/Response;
    :cond_11
    invoke-virtual {v8}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v11

    .line 112
    invoke-virtual {v4, v8}, Lokhttp3/internal/connection/Exchange;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v11, v14}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 113
    invoke-virtual {v11}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v8

    goto/16 :goto_1

    .line 119
    :cond_12
    const-wide/16 v14, -0x1

    goto :goto_2

    .line 121
    :cond_13
    const/4 v14, 0x0

    goto :goto_3

    .line 123
    :cond_14
    return-object v8
.end method
