.class Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;
.super Ljava/lang/Thread;
.source "UsbCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadCaliRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1069
    const-string v12, "Enter ThreadRemoteFileReceiver"

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1071
    const/16 v12, 0x4000

    new-array v7, v12, [B

    .line 1072
    .local v7, "recvbuf":[B
    const/4 v9, 0x0

    .line 1073
    .local v9, "totalSize":I
    const/4 v5, 0x0

    .line 1075
    .local v5, "out":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1079
    .local v10, "t1":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1600(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1080
    sget-object v12, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v12, v12, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    iget v12, v12, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    sub-int v8, v12, v9

    .line 1081
    .local v8, "remain":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    const/4 v13, 0x0

    const/16 v14, 0x4000

    if-le v8, v14, :cond_1

    array-length v8, v7

    .end local v8    # "remain":I
    :cond_1
    const/16 v14, 0x320

    invoke-virtual {v12, v7, v13, v8, v14}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->recvCali([BIII)I

    move-result v4

    .line 1083
    .local v4, "len":I
    if-ltz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1084
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v14, 0x1388

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 1085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1157
    .end local v4    # "len":I
    :cond_3
    :goto_0
    const-string v12, "Leave ThreadRemoteFileReceiver"

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 1158
    return-void

    .line 1091
    .restart local v4    # "len":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1800(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1092
    const/4 v9, 0x0

    .line 1093
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1802(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Z)Z

    .line 1097
    :cond_5
    if-nez v9, :cond_6

    .line 1099
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 1107
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_6
    add-int/2addr v9, v4

    .line 1109
    sget-object v12, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v12, v12, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    iget v12, v12, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    if-le v9, v12, :cond_7

    .line 1110
    const/4 v9, 0x0

    .line 1112
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1113
    const/4 v5, 0x0

    .line 1119
    const-string v12, "Receive remote file error 3."

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v2

    .line 1101
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "Receive remote file error 1."

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1114
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1115
    .local v3, "ex":Ljava/lang/Exception;
    const-string v12, "Receive remote file error 2."

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1124
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_7
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v5, v7, v12, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x0

    mul-int/lit8 v16, v9, 0x64

    sget-object v17, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    move/from16 v17, v0

    div-int v16, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1134
    sget-object v12, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v12, v12, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    iget v12, v12, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    if-ne v9, v12, :cond_0

    .line 1135
    const/4 v9, 0x0

    .line 1137
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1138
    const/4 v5, 0x0

    .line 1145
    const-string v12, "Receive remote file succ."

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1150
    const-string v12, "SDK start fail."

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1125
    :catch_2
    move-exception v2

    .line 1126
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "Receive remote file error 4."

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1139
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 1140
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v12, "Receive remote file error 5."

    invoke-static {v12}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v12}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v13}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
