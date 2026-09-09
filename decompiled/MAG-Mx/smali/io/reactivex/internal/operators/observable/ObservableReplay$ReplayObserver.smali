.class final Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

.field private static final serialVersionUID:J = -0x7686330d232fac3L


# instance fields
.field final buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    new-array v0, v1, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 246
    new-array v0, v1, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    return-void
.end method

.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    .local p1, "buffer":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 257
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 261
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    const/4 v3, 0x0

    .line 289
    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 292
    .local v0, "c":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;
    sget-object v4, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    if-ne v0, v4, :cond_1

    .line 302
    :goto_0
    return v3

    .line 296
    :cond_1
    array-length v1, v0

    .line 297
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 298
    .local v2, "u":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    aput-object p1, v2, v1

    .line 301
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 270
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 276
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 277
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .prologue
    .line 265
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 390
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    .line 392
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;->complete()V

    .line 393
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->replayFinal()V

    .line 395
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 378
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    .line 380
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 381
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->replayFinal()V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->replay()V

    .line 373
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "p"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 362
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->replay()V

    .line 365
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    const/4 v7, 0x0

    .line 317
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 319
    .local v0, "c":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;
    array-length v3, v0

    .line 321
    .local v3, "len":I
    if-nez v3, :cond_2

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    const/4 v2, -0x1

    .line 327
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 328
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 329
    move v2, v1

    .line 334
    :cond_3
    if-ltz v2, :cond_1

    .line 341
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 342
    sget-object v4, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 352
    .local v4, "u":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;
    :goto_2
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 327
    .end local v4    # "u":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 347
    .restart local v4    # "u":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method replay()V
    .locals 5

    .prologue
    .line 402
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 403
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 404
    .local v1, "rp":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v4, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "rp":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    :cond_0
    return-void
.end method

.method replayFinal()V
    .locals 5

    .prologue
    .line 413
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 414
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 415
    .local v1, "rp":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v4, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "rp":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    :cond_0
    return-void
.end method
