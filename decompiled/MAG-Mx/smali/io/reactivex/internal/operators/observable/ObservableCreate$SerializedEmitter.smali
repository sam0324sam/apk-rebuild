.class final Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCreate.java"

# interfaces
.implements Lio/reactivex/ObservableEmitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ObservableEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43c4fdd95fbcd5c6L


# instance fields
.field volatile done:Z

.field final emitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    .line 152
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 153
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 154
    return-void
.end method


# virtual methods
.method drain()V
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    .line 218
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 8

    .prologue
    .line 221
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    .line 222
    .local v1, "e":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<TT;>;"
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 223
    .local v5, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 224
    .local v3, "error":Lio/reactivex/internal/util/AtomicThrowable;
    const/4 v4, 0x1

    .line 228
    .local v4, "missed":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 229
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 261
    :goto_1
    return-void

    .line 233
    :cond_1
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 234
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 235
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v7

    invoke-interface {v1, v7}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 239
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 240
    .local v0, "d":Z
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 242
    .local v6, "v":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_3

    const/4 v2, 0x1

    .line 244
    .local v2, "empty":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 245
    invoke-interface {v1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_1

    .line 242
    .end local v2    # "empty":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 249
    .restart local v2    # "empty":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 256
    neg-int v7, v4

    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->addAndGet(I)I

    move-result v4

    .line 257
    if-nez v4, :cond_0

    goto :goto_1

    .line 253
    :cond_5
    invoke-interface {v1, v6}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 211
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    if-nez p1, :cond_2

    .line 162
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->get()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->decrementAndGet()I

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 172
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    monitor-enter v0

    .line 173
    :try_start_0
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public serialize()Lio/reactivex/ObservableEmitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableEmitter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    return-object p0
.end method

.method public setCancellable(Lio/reactivex/functions/Cancellable;)V
    .locals 1
    .param p1, "c"    # Lio/reactivex/functions/Cancellable;

    .prologue
    .line 270
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    .line 271
    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 265
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 266
    return-void
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 202
    :goto_0
    return v0

    .line 194
    :cond_1
    if-nez p1, :cond_2

    .line 195
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "t":Ljava/lang/Throwable;
    const-string v2, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 199
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 202
    goto :goto_0
.end method
