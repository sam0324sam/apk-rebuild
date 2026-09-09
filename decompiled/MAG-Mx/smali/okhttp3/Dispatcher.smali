.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n1313#2:239\n1382#2,3:240\n1313#2:243\n1382#2,3:244\n*E\n*S KotlinDebug\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n*L\n219#1:239\n219#1,3:240\n224#1:243\n224#1,3:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0019\u0010 \u001a\u00020\u001f2\n\u0010!\u001a\u00060\u001aR\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008\"J\u0015\u0010#\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008$J\r\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0008%J\u0016\u0010&\u001a\u0008\u0018\u00010\u001aR\u00020\u001b2\u0006\u0010\'\u001a\u00020(H\u0002J)\u0010)\u001a\u00020\u001f\"\u0004\u0008\u0000\u0010*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H*0,2\u0006\u0010!\u001a\u0002H*H\u0002\u00a2\u0006\u0002\u0010-J\u0015\u0010)\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008.J\u0019\u0010)\u001a\u00020\u001f2\n\u0010!\u001a\u00060\u001aR\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008.J\u0008\u0010/\u001a\u000200H\u0002J\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020302J\u0006\u00104\u001a\u00020\u0010J\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020302J\u0006\u00106\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u00038G\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R&\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u0018\u0010\u0018\u001a\u000c\u0012\u0008\u0012\u00060\u001aR\u00020\u001b0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\u000c\u0012\u0008\u0012\u00060\u001aR\u00020\u001b0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lokhttp3/Dispatcher;",
        "",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "()V",
        "()Ljava/util/concurrent/ExecutorService;",
        "executorServiceOrNull",
        "<set-?>",
        "Ljava/lang/Runnable;",
        "idleCallback",
        "getIdleCallback",
        "()Ljava/lang/Runnable;",
        "setIdleCallback",
        "(Ljava/lang/Runnable;)V",
        "maxRequests",
        "",
        "getMaxRequests",
        "()I",
        "setMaxRequests",
        "(I)V",
        "maxRequestsPerHost",
        "getMaxRequestsPerHost",
        "setMaxRequestsPerHost",
        "readyAsyncCalls",
        "Ljava/util/ArrayDeque;",
        "Lokhttp3/RealCall$AsyncCall;",
        "Lokhttp3/RealCall;",
        "runningAsyncCalls",
        "runningSyncCalls",
        "cancelAll",
        "",
        "enqueue",
        "call",
        "enqueue$okhttp",
        "executed",
        "executed$okhttp",
        "-deprecated_executorService",
        "findExistingCallWithHost",
        "host",
        "",
        "finished",
        "T",
        "calls",
        "Ljava/util/Deque;",
        "(Ljava/util/Deque;Ljava/lang/Object;)V",
        "finished$okhttp",
        "promoteAndExecute",
        "",
        "queuedCalls",
        "",
        "Lokhttp3/Call;",
        "queuedCallsCount",
        "runningCalls",
        "runningCallsCount",
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
.field private executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

.field private idleCallback:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lokhttp3/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x40

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 99
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    .line 102
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    .line 105
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "executorService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lokhttp3/Dispatcher;-><init>()V

    .line 108
    iput-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/RealCall$AsyncCall;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RealCall$AsyncCall;

    .line 127
    .local v0, "existingCall":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v0}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    .end local v0    # "existingCall":Lokhttp3/RealCall$AsyncCall;
    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RealCall$AsyncCall;

    .line 130
    .restart local v0    # "existingCall":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v0}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 132
    .end local v0    # "existingCall":Lokhttp3/RealCall$AsyncCall;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final finished(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 5
    .param p1, "calls"    # Ljava/util/Deque;
    .param p2, "call"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "idleCallback":Ljava/lang/Runnable;
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 206
    .local v0, "$i$a$-synchronized-Dispatcher$finished$1":I
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Call wasn\'t in-flight!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 207
    :cond_0
    :try_start_1
    iget-object v1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;

    .line 208
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    monitor-exit p0

    .line 210
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    move-result v2

    .line 212
    .local v2, "isRunning":Z
    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 215
    :cond_1
    return-void
