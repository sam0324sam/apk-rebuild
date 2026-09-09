.class Landroidx/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final NO_OP:I = 0x0

.field static final REMOVE:I = 0x2


# instance fields
.field mNeedsSync:Z

.field mPendingSync:Z

.field final mTableObservers:[J

.field final mTriggerStateChanges:[I

.field final mTriggerStates:[Z


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "tableCount"    # I

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 746
    new-array v0, p1, [Z

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 747
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 748
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 749
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 750
    return-void
.end method


# virtual methods
.method getTablesToSync()[I
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    iget-boolean v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    if-eqz v3, :cond_1

    .line 798
    :cond_0
    const/4 v3, 0x0

    monitor-exit p0

    .line 812
    :goto_0
    return-object v3

    .line 800
    :cond_1
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    array-length v2, v3

    .line 801
    .local v2, "tableCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 802
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v6, v3, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    move v1, v4

    .line 803
    .local v1, "newState":Z
    :goto_2
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aget-boolean v3, v3, v0

    if-eq v1, v3, :cond_4

    .line 804
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    if-eqz v1, :cond_3

    move v3, v4

    :goto_3
    aput v3, v6, v0

    .line 808
    :goto_4
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aput-boolean v1, v3, v0

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "newState":Z
    :cond_2
    move v1, v5

    .line 802
    goto :goto_2

    .line 804
    .restart local v1    # "newState":Z
    :cond_3
    const/4 v3, 0x2

    goto :goto_3

    .line 806
    :cond_4
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    const/4 v6, 0x0

    aput v6, v3, v0

    goto :goto_4

    .line 813
    .end local v0    # "i":I
    .end local v1    # "newState":Z
    .end local v2    # "tableCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 810
    .restart local v0    # "i":I
    .restart local v2    # "tableCount":I
    :cond_5
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 811
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 812
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method varargs onAdded([I)Z
    .locals 10
    .param p1, "tableIds"    # [I

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 758
    :try_start_0
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget v1, p1, v4

    .line 759
    .local v1, "tableId":I
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v2, v6, v1

    .line 760
    .local v2, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    aput-wide v8, v6, v1

    .line 761
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 762
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 763
    const/4 v0, 0x1

    .line 758
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 766
    .end local v1    # "tableId":I
    .end local v2    # "prevObserverCount":J
    :cond_1
    monitor-exit p0

    .line 767
    return v0

    .line 766
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method varargs onRemoved([I)Z
    .locals 12
    .param p1, "tableIds"    # [I

    .prologue
    const-wide/16 v10, 0x1

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 776
    :try_start_0
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget v1, p1, v4

    .line 777
    .local v1, "tableId":I
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v2, v6, v1

    .line 778
    .local v2, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    sub-long v8, v2, v10

    aput-wide v8, v6, v1

    .line 779
    cmp-long v6, v2, v10

    if-nez v6, :cond_0

    .line 780
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 781
    const/4 v0, 0x1

    .line 776
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 784
    .end local v1    # "tableId":I
    .end local v2    # "prevObserverCount":J
    :cond_1
    monitor-exit p0

    .line 785
    return v0

    .line 784
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method onSyncCompleted()V
    .locals 1

    .prologue
    .line 821
    monitor-enter p0

    .line 822
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 823
    monitor-exit p0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
