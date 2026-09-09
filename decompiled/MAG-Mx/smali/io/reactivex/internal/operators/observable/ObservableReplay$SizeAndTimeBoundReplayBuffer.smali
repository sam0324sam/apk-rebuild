.class final Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAge:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "limit"    # I
    .param p2, "maxAge"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 804
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;-><init>()V

    .line 805
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 806
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    .line 807
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 808
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 809
    return-void
.end method


# virtual methods
.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 813
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    new-instance v0, Lio/reactivex/schedulers/Timed;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v2, v3, v1}, Lio/reactivex/schedulers/Timed;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    .locals 10

    .prologue
    .line 885
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v6, v8

    .line 886
    .local v2, "timeLimit":J
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 887
    .local v1, "prev":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 889
    .local v0, "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    :goto_0
    if-nez v0, :cond_1

    .line 903
    :cond_0
    return-object v1

    .line 892
    :cond_1
    iget-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    check-cast v4, Lio/reactivex/schedulers/Timed;

    .line 893
    .local v4, "v":Lio/reactivex/schedulers/Timed;, "Lio/reactivex/schedulers/Timed<*>;"
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 896
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gtz v5, :cond_0

    .line 897
    move-object v1, v0

    .line 898
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 902
    .restart local v0    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    goto :goto_0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 818
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    check-cast p1, Lio/reactivex/schedulers/Timed;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method truncate()V
    .locals 10

    .prologue
    .line 823
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v4, v6, v8

    .line 825
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 826
    .local v2, "prev":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 828
    .local v1, "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    const/4 v0, 0x0

    .line 830
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_1

    .line 831
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    if-le v6, v7, :cond_0

    .line 832
    add-int/lit8 v0, v0, 0x1

    .line 833
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 834
    move-object v2, v1

    .line 835
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .restart local v1    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    goto :goto_0

    .line 837
    :cond_0
    iget-object v3, v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lio/reactivex/schedulers/Timed;

    .line 838
    .local v3, "v":Lio/reactivex/schedulers/Timed;, "Lio/reactivex/schedulers/Timed<*>;"
    invoke-virtual {v3}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_1

    .line 839
    add-int/lit8 v0, v0, 0x1

    .line 840
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 841
    move-object v2, v1

    .line 842
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 846
    .restart local v1    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    goto :goto_0

    .line 851
    .end local v3    # "v":Lio/reactivex/schedulers/Timed;, "Lio/reactivex/schedulers/Timed<*>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 852
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 854
    :cond_2
    return-void
.end method

.method truncateFinal()V
    .locals 10

    .prologue
    .line 857
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v4, v6, v8

    .line 859
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 860
    .local v2, "prev":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 862
    .local v1, "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    const/4 v0, 0x0

    .line 864
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_0

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 865
    iget-object v3, v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lio/reactivex/schedulers/Timed;

    .line 866
    .local v3, "v":Lio/reactivex/schedulers/Timed;, "Lio/reactivex/schedulers/Timed<*>;"
    invoke-virtual {v3}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 867
    add-int/lit8 v0, v0, 0x1

    .line 868
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 869
    move-object v2, v1

    .line 870
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 874
    .restart local v1    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    goto :goto_0

    .line 878
    .end local v3    # "v":Lio/reactivex/schedulers/Timed;, "Lio/reactivex/schedulers/Timed<*>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 881
    :cond_1
    return-void
.end method
