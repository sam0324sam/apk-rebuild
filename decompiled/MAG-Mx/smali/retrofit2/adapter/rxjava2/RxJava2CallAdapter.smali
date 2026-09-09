.class final Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;
.super Ljava/lang/Object;
.source "RxJava2CallAdapter.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAsync:Z

.field private final isBody:Z

.field private final isCompletable:Z

.field private final isFlowable:Z

.field private final isMaybe:Z

.field private final isResult:Z

.field private final isSingle:Z

.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/reflect/Type;
    .param p2, "scheduler"    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "isAsync"    # Z
    .param p4, "isResult"    # Z
    .param p5, "isBody"    # Z
    .param p6, "isFlowable"    # Z
    .param p7, "isSingle"    # Z
    .param p8, "isMaybe"    # Z
    .param p9, "isCompletable"    # Z

    .prologue
    .line 40
    .local p0, "this":Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;, "Lretrofit2/adapter/rxjava2/RxJava2CallAdapter<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 42
    iput-object p2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/Scheduler;

    .line 43
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isAsync:Z

    .line 44
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isResult:Z

    .line 45
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isBody:Z

    .line 46
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isFlowable:Z

    .line 47
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isSingle:Z

    .line 48
    iput-boolean p8, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isMaybe:Z

    .line 49
    iput-boolean p9, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isCompletable:Z

    .line 50
    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;, "Lretrofit2/adapter/rxjava2/RxJava2CallAdapter<TR;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isAsync:Z

    if-eqz v2, :cond_2

    .line 58
    new-instance v1, Lretrofit2/adapter/rxjava2/CallEnqueueObservable;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava2/CallEnqueueObservable;-><init>(Lretrofit2/Call;)V

    .line 62
    .local v1, "responseObservable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Lretrofit2/Response<TR;>;>;"
    :goto_0
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isResult:Z

    if-eqz v2, :cond_3

    .line 63
    new-instance v0, Lretrofit2/adapter/rxjava2/ResultObservable;

    invoke-direct {v0, v1}, Lretrofit2/adapter/rxjava2/ResultObservable;-><init>(Lio/reactivex/Observable;)V

    .line 70
    .local v0, "observable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<*>;"
    :goto_1
    iget-object v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/Scheduler;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 74
    :cond_0
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isFlowable:Z

    if-eqz v2, :cond_5

    .line 75
    sget-object v2, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 86
    .end local v0    # "observable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<*>;"
    :cond_1
    :goto_2
    return-object v0

    .line 59
    .end local v1    # "responseObservable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Lretrofit2/Response<TR;>;>;"
    :cond_2
    new-instance v1, Lretrofit2/adapter/rxjava2/CallExecuteObservable;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava2/CallExecuteObservable;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    .line 64
    .restart local v1    # "responseObservable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Lretrofit2/Response<TR;>;>;"
    :cond_3
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isBody:Z

    if-eqz v2, :cond_4

    .line 65
    new-instance v0, Lretrofit2/adapter/rxjava2/BodyObservable;

    invoke-direct {v0, v1}, Lretrofit2/adapter/rxjava2/BodyObservable;-><init>(Lio/reactivex/Observable;)V

    .restart local v0    # "observable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<*>;"
    goto :goto_1

    .line 67
    .end local v0    # "observable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<*>;"
    :cond_4
    move-object v0, v1

    .restart local v0    # "observable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<*>;"
    goto :goto_1

    .line 77
    :cond_5
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isSingle:Z

    if-eqz v2, :cond_6

    .line 78
    invoke-virtual {v0}, Lio/reactivex/Observable;->singleOrError()Lio/reactivex/Single;

    move-result-object v0

    goto :goto_2

    .line 80
    :cond_6
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isMaybe:Z

    if-eqz v2, :cond_7

    .line 81
    invoke-virtual {v0}, Lio/reactivex/Observable;->singleElement()Lio/reactivex/Maybe;

    move-result-object v0

    goto :goto_2

    .line 83
    :cond_7
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isCompletable:Z

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v0}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object v0

    goto :goto_2
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;, "Lretrofit2/adapter/rxjava2/RxJava2CallAdapter<TR;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
