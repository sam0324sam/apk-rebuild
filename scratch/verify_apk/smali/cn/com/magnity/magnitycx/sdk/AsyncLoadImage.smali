.class public Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;
.super Ljava/lang/Object;
.source "AsyncLoadImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;,
        Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$DelegateExecute;
    }
.end annotation


# static fields
.field private static final MSG:I = 0x12345678


# instance fields
.field private handlers_:[Landroid/os/Handler;

.field private imageDir_:Ljava/lang/String;

.field private volatile maxTaskLen:I

.field private receiver_:Ljava/lang/Object;

.field private volatile running_:Z

.field private volatile taskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile taskList_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threads_:[Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;

.field private wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 8
    .param p1, "imageDir"    # Ljava/lang/String;
    .param p2, "threadNum"    # I
    .param p3, "receiver"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->receiver_:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->imageDir_:Ljava/lang/String;

    .line 28
    const v5, 0x7fffffff

    iput v5, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->maxTaskLen:I

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "index":I
    new-array v5, p2, [Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;

    iput-object v5, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->threads_:[Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;

    .line 32
    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->threads_:[Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;

    array-length v7, v6

    move v5, v4

    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v6, v5

    .line 33
    .local v3, "thread":Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;
    new-instance v3, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;

    .end local v3    # "thread":Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-direct {v3, p0, v2}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;-><init>(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;I)V

    .line 34
    .restart local v3    # "thread":Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;
    invoke-virtual {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->start()V

    .line 32
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 37
    .end local v3    # "thread":Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;
    :cond_0
    new-instance v5, Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    invoke-direct {v5}, Lcn/com/magnity/magnitycx/sdk/WaitCondition;-><init>()V

    iput-object v5, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->taskList_:Ljava/util/ArrayList;

    .line 39
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->handlers_:[Landroid/os/Handler;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 40
    .local v0, "handler":Landroid/os/Handler;
    new-instance v7, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$1;

    invoke-direct {v7, p0}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$1;-><init>(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)V

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 54
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    .prologue
    .line 8
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->receiver_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    .prologue
    .line 8
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->running_:Z

    return v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    .prologue
    .line 8
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    .prologue
    .line 8
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->taskList_:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)[Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    .prologue
    .line 8
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->handlers_:[Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->taskList_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    monitor-exit v1

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->taskList_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->maxTaskLen:I

    if-le v0, v2, :cond_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->taskList_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->taskList_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 69
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 71
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->running_:Z

    .line 88
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 90
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->threads_:[Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 95
    .local v0, "thread":Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;
    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "thread":Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 97
    :catch_0
    move-exception v1

    .line 99
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->taskList_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTaskQueueLen(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->wcObj_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->maxTaskLen:I

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
