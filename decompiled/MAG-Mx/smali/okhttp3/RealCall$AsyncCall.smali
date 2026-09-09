.class public final Lokhttp3/RealCall$AsyncCall;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncCall"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/RealCall$AsyncCall\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,213:1\n377#2,9:214\n*E\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/RealCall$AsyncCall\n*L\n132#1,9:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0012\u0010\u0011\u001a\u00020\u00082\n\u0010\u0012\u001a\u00060\u0000R\u00020\u000cJ\u0008\u0010\u0013\u001a\u00020\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/RealCall$AsyncCall;",
        "Ljava/lang/Runnable;",
        "responseCallback",
        "Lokhttp3/Callback;",
        "(Lokhttp3/RealCall;Lokhttp3/Callback;)V",
        "callsPerHost",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "executeOn",
        "",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "get",
        "Lokhttp3/RealCall;",
        "host",
        "",
        "request",
        "Lokhttp3/Request;",
        "reuseCallsPerHostFrom",
        "other",
        "run",
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
.field private volatile callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final responseCallback:Lokhttp3/Callback;

.field final synthetic this$0:Lokhttp3/RealCall;


# direct methods
.method public constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
    .locals 2
    .param p1, "$outer"    # Lokhttp3/RealCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "responseCallback"    # Lokhttp3/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "responseCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final executeOn(Ljava/util/concurrent/ExecutorService;)V
    .locals 6
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v4, "executorService"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v4}, Lokhttp3/RealCall;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    sget-boolean v5, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    const-string v5, "Assertion failed"

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v3, 0x0

    .line 116
    .local v3, "success":Z
    nop

    .line 117
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    move-object v4, v0

    invoke-interface {p1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    const/4 v3, 0x1

    .line 125
    nop

    .line 128
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v4, "executor rejected"

    invoke-direct {v2, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "ioException":Ljava/io/InterruptedIOException;
    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 122
    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-static {v4}, Lokhttp3/RealCall;->access$getTransmitter$p(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Ljava/io/IOException;

    move-object v4, v0

    invoke-virtual {v5, v4}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    .line 123
    iget-object v5, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    check-cast v4, Lokhttp3/Call;

    check-cast v2, Ljava/io/IOException;

    .end local v2    # "ioException":Ljava/io/InterruptedIOException;
    invoke-interface {v5, v4, v2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    nop

    .line 126
    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v4}, Lokhttp3/RealCall;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall$AsyncCall;)V

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v4

    .line 125
    nop

    .line 126
    iget-object v5, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v5}, Lokhttp3/RealCall;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v5

    invoke-virtual {v5, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall$AsyncCall;)V

    throw v4
.end method

.method public final get()Lokhttp3/RealCall;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    return-object v0
.end method

.method public final host()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v0}, Lokhttp3/RealCall;->getOriginalRequest()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final request()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v0}, Lokhttp3/RealCall;->getOriginalRequest()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public final reuseCallsPerHostFrom(Lokhttp3/RealCall$AsyncCall;)V
    .locals 1
    .param p1, "other"    # Lokhttp3/RealCall$AsyncCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p1, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OkHttp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v9}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "name$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$f$threadName":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 215
    .local v2, "currentThread$iv":Ljava/lang/Thread;
    const-string v8, "currentThread"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "oldName$iv":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 217
    nop

    .line 218
    const/4 v0, 0x0

    .line 133
    .local v0, "$i$a$-threadName-RealCall$AsyncCall$run$1":I
    const/4 v7, 0x0

    .line 134
    .local v7, "signalledCallback":Z
    :try_start_0
    iget-object v8, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-static {v8}, Lokhttp3/RealCall;->access$getTransmitter$p(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/connection/Transmitter;->timeoutEnter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 136
    :try_start_1
    iget-object v8, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v8}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v6

    .line 137
    .local v6, "response":Lokhttp3/Response;
    const/4 v7, 0x1

    .line 138
    iget-object v9, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v8, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    check-cast v8, Lokhttp3/Call;

    invoke-interface {v9, v8, v6}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :try_start_2
    iget-object v8, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v8}, Lokhttp3/RealCall;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v8

    invoke-virtual {v8, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall$AsyncCall;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .end local v6    # "response":Lokhttp3/Response;
    :goto_0
    nop

    nop

    .line 220
    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 222
    nop

    .line 150
    return-void

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Ljava/io/IOException;
    if-eqz v7, :cond_0

    .line 142
    :try_start_3
    sget-object v8, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v8}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v8

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Callback failure for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v11}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v3, Ljava/lang/Throwable;

    .end local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v8, v9, v10, v3}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    :goto_1
    :try_start_4
    iget-object v8, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v8}, Lokhttp3/RealCall;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v8

    invoke-virtual {v8, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall$AsyncCall;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v8

    .line 220
    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v8

    .line 144
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_5
    iget-object v9, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v8, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    check-cast v8, Lokhttp3/Call;

    invoke-interface {v9, v8, v3}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 148
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    .line 147
    :try_start_6
    iget-object v9, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v9}, Lokhttp3/RealCall;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v9

    invoke-virtual {v9, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall$AsyncCall;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
