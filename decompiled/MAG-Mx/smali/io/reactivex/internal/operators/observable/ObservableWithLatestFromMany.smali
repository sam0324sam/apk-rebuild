.class public final Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;,
        Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestInnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field final otherArray:[Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ObservableSource",
            "<*>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field final otherIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/ObservableSource",
            "<*>;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .locals 1
    .param p1    # Lio/reactivex/ObservableSource;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/ObservableSource",
            "<*>;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;, "Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany<TT;TR;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "otherIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/ObservableSource<*>;>;"
    .local p3, "combiner":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;TR;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherArray:[Lio/reactivex/ObservableSource;

    .line 57
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherIterable:Ljava/lang/Iterable;

    .line 58
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->combiner:Lio/reactivex/functions/Function;

    .line 59
    return-void
.end method

.method public constructor <init>(Lio/reactivex/ObservableSource;[Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V
    .locals 1
    .param p1    # Lio/reactivex/ObservableSource;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # [Lio/reactivex/ObservableSource;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource",
            "<TT;>;[",
            "Lio/reactivex/ObservableSource",
            "<*>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;, "Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany<TT;TR;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "otherArray":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<*>;"
    .local p3, "combiner":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;TR;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 49
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherArray:[Lio/reactivex/ObservableSource;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherIterable:Ljava/lang/Iterable;

    .line 51
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->combiner:Lio/reactivex/functions/Function;

    .line 52
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;, "Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany<TT;TR;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherArray:[Lio/reactivex/ObservableSource;

    .line 64
    .local v4, "others":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<*>;"
    const/4 v2, 0x0

    .line 65
    .local v2, "n":I
    if-nez v4, :cond_2

    .line 66
    const/16 v7, 0x8

    new-array v4, v7, [Lio/reactivex/ObservableSource;

    .line 69
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherIterable:Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move v3, v2

    .end local v2    # "n":I
    .local v3, "n":I
    :goto_0
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/ObservableSource;

    .line 70
    .local v5, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    array-length v7, v4

    if-ne v3, v7, :cond_0

    .line 71
    shr-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v3

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lio/reactivex/ObservableSource;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "n":I
    .restart local v2    # "n":I
    :try_start_2
    aput-object v5, v4, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    .line 74
    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_0

    .end local v5    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    :cond_1
    move v2, v3

    .line 85
    .end local v3    # "n":I
    .restart local v2    # "n":I
    :goto_1
    if-nez v2, :cond_3

    .line 86
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableMap;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->source:Lio/reactivex/ObservableSource;

    new-instance v9, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;

    invoke-direct {v9, p0}, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;)V

    invoke-direct {v7, v8, v9}, Lio/reactivex/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/observable/ObservableMap;->subscribeActual(Lio/reactivex/Observer;)V

    .line 95
    :goto_2
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_3
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 77
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_2

    .line 82
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    array-length v2, v4

    goto :goto_1

    .line 90
    :cond_3
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->combiner:Lio/reactivex/functions/Function;

    invoke-direct {v6, p1, v7, v2}, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;I)V

    .line 91
    .local v6, "parent":Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;, "Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver<TT;TR;>;"
    invoke-interface {p1, v6}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 92
    invoke-virtual {v6, v4, v2}, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;->subscribe([Lio/reactivex/ObservableSource;I)V

    .line 94
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v7, v6}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_2

    .line 75
    .end local v2    # "n":I
    .end local v6    # "parent":Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;, "Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver<TT;TR;>;"
    .restart local v3    # "n":I
    :catch_1
    move-exception v1

    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_3
.end method
