.class final Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MagUsb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/coresdk/MagUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/coresdk/MagUsb;


# direct methods
.method private constructor <init>(Lcn/com/magnity/coresdk/MagUsb;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/coresdk/MagUsb;Lcn/com/magnity/coresdk/MagUsb$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/coresdk/MagUsb;
    .param p2, "x1"    # Lcn/com/magnity/coresdk/MagUsb$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;-><init>(Lcn/com/magnity/coresdk/MagUsb;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "dev":Landroid/hardware/usb/UsbDevice;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 167
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 118
    :sswitch_0
    const-string v7, "cn.com.magnity.sdk.USB_PERMISSION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    .line 121
    :pswitch_1
    const-string v3, "permission"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 122
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x2

    const/4 v6, -0x1

    iget-object v7, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    .line 124
    invoke-static {v7}, Lcn/com/magnity/coresdk/MagUsb;->access$200(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    move-result-object v7

    .line 123
    invoke-interface {v3, v4, v5, v6, v7}, Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)V

    goto :goto_1

    .line 162
    :catch_0
    move-exception v3

    goto :goto_1

    .line 128
    :cond_2
    const-string v3, "device"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    move-object v1, v0

    .line 129
    if-nez v1, :cond_3

    .line 130
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 131
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x2

    const/4 v6, -0x1

    iget-object v7, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    .line 132
    invoke-static {v7}, Lcn/com/magnity/coresdk/MagUsb;->access$200(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    move-result-object v7

    .line 131
    invoke-interface {v3, v4, v5, v6, v7}, Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)V

    goto :goto_1

    .line 136
    :cond_3
    const-string v3, "usb"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 137
    .local v2, "usbMgr":Landroid/hardware/usb/UsbManager;
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/magnity/coresdk/MagUsb;->access$302(Lcn/com/magnity/coresdk/MagUsb;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 138
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$300(Lcn/com/magnity/coresdk/MagUsb;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 140
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v6, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    .line 141
    invoke-static {v6}, Lcn/com/magnity/coresdk/MagUsb;->access$300(Lcn/com/magnity/coresdk/MagUsb;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v6

    iget-object v7, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v7}, Lcn/com/magnity/coresdk/MagUsb;->access$200(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    move-result-object v7

    .line 140
    invoke-interface {v3, v4, v5, v6, v7}, Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)V

    goto/16 :goto_1

    .line 143
    :cond_4
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x2

    const/4 v6, -0x1

    iget-object v7, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    .line 144
    invoke-static {v7}, Lcn/com/magnity/coresdk/MagUsb;->access$200(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    move-result-object v7

    .line 143
    invoke-interface {v3, v4, v5, v6, v7}, Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)V

    goto/16 :goto_1

    .line 152
    .end local v2    # "usbMgr":Landroid/hardware/usb/UsbManager;
    :pswitch_2
    const-string v3, "device"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    move-object v1, v0

    .line 153
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    const v4, 0x833c

    if-ne v3, v4, :cond_1

    .line 154
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    invoke-static {v3}, Lcn/com/magnity/coresdk/MagUsb;->access$100(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x4

    const/4 v6, -0x1

    iget-object v7, p0, Lcn/com/magnity/coresdk/MagUsb$UsbReceiver;->this$0:Lcn/com/magnity/coresdk/MagUsb;

    .line 156
    invoke-static {v7}, Lcn/com/magnity/coresdk/MagUsb;->access$200(Lcn/com/magnity/coresdk/MagUsb;)Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    move-result-object v7

    .line 155
    invoke-interface {v3, v4, v5, v6, v7}, Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;->usbResult(Landroid/content/Context;IILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 118
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
