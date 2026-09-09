.class Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;
.super Ljava/lang/Thread;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRecording"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/ImageViewer;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/ImageViewer$1;

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 979
    const-string v0, "Enter ThreadRecording."

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 981
    new-instance v9, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V

    .line 982
    .local v9, "osdParam":Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;
    const v0, 0x7f030007

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setCrossLogo(I)V

    .line 983
    const v0, 0x7f03003c

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setWaterMark(I)V

    .line 984
    const v0, 0x7f030020

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setMinTrace(I)V

    .line 985
    const v0, 0x7f030019

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setMaxTrace(I)V

    .line 988
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$500(Lcn/com/magnity/magnitycx/ImageViewer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 989
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$600(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v0

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 990
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$600(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v0

    iget-boolean v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 992
    :try_start_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$600(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 993
    :catch_0
    move-exception v0

    goto :goto_1

    .line 996
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$600(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 997
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 999
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$500(Lcn/com/magnity/magnitycx/ImageViewer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1008
    :cond_2
    invoke-static {v9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->access$1300(Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    .line 1010
    const-string v0, "Leave ThreadRecording."

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1011
    return-void

    .line 997
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1002
    :cond_3
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/ImageViewer;->access$700(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/ImageViewer;->access$800(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/ImageViewer;->access$900(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1000(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1100(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1100(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v6, v5

    invoke-static/range {v0 .. v9}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1200(Lcn/com/magnity/magnitycx/ImageViewer;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Matrix;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    .line 1004
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1100(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->doRecording(Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0
.end method
