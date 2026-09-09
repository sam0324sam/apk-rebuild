.class public final Lokhttp3/internal/ws/RealWebSocket$connect$1;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "okhttp3/internal/ws/RealWebSocket$connect$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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
.field final synthetic $request:Lokhttp3/Request;

.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;)V
    .locals 0
    .param p1, "$outer"    # Lokhttp3/internal/ws/RealWebSocket;
    .param p2, "$captured_local_variable$1"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 189
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v4, "call"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "response"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object v1

    .line 165
    .local v1, "exchange":Lokhttp3/internal/connection/Exchange;
    const/4 v3, 0x0

    .line 166
    .local v3, "streams":Lokhttp3/internal/ws/RealWebSocket$Streams;
    nop

    .line 167
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v4, p2, v1}, Lokhttp3/internal/ws/RealWebSocket;->checkUpgradeSuccess$okhttp(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)V

    .line 168
    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lokhttp3/internal/connection/Exchange;->newWebSocketStreams()Lokhttp3/internal/ws/RealWebSocket$Streams;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 174
    nop

    .line 178
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OkHttp WebSocket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lokhttp3/Request;

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v4, v2, v3}, Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 180
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v4}, Lokhttp3/internal/ws/RealWebSocket;->getListener$okhttp()Lokhttp3/WebSocketListener;

    move-result-object v5

    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    check-cast v4, Lokhttp3/WebSocket;

    invoke-virtual {v5, v4, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 181
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v4}, Lokhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v2    # "name":Ljava/lang/String;
    .end local p2    # "response":Lokhttp3/Response;
    :goto_0
    return-void

    .line 169
    .restart local p2    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/internal/connection/Exchange;->webSocketUpgradeFailed()V

    .line 171
    :cond_1
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    check-cast v0, Ljava/lang/Exception;

    .end local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v4, v0, p2}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 172
    check-cast p2, Ljava/io/Closeable;

    .end local p2    # "response":Lokhttp3/Response;
    invoke-static {p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 182
    .restart local p2    # "response":Lokhttp3/Response;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_0
.end method
