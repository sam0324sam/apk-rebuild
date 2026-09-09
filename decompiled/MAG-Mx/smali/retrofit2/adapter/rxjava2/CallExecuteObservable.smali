.class final Lretrofit2/adapter/rxjava2/CallExecuteObservable;
.super Lio/reactivex/Observable;
.source "CallExecuteObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable",
        "<",
        "Lretrofit2/Response",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lretrofit2/adapter/rxjava2/CallExecuteObservable;, "Lretrofit2/adapter/rxjava2/CallExecuteObservable<TT;>;"
    .local p1, "originalCall":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 31
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;->originalCall:Lretrofit2/Call;

    .line 32
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-",
            "Lretrofit2/Response",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lretrofit2/adapter/rxjava2/CallExecuteObservable;, "Lretrofit2/adapter/rxjava2/CallExecuteObservable<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lretrofit2/Response<TT;>;>;"
    iget-object v5, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;->originalCall:Lretrofit2/Call;

    invoke-interface {v5}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    .line 37
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    new-instance v5, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;

    invoke-direct {v5, v0}, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;-><init>(Lretrofit2/Call;)V

    invoke-interface {p1, v5}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 39
    const/4 v4, 0x0

    .line 41
    .local v4, "terminated":Z
    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    .line 42
    .local v2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v2    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :cond_1
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v3

    .line 50
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    if-eqz v4, :cond_2

    .line 52
    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    :try_start_1
    invoke-interface {p1, v3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    .line 57
    .local v1, "inner":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-direct {v5, v6}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