.end method

.method private final promoteAndExecute()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 159
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    sget-boolean v8, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v8, :cond_1

    if-nez v5, :cond_1

    const-string v6, "Assertion failed"

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    .line 161
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 162
    .local v2, "executableCalls":Ljava/util/List;
    const/4 v4, 0x0

    .line 163
    .local v4, "isRunning":Z
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 164
    .local v0, "$i$a$-synchronized-Dispatcher$promoteAndExecute$1":I
    :try_start_0
    iget-object v5, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v5, "readyAsyncCalls.iterator()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .local v3, "i":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 168
    .local v1, "asyncCall":Lokhttp3/RealCall$AsyncCall;
    iget-object v5, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    iget v8, p0, Lokhttp3/Dispatcher;->maxRequests:I

    if-lt v5, v8, :cond_4

    .line 176
    .end local v1    # "asyncCall":Lokhttp3/RealCall$AsyncCall;
    :cond_3
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCallsCount()I

    move-result v5

    if-lez v5, :cond_5

    move v4, v6

    .line 177
    :goto_2
    nop

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    .line 179
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .end local v3    # "i":Ljava/util/Iterator;
    :goto_3
    if-ge v7, v5, :cond_6

    .line 180
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 181
    .restart local v1    # "asyncCall":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-virtual {v1, v6}, Lokhttp3/RealCall$AsyncCall;->executeOn(Ljava/util/concurrent/ExecutorService;)V

    .line 179
    add-int/lit8 v3, v7, 0x1

    .local v3, "i":I
    move v7, v3

    goto :goto_3

    .line 169
    .local v3, "i":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v8, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    if-ge v5, v8, :cond_2

    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 172
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 173
    const-string v5, "asyncCall"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v5, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 163
    .end local v1    # "asyncCall":Lokhttp3/RealCall$AsyncCall;
    .end local v3    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v3    # "i":Ljava/util/Iterator;
    :cond_5
    move v4, v7

    .line 176
    goto :goto_2

    .line 184
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_6
    return v4
.end method


# virtual methods
.method public final -deprecated_executorService()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "executorService"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_executorService"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized cancelAll()V
    .locals 3

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RealCall$AsyncCall;

    .line 141
    .local v0, "call":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v0}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/RealCall;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "call":Lokhttp3/RealCall$AsyncCall;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 143
    :cond_0
    :try_start_1
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RealCall$AsyncCall;

    .line 144
    .restart local v0    # "call":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v0}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/RealCall;->cancel()V

    goto :goto_1

    .line 146
    .end local v0    # "call":Lokhttp3/RealCall$AsyncCall;
    :cond_1
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RealCall;

    .line 147
    .local v0, "call":Lokhttp3/RealCall;
    invoke-virtual {v0}, Lokhttp3/RealCall;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 149
    .end local v0    # "call":Lokhttp3/RealCall;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final enqueue$okhttp(Lokhttp3/RealCall$AsyncCall;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/RealCall$AsyncCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "call"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 113
    .local v0, "$i$a$-synchronized-Dispatcher$enqueue$1":I
    :try_start_0
    iget-object v2, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/RealCall;->getForWebSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/Dispatcher;->findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/RealCall$AsyncCall;

    move-result-object v1

    .line 119
    .local v1, "existingCall":Lokhttp3/RealCall$AsyncCall;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lokhttp3/RealCall$AsyncCall;->reuseCallsPerHostFrom(Lokhttp3/RealCall$AsyncCall;)V

    .line 121
    .end local v1    # "existingCall":Lokhttp3/RealCall$AsyncCall;
    :cond_0
    nop

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    .line 122
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    .line 123
    return-void

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized executed$okhttp(Lokhttp3/RealCall;)V
    .locals 1
    .param p1, "call"    # Lokhttp3/RealCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .locals 9
    .annotation build Lkotlin/jvm/JvmName;
        name = "executorService"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 92
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    const-string v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 92
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    .line 95
    :cond_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final finished$okhttp(Lokhttp3/RealCall$AsyncCall;)V
    .locals 1
    .param p1, "call"    # Lokhttp3/RealCall$AsyncCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 195
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public final finished$okhttp(Lokhttp3/RealCall;)V
    .locals 1
    .param p1, "call"    # Lokhttp3/RealCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public final declared-synchronized getIdleCallback()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMaxRequests()I
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMaxRequestsPerHost()I
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized queuedCalls()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 239
    .local v1, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 240
    .local v2, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 241
    .local v5, "item$iv$iv":Ljava/lang/Object;
    check-cast v5, Lokhttp3/RealCall$AsyncCall;

    .end local v5    # "item$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 219
    .local v0, "$i$a$-map-Dispatcher$queuedCalls$1":I
    invoke-virtual {v5}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "$i$a$-map-Dispatcher$queuedCalls$1":I
    .end local v1    # "$i$f$map":I
    .end local v2    # "$i$f$mapTo":I
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 242
    .restart local v1    # "$i$f$map":I
    .restart local v2    # "$i$f$mapTo":I
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    :cond_0
    :try_start_1
    check-cast v4, Ljava/util/List;

    .line 219
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const-string v7, "Collections.unmodifiable\u2026ncCalls.map { it.get() })"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v6
.end method

