.class final Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 721
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    const-string v1, "maxSize"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    .line 723
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 724
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 725
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 726
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 756
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 757
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 750
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 752
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 766
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

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
    .line 771
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 773
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 774
    .local v1, "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v1, :cond_0

    .line 775
    iget-object v2, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    return-object v2

    .line 777
    :cond_0
    move-object v0, v1

    .line 778
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
    .line 784
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 785
    .local v4, "s":I
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 786
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    move-object v1, v0

    .line 788
    .local v1, "h0":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 789
    .local v3, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v3, :cond_1

    .line 795
    array-length v5, p1

    if-ge v5, v4, :cond_0

    .line 796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, [Ljava/lang/Object;

    .line 799
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 800
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    check-cast v0, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 801
    .restart local v0    # "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    iget-object v5, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 792
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 793
    move-object v1, v3

    .line 794
    goto :goto_0

    .line 804
    .restart local v2    # "j":I
    :cond_2
    array-length v5, p1

    if-le v5, v4, :cond_3

    .line 805
    const/4 v5, 0x0

    aput-object v5, p1, v4

    .line 807
    :cond_3
    return-object p1
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 761
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    invoke-direct {v0, p1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 739
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 741
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 742
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 743
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;->set(Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->trim()V

    .line 746
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
    .line 813
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 891
    :goto_0
    return-void

    .line 817
    :cond_0
    const/4 v7, 0x1

    .line 818
    .local v7, "missed":I
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 820
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v6, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 821
    .local v6, "index":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v6, :cond_1

    .line 822
    iget-object v6, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 825
    :cond_1
    iget-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 829
    .local v2, "e":J
    :cond_2
    iget-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 831
    .local v10, "r":J
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_7

    .line 832
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_3

    .line 833
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    goto :goto_0

    .line 837
    :cond_3
    iget-boolean v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 838
    .local v1, "d":Z
    invoke-virtual {v6}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 839
    .local v8, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v8, :cond_4

    const/4 v4, 0x1

    .line 841
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 842
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 843
    const/4 v9, 0x1

    iput-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 844
    iget-object v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 845
    .local v5, "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_5

    .line 846
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 839
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 848
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v0, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 853
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-eqz v4, :cond_8

    .line 862
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v8    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_7
    cmp-long v9, v2, v10

    if-nez v9, :cond_b

    .line 863
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_9

    .line 864
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    goto :goto_0

    .line 857
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v8    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_8
    iget-object v9, v8, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    invoke-interface {v0, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 858
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 859
    move-object v6, v8

    .line 860
    goto :goto_1

    .line 868
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v8    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_9
    iget-boolean v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 870
    .restart local v1    # "d":Z
    if-eqz v1, :cond_b

    invoke-virtual {v6}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_b

    .line 871
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 872
    const/4 v9, 0x1

    iput-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 873
    iget-object v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 874
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_a

    .line 875
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 877
    :cond_a
    invoke-interface {v0, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 883
    .end local v1    # "d":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_b
    iput-object v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 884
    iput-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 886
    neg-int v9, v7

    invoke-virtual {p1, v9}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v7

    .line 887
    if-nez v7, :cond_2

    goto/16 :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 895
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    const/4 v2, 0x0

    .line 896
    .local v2, "s":I
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 897
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :goto_0
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 898
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 899
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    if-nez v1, :cond_1

    .line 906
    .end local v1    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_0
    return v2

    .line 902
    .restart local v1    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 903
    move-object v0, v1

    .line 904
    goto :goto_0
.end method

.method trim()V
    .locals 3

    .prologue
    .line 729
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    if-le v1, v2, :cond_0

    .line 730
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 731
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 732
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    iput-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 734
    .end local v0    # "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<TT;>;"
    :cond_0
    return-void
.end method
