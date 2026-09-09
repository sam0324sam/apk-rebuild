.class final Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbPermissionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 225
    :goto_1
    return-void

    .line 209
    :pswitch_0
    const-string v4, "cn.com.magnity.magnitycx.USB_PERMISSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 211
    :pswitch_1
    const-string v1, "Broadcast for usb permission received"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 212
    const-string v1, "permission"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    const-string v1, "Permission rejected by user"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_1
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 217
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_2

    .line 218
    const-string v1, "Failed to get device"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-static {v1, v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->access$400(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Landroid/hardware/usb/UsbDevice;)Z

    .line 222
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->access$600(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->access$500(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->access$502(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;)Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbPermissionReceiver;

    goto :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x42066fdb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
