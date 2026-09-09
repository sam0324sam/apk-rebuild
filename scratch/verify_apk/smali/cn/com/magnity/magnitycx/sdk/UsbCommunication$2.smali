.class Lcn/com/magnity/magnitycx/sdk/UsbCommunication$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 175
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$2;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_1
    return-void

    .line 178
    :sswitch_0
    const-string v2, "set_baseparameter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "trigger_ffc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$2;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$300(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Z

    .line 181
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    goto :goto_1

    .line 184
    :pswitch_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    goto :goto_1

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bbdfd25 -> :sswitch_0
        -0x28918b64 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
