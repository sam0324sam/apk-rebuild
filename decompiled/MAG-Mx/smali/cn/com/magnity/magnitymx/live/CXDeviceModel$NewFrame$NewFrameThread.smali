.class Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;
.super Ljava/lang/Thread;
.source "CXDeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewFrameThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 864
    const/4 v5, 0x0

    .local v5, "frameIndex":I
    const/4 v2, 0x0

    .local v2, "cameraState":I
    const/4 v9, 0x0

    .local v9, "receivedFps":I
    const/4 v3, 0x0

    .line 865
    .local v3, "drawingFps":I
    const/4 v7, 0x0

    .line 866
    .local v7, "iter":I
    const-wide/16 v10, 0x0

    .line 868
    .local v10, "prevTime":J
    const/16 v16, 0x14

    move/from16 v0, v16

    new-array v4, v0, [J

    .line 870
    .local v4, "drawingTicks":[J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$600(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$700(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/locks/Lock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 873
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$800(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$900(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/locks/Condition;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 879
    :catch_0
    move-exception v16

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$700(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/locks/Lock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 884
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$600(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 910
    :cond_0
    return-void

    .line 876
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$1000(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)I

    move-result v5

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$1100(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)I

    move-result v2

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$802(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$700(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/locks/Lock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$700(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v16

    .line 888
    :cond_2
    sget-boolean v16, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v16, :cond_6

    .line 889
    if-nez v7, :cond_3

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 897
    :goto_3
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "iter":I
    .local v8, "iter":I
    const/16 v16, 0x13

    move/from16 v0, v16

    if-le v7, v0, :cond_5

    .line 898
    const-wide/16 v12, 0x0

    .line 899
    .local v12, "sum":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    const/16 v16, 0x14

    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    .line 900
    aget-wide v16, v4, v6

    add-long v12, v12, v16

    .line 899
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 892
    .end local v6    # "i":I
    .end local v8    # "iter":I
    .end local v12    # "sum":J
    .restart local v7    # "iter":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 893
    .local v14, "t":J
    rem-int/lit8 v16, v7, 0x14

    sub-long v18, v14, v10

    aput-wide v18, v4, v16

    .line 894
    move-wide v10, v14

    goto :goto_3

    .line 902
    .end local v7    # "iter":I
    .end local v14    # "t":J
    .restart local v6    # "i":I
    .restart local v8    # "iter":I
    .restart local v12    # "sum":J
    :cond_4
    const-wide/16 v16, 0x4e20

    div-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v3, v0

    .line 905
    .end local v6    # "i":I
    .end local v12    # "sum":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->access$1200(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    move v7, v8

    .line 908
    .end local v8    # "iter":I
    .restart local v7    # "iter":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;->this$1:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$100(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2, v9, v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onNewFrameCome(IIII)V

    goto/16 :goto_0
.end method
