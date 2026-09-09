.class public Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "EnumOnlineDeviceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/data/DeviceInfo;>;"
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcn/com/magnity/sdk/MagService;->enumCameras()Z

    .line 28
    const/16 v3, 0x64

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/TimeUtils;->delay(I)V

    .line 30
    const/16 v3, 0x80

    new-array v0, v3, [Lcn/com/magnity/sdk/types/EnumerationInfo;

    move-object/from16 v23, v0

    .line 32
    .local v23, "terminals":[Lcn/com/magnity/sdk/types/EnumerationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->mContext:Landroid/content/Context;

    const v4, 0x833c

    const/4 v5, 0x2

    move-object/from16 v0, v23

    invoke-static {v3, v4, v5, v0}, Lcn/com/magnity/sdk/MagService;->getDevices(Landroid/content/Context;II[Lcn/com/magnity/sdk/types/EnumerationInfo;)I

    move-result v18

    .line 33
    .local v18, "count":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v19, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/data/DeviceInfo;>;"
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 36
    aget-object v22, v23, v21

    .line 37
    .local v22, "terminal":Lcn/com/magnity/sdk/types/EnumerationInfo;
    const/4 v9, 0x0

    .line 38
    .local v9, "usbType":I
    move-object/from16 v0, v22

    iget v3, v0, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 39
    const/4 v9, 0x2

    .line 41
    :cond_0
    new-instance v2, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcn/com/magnity/sdk/types/EnumerationInfo;->charCameraName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object/from16 v0, v22

    iget v5, v0, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraIpOrUsbId:I

    move-object/from16 v0, v22

    iget v6, v0, Lcn/com/magnity/sdk/types/EnumerationInfo;->intControllerIp:I

    move-object/from16 v0, v22

    iget-object v7, v0, Lcn/com/magnity/sdk/types/EnumerationInfo;->charCameraMAC:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v8, v0, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraType:I

    invoke-direct/range {v2 .. v9}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;II)V

    .line 44
    .local v2, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v9    # "usbType":I
    .end local v22    # "terminal":Lcn/com/magnity/sdk/types/EnumerationInfo;
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v20, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/coresdk/types/EnumInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->mContext:Landroid/content/Context;

    const v4, 0x833c

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-static {v3, v4, v5, v0}, Lcn/com/magnity/coresdk/MagDevice;->getDevices(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 50
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/com/magnity/coresdk/types/EnumInfo;

    .line 51
    .local v22, "terminal":Lcn/com/magnity/coresdk/types/EnumInfo;
    new-instance v2, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-object/from16 v0, v22

    iget-object v11, v0, Lcn/com/magnity/coresdk/types/EnumInfo;->name:Ljava/lang/String;

    const/4 v12, -0x1

    move-object/from16 v0, v22

    iget v13, v0, Lcn/com/magnity/coresdk/types/EnumInfo;->id:I

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;II)V

    .line 53
    .restart local v2    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    .end local v2    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v22    # "terminal":Lcn/com/magnity/coresdk/types/EnumInfo;
    :cond_2
    return-object v19
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 78
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->forceLoad()V

    .line 22
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;->onCancelLoad()Z

    .line 73
    return-void
.end method
