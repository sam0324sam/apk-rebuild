.class Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;
.super Ljava/lang/Thread;
.source "UsbCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadImgProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1022
    const/4 v3, 0x0

    .line 1024
    .local v3, "imgExchangeBuf2":[B
    const-string v5, "Enter ThreadImgProcess"

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1026
    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    sget-object v6, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v6, v6, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v6, v6, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    div-int/lit8 v2, v5, 0x8

    .line 1028
    .local v2, "frameBytes":I
    add-int/lit16 v5, v2, 0x400

    new-array v3, v5, [B

    .line 1030
    :cond_0
    :goto_0
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1500(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1031
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v5

    iget-object v6, v5, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v6

    .line 1032
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v5

    iget-boolean v5, v5, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 1034
    :try_start_1
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v5

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1035
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1038
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    move-result-object v5

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 1040
    if-nez v3, :cond_2

    .line 1041
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)[B

    move-result-object v5

    array-length v5, v5

    new-array v3, v5, [B

    .line 1044
    :cond_2
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)[B

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v9}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v5, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1045
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I

    move-result v5

    sget-object v7, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v7, v7, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara2:Lcn/com/magnity/magnitycx/sdk/BasePara2;

    iget-short v7, v7, Lcn/com/magnity/magnitycx/sdk/BasePara2;->fpaTempFix:S

    add-int v1, v5, v7

    .line 1046
    .local v1, "fpaTemp":I
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1100(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I

    move-result v5

    sget-object v7, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v7, v7, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara2:Lcn/com/magnity/magnitycx/sdk/BasePara2;

    iget-short v7, v7, Lcn/com/magnity/magnitycx/sdk/BasePara2;->fpaTempFix:S

    add-int v0, v5, v7

    .line 1047
    .local v0, "camTemp":I
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1049
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 1050
    invoke-static {v3, v1, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->pushFrame([BII)Z

    move-result v4

    .line 1051
    .local v4, "ret":Z
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 1053
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1500(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1062
    .end local v0    # "camTemp":I
    .end local v1    # "fpaTemp":I
    .end local v4    # "ret":Z
    :cond_3
    const-string v5, "Leave ThreadImgProcess"

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1063
    return-void

    .line 1047
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1057
    .restart local v0    # "camTemp":I
    .restart local v1    # "fpaTemp":I
    .restart local v4    # "ret":Z
    :cond_4
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1058
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$DelegateNewFrame;->onNewFrameReceived(II)V

    goto/16 :goto_0
.end method
