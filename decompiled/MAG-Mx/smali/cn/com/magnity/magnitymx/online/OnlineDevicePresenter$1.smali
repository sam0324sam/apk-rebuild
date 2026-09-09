.class Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "OnlineDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const/4 v5, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 81
    :cond_1
    :goto_1
    return-void

    .line 48
    :sswitch_0
    const-string v8, "ENUM_ONLINE_DEVICE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v8, "UPDATE_DEVICE_LIST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string v8, "UPDATE_ENUM_DEVICE_INFO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    .line 50
    :pswitch_0
    iget-object v5, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->refresh()V

    goto :goto_1

    .line 54
    :pswitch_1
    const-string v5, "PARAMETER1"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 55
    .local v4, "param":I
    if-nez v4, :cond_1

    .line 56
    iget-object v5, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->access$002(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;Lcn/com/magnity/magnitymx/data/DeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 57
    iget-object v5, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->access$100(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)V

    goto :goto_1

    .line 62
    .end local v4    # "param":I
    :pswitch_2
    const/4 v0, 0x0

    .line 64
    .local v0, "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :try_start_0
    const-string v5, "PARAMETER1"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .restart local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->access$200(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 70
    iget-object v5, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->access$200(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 71
    .local v3, "info":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "enumName":Ljava/lang/String;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCameraName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setCameraName(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    .end local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v1    # "enumName":Ljava/lang/String;
    .end local v3    # "info":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "Broadcast for \'update enum device info\' exception"

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63e6058f -> :sswitch_1
        0x257dbb6f -> :sswitch_2
        0x622dbb04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
