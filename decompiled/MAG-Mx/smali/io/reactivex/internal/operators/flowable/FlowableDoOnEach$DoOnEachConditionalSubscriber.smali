.class final Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoOnEachConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber",
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
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0
    .param p4, "onComplete"    # Lio/reactivex/functions/Action;
    .param p5, "onAfterTerminate"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber",
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
    .line 206
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber<TT;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    .local p2, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    .local p3, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;)V

    .line 207
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    .line 208
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onError:Lio/reactivex/functions/Consumer;

    .line 209
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onComplete:Lio/reactivex/functions/Action;

    .line 210
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    .line 211
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 279
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber<TT;>;"
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 283
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->done:Z

    .line 290
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 293
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 296
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 285
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber<TT;>;"
    const/4 v6, 0x1

    .line 252
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->done:Z

    if-eqz v2, :cond_0

    .line 253
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 275
    :goto_0
    return-void

    .line 256
    :cond_0
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->done:Z

    .line 257
    const/4 v1, 0x1

    .line 259
    .local v1, "relay":Z
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :goto_1
    if-eqz v1, :cond_1

    .line 266
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v2, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 270
    :cond_1
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v2}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 273
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 262
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 263
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
    .line 215
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 219
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->sourceMode:I

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

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
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber<TT;>;"
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 311
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v3}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 322
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 325
    :try_start_1
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v2}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v3}, Lio/reactivex/functions/Action;->run()V

    .line 345
    :cond_0
    :goto_0
    return-object v2

    .line 312
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 315
    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v3

    throw v3

    .line 316
    :catch_1
    move-exception v1

    .line 317
    .local v1, "exc":Ljava/lang/Throwable;
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v3

    .line 326
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "exc":Ljava/lang/Throwable;
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_2
    move-exception v0

    .line 327
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    :try_start_4
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 333
    :try_start_5
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v3

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 336
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v4}, Lio/reactivex/functions/Action;->run()V

    throw v3

    .line 330
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 331
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

    .line 339
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "exc":Ljava/lang/Throwable;
    :cond_1
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->sourceMode:I

    if-ne v3, v5, :cond_0

    .line 340
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v3}, Lio/reactivex/functions/Action;->run()V

    .line 342
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v3}, Lio/reactivex/functions/Action;->run()V

    goto :goto_0
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 302
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->transitiveBoundaryFusion(I)I

    move-result v0

    return v0
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 236
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->done:Z

    if-eqz v2, :cond_0

    .line 247
    :goto_0
    return v1

    .line 241
    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
