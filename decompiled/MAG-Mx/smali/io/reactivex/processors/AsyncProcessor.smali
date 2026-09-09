.class public final Lio/reactivex/processors/AsyncProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "AsyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-array v0, v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v0, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 38
    new-array v0, v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v0, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 64
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    return-void
.end method

.method public static create()Lio/reactivex/processors/AsyncProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/AsyncProcessor",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lio/reactivex/processors/AsyncProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/AsyncProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    const/4 v3, 0x0

    .line 187
    :cond_0
    iget-object v4, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 188
    .local v0, "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    sget-object v4, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v4, :cond_1

    .line 199
    :goto_0
    return v3

    .line 192
    :cond_1
    array-length v2, v0

    .line 194
    .local v2, "n":I
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 195
    .local v1, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    aput-object p1, v1, v2

    .line 198
    iget-object v4, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 153
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    .prologue
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    const/4 v2, 0x0

    .line 268
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    :goto_0
    return-object v1

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 281
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 282
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 283
    array-length v2, p1

    if-eqz v2, :cond_0

    .line 284
    aput-object v5, p1, v4

    :cond_0
    move-object v0, p1

    .line 295
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object v0

    .line 288
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 289
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 291
    :cond_2
    aput-object v1, p1, v4

    .line 292
    array-length v2, p1

    if-eq v2, v3, :cond_3

    .line 293
    aput-object v5, p1, v3

    :cond_3
    move-object v0, p1

    .line 295
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    goto :goto_0
.end method

.method public hasComplete()Z
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubscribers()Z
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 2

    .prologue
    .line 143
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 250
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nullOnNext()V
    .locals 5

    .prologue
    .line 92
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 93
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "ex":Ljava/lang/Throwable;
    iput-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 95
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 96
    .local v0, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v0, v1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 6

    .prologue
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    const/4 v3, 0x0

    .line 120
    iget-object v4, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v4, v5, :cond_1

    .line 134
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 124
    .local v2, "v":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 125
    .local v0, "array":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    if-nez v2, :cond_2

    .line 126
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 127
    .local v1, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_2
    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 131
    .restart local v1    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v1, v2}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    if-nez p1, :cond_0

    .line 104
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "t":Ljava/lang/Throwable;
    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v1, v2, :cond_2

    .line 107
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 115
    :cond_1
    return-void

    .line 110
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 112
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 113
    .local v0, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v0, p1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->nullOnNext()V

    goto :goto_0

    .line 87
    :cond_1
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 70
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 71
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    const/4 v7, 0x0

    .line 211
    :cond_0
    iget-object v5, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 212
    .local v0, "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    array-length v4, v0

    .line 213
    .local v4, "n":I
    if-nez v4, :cond_2

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    const/4 v3, -0x1

    .line 218
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 219
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_4

    .line 220
    move v3, v2

    .line 225
    :cond_3
    if-ltz v3, :cond_1

    .line 231
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 232
    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 238
    .local v1, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :goto_2
    iget-object v5, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 218
    .end local v1    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 235
    .restart local v1    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V

    .line 159
    .local v0, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 160
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 166
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 167
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 170
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_3

    .line 171
    invoke-virtual {v0, v2}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    goto :goto_0
.end method
