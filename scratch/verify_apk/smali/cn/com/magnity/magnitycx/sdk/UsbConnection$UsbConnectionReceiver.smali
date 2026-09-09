.class final Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/sdk/UsbConnection$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;-><init>(Lcn/com/magnity/magnitycx/sdk/UsbConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_1
    return-void

    .line 192
    :sswitch_0
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 194
    :pswitch_0
    const-string v0, "Broadcast for usb attached received"

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->access$300(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Z)V

    .line 196
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->init()Z

    goto :goto_1

    .line 199
    :pswitch_1
    const-string v0, "Broadcast for usb detached received"

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbConnection$UsbConnectionReceiver;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    invoke-static {v0, v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->access$300(Lcn/com/magnity/magnitycx/sdk/UsbConnection;Z)V

    goto :goto_1

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_0
        -0x5fdc9a67 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
