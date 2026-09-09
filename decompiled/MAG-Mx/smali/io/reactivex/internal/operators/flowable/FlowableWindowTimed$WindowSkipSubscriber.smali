.class final Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;
.super Lio/reactivex/internal/subscribers/QueueDrainSubscriber;
.source "FlowableWindowTimed.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;,
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/QueueDrainSubscriber",
        "<TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/Flowable",
        "<TT;>;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field s:Lorg/reactivestreams/Subscription;

.field volatile terminated:Z

.field final timeskip:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/reactivex/processors/UnicastProcessor",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V
    .locals 2
    .param p2, "timespan"    # J
    .param p4, "timeskip"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "worker"    # Lio/reactivex/Scheduler$Worker;
    .param p8, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Lio/reactivex/Flowable",
            "<TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 620
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timespan:J

    .line 621
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    .line 622
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 623
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    .line 624
    iput p8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    .line 625
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    .line 626
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 710
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    .line 711
    return-void
.end method

.method complete(Lio/reactivex/processors/UnicastProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/UnicastProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    .local p1, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;-><init>(Lio/reactivex/processors/UnicastProcessor;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 719
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 722
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 714
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 715
    return-void
.end method

.method drainLoop()V
    .locals 24

    .prologue
    .line 726
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 727
    .local v11, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 728
    .local v6, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    move-object/from16 v18, v0

    .line 730
    .local v18, "ws":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/processors/UnicastProcessor<TT;>;>;"
    const/4 v10, 0x1

    .line 735
    .local v10, "missed":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->terminated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 737
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    .line 738
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 739
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 811
    :goto_1
    return-void

    .line 743
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->done:Z

    .line 745
    .local v7, "d":Z
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    .line 747
    .local v15, "v":Ljava/lang/Object;
    if-nez v15, :cond_3

    const/4 v9, 0x1

    .line 748
    .local v9, "empty":Z
    :goto_2
    instance-of v14, v15, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    .line 750
    .local v14, "sw":Z
    if-eqz v7, :cond_6

    if-nez v9, :cond_2

    if-eqz v14, :cond_6

    .line 751
    :cond_2
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 752
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->error:Ljava/lang/Throwable;

    .line 753
    .local v8, "e":Ljava/lang/Throwable;
    if-eqz v8, :cond_4

    .line 754
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/reactivex/processors/UnicastProcessor;

    .line 755
    .local v16, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 747
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v9    # "empty":Z
    .end local v14    # "sw":Z
    .end local v16    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 758
    .restart local v8    # "e":Ljava/lang/Throwable;
    .restart local v9    # "empty":Z
    .restart local v14    # "sw":Z
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/reactivex/processors/UnicastProcessor;

    .line 759
    .restart local v16    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-virtual/range {v16 .. v16}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    goto :goto_4

    .line 762
    .end local v16    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    goto :goto_1

    .line 767
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_6
    if-eqz v9, :cond_7

    .line 806
    neg-int v0, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->leave(I)I

    move-result v10

    .line 807
    if-nez v10, :cond_0

    goto :goto_1

    .line 771
    :cond_7
    if-eqz v14, :cond_b

    move-object/from16 v17, v15

    .line 772
    check-cast v17, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    .line 774
    .local v17, "work":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork<TT;>;"
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;->open:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 775
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 779
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->requested()J

    move-result-wide v12

    .line 780
    .local v12, "r":J
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-eqz v19, :cond_9

    .line 781
    move-object/from16 v0, p0

    iget v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v16

    .line 782
    .restart local v16    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 784
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v19, v12, v20

    if-eqz v19, :cond_8

    .line 785
    const-wide/16 v20, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->produced(J)J

    .line 788
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    move-object/from16 v19, v0

    new-instance v20, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Lio/reactivex/processors/UnicastProcessor;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timespan:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_0

    .line 790
    .end local v16    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    :cond_9
    new-instance v19, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v20, "Can\'t emit window due to lack of requests"

    invoke-direct/range {v19 .. v20}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 793
    .end local v12    # "r":J
    :cond_a
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;->w:Lio/reactivex/processors/UnicastProcessor;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 794
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;->w:Lio/reactivex/processors/UnicastProcessor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 795
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 796
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->terminated:Z

    goto/16 :goto_0

    .line 800
    .end local v17    # "work":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork<TT;>;"
    :cond_b
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/reactivex/processors/UnicastProcessor;

    .line 801
    .restart local v16    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 694
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->done:Z

    .line 695
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 699
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 700
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    .line 701
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 682
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->error:Ljava/lang/Throwable;

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->done:Z

    .line 684
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 688
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 689
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    .line 690
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->fastEnter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/UnicastProcessor;

    .line 666
    .local v0, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-virtual {v0, p1}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    .end local v0    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->leave(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 678
    :cond_1
    :goto_1
    return-void

    .line 672
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    goto :goto_1
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 12
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    const-wide v10, 0x7fffffffffffffffL

    .line 630
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 634
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 636
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->requested()J

    move-result-wide v8

    .line 641
    .local v8, "r":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    .line 642
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v7

    .line 643
    .local v7, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 646
    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    .line 647
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->produced(J)J

    .line 649
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;

    invoke-direct {v1, p0, v7}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Lio/reactivex/processors/UnicastProcessor;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timespan:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 651
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 653
    invoke-interface {p1, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 656
    .end local v7    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    :cond_3
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 657
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Could not emit the first window due to lack of requests"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 705
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->requested(J)V

    .line 706
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 816
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    invoke-static {v2}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v1

    .line 818
    .local v1, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;-><init>(Lio/reactivex/processors/UnicastProcessor;Z)V

    .line 819
    .local v0, "sw":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork<TT;>;"
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    if-nez v2, :cond_0

    .line 820
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v2, v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 822
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 825
    :cond_1
    return-void
.end method
