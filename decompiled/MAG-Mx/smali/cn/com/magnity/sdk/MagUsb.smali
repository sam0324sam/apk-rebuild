.class Lcn/com/magnity/sdk/MagUsb;
.super Ljava/lang/Object;
.source "MagUsb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/sdk/MagUsb$UsbReceiver;,
        Lcn/com/magnity/sdk/MagUsb$IUSBCallback;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "cn.com.magnity.sdk.USB_PERMISSION"

.field static final USB_DETACHED:I = -0x4

.field static final USB_OPEN_FAIL:I = -0x2

.field static final USB_OPEN_SUCC:I = -0x1

.field static final USB_PENDING:I = -0x3


# instance fields
.field private mConnCallback:Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mUsbCallback:Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

.field private mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

.field private mUsbReceiver:Lcn/com/magnity/sdk/MagUsb$UsbReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/sdk/MagUsb;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbCallback:Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/sdk/MagUsb;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/com/magnity/sdk/MagUsb;->mConnCallback:Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/sdk/MagUsb;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/sdk/MagUsb;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcn/com/magnity/sdk/MagUsb;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/sdk/MagUsb;
    .param p1, "x1"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 19
    iput-object p1, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    return-object p1
.end method

.method private findDevice(Landroid/hardware/usb/UsbManager;I)Landroid/hardware/usb/UsbDevice;
    .locals 5
    .param p1, "usbMgr"    # Landroid/hardware/usb/UsbManager;
    .param p2, "id"    # I

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 103
    .local v1, "devices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 105
    .local v0, "dev":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 109
    .end local v0    # "dev":Landroid/hardware/usb/UsbDevice;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method exit(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 52
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "appCtx":Landroid/content/Context;
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbReceiver:Lcn/com/magnity/sdk/MagUsb$UsbReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    iput-object v2, p0, Lcn/com/magnity/sdk/MagUsb;->mIntentFilter:Landroid/content/IntentFilter;

    .line 58
    iput-object v2, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbReceiver:Lcn/com/magnity/sdk/MagUsb$UsbReceiver;

    .line 60
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 62
    iput-object v2, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    .line 65
    :cond_1
    iput-object v2, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbCallback:Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    .line 66
    iput-object v2, p0, Lcn/com/magnity/sdk/MagUsb;->mConnCallback:Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    goto :goto_0
.end method

.method init(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "appCtx":Landroid/content/Context;
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;-><init>(Lcn/com/magnity/sdk/MagUsb;Lcn/com/magnity/sdk/MagUsb$1;)V

    iput-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbReceiver:Lcn/com/magnity/sdk/MagUsb$UsbReceiver;

    .line 43
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mIntentFilter:Landroid/content/IntentFilter;

    .line 44
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "cn.com.magnity.sdk.USB_PERMISSION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbReceiver:Lcn/com/magnity/sdk/MagUsb$UsbReceiver;

    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method requestPermission(Landroid/content/Context;ILcn/com/magnity/sdk/MagUsb$IUSBCallback;Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)I
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "cb"    # Lcn/com/magnity/sdk/MagUsb$IUSBCallback;
    .param p4, "connCb"    # Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x2

    .line 70
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v4

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "appCtx":Landroid/content/Context;
    const-string v5, "usb"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 75
    .local v3, "usbMgr":Landroid/hardware/usb/UsbManager;
    invoke-direct {p0, v3, p2}, Lcn/com/magnity/sdk/MagUsb;->findDevice(Landroid/hardware/usb/UsbManager;I)Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    .line 76
    .local v1, "dev":Landroid/hardware/usb/UsbDevice;
    if-eqz v1, :cond_0

    .line 80
    iput-object p3, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbCallback:Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    .line 81
    iput-object p4, p0, Lcn/com/magnity/sdk/MagUsb;->mConnCallback:Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    .line 83
    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    iput-object v5, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    .line 85
    iget-object v5, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v5, :cond_0

    .line 86
    iget-object v4, p0, Lcn/com/magnity/sdk/MagUsb;->mUsbHandle:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v4

    goto :goto_0

    .line 90
    :cond_2
    if-eqz p3, :cond_0

    .line 93
    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.com.magnity.sdk.USB_PERMISSION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 94
    .local v2, "peddingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v1, v2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 95
    const/4 v4, -0x3

    goto :goto_0
.end method
