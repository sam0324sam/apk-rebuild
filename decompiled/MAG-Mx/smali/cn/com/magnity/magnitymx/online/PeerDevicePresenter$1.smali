.class Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "PeerDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v6, v8

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 58
    :sswitch_0
    const-string v10, "UPDATE_DEVICE_LIST"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string v10, "ADD_DEVICE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v9

    goto :goto_0

    :sswitch_2
    const-string v10, "EDIT_DEVICE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v10, "DELETE_DEVICE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    const-string v10, "UPDATE_ENUM_DEVICE_INFO"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    .line 61
    :pswitch_0
    const-string v6, "PARAMETER1"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 62
    .local v4, "param":I
    if-ne v4, v9, :cond_1

    .line 63
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$002(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;Lcn/com/magnity/magnitymx/data/DeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 64
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6, v8}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$102(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;I)I

    .line 65
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6, v8}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$202(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;I)I

    .line 66
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$300(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$100(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)I

    move-result v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$200(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;->refreshData(II)V

    goto :goto_1

    .line 71
    .end local v4    # "param":I
    :pswitch_1
    const-string v6, "PARAMETER1"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 72
    .local v1, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    if-eqz v1, :cond_1

    .line 75
    new-instance v3, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    invoke-direct {v3, v1}, Lcn/com/magnity/magnitymx/device/DeviceGroup;-><init>(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 77
    .local v3, "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$300(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    move-result-object v6

    invoke-interface {v6, v3}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;->addData(Lcn/com/magnity/magnitymx/device/DeviceGroup;)V

    goto :goto_1

    .line 81
    .end local v1    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v3    # "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    :pswitch_2
    const-string v6, "PARAMETER1"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 82
    .restart local v1    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    if-eqz v1, :cond_1

    .line 85
    const-string v6, "PARAMETER2"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 86
    .local v5, "pos":I
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$400(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_1

    if-ltz v5, :cond_1

    .line 89
    new-instance v3, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    invoke-direct {v3, v1}, Lcn/com/magnity/magnitymx/device/DeviceGroup;-><init>(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 90
    .restart local v3    # "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$300(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;->updateData(ILcn/com/magnity/magnitymx/device/DeviceGroup;)V

    goto/16 :goto_1

    .line 94
    .end local v1    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v3    # "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    .end local v5    # "pos":I
    :pswitch_3
    const-string v6, "PARAMETER1"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 95
    .restart local v5    # "pos":I
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$400(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_1

    if-ltz v5, :cond_1

    .line 98
    iget-object v6, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->access$300(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    move-result-object v6

    invoke-interface {v6, v5}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;->removeData(I)V

    goto/16 :goto_1

    .line 102
    .end local v5    # "pos":I
    :pswitch_4
    const/4 v0, 0x0

    .line 104
    .local v0, "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :try_start_0
    const-string v6, "PARAMETER1"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    goto/16 :goto_1

    .line 105
    .end local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "Broadcast for \'update enum device info\' exception"

    invoke-static {v6}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 58
    :sswitch_data_0
    .sparse-switch
        -0x63e6058f -> :sswitch_0
        0x1a112fd4 -> :sswitch_1
        0x257dbb6f -> :sswitch_4
        0x38f36f6a -> :sswitch_3
        0x7bfaaa2b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
