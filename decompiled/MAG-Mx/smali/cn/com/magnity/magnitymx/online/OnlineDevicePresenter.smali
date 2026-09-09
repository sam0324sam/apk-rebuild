.class public Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;
.super Ljava/lang/Object;
.source "OnlineDevicePresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I = 0x912

.field private static final SELECTED_DEVICE:Ljava/lang/String; = "SELECTED_DEVICE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadManager:Landroid/support/v4/app/LoaderManager;

.field private mLoader:Landroid/support/v4/content/Loader;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Ljava/util/Timer;

.field private mUsbDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;Landroid/support/v4/app/LoaderManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "view"    # Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;
    .param p2, "loaderManager"    # Landroid/support/v4/app/LoaderManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$1;-><init>(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;

    .line 89
    iput-object p3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;->setPresenter(Ljava/lang/Object;)V

    .line 91
    iput-object p2, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoadManager:Landroid/support/v4/app/LoaderManager;

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;Lcn/com/magnity/magnitymx/data/DeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->updateList()V

    return-void
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method private updateList()V
    .locals 8

    .prologue
    .line 209
    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    if-nez v4, :cond_0

    .line 210
    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;->updateDeviceListView(Ljava/util/List;)V

    .line 227
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;

    invoke-interface {v4}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;->getAdapterItemKeys()[Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "keys":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 218
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCameraName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/4 v4, 0x1

    aget-object v6, v3, v4

    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v4, :cond_1

    .line 221
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f070061

    .line 220
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_1
    const v4, 0x7f0700ac

    goto :goto_2

    .line 226
    .end local v0    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;

    invoke-interface {v4, v2}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;->updateDeviceListView(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public getSelected(I)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    goto :goto_0
.end method

.method public loadSelected(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    const-string v0, "SELECTED_DEVICE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 201
    :cond_0
    return-void
.end method

.method public notifyLiveWindow()V
    .locals 6

    .prologue
    .line 168
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "SELECTED_DEVICE_CHANGED"

    const-string v2, "PARAMETER1"

    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    const-string v4, "PARAMETER2"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V

    .line 170
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/magnity/magnitymx/online/EnumOnlineDeviceTask;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcn/com/magnity/magnitymx/data/DeviceInfo;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/data/DeviceInfo;>;"
    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 233
    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mUsbDevices:Ljava/util/List;

    if-nez v3, :cond_0

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mUsbDevices:Ljava/util/List;

    .line 238
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 239
    .local v0, "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mUsbDevices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :cond_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mUsbDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mUsbDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 243
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 244
    .restart local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "enumName":Ljava/lang/String;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mUsbDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 246
    .local v2, "usbDevInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCameraName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setCameraName(Ljava/lang/String;)V

    goto :goto_2

    .line 255
    .end local v0    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v1    # "enumName":Ljava/lang/String;
    .end local v2    # "usbDevInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :cond_4
    iput-object p2, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    .line 256
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->updateList()V

    .line 257
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcn/com/magnity/magnitymx/data/DeviceInfo;>;>;"
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;

    .line 262
    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoader:Landroid/support/v4/content/Loader;

    .line 263
    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoadManager:Landroid/support/v4/app/LoaderManager;

    .line 264
    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    .line 265
    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 266
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 143
    :cond_0
    return-void
.end method

.method public saveSelected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v0, "SELECTED_DEVICE"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    :cond_0
    return-void
.end method

.method public sendSelChangedMsgToAnotherListFragment()V
    .locals 4

    .prologue
    .line 156
    const-string v0, "mIsSelectedDeviceCloud"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 157
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "UPDATE_DEVICE_LIST"

    const-string v2, "PARAMETER1"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 96
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mDevices:Ljava/util/List;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoadManager:Landroid/support/v4/app/LoaderManager;

    const/16 v1, 0x912

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoader:Landroid/support/v4/content/Loader;

    .line 105
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ENUM_ONLINE_DEVICE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UPDATE_DEVICE_LIST"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "UPDATE_ENUM_DEVICE_INFO"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/MsgBus;->register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mTimer:Ljava/util/Timer;

    .line 110
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$2;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$2;-><init>(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 116
    return-void
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoadManager:Landroid/support/v4/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mLoadManager:Landroid/support/v4/app/LoaderManager;

    const/16 v1, 0x912

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 125
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MsgBus;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isOnlineDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "SELECTED_DEVICE_CHANGED"

    const-string v2, "PARAMETER1"

    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    const-string v4, "PARAMETER2"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V

    .line 136
    :cond_1
    return-void
.end method

.method public updateListAdapter(ILandroid/widget/Adapter;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v5, 0x1

    .line 174
    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;->getAdapterItemKeys()[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 176
    invoke-interface {p2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 177
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ne v0, p1, :cond_0

    .line 178
    aget-object v3, v2, v5

    const v4, 0x7f070061

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_0
    aget-object v3, v2, v5

    const v4, 0x7f0700ac

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 184
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    instance-of v3, p2, Landroid/widget/SimpleAdapter;

    if-eqz v3, :cond_2

    .line 185
    check-cast p2, Landroid/widget/SimpleAdapter;

    .end local p2    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 187
    :cond_2
    return-void
.end method

.method public updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 163
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 164
    return-void
.end method
