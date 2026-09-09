.class public Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
.super Ljava/lang/Object;
.source "UsbCommunication.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;,
        Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;,
        Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;,
        Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;,
        Lcn/com/magnity/magnitycx/sdk/UsbCommunication$DelegateNewFrame;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_CALI_TIMEOUT:I = 0x1388

.field private static final HEADER_SIZE:I = 0x1c

.field private static final IMG_END_CODE:I = 0x1bb1b11c

.field private static final IMG_START_CODE:I = 0x1bb1b11b

.field private static final MAX_CALI_FILE_LEN:I = 0x6400000

.field private static final MAX_RECEIVED_LEN:I = 0x4000

.field private static final MIN_CALI_FILE_LEN:I = 0x10000

.field public static final MSG_SET_BASEPARAMETER:Ljava/lang/String; = "set_baseparameter"

.field public static final MSG_TRIGGER_FFC:Ljava/lang/String; = "trigger_ffc"

.field public static final PROGRESS_CALI_ID:I = 0x0

.field private static final PROGRESS_CANCEL:I = 0x3

.field private static final PROGRESS_CHANGED:I = 0x2

.field private static final PROGRESS_FINISHED:I = 0x1

.field private static final PROGRESS_START:I = 0x0

.field public static final PROGRESS_WAIT_FOR_CORRECT_STREAM_ID:I = 0x1

.field private static final QUERY_DEVICE_LIFETIME:I = 0x4

.field private static final TAIL_SIZE:I = 0x1c

.field private static final TIMEOUT:I = 0x320

.field private static final TIME_FOR_DEVICE_INIT:I = 0x3a98

.field private static volatile lock_:Ljava/util/concurrent/locks/Lock;

