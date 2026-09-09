.class Landroidx/room/RoomTrackingLiveData$1;
.super Ljava/lang/Object;
.source "RoomTrackingLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomTrackingLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/RoomTrackingLiveData;


# direct methods
.method constructor <init>(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/room/RoomTrackingLiveData;

    .prologue
    .line 72
    .local p0, "this":Landroidx/room/RoomTrackingLiveData$1;, "Landroidx/room/RoomTrackingLiveData$1;"
    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .local p0, "this":Landroidx/room/RoomTrackingLiveData$1;, "Landroidx/room/RoomTrackingLiveData$1;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v3, v3, Landroidx/room/RoomTrackingLiveData;->mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v3, v3, Landroidx/room/RoomTrackingLiveData;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    iget-object v4, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v4, v4, Landroidx/room/RoomTrackingLiveData;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v3, v4}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 83
    .local v0, "computed":Z
    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v3, v3, Landroidx/room/RoomTrackingLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v3, v3, Landroidx/room/RoomTrackingLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 90
    :try_start_1
    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v3, v3, Landroidx/room/RoomTrackingLiveData;->mComputeFunction:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 91
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Exception while computing database live data."

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v4, v4, Landroidx/room/RoomTrackingLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    throw v3

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    .line 97
    :try_start_3
    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    invoke-static {v3, v2}, Landroidx/room/RoomTrackingLiveData;->access$000(Landroidx/room/RoomTrackingLiveData;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :cond_2
    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v3, v3, Landroidx/room/RoomTrackingLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    iget-object v3, v3, Landroidx/room/RoomTrackingLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    :cond_4
    return-void
.end method
