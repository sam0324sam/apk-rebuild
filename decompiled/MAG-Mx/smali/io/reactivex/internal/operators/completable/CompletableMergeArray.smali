.class public final Lio/reactivex/internal/operators/completable/CompletableMergeArray;
.super Lio/reactivex/Completable;
.source "CompletableMergeArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;
    }
.end annotation


# instance fields
.field final sources:[Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>([Lio/reactivex/CompletableSource;)V
    .locals 0
    .param p1, "sources"    # [Lio/reactivex/CompletableSource;

    .prologue
    .line 25
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    .line 27
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 9
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .prologue
    .line 31
    new-instance v3, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v3}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 32
    .local v3, "set":Lio/reactivex/disposables/CompositeDisposable;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 34
    .local v2, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;

    iget-object v5, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, p1, v2, v3, v5}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;I)V

    .line 35
    .local v4, "shared":Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;
    invoke-interface {p1, v3}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 37
    iget-object v6, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 38
    .local v0, "c":Lio/reactivex/CompletableSource;
    invoke-virtual {v3}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    .end local v0    # "c":Lio/reactivex/CompletableSource;
    :goto_1
    return-void

    .line 42
    .restart local v0    # "c":Lio/reactivex/CompletableSource;
    :cond_0
    if-nez v0, :cond_1

    .line 43
    invoke-virtual {v3}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 44
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v5, "A completable source is null"

    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v4, v1}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 49
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    invoke-interface {v0, v4}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 37
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "c":Lio/reactivex/CompletableSource;
    :cond_2
    invoke-virtual {v4}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;->onComplete()V

    goto :goto_1
.end method
