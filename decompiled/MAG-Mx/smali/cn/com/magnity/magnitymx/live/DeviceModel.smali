.class public Lcn/com/magnity/magnitymx/live/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;
.implements Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;
    }
.end annotation


# instance fields
.field private mDelayedStartPlayRunnable:Ljava/lang/Runnable;

.field private mDevice:Lcn/com/magnity/sdk/MagDevice;

.field private mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

.field private mHandler:Landroid/os/Handler;

.field private mIsLinkging:Z

.field private mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

.field private mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

.field private mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    .line 54
    new-instance v0, Lcn/com/magnity/sdk/MagDevice;

    invoke-direct {v0}, Lcn/com/magnity/sdk/MagDevice;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcn/com/magnity/magnitymx/live/DeviceModel$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/live/DeviceModel$1;-><init>(Lcn/com/magnity/magnitymx/live/DeviceModel;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDelayedStartPlayRunnable:Ljava/lang/Runnable;

    .line 64
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 65
    return-void
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/live/DeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    return-object v0
.end method

.method private afterLinkSucc()V
    .locals 6

    .prologue
    .line 583
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCommunicationType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 584
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getRotation(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2}, Lcn/com/magnity/magnitymx/live/DeviceModel;->autoAdjustRotation(I)V

    .line 587
    :cond_0
    new-instance v1, Lcn/com/magnity/sdk/types/RemoteInfo;

    invoke-direct {v1}, Lcn/com/magnity/sdk/types/RemoteInfo;-><init>()V

    .line 588
    .local v1, "remoteInfo":Lcn/com/magnity/sdk/types/RemoteInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v2, v1}, Lcn/com/magnity/sdk/MagDevice;->getRemoteInfo(Lcn/com/magnity/sdk/types/RemoteInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isOnlineDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 590
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget v3, v1, Lcn/com/magnity/sdk/types/RemoteInfo;->dwSN:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setSerialNo(I)V

    .line 594
    :goto_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget-object v3, v1, Lcn/com/magnity/sdk/types/RemoteInfo;->charName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setCameraName(Ljava/lang/String;)V

    .line 595
    new-instance v0, Lcn/com/magnity/sdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/CameraInfo;-><init>()V

    .line 596
    .local v0, "cameraInfo":Lcn/com/magnity/sdk/types/CameraInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/sdk/MagDevice;->getCameraInfo(Lcn/com/magnity/sdk/types/CameraInfo;)Z

    .line 597
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget v3, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intFPAWidth:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setWidthPixels(I)V

    .line 598
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget v3, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intFPAHeight:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setHeightPixels(I)V

    .line 600
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v2

    const-string v3, "UPDATE_ENUM_DEVICE_INFO"

    const-string v4, "PARAMETER1"

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 603
    .end local v0    # "cameraInfo":Lcn/com/magnity/sdk/types/CameraInfo;
    :cond_1
    return-void

    .line 592
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget v3, v1, Lcn/com/magnity/sdk/types/RemoteInfo;->dwStaticIp:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setDeviceIp(I)V

    goto :goto_0
.end method

.method private autoAdjustRotation(I)V
    .locals 5
    .param p1, "degree"    # I

    .prologue
    const/4 v4, 0x0

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "b":Z
    const-string v2, "rotate"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 673
    .local v1, "rotate":I
    packed-switch p1, :pswitch_data_0

    .line 688
    :goto_0
    if-nez v0, :cond_0

    .line 689
    const-string v2, "Fail to do image transforming"

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 691
    :cond_0
    return-void

    .line 675
    :pswitch_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v4, v3}, Lcn/com/magnity/sdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    .line 676
    goto :goto_0

    .line 678
    :pswitch_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    add-int/lit8 v3, v1, 0x0

    rem-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v4, v3}, Lcn/com/magnity/sdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    .line 679
    goto :goto_0

    .line 681
    :pswitch_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v4, v3}, Lcn/com/magnity/sdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    .line 682
    goto :goto_0

    .line 684
    :pswitch_3
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    add-int/lit8 v3, v1, 0x2

    rem-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v4, v3}, Lcn/com/magnity/sdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dislinkOnly()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    .line 609
    :cond_0
    return-void
.end method