.field private static volatile ticks_:[J


# instance fields
.field private caliPathName_:Ljava/lang/String;

.field private volatile camTemp_:I

.field private condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

.field private conn_:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

.field private volatile connected_:Z

.field private volatile fpaTemp_:I

.field private handler_:Landroid/os/Handler;

.field private imgExchangeBuf1_:[B

.field private imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

.field private volatile isExitCaliRecvThread:Z

.field private volatile isExitThreadImgProcess_:Z

.field private volatile isToRecvFirstCaliPacket_:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private progressCallback_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

.field private threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

.field private threadImgProcess_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;

.field private threadImgRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;

.field private usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

.field private usbEpCaliIn_:Landroid/hardware/usb/UsbEndpoint;

.field private usbEpCaliOut_:Landroid/hardware/usb/UsbEndpoint;

.field private usbEpCmdIn_:Landroid/hardware/usb/UsbEndpoint;

.field private usbEpCmdOut_:Landroid/hardware/usb/UsbEndpoint;

.field private usbEpImgIn_:Landroid/hardware/usb/UsbEndpoint;

.field private usbInterface_:Landroid/hardware/usb/UsbInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->lock_:Ljava/util/concurrent/locks/Lock;

    .line 68
    const/16 v0, 0x14

    new-array v0, v0, [J

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->ticks_:[J

    return-void
.end method

.method public constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;)V
    .locals 5
    .param p1, "conn"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .param p2, "usbMgr"    # Landroid/hardware/usb/UsbManager;
    .param p3, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p4, "cb"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->connected_:Z

    .line 39
    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isExitCaliRecvThread:Z

    .line 54
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    invoke-direct {v2}, Lcn/com/magnity/magnitycx/sdk/WaitCondition;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    .line 60
    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isToRecvFirstCaliPacket_:Z

    .line 61
    const-string v2, ""

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->caliPathName_:Ljava/lang/String;

    .line 83
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->handler_:Landroid/os/Handler;

    .line 175
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$2;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$2;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->conn_:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    .line 228
    iput-object p4, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->progressCallback_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    .line 229
    invoke-virtual {p2, p3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    .line 230
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v2, :cond_0

    .line 231
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to open USB device"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 234
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to get USB interface"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_1
    invoke-virtual {p3, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    .line 237
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to claim USB interface"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 241
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get USB endpoint ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_3
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 244
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 245
    .local v0, "ep":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 262
    const-string v2, "Unknown endpoint found."

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    .line 243
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 247
    :sswitch_0
    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpImgIn_:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 250
    :sswitch_1
    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdIn_:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 253
    :sswitch_2
    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdOut_:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 256
    :sswitch_3
    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliIn_:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 259
    :sswitch_4
    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliOut_:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 267
    .end local v0    # "ep":Landroid/hardware/usb/UsbEndpoint;
    :cond_4
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdIn_:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdOut_:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliIn_:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliOut_:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpImgIn_:Landroid/hardware/usb/UsbEndpoint;

    if-nez v2, :cond_6

    .line 269
    :cond_5
    const-string v2, "Some endpoint lost."

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    .line 271
    :cond_6
    return-void

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_4
        0x81 -> :sswitch_0
        0x82 -> :sswitch_1
        0x84 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->progressCallback_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->getDevLifeTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->fpaTemp_:I

    return v0
.end method

.method static synthetic access$1002(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->fpaTemp_:I

    return p1
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->camTemp_:I

    return v0
.end method

.method static synthetic access$1102(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->camTemp_:I

    return p1
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->lock_:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$1400()[J
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->ticks_:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isExitThreadImgProcess_:Z

    return v0
.end method

.method static synthetic access$1600(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isExitCaliRecvThread:Z

    return v0
.end method

.method static synthetic access$1700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->caliPathName_:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isToRecvFirstCaliPacket_:Z

    return v0
.end method

.method static synthetic access$1802(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isToRecvFirstCaliPacket_:Z

    return p1
.end method

.method static synthetic access$1900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->startTransfer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setFrameRate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)[B
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->imgExchangeBuf1_:[B

    return-object v0
.end method

.method static synthetic access$702(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;[B)[B
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    .param p1, "x1"    # [B

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->imgExchangeBuf1_:[B

    return-object p1
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->connected_:Z

    return v0
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    return-object v0
.end method

.method private getDevLifeTime()I
    .locals 8

    .prologue
    const/16 v7, 0x320

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 191
    const v5, 0x6bb6b675

    invoke-virtual {p0, v5, v7}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendEmptyCmd(II)I

    move-result v5

    if-gez v5, :cond_0

    .line 192
    const-string v5, "Fail to get device lifetime"

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 194
    :cond_0
    const/16 v5, 0x40

    new-array v1, v5, [B

    .line 195
    .local v1, "data":[B
    array-length v5, v1

    invoke-virtual {p0, v1, v6, v5, v7}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->recvCmd([BIII)I

    move-result v3

    .line 196
    .local v3, "len":I
    if-gez v3, :cond_1

    .line 197
    const-string v5, "Fail to get lifetime ack"

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 217
    :goto_0
    return v4

    .line 199
    :cond_1
    const/4 v5, 0x4

    if-ge v3, v5, :cond_2

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get wrong ack size("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_2
    const/16 v5, 0x8

    if-ge v3, v5, :cond_3

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get wrong ack size("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->byteArrayToInt([B)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-static {v1, v6, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 209
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const v6, 0x5bb5b561

    if-ne v5, v6, :cond_4

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    goto :goto_0

    .line 212
    :cond_4
    const-string v5, "Get wrong cmd(expected is lifetime)"

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "Exception of get liftime"

    invoke-static {v5}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getReceivedFps()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1005
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->ticks_:[J

    array-length v3, v3

    new-array v2, v3, [J

    .line 1006
    .local v2, "ticks":[J
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1007
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->ticks_:[J

    sget-object v4, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->ticks_:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, "sum":I
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1012
    int-to-long v4, v1

    aget-wide v6, v2, v0

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 1011
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1014
    :cond_0
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->ticks_:[J

    array-length v3, v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/2addr v3, v1

    return v3
.end method

.method private parseCmd([BI)I
    .locals 19
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 731
    const/4 v14, 0x4

    move/from16 v0, p2

    if-ge v0, v14, :cond_0

    .line 732
    const/4 v14, -0x1

    .line 894
    :goto_0
    return v14

    .line 735
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v14, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 736
    .local v2, "bb":Ljava/nio/ByteBuffer;
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 737
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 739
    .local v4, "cmd":I
    packed-switch v4, :pswitch_data_0

    .line 889
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown command("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    .line 890
    const/4 v14, -0x1

    goto :goto_0

    .line 741
    :pswitch_0
    const-string v14, "D2P_SendParameter1"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 742
    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v10, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    .line 744
    .local v10, "para1":Lcn/com/magnity/magnitycx/sdk/BasePara1;
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->serialNumber:I

    .line 745
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 746
    .local v13, "val":I
    const v14, 0xffffff

    and-int/2addr v14, v13

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->hwVersion:I

    .line 747
    shr-int/lit8 v14, v13, 0x18

    and-int/lit16 v14, v14, 0xff

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    .line 748
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->swVersion:I

    .line 749
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->reserved1:I

    .line 750
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    .line 751
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    .line 752
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fps:I

    .line 753
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->reserved2:I

    .line 754
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaGain:I

    .line 755
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaFlip:I

    .line 756
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interFrame:I

    .line 757
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interLine:I

    .line 758
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->gfid:I

    .line 759
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->gsk:I

    .line 760
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 761
    const-string v14, "D2PCmd.D2P_SendParameter1 cmd size is too long"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 764
    .end local v13    # "val":I
    :catch_0
    move-exception v6

    .line 765
    .local v6, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v10}, Lcn/com/magnity/magnitycx/sdk/BasePara1;->reset()V

    .line 766
    const-string v14, "D2PCmd.D2P_SendParameter1 cmd size is not enough"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 767
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 769
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v13    # "val":I
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Serial number: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->serialNumber:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 894
    .end local v10    # "para1":Lcn/com/magnity/magnitycx/sdk/BasePara1;
    .end local v13    # "val":I
    :cond_2
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 773
    :pswitch_1
    const-string v14, "D2P_SendParameter2"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 774
    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v11, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara2:Lcn/com/magnity/magnitycx/sdk/BasePara2;

    .line 776
    .local v11, "para2":Lcn/com/magnity/magnitycx/sdk/BasePara2;
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->baseLineAcc:I

    .line 777
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->denoiseLevel:I

    .line 778
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved1:I

    .line 779
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    iput-short v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved2:S

    .line 780
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    iput-short v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->fpaTempFix:S

    .line 781
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->shutterCloseSpeed:I

    .line 782
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->shutterOpenSpeed:I

    .line 783
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ffcTriggerFrame:I

    .line 784
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ffcTriggerTemperature:I

    .line 785
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->enlargeRange:I

    .line 786
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->laserPos:I

    .line 787
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ATZeroErrorPoint:I

    .line 788
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ATErrorSlope:F

    .line 789
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved5:I

    .line 790
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v11, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved6:I

    .line 791
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 792
    const-string v14, "D2PCmd.D2P_SendParameter2 cmd size is too long"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 793
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 795
    :catch_1
    move-exception v6

    .line 796
    .restart local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v11}, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reset()V

    .line 797
    const-string v14, "D2PCmd.D2P_SendParameter2 cmd size is not enough"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 798
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 803
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v11    # "para2":Lcn/com/magnity/magnitycx/sdk/BasePara2;
    :pswitch_2
    const-string v14, "D2P_SendRemoteFileInfo"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 805
    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v3, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    .line 807
    .local v3, "caliInfo":Lcn/com/magnity/magnitycx/sdk/CaliInfo;
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v3, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    .line 808
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    iput v14, v3, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->reserved:I

    .line 809
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    iput-wide v14, v3, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->date:J

    .line 810
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 811
    const-string v14, "D2PCmd.D2P_SendRemoteFileInfo cmd size is too long"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 812
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 814
    :catch_2
    move-exception v6

    .line 815
    .restart local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->reset()V

    .line 816
    const-string v14, "D2PCmd.D2P_SendRemoteFileInfo cmd size is not enough"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 817
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 820
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remote file info: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v3, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v3, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->date:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 822
    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v14, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    iget v14, v14, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    const/high16 v15, 0x10000

    if-lt v14, v15, :cond_4

    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v14, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    iget v14, v14, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    const/high16 v15, 0x6400000

    if-le v14, v15, :cond_5

    .line 824
    :cond_4
    const-string v14, ""

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->caliPathName_:Ljava/lang/String;

    .line 825
    const-string v14, "remoteFileInfo error(invalid size)"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 826
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 829
    :cond_5
    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v14, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliDir:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 831
    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v14, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v14, v14, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    packed-switch v14, :pswitch_data_1

    .line 851
    :pswitch_3
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080081

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 854
    .local v12, "productType":Ljava/lang/String;
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v15, v15, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliDir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v15, v15, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v15, v15, Lcn/com/magnity/magnitycx/sdk/BasePara1;->serialNumber:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v15, v15, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    iget-wide v0, v15, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->date:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->caliPathName_:Ljava/lang/String;

    .line 856
    new-instance v5, Ljava/io/File;

    sget-object v14, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v14, v14, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliDir:Ljava/lang/String;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v5, "dir":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->caliPathName_:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 858
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    sget-object v16, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->caliInfo:Lcn/com/magnity/magnitycx/sdk/CaliInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 860
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 861
    .local v9, "files":[Ljava/io/File;
    array-length v15, v9

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v15, :cond_8

    aget-object v7, v9, v14

    .line 862
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->serialNumber:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 863
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 861
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 833
    .end local v5    # "dir":Ljava/io/File;
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "files":[Ljava/io/File;
    .end local v12    # "productType":Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080018

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 834
    .restart local v12    # "productType":Ljava/lang/String;
    goto/16 :goto_2

    .line 836
    .end local v12    # "productType":Ljava/lang/String;
    :pswitch_5
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080019

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 837
    .restart local v12    # "productType":Ljava/lang/String;
    goto/16 :goto_2

    .line 839
    .end local v12    # "productType":Ljava/lang/String;
    :pswitch_6
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08001a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 840
    .restart local v12    # "productType":Ljava/lang/String;
    goto/16 :goto_2

    .line 842
    .end local v12    # "productType":Ljava/lang/String;
    :pswitch_7
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08001b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 843
    .restart local v12    # "productType":Ljava/lang/String;
    goto/16 :goto_2

    .line 845
    .end local v12    # "productType":Ljava/lang/String;
    :pswitch_8
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08001c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 846
    .restart local v12    # "productType":Ljava/lang/String;
    goto/16 :goto_2

    .line 848
    .end local v12    # "productType":Ljava/lang/String;
    :pswitch_9
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcn/com/magnity/magnitycx/MagApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08001f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 849
    .restart local v12    # "productType":Ljava/lang/String;
    goto/16 :goto_2

    .line 867
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "files":[Ljava/io/File;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->stopCaliRecvThread()V

    .line 868
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->startCaliRecvThread()V

    .line 870
    const-wide/16 v14, 0x32

    :try_start_3
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 877
    :goto_4
    const v14, 0x6bb6b670

    const/16 v15, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendEmptyCmd(II)I

    .line 878
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 884
    .end local v3    # "caliInfo":Lcn/com/magnity/magnitycx/sdk/CaliInfo;
    .end local v5    # "dir":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "files":[Ljava/io/File;
    .end local v12    # "productType":Ljava/lang/String;
    :pswitch_a
    const-string v14, "D2P_SendRemoteFile"

    invoke-static {v14}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 885
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isToRecvFirstCaliPacket_:Z

    goto/16 :goto_1

    .line 871
    .restart local v3    # "caliInfo":Lcn/com/magnity/magnitycx/sdk/CaliInfo;
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "files":[Ljava/io/File;
    .restart local v12    # "productType":Ljava/lang/String;
    :catch_3
    move-exception v14

    goto :goto_4

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x5bb5b55b
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_2
    .end packed-switch

    .line 831
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setFrameRate()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 563
    const/16 v6, 0xc

    new-array v0, v6, [B

    .line 564
    .local v0, "buf":[B
    const v1, 0x6bb6b679

    .line 567
    .local v1, "cmd":I
    sget-object v6, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v6, v6, Lcn/com/magnity/magnitycx/sdk/MagParameter;->fpsMode:I

    if-nez v6, :cond_0

    .line 568
    const/16 v2, 0x9

    .line 569
    .local v2, "interFrame":I
    const/16 v3, 0xc

    .line 575
    .local v3, "interLine":I
    :goto_0
    int-to-byte v6, v1

    aput-byte v6, v0, v5

    .line 576
    const v6, 0x6bb6b6

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 577
    const/4 v6, 0x2

    const/16 v7, 0x6bb6

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 578
    const/4 v6, 0x3

    const/16 v7, 0x6b

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 580
    const/4 v6, 0x4

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    .line 581
    const/4 v6, 0x5

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 582
    const/4 v6, 0x6

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 583
    const/4 v6, 0x7

    shr-int/lit8 v7, v2, 0x18

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 585
    const/16 v6, 0x8

    int-to-byte v7, v3

    aput-byte v7, v0, v6

    .line 586
    const/16 v6, 0x9

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 587
    const/16 v6, 0xa

    shr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 588
    const/16 v6, 0xb

    shr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 590
    array-length v6, v0

    const/16 v7, 0x320

    invoke-virtual {p0, v0, v5, v6, v7}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendCmd([BIII)I

    move-result v6

    if-ltz v6, :cond_1

    :goto_1
    return v4

    .line 571
    .end local v2    # "interFrame":I
    .end local v3    # "interLine":I
    :cond_0
    const/16 v2, 0x69

    .line 572
    .restart local v2    # "interFrame":I
    const/16 v3, 0x69

    .restart local v3    # "interLine":I
    goto :goto_0

    :cond_1
    move v4, v5

    .line 590
    goto :goto_1
.end method

.method private setShutterState_(I)V
    .locals 5
    .param p1, "on"    # I

    .prologue
    const/4 v4, 0x0

    .line 529
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 530
    .local v0, "buf":[B
    const v1, 0x6bb6b672

    .line 532
    .local v1, "cmd":I
    int-to-byte v2, v1

    aput-byte v2, v0, v4

    .line 533
    const/4 v2, 0x1

    const v3, 0x6bb6b6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 534
    const/4 v2, 0x2

    const/16 v3, 0x6bb6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 535
    const/4 v2, 0x3

    const/16 v3, 0x6b

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 537
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 538
    const/4 v2, 0x5

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 539
    const/4 v2, 0x6

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 540
    const/4 v2, 0x7

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 542
    array-length v2, v0

    const/16 v3, 0x320

    invoke-virtual {p0, v0, v4, v2, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendCmd([BIII)I

    .line 543
    return-void
.end method

.method private startCaliRecvThread()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isExitCaliRecvThread:Z

    .line 511
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->start()V

    .line 513
    :cond_0
    return-void
.end method

.method private startTransfer(Ljava/lang/String;)Z
    .locals 19
    .param p1, "caliPathName"    # Ljava/lang/String;

    .prologue
    .line 351
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v0, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    move-object/from16 v16, v0

    .line 352
    .local v16, "para1":Lcn/com/magnity/magnitycx/sdk/BasePara1;
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v0, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara2:Lcn/com/magnity/magnitycx/sdk/BasePara2;

    move-object/from16 v17, v0

    .line 354
    .local v17, "para2":Lcn/com/magnity/magnitycx/sdk/BasePara2;
    move-object/from16 v0, v16

    iget v3, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    move-object/from16 v0, v16

    iget v4, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    move-object/from16 v0, v16

    iget v5, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->serialNumber:I

    move-object/from16 v0, v16

    iget v6, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    move-object/from16 v0, v17

    iget v7, v0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->shutterCloseSpeed:I

    move-object/from16 v0, v17

    iget v8, v0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->shutterOpenSpeed:I

    move-object/from16 v0, v17

    iget v9, v0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ffcTriggerFrame:I

    move-object/from16 v0, v17

    iget v10, v0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ffcTriggerTemperature:I

    const-string v2, "paletteIndex"

    const/4 v11, 0x2

    .line 357
    invoke-static {v2, v11}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v17

    iget v12, v0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->baseLineAcc:I

    move-object/from16 v2, p0

    move-object/from16 v13, p1

    .line 354
    invoke-static/range {v2 .. v13}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->startProcess(Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;IIIIIIIIIILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    const-string v2, "SDK start fail"

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 361
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    const/4 v2, 0x0

    .line 440
    .end local v15    # "f":Ljava/io/File;
    :goto_0
    return v2

    .line 363
    :catch_0
    move-exception v14

    .line 364
    .local v14, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 368
    .end local v14    # "ex":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v3, v3, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v4, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v4, v4, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v3, v4}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setEX(III)V

    .line 372
    new-instance v18, Lcn/com/magnity/magnitycx/sdk/ExtPara;

    invoke-direct/range {v18 .. v18}, Lcn/com/magnity/magnitycx/sdk/ExtPara;-><init>()V

    .line 374
    .local v18, "param":Lcn/com/magnity/magnitycx/sdk/ExtPara;
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 375
    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V

    .line 376
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I

    move-object/from16 v0, v18

    iput v2, v0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 377
    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V

    .line 378
    move-object/from16 v0, v17

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->enlargeRange:I

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setAutoEnlarge(I)V

    .line 379
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 381
    const-string v2, "****Start****"

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    .line 384
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->connected_:Z

    .line 386
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->start()V

    .line 389
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgProcess_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;

    .line 390
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isExitThreadImgProcess_:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgProcess_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->start()V

    .line 395
    const-wide/16 v2, 0x5

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    :goto_1
    const v2, 0x6bb6b673

    const/16 v3, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendEmptyCmd(II)I

    move-result v2

    if-gez v2, :cond_1

    .line 400
    const-string v2, "Fail to start remote transferring"

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 401
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->stopProcess()V

    .line 402
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 405
    :cond_1
    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 406
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    .line 407
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    .line 408
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    .line 409
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, -0x1

    iput v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    .line 410
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/16 v3, 0x64

    iput v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    .line 411
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 412
    const/16 v2, 0x64

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setEmissivity(II)V

    .line 413
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 429
    :cond_2
    :goto_2
    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 430
    :cond_3
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->fpsMode:I

    if-nez v2, :cond_8

    .line 431
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    const/16 v3, 0x9

    iput v3, v2, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interFrame:I

    .line 432
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    const/16 v3, 0xc

    iput v3, v2, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interLine:I

    .line 437
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setFrameRate()Z

    .line 440
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 414
    :cond_5
    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-eqz v2, :cond_6

    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 418
    :cond_6
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    .line 419
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowMovingCross:Z

    .line 420
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/16 v3, 0x64

    iput v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    .line 421
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 422
    const/16 v2, 0x64

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setEmissivity(II)V

    .line 423
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    goto :goto_2

    .line 424
    :cond_7
    move-object/from16 v0, v16

    iget v2, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 425
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowMovingCross:Z

    .line 426
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    goto :goto_2

    .line 434
    :cond_8
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    const/16 v3, 0x69

    iput v3, v2, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interFrame:I

    .line 435
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    const/16 v3, 0x69

    iput v3, v2, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interLine:I

    goto :goto_3

    .line 396
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private stopCaliRecvThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

    if-eqz v1, :cond_0

    .line 518
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isExitCaliRecvThread:Z

    .line 519
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;->join()V

    .line 520
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "ex":Ljava/lang/InterruptedException;
    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadCaliRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadCaliRecv;

    .line 524
    const-string v1, "Thread join interrupted."

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopTransfer()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 444
    const v1, 0x6bb6b674

    const/16 v2, 0x320

    invoke-virtual {p0, v1, v2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendEmptyCmd(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 445
    const-string v1, "Fail to stop remote transferring"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 448
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->connected_:Z

    .line 450
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;->join()V

    .line 452
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->isExitThreadImgProcess_:Z

    .line 460
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v2, v1, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 462
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 463
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :try_start_2
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgProcess_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;

    if-eqz v1, :cond_2

    .line 466
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgProcess_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;->join()V

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgProcess_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgProcess;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 474
    :cond_2
    :goto_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->stopProcess()V

    .line 475
    const-string v1, "****Stop****"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 476
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "ex":Ljava/lang/InterruptedException;
    iput-object v4, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->threadImgRecv_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$ThreadImgRecv;

    .line 456
    const-string v1, "Thread join interrupted1"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 463
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 469
    :catch_1
    move-exception v0

    .line 470
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    iput-object v4, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->condImgProcess_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    .line 471
    const-string v1, "Thread join interrupted2"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private waitForCmdAck(II)Z
    .locals 7
    .param p1, "cmd"    # I
    .param p2, "timeout"    # I

    .prologue
    const/4 v3, 0x0

    .line 645
    packed-switch p1, :pswitch_data_0

    .line 664
    :cond_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 655
    :pswitch_1
    const/16 v0, 0x40

    new-array v2, v0, [B

    .line 656
    .local v2, "buf":[B
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdIn_:Landroid/hardware/usb/UsbEndpoint;

    array-length v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v6

    .line 657
    .local v6, "ret":I
    if-gez v6, :cond_0

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to get command ack - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x6bb6b66d
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public connect()I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x320

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 279
    iget-boolean v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->connected_:Z

    if-eqz v5, :cond_1

    move v2, v3

    .line 347
    :cond_0
    :goto_0
    return v2

    .line 283
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/MsgBus;->getInstance()Lcn/com/magnity/magnitycx/sdk/MsgBus;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->mReceiver:Landroid/content/BroadcastReceiver;

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "set_baseparameter"

    aput-object v8, v7, v10

    const-string v8, "trigger_ffc"

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Lcn/com/magnity/magnitycx/sdk/MsgBus;->register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 285
    const/16 v5, 0x40

    new-array v0, v5, [B

    .line 288
    .local v0, "data":[B
    const v5, 0x6bb6b66b

    invoke-virtual {p0, v5, v9}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendEmptyCmd(II)I

    move-result v5

    if-gez v5, :cond_2

    .line 289
    const-string v3, "Fail to get parameter1"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    move v2, v4

    .line 290
    goto :goto_0

    .line 292
    :cond_2
    array-length v5, v0

    invoke-virtual {p0, v0, v10, v5, v9}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->recvCmd([BIII)I

    move-result v1

    .line 293
    .local v1, "len":I
    if-lez v1, :cond_3

    .line 294
    invoke-direct {p0, v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->parseCmd([BI)I

    move-result v5

    if-eq v5, v3, :cond_4

    move v2, v4

    .line 295
    goto :goto_0

    .line 298
    :cond_3
    const-string v3, "Fail to get parameter1 ack"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    move v2, v4

    .line 299
    goto :goto_0

    .line 302
    :cond_4
    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-eqz v5, :cond_5

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-eq v5, v3, :cond_5

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-eq v5, v11, :cond_5

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown device type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v5, v5, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    move v2, v4

    .line 309
    goto/16 :goto_0

    .line 312
    :cond_5
    const v5, 0x6bb6b66c

    invoke-virtual {p0, v5, v9}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendEmptyCmd(II)I

    move-result v5

    if-gez v5, :cond_6

    .line 313
    const-string v3, "Fail to get parameter2"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    move v2, v4

    .line 314
    goto/16 :goto_0

    .line 316
    :cond_6
    array-length v5, v0

    invoke-virtual {p0, v0, v10, v5, v9}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->recvCmd([BIII)I

    move-result v1

    .line 317
    if-lez v1, :cond_7

    .line 318
    invoke-direct {p0, v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->parseCmd([BI)I

    move-result v5

    if-eq v5, v3, :cond_8

    move v2, v4

    .line 319
    goto/16 :goto_0

    .line 322
    :cond_7
    const-string v3, "Fail to get parameter2 ack"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    move v2, v4

    .line 323
    goto/16 :goto_0

    .line 328
    :cond_8
    const v5, 0x6bb6b66f

    invoke-virtual {p0, v5, v9}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendEmptyCmd(II)I

    move-result v5

    if-gez v5, :cond_9

    .line 329
    const-string v3, "Fail to get remote file info"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    move v2, v4

    .line 330
    goto/16 :goto_0

    .line 332
    :cond_9
    array-length v5, v0

    invoke-virtual {p0, v0, v10, v5, v9}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->recvCmd([BIII)I

    move-result v1

    .line 333
    if-lez v1, :cond_a

    .line 334
    invoke-direct {p0, v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->parseCmd([BI)I

    move-result v2

    .line 335
    .local v2, "ret":I
    if-ne v2, v3, :cond_0

    .line 343
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->caliPathName_:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->startTransfer(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    move v2, v4

    .line 344
    goto/16 :goto_0

    .line 339
    .end local v2    # "ret":I
    :cond_a
    const-string v3, "Fail to get remote file info"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    move v2, v4

    .line 340
    goto/16 :goto_0

    .restart local v2    # "ret":I
    :cond_b
    move v2, v3

    .line 347
    goto/16 :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 479
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/MsgBus;->getInstance()Lcn/com/magnity/magnitycx/sdk/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/MsgBus;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 481
    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setLaserState(I)Z

    .line 482
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput-boolean v3, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isLaserOn:Z

    .line 484
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->stopTransfer()V

    .line 486
    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->conn_:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    .line 488
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbInterface_:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 493
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 494
    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    .line 497
    :cond_1
    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpImgIn_:Landroid/hardware/usb/UsbEndpoint;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliOut_:Landroid/hardware/usb/UsbEndpoint;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliIn_:Landroid/hardware/usb/UsbEndpoint;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdOut_:Landroid/hardware/usb/UsbEndpoint;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdIn_:Landroid/hardware/usb/UsbEndpoint;

    .line 499
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->stopCaliRecvThread()V

    .line 500
    return-void
.end method

.method public getCaliInAddress()I
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliIn_:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    return v0
.end method

.method public getCmdInAddress()I
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdIn_:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    return v0
.end method

.method public getImgInAddress()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpImgIn_:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    return v0
.end method

.method public recvCali([BIII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 715
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliIn_:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized recvCmd([BIII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdIn_:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recvImg([BIII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 718
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpImgIn_:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    return v0
.end method

.method public sendCali([BIII)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # I

    .prologue
    const/4 v7, -0x1

    .line 693
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliOut_:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v6

    .line 694
    .local v6, "ret":I
    if-gez v6, :cond_1

    move v6, v7

    .line 700
    .end local v6    # "ret":I
    :cond_0
    :goto_0
    return v6

    .line 697
    .restart local v6    # "ret":I
    :cond_1
    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->byteArrayToInt([B)I

    move-result v0

    invoke-direct {p0, v0, p4}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->waitForCmdAck(II)Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v7

    .line 700
    goto :goto_0
.end method

.method public declared-synchronized sendCmd([BIII)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # I

    .prologue
    const/4 v7, -0x1

    .line 668
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdOut_:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 669
    .local v6, "ret":I
    if-gez v6, :cond_1

    move v6, v7

    .line 675
    .end local v6    # "ret":I
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 672
    .restart local v6    # "ret":I
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->byteArrayToInt([B)I

    move-result v0

    invoke-direct {p0, v0, p4}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->waitForCmdAck(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v6, v7

    .line 675
    goto :goto_0

    .line 668
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendEmptyCali(II)I
    .locals 8
    .param p1, "data"    # I
    .param p2, "timeout"    # I

    .prologue
    const/4 v7, -0x1

    .line 704
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCaliOut_:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->intToByteArray(I)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 705
    .local v6, "ret":I
    if-gez v6, :cond_1

    move v6, v7

    .line 711
    .end local v6    # "ret":I
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 708
    .restart local v6    # "ret":I
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->waitForCmdAck(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v6, v7

    .line 711
    goto :goto_0

    .line 704
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendEmptyCmd(II)I
    .locals 8
    .param p1, "data"    # I
    .param p2, "timeout"    # I

    .prologue
    const/4 v7, -0x1

    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbConn_:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->usbEpCmdOut_:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {p1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->intToByteArray(I)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 680
    .local v6, "ret":I
    if-gez v6, :cond_1

    move v6, v7

    .line 686
    .end local v6    # "ret":I
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 683
    .restart local v6    # "ret":I
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->waitForCmdAck(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v6, v7

    .line 686
    goto :goto_0

    .line 679
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallbackReceiver(Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;)V
    .locals 0
    .param p1, "cb"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    .prologue
    .line 223
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->progressCallback_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    .line 224
    return-void
.end method

.method public setImageViewer(Lcn/com/magnity/magnitycx/ImageViewer;)V
    .locals 0
    .param p1, "imageViewer"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 274
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    .line 275
    return-void
.end method

.method public setLaserState(I)Z
    .locals 6
    .param p1, "on"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 546
    const/16 v4, 0x8

    new-array v0, v4, [B

    .line 547
    .local v0, "buf":[B
    const v1, 0x6bb6b676

    .line 549
    .local v1, "cmd":I
    int-to-byte v4, v1

    aput-byte v4, v0, v3

    .line 550
    const v4, 0x6bb6b6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 551
    const/4 v4, 0x2

    const/16 v5, 0x6bb6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 552
    const/4 v4, 0x3

    const/16 v5, 0x6b

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 554
    const/4 v4, 0x4

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    .line 555
    const/4 v4, 0x5

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 556
    const/4 v4, 0x6

    shr-int/lit8 v5, p1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 557
    const/4 v4, 0x7

    shr-int/lit8 v5, p1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 559
    array-length v4, v0

    const/16 v5, 0x320

    invoke-virtual {p0, v0, v3, v4, v5}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->sendCmd([BIII)I

    move-result v4

    if-ltz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public setShutterState(I)V
    .locals 0
    .param p1, "on"    # I

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setShutterState_(I)V

    .line 505
    return-void
.end method
