.class public final Lio/reactivex/internal/operators/observable/ObservableIntervalRange;
.super Lio/reactivex/Observable;
.source "ObservableIntervalRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final end:J

.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final start:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "initialDelay"    # J
    .param p7, "period"    # J
    .param p9, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p10, "scheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 33
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 34
    iput-wide p5, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->initialDelay:J

    .line 35
    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->period:J

    .line 36
    iput-object p9, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    .line 37
    iput-object p10, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    .line 38
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->start:J

    .line 39
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->end:J

    .line 40
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Ljava/lang/Long;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->start:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->end:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;-><init>(Lio/reactivex/Observer;JJ)V

    .line 45
    .local v0, "is":Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    .line 49
    .local v4, "sch":Lio/reactivex/Scheduler;
    instance-of v1, v4, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v4}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v2

    .line 51
    .local v2, "worker":Lio/reactivex/Scheduler$Worker;
    invoke-virtual {v0, v2}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 52
    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->initialDelay:J

    .end local v4    # "sch":Lio/reactivex/Scheduler;
    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->period:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 57
    .end local v2    # "worker":Lio/reactivex/Scheduler$Worker;
    :goto_0
    return-void

    .line 54
    .restart local v4    # "sch":Lio/reactivex/Scheduler;
    :cond_0
    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->initialDelay:J

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->period:J

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v5, v0

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v11

    .line 55
    .local v11, "d":Lio/reactivex/disposables/Disposable;
    invoke-virtual {v0, v11}, Lio/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    goto :goto_0
.end method
