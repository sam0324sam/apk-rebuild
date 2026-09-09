.class final Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoOnEachSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final onAfterTerminate:Lio/reactivex/functions/Action;

.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0
    .param p4, "onComplete"    # Lio/reactivex/functions/Action;
    .param p5, "onAfterTerminate"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Lio/reactivex/functions/Consumer",
            "<-TT;>;",
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    .local p3, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    .line 69
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/functions/Consumer;

    .line 70
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/functions/Action;

    .line 71
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    .line 72
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber<TT;>;"
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    .line 135
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 138
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 141
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 130
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->fail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber<TT;>;"
    const/4 v6, 0x1

    .line 97
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v2, :cond_0

    .line 98
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 120
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    .line 102
    const/4 v1, 0x1

    .line 104
    .local v1, "relay":Z
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :goto_1
    if-eqz v1, :cond_1

    .line 111
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 115
    :cond_1
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v2}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 118
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 107
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 108
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 80
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->sourceMode:I

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->fail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber<TT;>;"
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 156
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v3}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 170
    :try_start_1
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v2}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v3}, Lio/reactivex/functions/Action;->run()V

    .line 190
    :cond_0
    :goto_0
    return-object v2

    .line 157
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 160
    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v3

    throw v3

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "exc":Ljava/lang/Throwable;
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "exc":Ljava/lang/Throwable;
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_2
    move-exception v0

    .line 172
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    :try_start_5
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v3

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v4}, Lio/reactivex/functions/Action;->run()V

    throw v3

    .line 175
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 176
    .restart local v1    # "exc":Ljava/lang/Throwable;
    :try_start_6
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "exc":Ljava/lang/Throwable;
    :cond_1
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->sourceMode:I

    if-ne v3, v5, :cond_0

    .line 185
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v3}, Lio/reactivex/functions/Action;->run()V

    .line 187
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v3}, Lio/reactivex/functions/Action;->run()V

    goto :goto_0
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 147
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->transitiveBoundaryFusion(I)I

    move-result v0

    return v0
.end method
