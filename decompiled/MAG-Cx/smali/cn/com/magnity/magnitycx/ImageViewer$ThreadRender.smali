.class Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;
.super Ljava/lang/Thread;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRender"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/ImageViewer;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/ImageViewer$1;

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1017
    const-string v6, "Enter ThreadRender."

    invoke-static {v6}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1019
    new-instance v1, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V

    .line 1020
    .local v1, "osdParam":Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;
    const v6, 0x7f030006

    invoke-virtual {v1, v6}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setCrossLogo(I)V

    .line 1021
    const v6, 0x7f03001f

    invoke-virtual {v1, v6}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setMinTrace(I)V

    .line 1022
    const v6, 0x7f030018

    invoke-virtual {v1, v6}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setMaxTrace(I)V

    .line 1023
    const v6, 0x7f030013

    invoke-virtual {v1, v6}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setLaserLogo(I)V

    .line 1024
    const v6, 0x7f030024

    invoke-virtual {v1, v6}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setMovingCrossLogo(I)V

    .line 1026
    const/4 v0, -0x1

    .line 1027
    .local v0, "frameIndex":I
    const-wide/16 v4, 0x0

    .line 1029
    .local v4, "t1":J
    :goto_0
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1400(Lcn/com/magnity/magnitycx/ImageViewer;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1030
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1500(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v6

    iget-object v7, v6, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v7

    .line 1031
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1500(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v6

    iget-boolean v6, v6, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 1033
    :try_start_1
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1500(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v6

    iget-object v6, v6, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1034
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1037
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1500(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v6

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 1038
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1040
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1400(Lcn/com/magnity/magnitycx/ImageViewer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1066
    :cond_1
    invoke-static {v1}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->access$1300(Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    .line 1068
    const-string v6, "Leave ThreadRender."

    invoke-static {v6}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1069
    return-void

    .line 1038
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1042
    :cond_2
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isOutputDataReady()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1043
    const-string v6, "draw not ready."

    invoke-static {v6}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 1047
    :cond_3
    :try_start_draw
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->this$0:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-static {v6, v1}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1600(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    :try_end_draw
    .catch Ljava/lang/Throwable; {:try_start_draw .. :try_end_draw} :catch_draw

    goto :draw_ok

    :catch_draw
    move-exception v6

    :draw_ok
    .line 1049
    sget-boolean v6, Lcn/com/magnity/magnitycx/MagApplication;->isShowFps:Z

    if-eqz v6, :cond_4

    .line 1050
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    .line 1051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1063
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1055
    .local v2, "t":J
    invoke-static {}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1700()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1056
    invoke-static {}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1800()[J

    move-result-object v6

    invoke-static {}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1800()[J

    move-result-object v7

    array-length v7, v7

    rem-int v7, v0, v7

    sub-long v8, v2, v4

    aput-wide v8, v6, v7

    .line 1057
    invoke-static {}, Lcn/com/magnity/magnitycx/ImageViewer;->access$1700()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1059
    move-wide v4, v2

    goto :goto_2
.end method
