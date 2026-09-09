.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DialogFragmentDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 47
    :cond_1
    :goto_1
    return-void

    .line 37
    :pswitch_0
    const-string v2, "SEND_DEVICE_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    const-string v0, "PARAMETER1"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-static {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->access$002(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;Lcn/com/magnity/magnitymx/data/DeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 40
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch -0x7828dd40
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
