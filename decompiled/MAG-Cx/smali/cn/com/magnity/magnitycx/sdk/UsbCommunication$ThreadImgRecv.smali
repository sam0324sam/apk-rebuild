.class Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;
.super Ljava/lang/Thread;
.source "UsbCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadImgRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 900
    sget-object v20, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    move/from16 v20, v0

    sget-object v21, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x10

    div-int/lit8 v6, v20, 0x8

    .line 902
    .local v6, "frameBytes":I
    add-int/lit16 v9, v6, 0x400

    .line 903
    .local v9, "imgRecvBufLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)[B

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v9, :cond_1

    .line 904
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    new-array v0, v9, [B

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$702(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;[B)[B

    .line 907
    :cond_1
    const-string v20, "Enter ThreadImgReceiver"

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 911
    new-array v14, v9, [B

    .line 912
    .local v14, "recvbuf":[B
    const/4 v8, 0x0

    .line 913
    .local v8, "headerFound":Z
    const/4 v15, 0x0

    .line 914
    .local v15, "total":I
    const/4 v10, 0x0

    .line 915
    .local v10, "index":I
    const-wide/16 v18, 0x0

    .line 916
    .local v18, "t1":J
    const/4 v12, 0x0

    .line 918
    .local v12, "isCorrectFps":Z
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$800(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    array-length v0, v14

    move/from16 v21, v0

    sub-int v21, v21, v15

    const/16 v22, 0xc8

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v14, v15, v1, v2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->recvImg([BIII)I

    move-result v13

    .line 921
    .local v13, "len":I
    if-lez v13, :cond_2

    .line 925
    if-nez v8, :cond_4

    .line 926
    const/16 v20, 0x1c

    move/from16 v0, v20

    if-lt v13, v0, :cond_3

    .line 927
    const/16 v20, 0x0

    const/16 v21, 0x1c

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 928
    .local v4, "bb":Ljava/nio/ByteBuffer;
    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 929
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    const v21, 0x1bb1b11b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 930
    const/4 v8, 0x1

    .line 933
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v15, 0x0

    .line 994
    :goto_1
    if-le v15, v6, :cond_2

    .line 995
    const/4 v8, 0x0

    .line 996
    const/4 v15, 0x0

    goto :goto_0

    .line 935
    :cond_4
    const/16 v20, 0x1c

    move/from16 v0, v20

    if-lt v13, v0, :cond_f

    .line 936
    add-int v20, v15, v13

    add-int/lit8 v20, v20, -0x1c

    const/16 v21, 0x1c

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 937
    .restart local v4    # "bb":Ljava/nio/ByteBuffer;
    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 938
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    const v21, 0x1bb1b11c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 939
    add-int v20, v15, v13

    add-int/lit8 v20, v20, -0x1c

    move/from16 v0, v20

    if-ne v0, v6, :cond_c

    .line 940
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 941
    .local v7, "frameIndex":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 942
    .local v16, "t":J
    const/4 v5, 0x0

    .line 944
    .local v5, "drop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 945
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)[B

    move-result-object v22

    const/16 v23, 0x0

    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 946
    sget-object v20, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    sget-object v20, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    move/from16 v20, v0

    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    sget-object v20, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    move/from16 v20, v0

    const/16 v22, 0x6

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    sget-object v20, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 950
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1002(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;I)I

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I

    move-result v22

    move/from16 v0, v22

    add-int/lit16 v0, v0, -0x1f4

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1102(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;I)I

    .line 952
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 960
    :goto_2
    if-eqz v5, :cond_6

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_7

    .line 961
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v20

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notify()V

    .line 966
    :cond_7
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v20

    if-eqz v20, :cond_a

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    .line 969
    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitycx/ImageViewer;->getTempStableFlag()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitycx/ImageViewer;->getImageStableCounter()I

    move-result v20

    if-eqz v20, :cond_a

    :cond_8
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    and-int/lit8 v20, v10, 0xf

    if-nez v20, :cond_9

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    move v10, v11

    .line 974
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :cond_a
    sget-boolean v20, Lcn/com/magnity/magnitycx/MagApplication;->isShowFps:Z

    if-eqz v20, :cond_c

    .line 975
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_b

    .line 976
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1300()Ljava/util/concurrent/locks/Lock;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 977
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1400()[J

    move-result-object v20

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1400()[J

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    rem-int v21, v7, v21

    sub-long v22, v16, v18

    aput-wide v22, v20, v21

    .line 978
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1300()Ljava/util/concurrent/locks/Lock;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 980
    :cond_b
    move-wide/from16 v18, v16

    .line 984
    .end local v5    # "drop":I
    .end local v7    # "frameIndex":I
    .end local v16    # "t":J
    :cond_c
    const/4 v8, 0x0

    .line 985
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 954
    .restart local v5    # "drop":I
    .restart local v7    # "frameIndex":I
    .restart local v16    # "t":J
    :cond_d
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 955
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1102(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;I)I

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1100(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I

    move-result v22

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1002(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;I)I

    goto/16 :goto_2

    .line 966
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 987
    .end local v5    # "drop":I
    .end local v7    # "frameIndex":I
    .end local v16    # "t":J
    :cond_e
    add-int/2addr v15, v13

    goto/16 :goto_1

    .line 990
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    :cond_f
    add-int/2addr v15, v13

    goto/16 :goto_1

    .line 1000
    .end local v13    # "len":I
    :cond_10
    const-string v20, "Leave ThreadImgReceiver"

    invoke-static/range {v20 .. v20}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1001
    return-void
.end method
