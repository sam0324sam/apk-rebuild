.class public Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;
.super Ljava/lang/Object;
.source "PeerDevicePresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerPresenter;


# static fields
.field private static final SELECTED_CHILD_POS:Ljava/lang/String; = "SELECTED_CHILD_POS"

.field private static final SELECTED_GROUP_POS:Ljava/lang/String; = "SELECTED_GROUP_POS"

.field private static final TAG:Ljava/lang/String; = "PeerDevicePresenter"


# instance fields
.field private mCloudDeviceDao:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;

.field private mContext:Landroid/content/Context;

.field private mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

.field private mDeviceGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

.field private mPeerView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedChildPos:I

.field private mSelectedGroupPos:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;Landroid/content/Context;)V
    .locals 1
    .param p1, "view"    # Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedGroupPos:I

    .line 49
    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedChildPos:I

    .line 55
    new-instance v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter$1;-><init>(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mPeerView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    .line 129
    iput-object p2, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mContext:Landroid/content/Context;

    .line 130
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mPeerView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;->setPresenter(Ljava/lang/Object;)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    .line 132
    return-void
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;Lcn/com/magnity/magnitymx/data/DeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    .prologue
    .line 37
    iget v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedGroupPos:I

    return v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedGroupPos:I

    return p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    .prologue
    .line 37
    iget v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedChildPos:I

    return v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedChildPos:I

    return p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mPeerView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getSelected(II)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 21
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .prologue
    .line 251
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-le v0, v2, :cond_1

    .line 252
    :cond_0
    const/4 v1, 0x0

    .line 276
    :goto_0
    return-object v1

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .line 255
    .local v16, "deviceGroup":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    invoke-virtual/range {v16 .. v16}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    invoke-virtual/range {v16 .. v16}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmCurrentDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v1

    goto :goto_0

    .line 258
    :cond_2
    if-ltz p2, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmDevices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p2

    if-le v0, v2, :cond_4

    .line 259
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmDevices()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/com/magnity/magnitymx/device/DeviceItem;

    .line 262
    .local v17, "deviceItem":Lcn/com/magnity/magnitymx/device/DeviceItem;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v18

    .line 263
    .local v18, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v20

    .line 264
    .local v20, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual/range {v18 .. v18}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getServerAddr()Ljava/lang/String;

    move-result-object v19

    .line 265
    .local v19, "serverAddr":Ljava/lang/String;
    const-string v15, "121.43.190.114"

    .line 266
    .local v15, "cloudIp":Ljava/lang/String;
    if-eqz v19, :cond_5

    invoke-static/range {v19 .. v19}, Lcn/com/magnity/magnitymx/util/Utils;->isIp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    move-object/from16 v15, v19

    .line 270
    :cond_5
    new-instance v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitymx/device/DeviceItem;->getDevice_name()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitymx/device/DeviceItem;->getSerial_number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const v5, 0x833c

    const v6, 0x833d

    .line 273
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserPwd()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(Ljava/lang/String;)I

    move-result v9

    const v10, 0x833c

    const v11, 0x833d

    .line 275
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserPwd()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 276
    .local v1, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    goto :goto_0
.end method

.method public loadSelected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 298
    const-string v0, "SELECTED_GROUP_POS"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedGroupPos:I

    .line 299
    const-string v0, "SELECTED_CHILD_POS"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedChildPos:I

    .line 301
    return-void
.end method

.method public notifyLiveWindow()V
    .locals 6

    .prologue
    .line 245
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "SELECTED_DEVICE_CHANGED"

    const-string v2, "PARAMETER1"

    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    const-string v4, "PARAMETER2"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public saveSelected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 291
    const-string v0, "SELECTED_GROUP_POS"

    iget v1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedGroupPos:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 292
    const-string v0, "SELECTED_CHILD_POS"

    iget v1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedChildPos:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 293
    return-void
.end method

.method public sendSelChangedMsgToAnotherListFragment()V
    .locals 4

    .prologue
    .line 228
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "UPDATE_DEVICE_LIST"

    const-string v2, "PARAMETER1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public start()V
    .locals 38

    .prologue
    .line 137
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UPDATE_DEVICE_LIST"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "ADD_DEVICE"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "EDIT_DEVICE"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "DELETE_DEVICE"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "UPDATE_ENUM_DEVICE_INFO"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcn/com/magnity/magnitymx/util/MsgBus;->register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v33

    .line 144
    .local v33, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCloudDeviceDao:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;

    if-nez v6, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->cloudDeviceDao()Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCloudDeviceDao:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;

    .line 147
    :cond_0
    invoke-virtual/range {v33 .. v33}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v35

    .line 148
    .local v35, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual/range {v35 .. v35}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCloudDeviceDao:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;

    invoke-virtual/range {v35 .. v35}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v7

    invoke-interface {v6, v7}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;->loadUserDevices(I)[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    move-result-object v23

    .line 150
    .local v23, "cloudDevices":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v28, "deviceItemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcn/com/magnity/magnitymx/device/DeviceItem;>;>;"
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v37, v0

    const/4 v6, 0x0

    move/from16 v36, v6

    :goto_0
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_4

    aget-object v4, v23, v36

    .line 152
    .local v4, "cloudDevice":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    new-instance v5, Lcn/com/magnity/magnitymx/device/DeviceItem;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->isOnline()Z

    move-result v6

    .line 153
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, ""

    const-wide/16 v12, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    iget v0, v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->deviceId:I

    move/from16 v22, v0

    invoke-direct/range {v5 .. v22}, Lcn/com/magnity/magnitymx/device/DeviceItem;-><init>(ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;DLjava/lang/String;ILjava/lang/String;IIIDI)V

    .line 156
    .local v5, "deviceItem":Lcn/com/magnity/magnitymx/device/DeviceItem;
    iget-object v6, v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->label:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v32, ""

    .line 157
    .local v32, "label":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/List;

    .line 159
    .local v34, "targetList":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    if-eqz v34, :cond_1

    .line 160
    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    :goto_2
    add-int/lit8 v6, v36, 0x1

    move/from16 v36, v6

    goto :goto_0

    .line 156
    .end local v32    # "label":Ljava/lang/String;
    .end local v34    # "targetList":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    :cond_2
    iget-object v0, v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->label:Ljava/lang/String;

    move-object/from16 v32, v0

    goto :goto_1

    .line 163
    .restart local v32    # "label":Ljava/lang/String;
    :cond_3
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .restart local v34    # "targetList":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 169
    .end local v4    # "cloudDevice":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v5    # "deviceItem":Lcn/com/magnity/magnitymx/device/DeviceItem;
    .end local v32    # "label":Ljava/lang/String;
    .end local v34    # "targetList":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    :cond_4
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e0054

    .line 168
    invoke-static {v6, v7}, Lcn/com/magnity/magnitymx/util/LanguageUtils;->getStringWithAppLocale(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    .line 170
    .local v24, "defaultGroupName":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    .line 171
    .local v29, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v32, v24

    .line 172
    .restart local v32    # "label":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 173
    .local v31, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    new-instance v25, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcn/com/magnity/magnitymx/device/DeviceGroup;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 174
    .local v25, "deviceGroup":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 171
    .end local v25    # "deviceGroup":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    .end local v31    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    .end local v32    # "label":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v32, v6

    goto :goto_4

    .line 178
    .end local v23    # "cloudDevices":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v24    # "defaultGroupName":Ljava/lang/String;
    .end local v28    # "deviceItemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcn/com/magnity/magnitymx/device/DeviceItem;>;>;"
    .end local v29    # "entry":Ljava/util/Map$Entry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    if-nez v6, :cond_7

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->deviceInfoDao()Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    .line 181
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    invoke-interface {v6}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;->loadAllDeviceInfo()[Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v27

    .line 182
    .local v27, "deviceInfos":[Lcn/com/magnity/magnitymx/data/DeviceInfo;
    move-object/from16 v0, v27

    array-length v7, v0

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_8

    aget-object v26, v27, v6

    .line 183
    .local v26, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    new-instance v30, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/com/magnity/magnitymx/device/DeviceGroup;-><init>(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 184
    .local v30, "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 187
    .end local v26    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v30    # "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->loadSelected(Landroid/os/Bundle;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mPeerView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;->initData(Ljava/util/ArrayList;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mPeerView:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;

    move-object/from16 v0, p0

    iget v7, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedGroupPos:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedChildPos:I

    invoke-interface {v6, v7, v8}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;->refreshData(II)V

    .line 197
    return-void
.end method

.method public stop()V
    .locals 8

    .prologue
    .line 201
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MsgBus;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isOnlineDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "SELECTED_DEVICE_CHANGED"

    const-string v2, "PARAMETER1"

    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    const-string v4, "PARAMETER2"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase;->deviceInfoDao()Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    .line 217
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;->flush()V

    .line 218
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .line 219
    .local v7, "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmCurrentDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v6

    .line 221
    .local v6, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mDeviceInfoDao:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;

    invoke-interface {v1, v6}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;->insertDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    goto :goto_0

    .line 224
    .end local v6    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v7    # "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    :cond_3
    return-void
.end method

.method public updateAdapter(IILandroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I
    .param p3, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 281
    instance-of v0, p3, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    if-eqz v0, :cond_0

    .line 282
    check-cast p3, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    .end local p3    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-virtual {p3, p1, p2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->setSelected(II)V

    .line 283
    iput p1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedGroupPos:I

    .line 284
    iput p2, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mSelectedChildPos:I

    .line 286
    :cond_0
    return-void
.end method

.method public updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 234
    if-eqz p1, :cond_1

    .line 235
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->mCurSelectedDevice:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 236
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->ismIsCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "mStreamType"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 239
    :cond_0
    const-string v0, "mIsSelectedDeviceCloud"

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->ismIsCloud()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 241
    :cond_1
    return-void
.end method