.method public final declared-synchronized queuedCallsCount()I
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

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

.method public final declared-synchronized runningCalls()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    check-cast v6, Ljava/lang/Iterable;

    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 244
    .local v2, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 245
    .local v4, "item$iv$iv":Ljava/lang/Object;
    check-cast v4, Lokhttp3/RealCall$AsyncCall;

    .end local v4    # "item$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 224
    .local v0, "$i$a$-map-Dispatcher$runningCalls$1":I
    invoke-virtual {v4}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "$i$a$-map-Dispatcher$runningCalls$1":I
    .end local v1    # "$i$f$map":I
    .end local v2    # "$i$f$mapTo":I
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 246
    .restart local v1    # "$i$f$map":I
    .restart local v2    # "$i$f$mapTo":I
    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    :cond_0
    :try_start_1
    check-cast v3, Ljava/util/List;

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v3, Ljava/lang/Iterable;

    .line 224
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const-string v6, "Collections.unmodifiable\u2026ncCalls.map { it.get() })"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5
.end method

.method public final declared-synchronized runningCallsCount()I
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setIdleCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setMaxRequests(I)V
    .locals 4
    .param p1, "maxRequests"    # I

    .prologue
    const/4 v2, 0x1

    .line 45
    if-lt p1, v2, :cond_0

    :goto_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-Dispatcher$maxRequests$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max < 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .end local v0    # "$i$a$-require-Dispatcher$maxRequests$1":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    :cond_1
    monitor-enter p0

    nop

    const/4 v1, 0x0

    .line 47
    .local v1, "$i$a$-synchronized-Dispatcher$maxRequests$2":I
    :try_start_0
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 48
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    .line 49
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    .line 50
    return-void

    .line 46
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final setMaxRequestsPerHost(I)V
    .locals 4
    .param p1, "maxRequestsPerHost"    # I

    .prologue
    const/4 v2, 0x1

    .line 64
    if-lt p1, v2, :cond_0

    :goto_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-Dispatcher$maxRequestsPerHost$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max < 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .end local v0    # "$i$a$-require-Dispatcher$maxRequestsPerHost$1":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 65
    :cond_1
    monitor-enter p0

    nop

    const/4 v1, 0x0

    .line 66
    .local v1, "$i$a$-synchronized-Dispatcher$maxRequestsPerHost$2":I
    :try_start_0
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 67
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    .line 68
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    .line 69
    return-void

    .line 65
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
