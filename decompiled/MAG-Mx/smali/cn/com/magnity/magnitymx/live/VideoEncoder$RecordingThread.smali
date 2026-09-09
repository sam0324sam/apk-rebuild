.class Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;
.super Ljava/lang/Thread;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/live/VideoEncoder;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/live/VideoEncoder;Lcn/com/magnity/magnitymx/live/VideoEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/live/VideoEncoder;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/live/VideoEncoder$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;-><init>(Lcn/com/magnity/magnitymx/live/VideoEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 174
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$100(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$100(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 175
    .local v2, "size":I
    new-array v0, v2, [B

    .line 176
    .local v0, "buffer":[B
    const/16 v3, -0x80

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 177
    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$100(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$100(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    const/16 v5, 0x3c

    invoke-static {v0, v3, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 178
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$200(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$300(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 181
    :try_start_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$400(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$300(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$200(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    :cond_0
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$300(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$300(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$300(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 193
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$500(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$100(Lcn/com/magnity/magnitymx/live/VideoEncoder;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->fillSignedPicture(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VideoEncoder$RecordingThread;->this$0:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-static {v3, v0}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->access$600(Lcn/com/magnity/magnitymx/live/VideoEncoder;[B)V

    goto :goto_0
.end method
