.class final Lcn/com/magnity/sdk/MagUsb$UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MagUsb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/sdk/MagUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/sdk/MagUsb;


# direct methods
.method private constructor <init>(Lcn/com/magnity/sdk/MagUsb;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/sdk/MagUsb;Lcn/com/magnity/sdk/MagUsb$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/sdk/MagUsb;
    .param p2, "x1"    # Lcn/com/magnity/sdk/MagUsb$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;-><init>(Lcn/com/magnity/sdk/MagUsb;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 116
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 161
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 116
    :sswitch_0
    const-string v5, "cn.com.magnity.sdk.USB_PERMISSION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 119
    :pswitch_1
    const-string v2, "permission"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    iget-object v6, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    .line 122
    invoke-static {v6}, Lcn/com/magnity/sdk/MagUsb;->access$200(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    move-result-object v6

    .line 121
    invoke-interface {v2, v3, v4, v5, v6}, Lcn/com/magnity/sdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)V

    goto :goto_1

    .line 156
    :catch_0
    move-exception v2

    goto :goto_1

    .line 126
    :cond_2
    const-string v2, "device"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 127
    .local v0, "dev":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_3

    .line 128
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    iget-object v6, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    .line 130
    invoke-static {v6}, Lcn/com/magnity/sdk/MagUsb;->access$200(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    move-result-object v6

    .line 129
    invoke-interface {v2, v3, v4, v5, v6}, Lcn/com/magnity/sdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)V

    goto :goto_1

    .line 134
    :cond_3
    const-string v2, "usb"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 135
    .local v1, "usbMgr":Landroid/hardware/usb/UsbManager;
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/magnity/sdk/MagUsb;->access$302(Lcn/com/magnity/sdk/MagUsb;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 136
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$300(Lcn/com/magnity/sdk/MagUsb;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 138
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    iget-object v5, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    .line 139
    invoke-static {v5}, Lcn/com/magnity/sdk/MagUsb;->access$300(Lcn/com/magnity/sdk/MagUsb;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v5

    iget-object v6, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v6}, Lcn/com/magnity/sdk/MagUsb;->access$200(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    move-result-object v6

    .line 138
    invoke-interface {v2, v3, v4, v5, v6}, Lcn/com/magnity/sdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)V

    goto/16 :goto_1

    .line 141
    :cond_4
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    iget-object v6, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    .line 142
    invoke-static {v6}, Lcn/com/magnity/sdk/MagUsb;->access$200(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    move-result-object v6

    .line 141
    invoke-interface {v2, v3, v4, v5, v6}, Lcn/com/magnity/sdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)V

    goto/16 :goto_1

    .line 150
    .end local v0    # "dev":Landroid/hardware/usb/UsbDevice;
    .end local v1    # "usbMgr":Landroid/hardware/usb/UsbManager;
    :pswitch_2
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    invoke-static {v2}, Lcn/com/magnity/sdk/MagUsb;->access$100(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagUsb$IUSBCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x4

    const/4 v5, -0x1

    iget-object v6, p0, Lcn/com/magnity/sdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/sdk/MagUsb;

    .line 152
    invoke-static {v6}, Lcn/com/magnity/sdk/MagUsb;->access$200(Lcn/com/magnity/sdk/MagUsb;)Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    move-result-object v6

    .line 151
    invoke-interface {v2, v3, v4, v5, v6}, Lcn/com/magnity/sdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_1
        -0x5fdc9a67 -> :sswitch_2
        0x362526a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
