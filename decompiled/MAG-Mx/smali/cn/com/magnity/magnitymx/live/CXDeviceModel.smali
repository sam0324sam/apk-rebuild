.class public Lcn/com/magnity/magnitymx/live/CXDeviceModel;
.super Ljava/lang/Object;
.source "CXDeviceModel.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;
.implements Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;,
        Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mDelayedStartPlayRunnable:Ljava/lang/Runnable;

.field private mDevice:Lcn/com/magnity/coresdk/MagDevice;

.field private mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

.field private mHandler:Landroid/os/Handler;

.field private mIsDownloadingCali:Z

.field private mIsLinking:Z

.field private mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

.field private mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

.field private mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

.field private mStitchingEventListener:Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mHandler:Landroid/os/Handler;

    .line 914
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->handler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    .line 82
    new-instance v0, Lcn/com/magnity/coresdk/MagDevice;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/MagDevice;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    .line 84
    new-instance v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$2;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDelayedStartPlayRunnable:Ljava/lang/Runnable;

    .line 90
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->dislinkOnly()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->playOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcn/com/magnity/magnitymx/live/CXDeviceModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsDownloadingCali:Z

    return p1
.end method

.method private afterLinkSucc()V
    .locals 6

    .prologue
    .line 641
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getRotation(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->autoAdjustRotation(I)V

    .line 643
    new-instance v1, Lcn/com/magnity/coresdk/types/RemoteInfo;

    invoke-direct {v1}, Lcn/com/magnity/coresdk/types/RemoteInfo;-><init>()V

    .line 644
    .local v1, "remoteInfo":Lcn/com/magnity/coresdk/types/RemoteInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v2, v1}, Lcn/com/magnity/coresdk/MagDevice;->getRemoteInfo(Lcn/com/magnity/coresdk/types/RemoteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget v3, v1, Lcn/com/magnity/coresdk/types/RemoteInfo;->serialNumber:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setSerialNo(I)V

    .line 647
    new-instance v0, Lcn/com/magnity/coresdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/CameraInfo;-><init>()V

    .line 648
    .local v0, "cameraInfo":Lcn/com/magnity/coresdk/types/CameraInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/coresdk/MagDevice;->getCameraInfo(Lcn/com/magnity/coresdk/types/CameraInfo;)Z

    .line 649
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget-object v3, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setCameraName(Ljava/lang/String;)V

    .line 650
    const-string v2, "MainActivityCX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget v3, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->fpaWidth:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setWidthPixels(I)V

    .line 652
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget v3, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->fpaHeight:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setHeightPixels(I)V

    .line 654
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v2

    const-string v3, "UPDATE_ENUM_DEVICE_INFO"

    const-string v4, "PARAMETER1"

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 657
    .end local v0    # "cameraInfo":Lcn/com/magnity/coresdk/types/CameraInfo;
    :cond_0
    return-void
.end method

.method private autoAdjustRotation(I)V
    .locals 8
    .param p1, "degree"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "b":Z
    const-string v4, "rotate"

    invoke-static {v4, v7}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 739
    .local v3, "rotate":I
    new-instance v1, Lcn/com/magnity/coresdk/types/CameraInfo;

    invoke-direct {v1}, Lcn/com/magnity/coresdk/types/CameraInfo;-><init>()V

    .line 740
    .local v1, "cameraInfo":Lcn/com/magnity/coresdk/types/CameraInfo;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4, v1}, Lcn/com/magnity/coresdk/MagDevice;->getCameraInfo(Lcn/com/magnity/coresdk/types/CameraInfo;)Z

    .line 741
    iget-object v4, v1, Lcn/com/magnity/coresdk/types/CameraInfo;->type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "c1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 742
    const-string v4, "mIsPTZConnected"

    invoke-static {v4, v6}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 743
    .local v2, "isPTZConnected":Z
    if-eqz v2, :cond_0

    if-ne v3, v7, :cond_0

    .line 744
    const/4 v3, 0x0

    .line 746
    :cond_0
    if-nez v2, :cond_1

    if-ne v3, v7, :cond_1

    .line 747
    const/4 v3, 0x0

    .line 751
    .end local v2    # "isPTZConnected":Z
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 766
    :goto_0
    if-nez v0, :cond_2

    .line 767
    const-string v4, "Fail to do image transforming"

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 769
    :cond_2
    return-void

    .line 753
    :pswitch_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v6, v5}, Lcn/com/magnity/coresdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    .line 754
    goto :goto_0

    .line 756
    :pswitch_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    add-int/lit8 v5, v3, 0x0

    rem-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v6, v5}, Lcn/com/magnity/coresdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    .line 757
    goto :goto_0

    .line 759
    :pswitch_2
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    add-int/lit8 v5, v3, 0x3

    rem-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v6, v5}, Lcn/com/magnity/coresdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    .line 760
    goto :goto_0

    .line 762
    :pswitch_3
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    add-int/lit8 v5, v3, 0x2

    rem-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v6, v5}, Lcn/com/magnity/coresdk/MagDevice;->setImageTransform(II)Z

    move-result v0

    goto :goto_0

    .line 751
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
    .line 660
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 663
    :cond_0
    return-void
