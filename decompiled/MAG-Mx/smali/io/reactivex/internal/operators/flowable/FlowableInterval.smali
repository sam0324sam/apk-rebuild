.class public final Lio/reactivex/internal/operators/flowable/FlowableInterval;
.super Lio/reactivex/Flowable;
.source "FlowableInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 36
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 37
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->initialDelay:J

    .line 38
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->period:J

    .line 39
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->scheduler:Lio/reactivex/Scheduler;

    .line 41
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Long;>;"
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 46
    .local v1, "is":Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 48
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->scheduler:Lio/reactivex/Scheduler;

    .line 50
    .local v2, "sch":Lio/reactivex/Scheduler;
    instance-of v3, v2, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v2}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    .line 52
    .local v0, "worker":Lio/reactivex/Scheduler$Worker;
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 53
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->initialDelay:J

    .end local v2    # "sch":Lio/reactivex/Scheduler;
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->period:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 58
    .end local v0    # "worker":Lio/reactivex/Scheduler$Worker;
    :goto_0
    return-void

    .line 55
    .restart local v2    # "sch":Lio/reactivex/Scheduler;
    :cond_0
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->initialDelay:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->period:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v3, v1

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v9

    .line 56
    .local v9, "d":Lio/reactivex/disposables/Disposable;
    invoke-virtual {v1, v9}, Lio/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    goto :goto_0
.end method
