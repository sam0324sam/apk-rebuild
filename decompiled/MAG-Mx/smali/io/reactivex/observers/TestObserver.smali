.class public Lio/reactivex/observers/TestObserver;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "TestObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/observers/TestObserver$EmptyObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer",
        "<TT;",
        "Lio/reactivex/observers/TestObserver",
        "<TT;>;>;",
        "Lio/reactivex/Observer",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/MaybeObserver",
        "<TT;>;",
        "Lio/reactivex/SingleObserver",
        "<TT;>;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# instance fields
.field private final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private qs:Lio/reactivex/internal/fuseable/QueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueDisposable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    sget-object v0, Lio/reactivex/observers/TestObserver$EmptyObserver;->INSTANCE:Lio/reactivex/observers/TestObserver$EmptyObserver;

    invoke-direct {p0, v0}, Lio/reactivex/observers/TestObserver;-><init>(Lio/reactivex/Observer;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/observers/BaseTestConsumer;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    iput-object p1, p0, Lio/reactivex/observers/TestObserver;->actual:Lio/reactivex/Observer;

    .line 77
    return-void
.end method

.method public static create()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0}, Lio/reactivex/observers/TestObserver;-><init>()V

    return-object v0
.end method

.method public static create(Lio/reactivex/Observer;)Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer",
            "<-TT;>;)",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "delegate":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0, p0}, Lio/reactivex/observers/TestObserver;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method static fusionModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 311
    packed-switch p0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 312
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 313
    :pswitch_1
    const-string v0, "SYNC"

    goto :goto_0

    .line 314
    :pswitch_2
    const-string v0, "ASYNC"

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method final assertFuseable()Lio/reactivex/observers/TestObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Upstream is not fuseable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 329
    :cond_0
    return-object p0
.end method

.method final assertFusionMode(I)Lio/reactivex/observers/TestObserver;
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget v0, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    .line 299
    .local v0, "m":I
    if-eq v0, p1, :cond_1

    .line 300
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fusion mode different. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lio/reactivex/observers/TestObserver;->fusionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    invoke-static {v0}, Lio/reactivex/observers/TestObserver;->fusionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 304
    :cond_0
    const-string v1, "Upstream is not fuseable"

    invoke-virtual {p0, v1}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 307
    :cond_1
    return-object p0
.end method

.method final assertNotFuseable()Lio/reactivex/observers/TestObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Upstream is fuseable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 342
    :cond_0
    return-object p0
.end method

.method public bridge synthetic assertNotSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->assertNotSubscribed()Lio/reactivex/observers/TestObserver;

    move-result-object v0

    return-object v0
.end method

.method public final assertNotSubscribed()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "Subscribed!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 258
    :cond_0
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    const-string v0, "Not subscribed but errors found"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 261
    :cond_1
    return-object p0
.end method

.method public final assertOf(Lio/reactivex/functions/Consumer;)Lio/reactivex/observers/TestObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;>;)",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "check":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lio/reactivex/observers/TestObserver<TT;>;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-object p0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->assertSubscribed()Lio/reactivex/observers/TestObserver;

    move-result-object v0

    return-object v0
.end method

.method public final assertSubscribed()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "Not subscribed!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 246
    :cond_0
    return-object p0
.end method

.method public final cancel()V
    .locals 0

    .prologue
    .line 215
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->dispose()V

    .line 216
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 221
    return-void
.end method

.method public final hasSubscription()Z
    .locals 1

    .prologue
    .line 234
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    .prologue
    .line 184
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 186
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 193
    iget-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    .line 195
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 163
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 170
    if-nez p1, :cond_1

    .line 171
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 180
    return-void

    .line 173
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    if-nez v1, :cond_0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 130
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "onSubscribe not called in proper order"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 137
    iget v1, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 139
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->dispose()V

    .line 157
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    .line 150
    :cond_2
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    if-nez p1, :cond_3

    .line 153
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "onNext received a null value"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 8
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    const/4 v5, 0x1

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 84
    if-nez p1, :cond_1

    .line 85
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "onSubscribe received a null Subscription"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 90
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v3, v4, :cond_0

    .line 91
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSubscribe received multiple subscriptions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_2
    iget v3, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    if-eqz v3, :cond_4

    .line 97
    instance-of v3, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v3, :cond_4

    move-object v3, p1

    .line 98
    check-cast v3, Lio/reactivex/internal/fuseable/QueueDisposable;

    iput-object v3, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    .line 100
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    iget v4, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    invoke-interface {v3, v4}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v1

    .line 101
    .local v1, "m":I
    iput v1, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    .line 103
    if-ne v1, v5, :cond_4

    .line 104
    iput-boolean v5, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 108
    :goto_1
    :try_start_0
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v3}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object v2

    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_3

    .line 109
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lio/reactivex/observers/TestObserver;->completions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/reactivex/observers/TestObserver;->completions:J

    .line 113
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    .end local v1    # "m":I
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_4
    iget-object v3, p0, Lio/reactivex/observers/TestObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/reactivex/observers/TestObserver;->onNext(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->onComplete()V

    .line 349
    return-void
.end method

.method final setInitialFusionMode(I)Lio/reactivex/observers/TestObserver;
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/observers/TestObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iput p1, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    .line 287
    return-object p0
.end method