.end method

.method private linkOnly()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 612
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-nez v4, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v2

    .line 616
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCommunicationType()I

    move-result v0

    .line 617
    .local v0, "commType":I
    if-ne v0, v3, :cond_0

    .line 621
    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsLinking:Z

    .line 622
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v6

    invoke-virtual {v4, v5, v6, p0}, Lcn/com/magnity/coresdk/MagDevice;->linkCamera(Landroid/content/Context;ILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)I

    move-result v1

    .line 624
    .local v1, "ret":I
    if-eq v1, v3, :cond_2

    .line 625
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 626
    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsLinking:Z

    .line 627
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "Fail to link %s(ip: %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 628
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 627
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 629
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    const v4, 0x7f0e0079

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 636
    :cond_2
    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsLinking:Z

    move v2, v3

    .line 637
    goto :goto_0
.end method

.method private playOnly()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 666
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v5}, Lcn/com/magnity/coresdk/MagDevice;->isLinked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v3

    .line 670
    :cond_1
    new-instance v0, Lcn/com/magnity/coresdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/CameraInfo;-><init>()V

    .line 671
    .local v0, "camInfo":Lcn/com/magnity/coresdk/types/CameraInfo;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v5, v0}, Lcn/com/magnity/coresdk/MagDevice;->getCameraInfo(Lcn/com/magnity/coresdk/types/CameraInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 672
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get camera info from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 694
    :cond_2
    new-instance v5, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    invoke-direct {v5, p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .line 695
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getColorbarWidth()I

    move-result v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 696
    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getColorbarHeight()I

    move-result v8

    .line 695
    invoke-virtual {v5, v6, v7, v8}, Lcn/com/magnity/coresdk/MagDevice;->startProcessImage(Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 700
    new-instance v1, Lcn/com/magnity/coresdk/types/CorrectionPara;

    invoke-direct {v1}, Lcn/com/magnity/coresdk/types/CorrectionPara;-><init>()V

    .line 702
    .local v1, "param":Lcn/com/magnity/coresdk/types/CorrectionPara;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v5}, Lcn/com/magnity/coresdk/MagDevice;->lock()V

    .line 703
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v5, v1}, Lcn/com/magnity/coresdk/MagDevice;->getFixPara(Lcn/com/magnity/coresdk/types/CorrectionPara;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 704
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get fixed param from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 706
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4}, Lcn/com/magnity/coresdk/MagDevice;->unlock()V

    goto/16 :goto_0

    .line 710
    :cond_3
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v5

    iput v5, v1, Lcn/com/magnity/coresdk/types/CorrectionPara;->fEmissivity:F

    .line 711
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v5, v1}, Lcn/com/magnity/coresdk/MagDevice;->setFixPara(Lcn/com/magnity/coresdk/types/CorrectionPara;)F

    .line 712
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getPaletteIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/com/magnity/coresdk/MagDevice;->setColorPalette(I)V

    .line 714
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isManualEnlargeOn()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 715
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getEnlargeTemp()[I

    move-result-object v2

    .line 716
    .local v2, "range":[I
    aget v5, v2, v3

    aget v6, v2, v4

    if-ge v5, v6, :cond_4

    .line 717
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    aget v6, v2, v3

    mul-int/lit16 v6, v6, 0x3e8

    aget v7, v2, v4

    mul-int/lit16 v7, v7, 0x3e8

    const/16 v8, 0xff

    invoke-virtual {v5, v6, v7, v3, v8}, Lcn/com/magnity/coresdk/MagDevice;->setSubsectionEnlargePara(IIII)Z

    .line 723
    .end local v2    # "range":[I
    :cond_4
    :goto_1
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIsoOn()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 724
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getIsoTemp()[I

    move-result-object v2

    .line 725
    .restart local v2    # "range":[I
    aget v5, v2, v3

    aget v6, v2, v4

    if-ge v5, v6, :cond_5

    .line 726
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    aget v3, v2, v3

    mul-int/lit16 v3, v3, 0x3e8

    aget v6, v2, v4

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v3, v6}, Lcn/com/magnity/coresdk/MagDevice;->setIsothermalPara(II)V

    .line 730
    .end local v2    # "range":[I
    :cond_5
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v3}, Lcn/com/magnity/coresdk/MagDevice;->unlock()V

    move v3, v4

    .line 732
    goto/16 :goto_0

    .line 720
    :cond_6
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v3, v3}, Lcn/com/magnity/coresdk/MagDevice;->setAutoEnlargePara(III)V

    goto :goto_1
