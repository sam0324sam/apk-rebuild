.class final Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;
.super Ljava/lang/Object;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "capacityHint"    # I

    .prologue
    .line 527
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 529
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 545
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 546
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 539
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 541
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 680
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 551
    .local v0, "s":I
    if-nez v0, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 554
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

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
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 560
    iget v3, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 561
    .local v3, "s":I
    if-nez v3, :cond_1

    .line 562
    array-length v4, p1

    if-eqz v4, :cond_0

    .line 563
    const/4 v4, 0x0

    aput-object v5, p1, v4

    :cond_0
    move-object v0, p1

    .line 579
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object v0

    .line 567
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 569
    .local v1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v4, p1

    if-ge v4, v3, :cond_2

    .line 570
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    .line 572
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 573
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v2

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    :cond_3
    array-length v4, p1

    if-le v4, v3, :cond_4

    .line 576
    aput-object v5, p1, v3

    :cond_4
    move-object v0, p1

    .line 579
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 675
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 535
    return-void
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v12

    if-eqz v12, :cond_0

    .line 666
    :goto_0
    return-void

    .line 588
    :cond_0
    const/4 v8, 0x1

    .line 589
    .local v8, "missed":I
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 590
    .local v1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 592
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 594
    .local v7, "indexObject":Ljava/lang/Integer;
    if-eqz v7, :cond_2

    .line 595
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 600
    .local v6, "index":I
    :goto_1
    iget-wide v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 604
    .local v4, "e":J
    :cond_1
    iget-object v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 606
    .local v10, "r":J
    :goto_2
    cmp-long v12, v4, v10

    if-eqz v12, :cond_6

    .line 607
    iget-boolean v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v12, :cond_3

    .line 608
    const/4 v12, 0x0

    iput-object v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    goto :goto_0

    .line 597
    .end local v4    # "e":J
    .end local v6    # "index":I
    .end local v10    # "r":J
    :cond_2
    const/4 v6, 0x0

    .line 598
    .restart local v6    # "index":I
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    goto :goto_1

    .line 612
    .restart local v4    # "e":J
    .restart local v10    # "r":J
    :cond_3
    iget-boolean v2, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 613
    .local v2, "d":Z
    iget v9, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 615
    .local v9, "s":I
    if-eqz v2, :cond_5

    if-ne v6, v9, :cond_5

    .line 616
    const/4 v12, 0x0

    iput-object v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 617
    const/4 v12, 0x1

    iput-boolean v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 618
    iget-object v3, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    .line 619
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_4

    .line 620
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 622
    :cond_4
    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 627
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-ne v6, v9, :cond_7

    .line 637
    .end local v2    # "d":Z
    .end local v9    # "s":I
    :cond_6
    cmp-long v12, v4, v10

    if-nez v12, :cond_a

    .line 638
    iget-boolean v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v12, :cond_8

    .line 639
    const/4 v12, 0x0

    iput-object v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    goto :goto_0

    .line 631
    .restart local v2    # "d":Z
    .restart local v9    # "s":I
    :cond_7
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 633
    add-int/lit8 v6, v6, 0x1

    .line 634
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 635
    goto :goto_2

    .line 643
    .end local v2    # "d":Z
    .end local v9    # "s":I
    :cond_8
    iget-boolean v2, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 644
    .restart local v2    # "d":Z
    iget v9, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 646
    .restart local v9    # "s":I
    if-eqz v2, :cond_a

    if-ne v6, v9, :cond_a

    .line 647
    const/4 v12, 0x0

    iput-object v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 648
    const/4 v12, 0x1

    iput-boolean v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 649
    iget-object v3, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->error:Ljava/lang/Throwable;

    .line 650
    .restart local v3    # "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_9

    .line 651
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 653
    :cond_9
    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 659
    .end local v2    # "d":Z
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v9    # "s":I
    :cond_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 660
    iput-wide v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 661
    neg-int v12, v8

    invoke-virtual {p1, v12}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v8

    .line 662
    if-nez v8, :cond_1

    goto/16 :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 670
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    return v0
.end method