.method private linkOnly()Z
    .locals 14

    .prologue
    .line 516
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isOnlineDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 521
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCommunicationType()I

    move-result v10

    .line 522
    .local v10, "commType":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mIsLinkging:Z

    .line 523
    if-nez v10, :cond_3

    .line 524
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->ismIsCloud()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudIp()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudCmdPort()I

    move-result v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 526
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudImgPort()I

    move-result v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudUser()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 527
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudPwd()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 528
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    .line 525
    invoke-virtual/range {v0 .. v9}, Lcn/com/magnity/sdk/MagDevice;->connect(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v13

    .line 543
    .local v13, "ret":I
    :goto_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_9

    .line 544
    const/4 v0, -0x1

    if-ne v13, v0, :cond_1

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mIsLinkging:Z

    .line 546
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Fail to link %s(ip: %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 547
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 546
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 548
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f0e0079

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 530
    .end local v13    # "ret":I
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamCmdPort()I

    move-result v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 531
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamImgPort()I

    move-result v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudUser()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 532
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudPwd()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 533
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDevicePwd()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 534
    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v8

    const/16 v9, 0x1f4

    .line 530
    invoke-virtual/range {v0 .. v9}, Lcn/com/magnity/sdk/MagDevice;->connect(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v13

    .restart local v13    # "ret":I
    goto :goto_1

    .line 536
    .end local v13    # "ret":I
    :cond_3
    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 537
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcn/com/magnity/sdk/MagDevice;->connectUsb(Landroid/content/Context;ILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)I

    move-result v13

    .restart local v13    # "ret":I
    goto/16 :goto_1

    .line 539
    .end local v13    # "ret":I
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mIsLinkging:Z

    .line 540
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 553
    .end local v10    # "commType":I
    :cond_5
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->ismIsCloud()Z

    move-result v11

    .line 555
    .local v11, "isCloud":Z
    if-eqz v11, :cond_7

    .line 556
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudIp()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudCmdPort()I

    move-result v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 557
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamImgPort()I

    move-result v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudUser()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 558
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudPwd()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 559
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDevicePwd()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v8

    const/16 v9, 0xbb8

    .line 556
    invoke-virtual/range {v0 .. v9}, Lcn/com/magnity/sdk/MagDevice;->connect(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v12, 0x1

    .line 568
    .local v12, "isConnectFail":Z
    :goto_2
    if-eqz v12, :cond_9

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mIsLinkging:Z

    .line 570
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Fail to link %s(sn: %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 571
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 570
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 572
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f0e0079

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 556
    .end local v12    # "isConnectFail":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 562
    :cond_7
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudCmdPort()I

    move-result v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 563
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamImgPort()I

    move-result v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudUser()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 564
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudPwd()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 565
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDevicePwd()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v8

    const/16 v9, 0xbb8

    .line 562
    invoke-virtual/range {v0 .. v9}, Lcn/com/magnity/sdk/MagDevice;->connect(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v12, 0x1

    .restart local v12    # "isConnectFail":Z
    :goto_3
    goto :goto_2

    .end local v12    # "isConnectFail":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 577
    .end local v11    # "isCloud":Z
    :cond_9
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->afterLinkSucc()V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mIsLinkging:Z

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private playOnly()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 612
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3}, Lcn/com/magnity/sdk/MagDevice;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 666
    :goto_0
    return v3

    .line 616
    :cond_0
    new-instance v3, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;-><init>(Lcn/com/magnity/magnitymx/live/DeviceModel;)V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .line 617
    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getColorbarWidth()I

    move-result v8

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getColorbarHeight()I

    move-result v9

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 618
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->ismIsCloud()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    .line 617
    :goto_1
    invoke-virtual {v6, v7, v8, v9, v3}, Lcn/com/magnity/sdk/MagDevice;->play(Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;III)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 619
    goto :goto_0

    .line 618
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getStreamType()I

    move-result v3

    goto :goto_1

    .line 622
    :cond_2
    new-instance v1, Lcn/com/magnity/sdk/types/CorrectionPara;

    invoke-direct {v1}, Lcn/com/magnity/sdk/types/CorrectionPara;-><init>()V

    .line 624
    .local v1, "param":Lcn/com/magnity/sdk/types/CorrectionPara;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3}, Lcn/com/magnity/sdk/MagDevice;->lock()V

    .line 625
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3, v1}, Lcn/com/magnity/sdk/MagDevice;->getCorrectionPara(Lcn/com/magnity/sdk/types/CorrectionPara;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 626
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get fixed param from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 628
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3}, Lcn/com/magnity/sdk/MagDevice;->unlock()V

    move v3, v4

    .line 629
    goto :goto_0

    .line 632
    :cond_3
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v3

    iput v3, v1, Lcn/com/magnity/sdk/types/CorrectionPara;->fEmissivity:F

    .line 633
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3, v1, v5}, Lcn/com/magnity/sdk/MagDevice;->setCorrectionPara(Lcn/com/magnity/sdk/types/CorrectionPara;Z)F

    .line 634
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getPaletteIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Lcn/com/magnity/sdk/MagDevice;->setColorPalette(I)V

    .line 636
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isManualEnlargeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 637
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getEnlargeTemp()[I

    move-result-object v2

    .line 638
    .local v2, "range":[I
    aget v3, v2, v4

    aget v6, v2, v5

    if-ge v3, v6, :cond_4

    .line 639
    new-instance v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;-><init>()V

    .line 640
    .local v0, "para":Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;
    aget v3, v2, v4

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->lowerLimitTemp:I

    .line 641
    aget v3, v2, v5

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->upperLimitTemp:I

    .line 642
    iput v4, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->grayScale1:I

    .line 643
    const/16 v3, 0xff

    iput v3, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->grayScale2:I

    .line 644
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3, v0}, Lcn/com/magnity/sdk/MagDevice;->setEnhancementMethod(Lcn/com/magnity/sdk/types/ImageEnhancement;)Z

    .line 654
    .end local v0    # "para":Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;
    .end local v2    # "range":[I
    :cond_4
    :goto_2
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIsoOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 655
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getIsoTemp()[I

    move-result-object v2

    .line 656
    .restart local v2    # "range":[I
    aget v3, v2, v4

    aget v6, v2, v5

    if-ge v3, v6, :cond_5

    .line 657
    new-instance v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;-><init>()V

    .line 658
    .local v0, "para":Lcn/com/magnity/sdk/types/IsoThermalEnhancement;
    aget v3, v2, v4

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;->lowerLimitTemp:I

    .line 659
    aget v3, v2, v5

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;->upperLimitTemp:I

    .line 660
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3, v0}, Lcn/com/magnity/sdk/MagDevice;->setEnhancementMethod(Lcn/com/magnity/sdk/types/ImageEnhancement;)Z

    .line 664
    .end local v0    # "para":Lcn/com/magnity/sdk/types/IsoThermalEnhancement;
    .end local v2    # "range":[I
    :cond_5
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3}, Lcn/com/magnity/sdk/MagDevice;->unlock()V

    move v3, v5

    .line 666
    goto/16 :goto_0

    .line 647
    :cond_6
    new-instance v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;-><init>()V

    .line 648
    .local v0, "para":Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;
    const/4 v3, 0x5

    iput v3, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->range:I

    .line 649
    iput v4, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->brightness:I

    .line 650
    iput v4, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->contrast:I

    .line 651
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v3, v0}, Lcn/com/magnity/sdk/MagDevice;->setEnhancementMethod(Lcn/com/magnity/sdk/types/ImageEnhancement;)Z

    goto :goto_2
.end method

.method private startPlay2()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isSurfaceCreated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->dislinkOnly()V

    .line 150
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v2, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 176
    :goto_0
    return v1

    .line 154
    :cond_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->calculateNewImagePos()I

    move-result v0

    .line 155
    .local v0, "height":I
    if-gtz v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->dislinkOnly()V

    .line 157
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v2, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    sget v4, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->LIVE_COLORBAR_WIDTH:I

    mul-int/lit8 v5, v0, 0x4

    div-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, -0x4

    invoke-virtual {v3, v4, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setColorbarSize(II)V

    .line 165
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->playOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->dislinkOnly()V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 172
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_3

    .line 173
    const-string v1, "start play ir"

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    :cond_3
    move v1, v2

    .line 176
    goto :goto_0
.end method


# virtual methods
.method public blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "alpha"    # I

    .prologue
    .line 700
    invoke-static {p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice;->blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public calculateNewImagePos(II)I
    .locals 6
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v4}, Lcn/com/magnity/sdk/MagDevice;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 122
    :goto_0
    return v1

    .line 96
    :cond_0
    new-instance v0, Lcn/com/magnity/sdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/CameraInfo;-><init>()V

    .line 97
    .local v0, "cameraInfo":Lcn/com/magnity/sdk/types/CameraInfo;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v4, v0}, Lcn/com/magnity/sdk/MagDevice;->getCameraInfo(Lcn/com/magnity/sdk/types/CameraInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->dislinkOnly()V

    move v1, v3

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    iget v4, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intVideoWidth:I

    iget v5, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intVideoHeight:I

    if-ge v4, v5, :cond_3

    .line 103
    mul-int/lit8 v4, p1, 0x4

    mul-int/lit8 v5, p2, 0x3

    if-le v4, v5, :cond_2

    .line 104
    div-int/lit8 v4, p2, 0xc

    mul-int/lit8 v1, v4, 0xc

    .line 105
    .local v1, "height":I
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v2, v4, 0x4

    .line 121
    .local v2, "width":I
    :goto_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v3

    const/4 v3, 0x1

    aput v1, v5, v3

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onNewImagePosCalculated([I)V

    goto :goto_0

    .line 107
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_2
    div-int/lit8 v4, p1, 0xc

    mul-int/lit8 v2, v4, 0xc

    .line 108
    .restart local v2    # "width":I
    mul-int/lit8 v4, v2, 0x4

    div-int/lit8 v1, v4, 0x3

    .restart local v1    # "height":I
    goto :goto_1

    .line 111
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_3
    mul-int/lit8 v4, p1, 0x3

    mul-int/lit8 v5, p2, 0x4

    if-le v4, v5, :cond_4

    .line 112
    div-int/lit8 v4, p2, 0xc

    mul-int/lit8 v1, v4, 0xc

    .line 113
    .restart local v1    # "height":I
    mul-int/lit8 v4, v1, 0x4

    div-int/lit8 v2, v4, 0x3

    .restart local v2    # "width":I
    goto :goto_1

    .line 115
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_4
    div-int/lit8 v4, p1, 0xc

    mul-int/lit8 v2, v4, 0xc

    .line 116
    .restart local v2    # "width":I
    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v1, v4, 0x4

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method public connectResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 497
    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mIsLinkging:Z

    .line 498
    packed-switch p1, :pswitch_data_0

    .line 512
    :goto_0
    :pswitch_0
    return-void

    .line 500
    :pswitch_1
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->afterLinkSucc()V

    .line 501
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->startPlay2()Z

    goto :goto_0

    .line 504
    :pswitch_2
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f0e0079

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 507
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->setDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 509
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f0e003e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 695
    invoke-static {p1, p2}, Lcn/com/magnity/sdk/MagDevice;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public correctTemperature(IFI)I
    .locals 1
    .param p1, "t"    # I
    .param p2, "emissivity"    # F
    .param p3, "pos"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice;->fixTemperature(IFI)I

    move-result v0

    return v0
.end method

.method public correctTemperature(IFII)I
    .locals 1
    .param p1, "t"    # I
    .param p2, "emissivity"    # F
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/com/magnity/sdk/MagDevice;->fixTemperature(IFII)I

    move-result v0

    return v0
.end method

.method public delayedStartPlay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDelayedStartPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDelayedStartPlayRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method public getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z
    .locals 3
    .param p1, "info"    # Lcn/com/magnity/magnitymx/CameraInfoCompat;

    .prologue
    const/4 v1, 0x0

    .line 306
    if-nez p1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 309
    :cond_1
    new-instance v0, Lcn/com/magnity/sdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/CameraInfo;-><init>()V

    .line 310
    .local v0, "cameraInfo":Lcn/com/magnity/sdk/types/CameraInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/sdk/MagDevice;->getCameraInfo(Lcn/com/magnity/sdk/types/CameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intFPAWidth:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    .line 314
    iget v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intFPAHeight:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    .line 315
    iget-object v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->charName:Ljava/lang/String;

    iput-object v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->name:Ljava/lang/String;

    .line 316
    iget-object v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->charType:Ljava/lang/String;

    iput-object v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->type:Ljava/lang/String;

    .line 317
    iget v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intMaxFPS:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->maxFps:I

    .line 318
    iget v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intCurrentFPS:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->curFps:I

    .line 319
    iget v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intVideoWidth:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->bmpWidth:I

    .line 320
    iget v1, v0, Lcn/com/magnity/sdk/types/CameraInfo;->intVideoHeight:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->bmpHeight:I

    .line 321
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;)Z
    .locals 3
    .param p1, "para"    # Lcn/com/magnity/magnitymx/CorrectionParaCompat;

    .prologue
    const/4 v1, 0x0

    .line 326
    if-nez p1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    new-instance v0, Lcn/com/magnity/sdk/types/CorrectionPara;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/CorrectionPara;-><init>()V

    .line 330
    .local v0, "correctionPara":Lcn/com/magnity/sdk/types/CorrectionPara;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/sdk/MagDevice;->getCorrectionPara(Lcn/com/magnity/sdk/types/CorrectionPara;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fDistance:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fDistance:F

    .line 334
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fEmissivity:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fEmissivity:F

    .line 335
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fTemp:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTemp:F

    .line 336
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fRH:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRH:F

    .line 337
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fVisDistance:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fVisDistance:F

    .line 338
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fRain:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRain:F

    .line 339
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fSnow:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fSnow:F

    .line 340
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fExtrapara1:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara1:F

    .line 341
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fExtrapara2:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara2:F

    .line 342
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fTaoAtm:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoAtm:F

    .line 343
    iget v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fTaoFilter:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoFilter:F

    .line 344
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object v0
.end method

.method public getFrameStatisticInfo(Lcn/com/magnity/magnitymx/StatisticInfoCompat;)Z
    .locals 3
    .param p1, "info"    # Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    .prologue
    const/4 v1, 0x0

    .line 288
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    new-instance v0, Lcn/com/magnity/sdk/types/StatisticInfo;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/StatisticInfo;-><init>()V

    .line 292
    .local v0, "statisticInfo":Lcn/com/magnity/sdk/types/StatisticInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/sdk/MagDevice;->getFrameStatisticInfo(Lcn/com/magnity/sdk/types/StatisticInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget v1, v0, Lcn/com/magnity/sdk/types/StatisticInfo;->intMaxTemperature:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxTemperature:I

    .line 296
    iget v1, v0, Lcn/com/magnity/sdk/types/StatisticInfo;->intMinTemperature:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->minTemperature:I

    .line 297
    iget v1, v0, Lcn/com/magnity/sdk/types/StatisticInfo;->intAveTemperature:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->aveTemperature:I

    .line 298
    iget v1, v0, Lcn/com/magnity/sdk/types/StatisticInfo;->intMaxPos:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxPos:I

    .line 299
    iget v1, v0, Lcn/com/magnity/sdk/types/StatisticInfo;->intMinPos:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->minPos:I

    .line 300
    iget v1, v0, Lcn/com/magnity/sdk/types/StatisticInfo;->intAveNETDt:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->aveNETDt:I

    .line 301
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLineTemperatureInfo(IIII[I)Z
    .locals 6
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "info"    # [I

    .prologue
    .line 263
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->getLineTemperatureInfo(IIII[I)Z

    move-result v0

    return v0
.end method

.method public getOutputColorBarImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->getOutputColorBarImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTempImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->getOutputTempImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOutputVideoImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->getOutputVideoImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRectTemperatureInfo(IIII[I)Z
    .locals 6
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "info"    # [I

    .prologue
    .line 258
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->getRectTemperatureInfo(IIII[I)Z

    move-result v0

    return v0
.end method

.method public getTemperatureProbe(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice;->getTemperatureProbe(III)I

    move-result v0

    return v0
.end method

.method public isMgsRecording()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->isLocalMgsRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isSameDevice(Lcn/com/magnity/magnitymx/data/DeviceInfo;)Z
    .locals 1
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isSameDevice(Lcn/com/magnity/magnitymx/data/DeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 82
    :cond_1
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStitching()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public loadMDT(Ljava/lang/String;Lcn/com/magnity/magnitymx/MDTCompat;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mdtCompat"    # Lcn/com/magnity/magnitymx/MDTCompat;

    .prologue
    const/4 v4, 0x0

    .line 424
    new-instance v1, Lcn/com/magnity/sdk/types/MDT;

    invoke-direct {v1}, Lcn/com/magnity/sdk/types/MDT;-><init>()V

    .line 425
    .local v1, "mdt":Lcn/com/magnity/sdk/types/MDT;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v5, p1, v1}, Lcn/com/magnity/sdk/MagDevice;->loadMDT(Ljava/lang/String;Lcn/com/magnity/sdk/types/MDT;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    :goto_0
    return v4

    .line 429
    :cond_0
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->jpgBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->jpgBuf:[B

    .line 430
    iget v5, v1, Lcn/com/magnity/sdk/types/MDT;->jpgSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->jpgSize:I

    .line 431
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->ddtBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->ddtBuf:[B

    .line 432
    iget v5, v1, Lcn/com/magnity/sdk/types/MDT;->ddtSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->ddtSize:I

    .line 433
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->visBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->visBuf:[B

    .line 434
    iget v5, v1, Lcn/com/magnity/sdk/types/MDT;->visSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->visSize:I

    .line 435
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->txtBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->txtBuf:[B

    .line 436
    iget v5, v1, Lcn/com/magnity/sdk/types/MDT;->txtSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->txtSize:I

    .line 437
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->audBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->audBuf:[B

    .line 438
    iget v5, v1, Lcn/com/magnity/sdk/types/MDT;->audSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->audSize:I

    .line 439
    iget v5, v1, Lcn/com/magnity/sdk/types/MDT;->labSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labSize:I

    .line 440
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    if-nez v5, :cond_2

    .line 441
    const/4 v4, 0x0

    iput-object v4, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    .line 470
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 443
    :cond_2
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    array-length v2, v5

    .line 444
    .local v2, "n":I
    new-array v5, v2, [Lcn/com/magnity/magnitymx/ROICompat;

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 446
    new-instance v3, Lcn/com/magnity/magnitymx/ROICompat;

    invoke-direct {v3}, Lcn/com/magnity/magnitymx/ROICompat;-><init>()V

    .line 447
    .local v3, "roi":Lcn/com/magnity/magnitymx/ROICompat;
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->type:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    .line 448
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->targetType:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->targetType:I

    .line 449
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->maxTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->maxTemp:I

    .line 450
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->minTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->minTemp:I

    .line 451
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->aveTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->aveTemp:I

    .line 452
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->maxPos:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->maxPos:I

    .line 453
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->minPos:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->minPos:I

    .line 454
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->x0:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    .line 455
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->y0:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    .line 456
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->x1:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    .line 457
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->y1:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    .line 458
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->color:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->color:I

    .line 459
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->emissivity:F

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->emissivity:F

    .line 460
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->lowerAlarmTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->lowerAlarmTemp:I

    .line 461
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/sdk/types/ROI;->upperAlarmTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->upperAlarmTemp:I

    .line 462
    iget-object v5, v1, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcn/com/magnity/sdk/types/ROI;->name:Ljava/lang/String;

    iput-object v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->name:Ljava/lang/String;

    .line 463
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved1:I

    .line 464
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved2:I

    .line 465
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved3:I

    .line 466
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved4:I

    .line 467
    iget-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    aput-object v3, v5, v0

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->lock()V

    .line 214
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->pause()V

    .line 224
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->invalidate()V

    .line 728
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->resume()V

    .line 229
    return-void
.end method

.method public saveDDT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0, p1}, Lcn/com/magnity/sdk/MagDevice;->saveDDT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveDDT2Buffer()[B
    .locals 6

    .prologue
    .line 475
    new-instance v1, Lcn/com/magnity/sdk/types/CameraInfo;

    invoke-direct {v1}, Lcn/com/magnity/sdk/types/CameraInfo;-><init>()V

    .line 477
    .local v1, "cameraInfo":Lcn/com/magnity/sdk/types/CameraInfo;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v4, v1}, Lcn/com/magnity/sdk/MagDevice;->getCameraInfo(Lcn/com/magnity/sdk/types/CameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    iget v4, v1, Lcn/com/magnity/sdk/types/CameraInfo;->intFPAWidth:I

    iget v5, v1, Lcn/com/magnity/sdk/types/CameraInfo;->intFPAHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v3, v4, 0x1000

    .line 482
    .local v3, "size":I
    :goto_0
    new-array v0, v3, [B

    .line 483
    .local v0, "buffer":[B
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v4, v0}, Lcn/com/magnity/sdk/MagDevice;->saveDDT2Buffer([B)I

    move-result v2

    .line 484
    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 485
    const/4 v4, 0x0

    .line 487
    :goto_1
    return-object v4

    .line 480
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v3    # "size":I
    :cond_0
    const v3, 0x181000

    .restart local v3    # "size":I
    goto :goto_0

    .line 487
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    goto :goto_1
.end method

.method public saveMDT([B[B[B[Lcn/com/magnity/magnitymx/ROICompat;[B[BLjava/lang/String;)Z
    .locals 11
    .param p1, "imgIr"    # [B
    .param p2, "ddt"    # [B
    .param p3, "imgVis"    # [B
    .param p4, "labels"    # [Lcn/com/magnity/magnitymx/ROICompat;
    .param p5, "text"    # [B
    .param p6, "audio"    # [B
    .param p7, "fileName"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v7, 0x0

    .line 373
    .local v7, "rois":[Lcn/com/magnity/sdk/types/ROI;
    if-eqz p4, :cond_0

    array-length v8, p4

    if-lez v8, :cond_0

    .line 374
    array-length v8, p4

    new-array v7, v8, [Lcn/com/magnity/sdk/types/ROI;

    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "i":I
    array-length v9, p4

    const/4 v8, 0x0

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, p4, v8

    .line 377
    .local v4, "label":Lcn/com/magnity/magnitymx/ROICompat;
    new-instance v6, Lcn/com/magnity/sdk/types/ROI;

    invoke-direct {v6}, Lcn/com/magnity/sdk/types/ROI;-><init>()V

    .line 378
    .local v6, "roi":Lcn/com/magnity/sdk/types/ROI;
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->type:I

    .line 379
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->targetType:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->targetType:I

    .line 380
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->maxTemp:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->maxTemp:I

    .line 381
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->minTemp:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->minTemp:I

    .line 382
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->aveTemp:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->aveTemp:I

    .line 383
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->maxPos:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->maxPos:I

    .line 384
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->minPos:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->minPos:I

    .line 385
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->x0:I

    .line 386
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->y0:I

    .line 387
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->x1:I

    .line 388
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->y1:I

    .line 389
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->color:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->color:I

    .line 390
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->emissivity:F

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->emissivity:F

    .line 391
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->lowerAlarmTemp:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->lowerAlarmTemp:I

    .line 392
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->upperAlarmTemp:I

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->upperAlarmTemp:I

    .line 393
    iget-object v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->name:Ljava/lang/String;

    iput-object v10, v6, Lcn/com/magnity/sdk/types/ROI;->name:Ljava/lang/String;

    .line 394
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->reserved1:I

    .line 395
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->reserved2:I

    .line 396
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->reserved3:I

    .line 397
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/sdk/types/ROI;->reserved4:I

    .line 398
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v6, v7, v3

    .line 376
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 401
    .end local v3    # "i":I
    .end local v4    # "label":Lcn/com/magnity/magnitymx/ROICompat;
    .end local v6    # "roi":Lcn/com/magnity/sdk/types/ROI;
    :cond_0
    new-instance v5, Lcn/com/magnity/sdk/types/MDT;

    invoke-direct {v5}, Lcn/com/magnity/sdk/types/MDT;-><init>()V

    .line 402
    .local v5, "mdt":Lcn/com/magnity/sdk/types/MDT;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v8

    invoke-static {v8}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-static {p1, v8}, Lcn/com/magnity/magnitymx/util/Utils;->writeGpsToJpg([BLandroid/location/Location;)[B

    move-result-object v1

    .line 403
    .local v1, "gpsJpg":[B
    if-nez v1, :cond_1

    .line 404
    iput-object p1, v5, Lcn/com/magnity/sdk/types/MDT;->jpgBuf:[B

    .line 408
    :goto_1
    iget-object v8, v5, Lcn/com/magnity/sdk/types/MDT;->jpgBuf:[B

    if-nez v8, :cond_2

    const/4 v8, 0x0

    :goto_2
    iput v8, v5, Lcn/com/magnity/sdk/types/MDT;->jpgSize:I

    .line 409
    iput-object p2, v5, Lcn/com/magnity/sdk/types/MDT;->ddtBuf:[B

    .line 410
    if-nez p2, :cond_3

    const/4 v8, 0x0

    :goto_3
    iput v8, v5, Lcn/com/magnity/sdk/types/MDT;->ddtSize:I

    .line 411
    iput-object p3, v5, Lcn/com/magnity/sdk/types/MDT;->visBuf:[B

    .line 412
    if-nez p3, :cond_4

    const/4 v8, 0x0

    :goto_4
    iput v8, v5, Lcn/com/magnity/sdk/types/MDT;->visSize:I

    .line 413
    iput-object v7, v5, Lcn/com/magnity/sdk/types/MDT;->labBuf:[Lcn/com/magnity/sdk/types/ROI;

    .line 414
    if-nez v7, :cond_5

    const/4 v8, 0x0

    :goto_5
    iput v8, v5, Lcn/com/magnity/sdk/types/MDT;->labSize:I

    .line 415
    move-object/from16 v0, p5

    iput-object v0, v5, Lcn/com/magnity/sdk/types/MDT;->txtBuf:[B

    .line 416
    if-nez p5, :cond_6

    const/4 v8, 0x0

    :goto_6
    iput v8, v5, Lcn/com/magnity/sdk/types/MDT;->txtSize:I

    .line 417
    move-object/from16 v0, p6

    iput-object v0, v5, Lcn/com/magnity/sdk/types/MDT;->audBuf:[B

    .line 418
    if-nez p6, :cond_7

    const/4 v8, 0x0

    :goto_7
    iput v8, v5, Lcn/com/magnity/sdk/types/MDT;->audSize:I

    .line 419
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    move-object/from16 v0, p7

    invoke-virtual {v8, v5, v0}, Lcn/com/magnity/sdk/MagDevice;->saveMDT(Lcn/com/magnity/sdk/types/MDT;Ljava/lang/String;)Z

    move-result v8

    return v8

    .line 406
    :cond_1
    iput-object v1, v5, Lcn/com/magnity/sdk/types/MDT;->jpgBuf:[B

    goto :goto_1

    .line 408
    :cond_2
    iget-object v8, v5, Lcn/com/magnity/sdk/types/MDT;->jpgBuf:[B

    array-length v8, v8

    goto :goto_2

    .line 410
    :cond_3
    array-length v8, p2

    goto :goto_3

    .line 412
    :cond_4
    array-length v8, p3

    goto :goto_4

    .line 414
    :cond_5
    array-length v8, v7

    goto :goto_5

    .line 416
    :cond_6
    move-object/from16 v0, p5

    array-length v8, v0

    goto :goto_6

    .line 418
    :cond_7
    move-object/from16 v0, p6

    array-length v8, v0

    goto :goto_7
.end method

.method public setColorPalette(I)V
    .locals 1
    .param p1, "palette"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0, p1}, Lcn/com/magnity/sdk/MagDevice;->setColorPalette(I)V

    .line 284
    return-void
.end method

.method public setCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;Z)F
    .locals 2
    .param p1, "correctionPara"    # Lcn/com/magnity/magnitymx/CorrectionParaCompat;
    .param p2, "bEnableCameraCorrect"    # Z

    .prologue
    .line 349
    new-instance v0, Lcn/com/magnity/sdk/types/CorrectionPara;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/CorrectionPara;-><init>()V

    .line 350
    .local v0, "para":Lcn/com/magnity/sdk/types/CorrectionPara;
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fDistance:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fDistance:F

    .line 351
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fEmissivity:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fEmissivity:F

    .line 352
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTemp:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fTemp:F

    .line 353
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRH:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fRH:F

    .line 354
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fVisDistance:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fVisDistance:F

    .line 355
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRain:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fRain:F

    .line 356
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fSnow:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fSnow:F

    .line 357
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara1:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fExtrapara1:F

    .line 358
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara2:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fExtrapara2:F

    .line 359
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoAtm:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fTaoAtm:F

    .line 360
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoFilter:F

    iput v1, v0, Lcn/com/magnity/sdk/types/CorrectionPara;->fTaoFilter:F

    .line 361
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v1, v0, p2}, Lcn/com/magnity/sdk/MagDevice;->setCorrectionPara(Lcn/com/magnity/sdk/types/CorrectionPara;Z)F

    move-result v1

    return v1
.end method

.method public setDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 76
    return-void
.end method

.method public setEnhancementMethod(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    .line 238
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    check-cast p1, Lcn/com/magnity/sdk/types/ImageEnhancement;

    .end local p1    # "para":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcn/com/magnity/sdk/MagDevice;->setEnhancementMethod(Lcn/com/magnity/sdk/types/ImageEnhancement;)Z

    move-result v0

    return v0
.end method

.method public startMgsRecording(Ljava/lang/String;)V
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    if-eqz v2, :cond_0

    .line 738
    new-instance v0, Lcn/com/magnity/sdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/CameraInfo;-><init>()V

    .line 740
    .local v0, "cameraInfo":Lcn/com/magnity/sdk/types/CameraInfo;
    const/4 v1, 0x1

    .line 747
    .local v1, "fps":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v2, p1, v1}, Lcn/com/magnity/sdk/MagDevice;->localStorageMgsRecord(Ljava/lang/String;I)Z

    .line 749
    .end local v0    # "cameraInfo":Lcn/com/magnity/sdk/types/CameraInfo;
    .end local v1    # "fps":I
    :cond_0
    return-void
.end method

.method public startPlay()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    .local v0, "startTime":J
    iget-boolean v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mIsLinkging:Z

    if-eqz v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isSurfaceCreated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    const/4 v2, 0x1

    goto :goto_0

    .line 139
    :cond_2
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->linkOnly()Z

    move-result v3

    if-nez v3, :cond_3

    .line 140
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->startPlay2()Z

    move-result v2

    goto :goto_0
.end method

.method public startStitching(IIII)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "focusLength"    # I
    .param p4, "pixelSize"    # I

    .prologue
    .line 705
    const/4 v0, 0x1

    return v0
.end method

.method public stopMgsRecording()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->localStorageMgsStop()V

    .line 756
    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->stop()V

    .line 190
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "stop play ir"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->stopThread()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .line 200
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    .line 202
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 204
    :cond_2
    return-void
.end method

.method public stopStitching(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 716
    return-void
.end method

.method public triggerFFC()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->triggerFFC()Z

    .line 763
    :cond_0
    return-void
.end method

.method public triggrtStitching()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel;->mDevice:Lcn/com/magnity/sdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/sdk/MagDevice;->unlock()V

    .line 219
    return-void
.end method
