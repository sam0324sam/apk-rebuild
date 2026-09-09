.class abstract Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$Node;",
        ">;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field size:I

.field tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 596
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 597
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 598
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 599
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 600
    return-void
.end method


# virtual methods
.method final addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V
    .locals 1
    .param p1, "n"    # Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .prologue
    .line 607
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->set(Ljava/lang/Object;)V

    .line 608
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 609
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    .line 610
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    move-result-object v0

    .line 741
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 742
    .local v1, "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    if-eqz v1, :cond_0

    .line 743
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    .line 744
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 745
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 754
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    return-void

    .line 748
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 749
    move-object v0, v1

    .line 753
    goto :goto_0
.end method

.method public final complete()V
    .locals 3

    .prologue
    .line 658
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 659
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 660
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 661
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 662
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 714
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 650
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 651
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 652
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 653
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 654
    return-void
.end method

.method getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    .locals 1

    .prologue
    .line 763
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    return-object v0
.end method

.method hasCompleted()Z
    .locals 1

    .prologue
    .line 759
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasError()Z
    .locals 1

    .prologue
    .line 756
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 723
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 643
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 644
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 645
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->truncate()V

    .line 646
    return-void
.end method

.method final removeFirst()V
    .locals 3

    .prologue
    .line 615
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 616
    .local v0, "head":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 617
    .local v1, "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    .line 620
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 621
    return-void
.end method

.method final removeSome(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 623
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 624
    .local v0, "head":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    :goto_0
    if-lez p1, :cond_0

    .line 625
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "head":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 626
    .restart local v0    # "head":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    add-int/lit8 p1, p1, -0x1

    .line 627
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 631
    return-void
.end method

.method public final replay(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->getAndIncrement()I

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    const/4 v0, 0x1

    .line 673
    .local v0, "missed":I
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 674
    .local v1, "node":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    if-nez v1, :cond_3

    .line 675
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    move-result-object v1

    .line 676
    iput-object v1, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    .line 680
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 684
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 685
    .local v3, "v":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    if-eqz v3, :cond_5

    .line 686
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 687
    .local v2, "o":Ljava/lang/Object;
    iget-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-static {v2, v4}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 688
    const/4 v4, 0x0

    iput-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    goto :goto_0

    .line 691
    :cond_4
    move-object v1, v3

    .line 695
    goto :goto_1

    .line 697
    .end local v2    # "o":Ljava/lang/Object;
    :cond_5
    iput-object v1, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    .line 699
    neg-int v4, v0

    invoke-virtual {p1, v4}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->addAndGet(I)I

    move-result v0

    .line 700
    if-nez v0, :cond_2

    goto :goto_0
.end method

.method final setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V
    .locals 0
    .param p1, "n"    # Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .prologue
    .line 637
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 638
    return-void
.end method

.method abstract truncate()V
.end method

.method truncateFinal()V
    .locals 0

    .prologue
    .line 737
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method
