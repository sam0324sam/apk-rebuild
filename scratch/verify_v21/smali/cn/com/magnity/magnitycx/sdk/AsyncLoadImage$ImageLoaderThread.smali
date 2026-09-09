.class Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;
.super Ljava/lang/Thread;
.source "AsyncLoadImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderThread"
.end annotation


# instance fields
.field private index_:I

.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 104
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 105
    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->index_:I

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 110
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$100(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$200(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v3

    iget-object v4, v3, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v4

    .line 112
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$200(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v3

    iget-boolean v3, v3, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 114
    :try_start_1
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$200(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v3

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v3

    goto :goto_1

    .line 118
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$200(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v3

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 120
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$300(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 121
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$300(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$300(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$100(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 140
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .line 124
    :cond_3
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 132
    .restart local v1    # "name":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$000(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$DelegateExecute;

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$000(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$DelegateExecute;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$DelegateExecute;->onBackToDo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 134
    .local v2, "object":Ljava/lang/Object;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 135
    .local v0, "msg":Landroid/os/Message;
    const v3, 0x12345678

    iput v3, v0, Landroid/os/Message;->what:I

    .line 136
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$400(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)[Landroid/os/Handler;

    move-result-object v3

    iget v4, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$ImageLoaderThread;->index_:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
