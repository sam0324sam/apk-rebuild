.class final Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;
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
    name = "SizeAndTimeBoundReplayBuffer"
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

.field volatile head:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 4
    .param p1, "maxSize"    # I
    .param p2, "maxAge"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 927
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    const-string v1, "maxSize"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    .line 929
    const-string v1, "maxAge"

    invoke-static {p2, p3, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 930
    const-string v1, "unit is null"

    invoke-static {p4, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 931
    const-string v1, "scheduler is null"

    invoke-static {p5, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    iput-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 932
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 933
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 934
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 935
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 1006
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1008
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 999
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1000
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1002
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1180
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1061
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1063
    .local v0, "index":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iget-object v6, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v7, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-wide v8, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v6, v8

    .line 1064
    .local v2, "limit":J
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1065
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1066
    iget-wide v4, v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    .line 1067
    .local v4, "ts":J
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 1073
    .end local v4    # "ts":J
    :cond_0
    return-object v0

    .line 1070
    .restart local v4    # "ts":J
    :cond_1
    move-object v0, v1

    .line 1071
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1072
    .restart local v1    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1012
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1015
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1016
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v1, :cond_0

    .line 1022
    iget-object v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-wide v6, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v4, v6

    .line 1023
    .local v2, "limit":J
    iget-wide v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 1024
    const/4 v4, 0x0

    .line 1027
    :goto_1
    return-object v4

    .line 1019
    .end local v2    # "limit":J
    :cond_0
    move-object v0, v1

    .line 1020
    goto :goto_0

    .line 1027
    .restart local v2    # "limit":J
    :cond_1
    iget-object v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    goto :goto_1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 1033
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    .line 1034
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v3

    .line 1036
    .local v3, "s":I
    if-nez v3, :cond_1

    .line 1037
    array-length v4, p1

    if-eqz v4, :cond_0

    .line 1038
    const/4 v4, 0x0

    aput-object v5, p1, v4

    .line 1057
    :cond_0
    :goto_0
    return-object p1

    .line 1041
    :cond_1
    array-length v4, p1

    if-ge v4, v3, :cond_2

    .line 1042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    .line 1045
    :cond_2
    const/4 v1, 0x0

    .line 1046
    .local v1, "i":I
    :goto_1
    if-eq v1, v3, :cond_3

    .line 1047
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1048
    .local v2, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iget-object v4, v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    aput-object v4, p1, v1

    .line 1049
    add-int/lit8 v1, v1, 0x1

    .line 1050
    move-object v0, v2

    .line 1051
    goto :goto_1

    .line 1052
    .end local v2    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_3
    array-length v4, p1

    if-le v4, v3, :cond_0

    .line 1053
    aput-object v5, p1, v3

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 1185
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    return v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 988
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 990
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 991
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 992
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 994
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trim()V

    .line 995
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
    .line 1079
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1083
    :cond_0
    const/4 v7, 0x1

    .line 1084
    .local v7, "missed":I
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 1086
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v6, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1087
    .local v6, "index":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v6, :cond_1

    .line 1088
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v6

    .line 1091
    :cond_1
    iget-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 1095
    .local v2, "e":J
    :cond_2
    iget-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 1097
    .local v10, "r":J
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_7

    .line 1098
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_3

    .line 1099
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    goto :goto_0

    .line 1103
    :cond_3
    iget-boolean v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1104
    .local v1, "d":Z
    invoke-virtual {v6}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1105
    .local v8, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v8, :cond_4

    const/4 v4, 0x1

    .line 1107
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 1108
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1109
    const/4 v9, 0x1

    iput-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 1110
    iget-object v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 1111
    .local v5, "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_5

    .line 1112
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 1105
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1114
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v0, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1119
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-eqz v4, :cond_8

    .line 1128
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v8    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_7
    cmp-long v9, v2, v10

    if-nez v9, :cond_b

    .line 1129
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v9, :cond_9

    .line 1130
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    goto :goto_0

    .line 1123
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v8    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_8
    iget-object v9, v8, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    invoke-interface {v0, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1124
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 1125
    move-object v6, v8

    .line 1126
    goto :goto_1

    .line 1134
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v8    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_9
    iget-boolean v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1136
    .restart local v1    # "d":Z
    if-eqz v1, :cond_b

    invoke-virtual {v6}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_b

    .line 1137
    const/4 v9, 0x0

    iput-object v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1138
    const/4 v9, 0x1

    iput-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 1139
    iget-object v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->error:Ljava/lang/Throwable;

    .line 1140
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_a

    .line 1141
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 1143
    :cond_a
    invoke-interface {v0, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1149
    .end local v1    # "d":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_b
    iput-object v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1150
    iput-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->emitted:J

    .line 1152
    neg-int v9, v7

    invoke-virtual {p1, v9}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v7

    .line 1153
    if-nez v7, :cond_2

    goto/16 :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1161
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 1165
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    const/4 v1, 0x0

    .line 1166
    .local v1, "s":I
    :goto_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1167
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1168
    .local v0, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v0, :cond_1

    .line 1175
    .end local v0    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_0
    return v1

    .line 1171
    .restart local v0    # "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1172
    move-object p1, v0

    .line 1173
    goto :goto_0
.end method

.method trim()V
    .locals 8

    .prologue
    .line 938
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    iget v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v4, v5, :cond_0

    .line 939
    iget v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 940
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 941
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iput-object v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 943
    .end local v0    # "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :cond_0
    iget-object v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-wide v6, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v4, v6

    .line 945
    .local v2, "limit":J
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 948
    .restart local v0    # "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 949
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v1, :cond_1

    .line 950
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 962
    :goto_1
    return-void

    .line 954
    :cond_1
    iget-wide v4, v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 955
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 959
    :cond_2
    move-object v0, v1

    .line 960
    goto :goto_0
.end method

.method trimFinal()V
    .locals 8

    .prologue
    .line 965
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v4, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v5, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-wide v6, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v4, v6

    .line 967
    .local v2, "limit":J
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 970
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 971
    .local v1, "next":Lio/reactivex/processors/ReplayProcessor$TimedNode;, "Lio/reactivex/processors/ReplayProcessor$TimedNode<TT;>;"
    if-nez v1, :cond_0

    .line 972
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 983
    :goto_1
    return-void

    .line 976
    :cond_0
    iget-wide v4, v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 977
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 981
    :cond_1
    move-object v0, v1

    .line 982
    goto :goto_0
.end method
