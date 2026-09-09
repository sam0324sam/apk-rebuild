.class public Lcn/com/magnity/magnitycx/sdk/UsbConnection;
.super Lcn/com/magnity/magnitycx/sdk/Observable;
.source "UsbConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;,
        Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;,
        Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/com/magnity/magnitycx/sdk/Observable",
        "<",
        "Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "cn.com.magnity.magnitycx.USB_PERMISSION"

.field private static instance_:Lcn/com/magnity/magnitycx/sdk/UsbConnection;


# instance fields
.field private context_:Landroid/content/Context;

.field private fragmentMainCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

.field private phoneReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;

.field private usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

.field private usbConnectionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

.field private usbManager_:Landroid/hardware/usb/UsbManager;

.field private usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->instance_:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/Observable;-><init>()V

    .line 32
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbManager_:Landroid/hardware/usb/UsbManager;

    .line 34
    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->disconnect(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .param p1, "x1"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->connect(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    return-object v0
.end method

.method static synthetic access$502(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;)Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .param p1, "x1"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    .prologue
    .line 15
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    return-object p1
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    return-object v0
.end method

.method private connect(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    if-eqz v4, :cond_0

    .line 109
    :goto_0
    return v2

    .line 84
    :cond_0
    const-string v4, "Try to connect to device"

    invoke-static {v4}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    .line 89
    :try_start_0
    new-instance v4, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbManager_:Landroid/hardware/usb/UsbManager;

    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->fragmentMainCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    invoke-direct {v4, p0, v5, p1, v6}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;)V

    iput-object v4, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .line 90
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->connect()I

    move-result v1

    .line 91
    .local v1, "ret":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 92
    const-string v2, "Fail to connect to device, do clean work now"

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->disconnect()V

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    if-nez v1, :cond_3

    move v2, v3

    .line 97
    goto :goto_0

    .line 99
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when connecting to device ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    .line 101
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->disconnect()V

    .line 104
    :cond_2
    iput-object v7, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    move v2, v3

    .line 105
    goto :goto_0

    .line 108
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "ret":I
    :cond_3
    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->notifyObervers(I)V

    goto :goto_0
.end method

.method private disconnect(Z)V
    .locals 1
    .param p1, "notifyUi"    # Z

    .prologue
    .line 135
    const-string v0, "Try to disconnect to device"

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->disconnect()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->notifyObervers(I)V

    .line 144
    :cond_1
    return-void
.end method

.method private findDevice(II)Landroid/hardware/usb/UsbDevice;
    .locals 3
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbManager_:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 148
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 152
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->instance_:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    return-object v0
.end method

.method private registerConnectionReceiver()V
    .locals 3

    .prologue
    .line 156
    new-instance v1, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbConnectionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, "localFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbConnectionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method private registerPhoneReceiver()V
    .locals 3

    .prologue
    .line 164
    new-instance v1, Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->phoneReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, "localFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->phoneReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method private requestDevicePermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbManager_:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const-string v2, "Already has permission"

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 175
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->connect(Landroid/hardware/usb/UsbDevice;)Z

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    if-nez v2, :cond_1

    .line 180
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;)V

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "cn.com.magnity.magnitycx.USB_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "localFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    .end local v0    # "localFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "cn.com.magnity.magnitycx.USB_PERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 185
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbManager_:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 186
    const-string v2, "Request permission"

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public deinit(Z)V
    .locals 3
    .param p1, "notifyUi"    # Z

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbConnectionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbConnectionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbConnectionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->context_:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbPermissionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    .line 71
    :cond_1
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->disconnect(Z)V

    .line 72
    return-void
.end method

.method public init()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 44
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->phoneReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$PhoneReceiver;

    if-nez v2, :cond_0

    .line 45
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->registerPhoneReceiver()V

    .line 48
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbConnectionReceiver_:Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;

    if-nez v2, :cond_1

    .line 49
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->registerConnectionReceiver()V

    .line 52
    :cond_1
    const v2, 0x833c

    invoke-direct {p0, v2, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->findDevice(II)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 53
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_2

    .line 54
    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;)V

    .line 57
    :cond_2
    if-eqz v0, :cond_3

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyObervers(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, -0x1

    .line 117
    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->observers_:Ljava/util/ArrayList;

    monitor-enter v2

    .line 118
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-eq v0, v4, :cond_2

    .line 120
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-interface {v1, v3}, Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;->onDeviceConnected(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V

    .line 119
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 123
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-eq v0, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 126
    .end local v0    # "i":I
    :cond_1
    if-nez p1, :cond_2

    .line 127
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-eq v0, v4, :cond_2

    .line 128
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->observers_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;

    invoke-interface {v1}, Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;->onDeviceDisconnected()V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 131
    .end local v0    # "i":I
    :cond_2
    monitor-exit v2

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallbackReceiver(Lcn/com/magnity/magnitycx/FragmentMainCenter;)V
    .locals 1
    .param p1, "fragment"    # Lcn/com/magnity/magnitycx/FragmentMainCenter;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->fragmentMainCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    .line 38
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setCallbackReceiver(Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;)V

    .line 41
    :cond_0
    return-void
.end method
