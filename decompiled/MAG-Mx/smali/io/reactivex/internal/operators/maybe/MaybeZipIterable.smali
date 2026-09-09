.class public final Lio/reactivex/internal/operators/maybe/MaybeZipIterable;
.super Lio/reactivex/Maybe;
.source "MaybeZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/MaybeSource",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/MaybeSource",
            "<+TT;>;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeZipIterable;, "Lio/reactivex/internal/operators/maybe/MaybeZipIterable<TT;TR;>;"
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/MaybeSource<+TT;>;>;"
    .local p2, "zipper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    .line 34
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeZipIterable;, "Lio/reactivex/internal/operators/maybe/MaybeZipIterable<TT;TR;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TR;>;"
    const/16 v8, 0x8

    new-array v1, v8, [Lio/reactivex/MaybeSource;

    .line 40
    .local v1, "a":[Lio/reactivex/MaybeSource;, "[Lio/reactivex/MaybeSource<+TT;>;"
    const/4 v4, 0x0

    .line 43
    .local v4, "n":I
    :try_start_0
    iget-object v8, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move v5, v4

    .end local v4    # "n":I
    .local v5, "n":I
    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/MaybeSource;

    .line 44
    .local v7, "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    if-nez v7, :cond_0

    .line 45
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "One of the sources is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v8, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    move v4, v5

    .line 80
    .end local v5    # "n":I
    .end local v7    # "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    .restart local v4    # "n":I
    :goto_1
    return-void

    .line 48
    .end local v4    # "n":I
    .restart local v5    # "n":I
    .restart local v7    # "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    :cond_0
    array-length v8, v1

    if-ne v5, v8, :cond_1

    .line 49
    shr-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v5

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lio/reactivex/MaybeSource;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "n":I
    .restart local v4    # "n":I
    :try_start_2
    aput-object v7, v1, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v4

    .line 52
    .end local v4    # "n":I
    .restart local v5    # "n":I
    goto :goto_0

    .line 53
    .end local v5    # "n":I
    .end local v7    # "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    .restart local v4    # "n":I
    :catch_0
    move-exception v2

    .line 54
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    goto :goto_1

    .line 59
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v4    # "n":I
    .restart local v5    # "n":I
    :cond_2
    if-nez v5, :cond_3

    .line 60
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/MaybeObserver;)V

    move v4, v5

    .line 61
    .end local v5    # "n":I
    .restart local v4    # "n":I
    goto :goto_1

    .line 64
    .end local v4    # "n":I
    .restart local v5    # "n":I
    :cond_3
    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 65
    const/4 v8, 0x0

    aget-object v8, v1, v8

    new-instance v9, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;

    new-instance v10, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;

    invoke-direct {v10, p0}, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/maybe/MaybeZipIterable;)V

    invoke-direct {v9, p1, v10}, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v8, v9}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    move v4, v5

    .line 66
    .end local v5    # "n":I
    .restart local v4    # "n":I
    goto :goto_1

    .line 69
    .end local v4    # "n":I
    .restart local v5    # "n":I
    :cond_4
    new-instance v6, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iget-object v8, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    invoke-direct {v6, p1, v5, v8}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;-><init>(Lio/reactivex/MaybeObserver;ILio/reactivex/functions/Function;)V

    .line 71
    .local v6, "parent":Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator<TT;TR;>;"
    invoke-interface {p1, v6}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 74
    invoke-virtual {v6}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->isDisposed()Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v5

    .line 75
    .end local v5    # "n":I
    .restart local v4    # "n":I
    goto :goto_1

    .line 78
    .end local v4    # "n":I
    .restart local v5    # "n":I
    :cond_5
    aget-object v8, v1, v3

    iget-object v9, v6, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v4, v5

    .line 80
    .end local v5    # "n":I
    .restart local v4    # "n":I
    goto :goto_1

    .line 53
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v6    # "parent":Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator<TT;TR;>;"
    .restart local v5    # "n":I
    :catch_1
    move-exception v2

    move v4, v5

    .end local v5    # "n":I
    .restart local v4    # "n":I
    goto :goto_2
.end method