.end method

.method private startPlay2()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isSurfaceCreated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->dislinkOnly()V

    .line 192
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 247
    :goto_0
    return v2

    .line 195
    :cond_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/live/LivePresenter;->calculateNewImagePos()I

    move-result v0

    .line 196
    .local v0, "height":I
    if-gtz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->dislinkOnly()V

    .line 198
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    sget v5, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->LIVE_COLORBAR_WIDTH:I

    mul-int/lit8 v6, v0, 0x4

    div-int/lit8 v6, v6, 0x5

    and-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setColorbarSize(II)V

    .line 206
    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsDownloadingCali:Z

    .line 207
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    new-instance v5, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;

    invoke-direct {v5, p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V

    invoke-virtual {v4, v5}, Lcn/com/magnity/coresdk/MagDevice;->prepareProcessImage(Lcn/com/magnity/coresdk/MagDevice$IPrepareTransferCallback;)I

    move-result v1

    .line 222
    .local v1, "ret":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 223
    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsDownloadingCali:Z

    .line 224
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->dislinkOnly()V

    .line 225
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_0

    .line 227
    :cond_2
    if-ne v1, v3, :cond_3

    .line 228
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_0

    .line 232
    :cond_3
    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsDownloadingCali:Z

    .line 235
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->playOnly()Z

    move-result v4

    if-nez v4, :cond_4

    .line 236
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->dislinkOnly()V

    .line 237
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_0

    .line 241
    :cond_4
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 243
    sget-boolean v2, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v2, :cond_5

    .line 244
    const-string v2, "start play ir"

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    :cond_5
    move v2, v3

    .line 247
    goto :goto_0
.end method


# virtual methods
.method public blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "alpha"    # I

    .prologue
    .line 972
    invoke-static {p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public calculateNewImagePos(II)I
    .locals 6
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4}, Lcn/com/magnity/coresdk/MagDevice;->isLinked()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 148
    :goto_0
    return v1

    .line 122
    :cond_0
    new-instance v0, Lcn/com/magnity/coresdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/CameraInfo;-><init>()V

    .line 123
    .local v0, "cameraInfo":Lcn/com/magnity/coresdk/types/CameraInfo;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4, v0}, Lcn/com/magnity/coresdk/MagDevice;->getCameraInfo(Lcn/com/magnity/coresdk/types/CameraInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->dislinkOnly()V

    move v1, v3

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    iget v4, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->bmpWidth:I

    iget v5, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->bmpHeight:I

    if-ge v4, v5, :cond_3

    .line 129
    mul-int/lit8 v4, p1, 0x4

    mul-int/lit8 v5, p2, 0x3

    if-le v4, v5, :cond_2

    .line 130
    div-int/lit8 v4, p2, 0xc

    mul-int/lit8 v1, v4, 0xc

    .line 131
    .local v1, "height":I
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v2, v4, 0x4

    .line 147
    .local v2, "width":I
    :goto_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v3

    const/4 v3, 0x1

    aput v1, v5, v3

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onNewImagePosCalculated([I)V

    goto :goto_0

    .line 133
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_2
    div-int/lit8 v4, p1, 0xc

    mul-int/lit8 v2, v4, 0xc

    .line 134
    .restart local v2    # "width":I
    mul-int/lit8 v4, v2, 0x4

    div-int/lit8 v1, v4, 0x3

    .restart local v1    # "height":I
    goto :goto_1

    .line 137
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_3
    mul-int/lit8 v4, p1, 0x3

    mul-int/lit8 v5, p2, 0x4

    if-le v4, v5, :cond_4

    .line 138
    div-int/lit8 v4, p2, 0xc

    mul-int/lit8 v1, v4, 0xc

    .line 139
    .restart local v1    # "height":I
    mul-int/lit8 v4, v1, 0x4

    div-int/lit8 v2, v4, 0x3

    .restart local v2    # "width":I
    goto :goto_1

    .line 141
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_4
    div-int/lit8 v4, p1, 0xc

    mul-int/lit8 v2, v4, 0xc

    .line 142
    .restart local v2    # "width":I
    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v1, v4, 0x4

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method public copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 967
    invoke-static {p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public correctTemperature(IFI)I
    .locals 1
    .param p1, "t"    # I
    .param p2, "emissivity"    # F
    .param p3, "pos"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->fixTemperature(IFI)I

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
    .line 337
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/com/magnity/coresdk/MagDevice;->fixTemperature(IFII)I

    move-result v0

    return v0
.end method

.method public delayedStartPlay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDelayedStartPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDelayedStartPlayRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method

.method public getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z
    .locals 3
    .param p1, "info"    # Lcn/com/magnity/magnitymx/CameraInfoCompat;

    .prologue
    const/4 v1, 0x0

    .line 400
    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    new-instance v0, Lcn/com/magnity/coresdk/types/CameraInfo;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/CameraInfo;-><init>()V

    .line 404
    .local v0, "cameraInfo":Lcn/com/magnity/coresdk/types/CameraInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/coresdk/MagDevice;->getCameraInfo(Lcn/com/magnity/coresdk/types/CameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->fpaWidth:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    .line 408
    iget v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->fpaHeight:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    .line 409
    iget-object v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->name:Ljava/lang/String;

    iput-object v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->name:Ljava/lang/String;

    .line 410
    iget-object v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->type:Ljava/lang/String;

    iput-object v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->type:Ljava/lang/String;

    .line 411
    iget v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->maxFps:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->maxFps:I

    .line 412
    iget v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->curFps:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->curFps:I

    .line 413
    iget v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->bmpWidth:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->bmpWidth:I

    .line 414
    iget v1, v0, Lcn/com/magnity/coresdk/types/CameraInfo;->bmpHeight:I

    iput v1, p1, Lcn/com/magnity/magnitymx/CameraInfoCompat;->bmpHeight:I

    .line 415
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;)Z
    .locals 3
    .param p1, "para"    # Lcn/com/magnity/magnitymx/CorrectionParaCompat;

    .prologue
    const/4 v1, 0x0

    .line 420
    if-nez p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 423
    :cond_1
    new-instance v0, Lcn/com/magnity/coresdk/types/CorrectionPara;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/CorrectionPara;-><init>()V

    .line 424
    .local v0, "correctionPara":Lcn/com/magnity/coresdk/types/CorrectionPara;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/coresdk/MagDevice;->getFixPara(Lcn/com/magnity/coresdk/types/CorrectionPara;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fDistance:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fDistance:F

    .line 428
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fEmissivity:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fEmissivity:F

    .line 429
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fTemp:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTemp:F

    .line 430
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fRH:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRH:F

    .line 431
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fVisDistance:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fVisDistance:F

    .line 432
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fRain:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRain:F

    .line 433
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fSnow:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fSnow:F

    .line 434
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fExtrapara1:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara1:F

    .line 435
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fExtrapara2:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara2:F

    .line 436
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fTaoAtm:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoAtm:F

    .line 437
    iget v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fTaoFilter:F

    iput v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoFilter:F

    .line 438
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object v0
.end method

.method public getFrameStatisticInfo(Lcn/com/magnity/magnitymx/StatisticInfoCompat;)Z
    .locals 3
    .param p1, "info"    # Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    .prologue
    const/4 v1, 0x0

    .line 382
    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 385
    :cond_1
    new-instance v0, Lcn/com/magnity/coresdk/types/StatisticInfo;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/StatisticInfo;-><init>()V

    .line 386
    .local v0, "statisticInfo":Lcn/com/magnity/coresdk/types/StatisticInfo;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v2, v0}, Lcn/com/magnity/coresdk/MagDevice;->getFrameStatisticInfo(Lcn/com/magnity/coresdk/types/StatisticInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    iget v1, v0, Lcn/com/magnity/coresdk/types/StatisticInfo;->maxTemperature:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxTemperature:I

    .line 390
    iget v1, v0, Lcn/com/magnity/coresdk/types/StatisticInfo;->minTemperature:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->minTemperature:I

    .line 391
    iget v1, v0, Lcn/com/magnity/coresdk/types/StatisticInfo;->aveTemperature:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->aveTemperature:I

    .line 392
    iget v1, v0, Lcn/com/magnity/coresdk/types/StatisticInfo;->maxPos:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxPos:I

    .line 393
    iget v1, v0, Lcn/com/magnity/coresdk/types/StatisticInfo;->minPos:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->minPos:I

    .line 394
    iget v1, v0, Lcn/com/magnity/coresdk/types/StatisticInfo;->aveNETDt:I

    iput v1, p1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->aveNETDt:I

    .line 395
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
    .line 357
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->getLineTemperatureInfo(IIII[I)Z

    move-result v0

    return v0
.end method

.method public getOutputColorBarImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->getOutputColorBarImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTempImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->getOutputImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOutputVideoImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

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
    .line 352
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->getRectTemperatureInfo(IIII[I)Z

    move-result v0

    return v0
.end method

.method public getTemperatureProbe(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->getTemperatureProbe(III)I

    move-result v0

    return v0
.end method

.method public isMgsRecording()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->isProcessingImage()Z

    move-result v0

    return v0
.end method

.method public isSameDevice(Lcn/com/magnity/magnitymx/data/DeviceInfo;)Z
    .locals 1
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isSameDevice(Lcn/com/magnity/magnitymx/data/DeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 108
    :cond_1
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStitching()Z
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->isStitching()Z

    move-result v0

    return v0
.end method

.method public linkResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 591
    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsLinking:Z

    .line 592
    packed-switch p1, :pswitch_data_0

    .line 608
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 594
    :pswitch_1
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->afterLinkSucc()V

    .line 595
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsDownloadingCali:Z

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->startPlay2()Z

    goto :goto_0

    .line 600
    :pswitch_2
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f0e0079

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 603
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->setDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 605
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f0e003e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadMDT(Ljava/lang/String;Lcn/com/magnity/magnitymx/MDTCompat;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mdtCompat"    # Lcn/com/magnity/magnitymx/MDTCompat;

    .prologue
    const/4 v4, 0x0

    .line 518
    new-instance v1, Lcn/com/magnity/coresdk/types/MDT;

    invoke-direct {v1}, Lcn/com/magnity/coresdk/types/MDT;-><init>()V

    .line 519
    .local v1, "mdt":Lcn/com/magnity/coresdk/types/MDT;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v5, p1, v1}, Lcn/com/magnity/coresdk/MagDevice;->loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 564
    :goto_0
    return v4

    .line 523
    :cond_0
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->jpgBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->jpgBuf:[B

    .line 524
    iget v5, v1, Lcn/com/magnity/coresdk/types/MDT;->jpgSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->jpgSize:I

    .line 525
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->ddtBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->ddtBuf:[B

    .line 526
    iget v5, v1, Lcn/com/magnity/coresdk/types/MDT;->ddtSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->ddtSize:I

    .line 527
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->visBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->visBuf:[B

    .line 528
    iget v5, v1, Lcn/com/magnity/coresdk/types/MDT;->visSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->visSize:I

    .line 529
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->txtBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->txtBuf:[B

    .line 530
    iget v5, v1, Lcn/com/magnity/coresdk/types/MDT;->txtSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->txtSize:I

    .line 531
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->audBuf:[B

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->audBuf:[B

    .line 532
    iget v5, v1, Lcn/com/magnity/coresdk/types/MDT;->audSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->audSize:I

    .line 533
    iget v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labSize:I

    iput v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labSize:I

    .line 534
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    if-nez v5, :cond_2

    .line 535
    const/4 v4, 0x0

    iput-object v4, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    .line 564
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 537
    :cond_2
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    array-length v2, v5

    .line 538
    .local v2, "n":I
    new-array v5, v2, [Lcn/com/magnity/magnitymx/ROICompat;

    iput-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    .line 539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 540
    new-instance v3, Lcn/com/magnity/magnitymx/ROICompat;

    invoke-direct {v3}, Lcn/com/magnity/magnitymx/ROICompat;-><init>()V

    .line 541
    .local v3, "roi":Lcn/com/magnity/magnitymx/ROICompat;
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->type:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    .line 542
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->targetType:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->targetType:I

    .line 543
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->maxTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->maxTemp:I

    .line 544
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->minTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->minTemp:I

    .line 545
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->aveTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->aveTemp:I

    .line 546
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->maxPos:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->maxPos:I

    .line 547
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->minPos:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->minPos:I

    .line 548
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->x0:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    .line 549
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->y0:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    .line 550
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->x1:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    .line 551
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->y1:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    .line 552
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->color:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->color:I

    .line 553
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->emissivity:F

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->emissivity:F

    .line 554
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->lowerAlarmTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->lowerAlarmTemp:I

    .line 555
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/com/magnity/coresdk/types/ROI;->upperAlarmTemp:I

    iput v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->upperAlarmTemp:I

    .line 556
    iget-object v5, v1, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcn/com/magnity/coresdk/types/ROI;->name:Ljava/lang/String;

    iput-object v5, v3, Lcn/com/magnity/magnitymx/ROICompat;->name:Ljava/lang/String;

    .line 557
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved1:I

    .line 558
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved2:I

    .line 559
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved3:I

    .line 560
    iput v4, v3, Lcn/com/magnity/magnitymx/ROICompat;->reserved4:I

    .line 561
    iget-object v5, p2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    aput-object v3, v5, v0

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->lock()V

    .line 292
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->pause()V

    .line 302
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->invalidate()V

    .line 776
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->resume()V

    .line 307
    return-void
.end method

.method public saveDDT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->saveDDT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveDDT2Buffer()[B
    .locals 6

    .prologue
    .line 569
    new-instance v1, Lcn/com/magnity/coresdk/types/CameraInfo;

    invoke-direct {v1}, Lcn/com/magnity/coresdk/types/CameraInfo;-><init>()V

    .line 571
    .local v1, "cameraInfo":Lcn/com/magnity/coresdk/types/CameraInfo;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4, v1}, Lcn/com/magnity/coresdk/MagDevice;->getCameraInfo(Lcn/com/magnity/coresdk/types/CameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    iget v4, v1, Lcn/com/magnity/coresdk/types/CameraInfo;->fpaWidth:I

    iget v5, v1, Lcn/com/magnity/coresdk/types/CameraInfo;->fpaHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v3, v4, 0x1000

    .line 576
    .local v3, "size":I
    :goto_0
    new-array v0, v3, [B

    .line 577
    .local v0, "buffer":[B
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v4, v0}, Lcn/com/magnity/coresdk/MagDevice;->saveDDT2Buffer([B)I

    move-result v2

    .line 578
    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 579
    const/4 v4, 0x0

    .line 581
    :goto_1
    return-object v4

    .line 574
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v3    # "size":I
    :cond_0
    const v3, 0x181000

    .restart local v3    # "size":I
    goto :goto_0

    .line 581
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
    .line 466
    const/4 v7, 0x0

    .line 467
    .local v7, "rois":[Lcn/com/magnity/coresdk/types/ROI;
    if-eqz p4, :cond_0

    array-length v8, p4

    if-lez v8, :cond_0

    .line 468
    array-length v8, p4

    new-array v7, v8, [Lcn/com/magnity/coresdk/types/ROI;

    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "i":I
    array-length v9, p4

    const/4 v8, 0x0

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, p4, v8

    .line 471
    .local v4, "label":Lcn/com/magnity/magnitymx/ROICompat;
    new-instance v6, Lcn/com/magnity/coresdk/types/ROI;

    invoke-direct {v6}, Lcn/com/magnity/coresdk/types/ROI;-><init>()V

    .line 472
    .local v6, "roi":Lcn/com/magnity/coresdk/types/ROI;
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->type:I

    .line 473
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->targetType:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->targetType:I

    .line 474
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->maxTemp:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->maxTemp:I

    .line 475
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->minTemp:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->minTemp:I

    .line 476
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->aveTemp:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->aveTemp:I

    .line 477
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->maxPos:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->maxPos:I

    .line 478
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->minPos:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->minPos:I

    .line 479
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->x0:I

    .line 480
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->y0:I

    .line 481
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->x1:I

    .line 482
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->y1:I

    .line 483
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->color:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->color:I

    .line 484
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->emissivity:F

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->emissivity:F

    .line 485
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->lowerAlarmTemp:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->lowerAlarmTemp:I

    .line 486
    iget v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->upperAlarmTemp:I

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->upperAlarmTemp:I

    .line 487
    iget-object v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->name:Ljava/lang/String;

    iput-object v10, v6, Lcn/com/magnity/coresdk/types/ROI;->name:Ljava/lang/String;

    .line 488
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->reserved1:I

    .line 489
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->reserved2:I

    .line 490
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->reserved3:I

    .line 491
    const/4 v10, 0x0

    iput v10, v6, Lcn/com/magnity/coresdk/types/ROI;->reserved4:I

    .line 492
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v6, v7, v3

    .line 470
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 495
    .end local v3    # "i":I
    .end local v4    # "label":Lcn/com/magnity/magnitymx/ROICompat;
    .end local v6    # "roi":Lcn/com/magnity/coresdk/types/ROI;
    :cond_0
    new-instance v5, Lcn/com/magnity/coresdk/types/MDT;

    invoke-direct {v5}, Lcn/com/magnity/coresdk/types/MDT;-><init>()V

    .line 496
    .local v5, "mdt":Lcn/com/magnity/coresdk/types/MDT;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v8

    invoke-static {v8}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-static {p1, v8}, Lcn/com/magnity/magnitymx/util/Utils;->writeGpsToJpg([BLandroid/location/Location;)[B

    move-result-object v1

    .line 497
    .local v1, "gpsJpg":[B
    if-nez v1, :cond_1

    .line 498
    iput-object p1, v5, Lcn/com/magnity/coresdk/types/MDT;->jpgBuf:[B

    .line 502
    :goto_1
    iget-object v8, v5, Lcn/com/magnity/coresdk/types/MDT;->jpgBuf:[B

    if-nez v8, :cond_2

    const/4 v8, 0x0

    :goto_2
    iput v8, v5, Lcn/com/magnity/coresdk/types/MDT;->jpgSize:I

    .line 503
    iput-object p2, v5, Lcn/com/magnity/coresdk/types/MDT;->ddtBuf:[B

    .line 504
    if-nez p2, :cond_3

    const/4 v8, 0x0

    :goto_3
    iput v8, v5, Lcn/com/magnity/coresdk/types/MDT;->ddtSize:I

    .line 505
    iput-object p3, v5, Lcn/com/magnity/coresdk/types/MDT;->visBuf:[B

    .line 506
    if-nez p3, :cond_4

    const/4 v8, 0x0

    :goto_4
    iput v8, v5, Lcn/com/magnity/coresdk/types/MDT;->visSize:I

    .line 507
    iput-object v7, v5, Lcn/com/magnity/coresdk/types/MDT;->labBuf:[Lcn/com/magnity/coresdk/types/ROI;

    .line 508
    if-nez v7, :cond_5

    const/4 v8, 0x0

    :goto_5
    iput v8, v5, Lcn/com/magnity/coresdk/types/MDT;->labSize:I

    .line 509
    move-object/from16 v0, p5

    iput-object v0, v5, Lcn/com/magnity/coresdk/types/MDT;->txtBuf:[B

    .line 510
    if-nez p5, :cond_6

    const/4 v8, 0x0

    :goto_6
    iput v8, v5, Lcn/com/magnity/coresdk/types/MDT;->txtSize:I

    .line 511
    move-object/from16 v0, p6

    iput-object v0, v5, Lcn/com/magnity/coresdk/types/MDT;->audBuf:[B

    .line 512
    if-nez p6, :cond_7

    const/4 v8, 0x0

    :goto_7
    iput v8, v5, Lcn/com/magnity/coresdk/types/MDT;->audSize:I

    .line 513
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    move-object/from16 v0, p7

    invoke-virtual {v8, v5, v0}, Lcn/com/magnity/coresdk/MagDevice;->saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z

    move-result v8

    return v8

    .line 500
    :cond_1
    iput-object v1, v5, Lcn/com/magnity/coresdk/types/MDT;->jpgBuf:[B

    goto :goto_1

    .line 502
    :cond_2
    iget-object v8, v5, Lcn/com/magnity/coresdk/types/MDT;->jpgBuf:[B

    array-length v8, v8

    goto :goto_2

    .line 504
    :cond_3
    array-length v8, p2

    goto :goto_3

    .line 506
    :cond_4
    array-length v8, p3

    goto :goto_4

    .line 508
    :cond_5
    array-length v8, v7

    goto :goto_5

    .line 510
    :cond_6
    move-object/from16 v0, p5

    array-length v8, v0

    goto :goto_6

    .line 512
    :cond_7
    move-object/from16 v0, p6

    array-length v8, v0

    goto :goto_7
.end method

.method public setColorPalette(I)V
    .locals 1
    .param p1, "palette"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->setColorPalette(I)V

    .line 378
    return-void
.end method

.method public setCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;Z)F
    .locals 2
    .param p1, "correctionPara"    # Lcn/com/magnity/magnitymx/CorrectionParaCompat;
    .param p2, "bEnableCameraCorrect"    # Z

    .prologue
    .line 443
    new-instance v0, Lcn/com/magnity/coresdk/types/CorrectionPara;

    invoke-direct {v0}, Lcn/com/magnity/coresdk/types/CorrectionPara;-><init>()V

    .line 444
    .local v0, "para":Lcn/com/magnity/coresdk/types/CorrectionPara;
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fDistance:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fDistance:F

    .line 445
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fEmissivity:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fEmissivity:F

    .line 446
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTemp:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fTemp:F

    .line 447
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRH:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fRH:F

    .line 448
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fVisDistance:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fVisDistance:F

    .line 449
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fRain:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fRain:F

    .line 450
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fSnow:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fSnow:F

    .line 451
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara1:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fExtrapara1:F

    .line 452
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fExtrapara2:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fExtrapara2:F

    .line 453
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoAtm:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fTaoAtm:F

    .line 454
    iget v1, p1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fTaoFilter:F

    iput v1, v0, Lcn/com/magnity/coresdk/types/CorrectionPara;->fTaoFilter:F

    .line 455
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v1, v0}, Lcn/com/magnity/coresdk/MagDevice;->setFixPara(Lcn/com/magnity/coresdk/types/CorrectionPara;)F

    move-result v1

    return v1
.end method

.method public setDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 102
    return-void
.end method

.method public setEnhancementMethod(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 316
    instance-of v2, p1, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 317
    check-cast v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;

    .line 319
    .local v0, "para2":Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    iget v2, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->lowerLimitTemp:I

    iget v3, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->upperLimitTemp:I

    iget v4, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->grayScale1:I

    iget v5, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->grayScale2:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/com/magnity/coresdk/MagDevice;->setSubsectionEnlargePara(IIII)Z

    move-result v1

    .line 332
    .end local v0    # "para2":Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;
    :goto_0
    return v1

    .line 321
    :cond_0
    instance-of v2, p1, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 322
    check-cast v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;

    .line 324
    .local v0, "para2":Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    iget v3, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->range:I

    iget v4, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->brightness:I

    iget v5, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->contrast:I

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/magnity/coresdk/MagDevice;->setAutoEnlargePara(III)V

    goto :goto_0

    .line 326
    .end local v0    # "para2":Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;
    :cond_1
    instance-of v2, p1, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 327
    check-cast v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;

    .line 329
    .local v0, "para2":Lcn/com/magnity/sdk/types/IsoThermalEnhancement;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    iget v3, v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;->lowerLimitTemp:I

    iget v4, v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;->upperLimitTemp:I

    invoke-virtual {v2, v3, v4}, Lcn/com/magnity/coresdk/MagDevice;->setIsothermalPara(II)V

    goto :goto_0

    .line 332
    .end local v0    # "para2":Lcn/com/magnity/sdk/types/IsoThermalEnhancement;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMgsRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method public startPlay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mIsLinking:Z

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isSurfaceCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v1}, Lcn/com/magnity/coresdk/MagDevice;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->linkOnly()Z

    move-result v1

    if-nez v1, :cond_3

    .line 163
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->startPlay2()Z

    move-result v0

    goto :goto_0
.end method

.method public startStitching(IIII)Z
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "focusLength"    # I
    .param p4, "pixelSize"    # I

    .prologue
    .line 977
    new-instance v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mStitchingEventListener:Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

    .line 978
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mStitchingEventListener:Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->startStitching(IIIILcn/com/magnity/coresdk/MagDevice$IStitchingCallback;)Z

    move-result v0

    return v0
.end method

.method public stopMgsRecording()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDelayedStartPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isStitching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->stopStitching(Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->isProcessingImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->stopProcessImage()V

    .line 267
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "stop play ir"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->stopThread()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mNewFrame:Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .line 277
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 281
    :cond_3
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mPresenter:Lcn/com/magnity/magnitymx/live/LivePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 282
    return-void
.end method

.method public stopStitching(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 988
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->stopStitching(Z)V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mStitchingEventListener:Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;

    .line 990
    return-void
.end method

.method public triggerFFC()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->triggrtFFC()Z

    .line 187
    :cond_0
    return-void
.end method

.method public triggrtStitching()Z
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->triggerStitching()Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->mDevice:Lcn/com/magnity/coresdk/MagDevice;

    invoke-virtual {v0}, Lcn/com/magnity/coresdk/MagDevice;->unlock()V

    .line 297
    return-void
.end method
