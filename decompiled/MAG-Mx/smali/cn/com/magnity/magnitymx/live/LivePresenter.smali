.class public Lcn/com/magnity/magnitymx/live/LivePresenter;
.super Ljava/lang/Object;
.source "LivePresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;


# static fields
.field private static final CAPTURE_PHOTO_INTERVAL:I = 0x1f4

.field private static final MAX_ROI_NUM:I = 0xa

.field private static final MEDIA_STORE_WH_MAX:I = 0x280

.field private static final MEDIA_STORE_WH_MIN:I = 0x1e0

.field private static final MSG_PREPARE_PROGRESS:I = 0x4

.field private static final MSG_SNAP_VISIBLE:I = 0x2

.field private static final MSG_SNAP_VISIBLE_FINISHED:I = 0x3

.field private static final MSG_START_CAPTURE_PHOTO:I = 0x0

.field private static final MSG_STOP_CAPTURE_PHOTO:I = 0x1

.field private static final SELECTED_DEVICE_INFO:Ljava/lang/String; = "SELECTED_DEVICE_INFO"

.field public static final SETTINGS_FRAGMENT_TYPE:I = 0x0

.field public static final STANDING_BOOK_FRAGMENT_TYPE:I = 0x1


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCachedValue:Lcn/com/magnity/magnitymx/live/CachedValue;

.field private mCxDeviceModel:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

.field private mDeviceModel:Lcn/com/magnity/magnitymx/live/DeviceModel;

.field private mIsSnapFinished:Z

.field private mIsSurfaceCreated:Z

.field private mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

.field private mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

.field private mMainView:Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

.field private mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/live/RoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

.field private mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

.field private mTaskRefBitmap:Landroid/graphics/Bitmap;

.field private mTimeElapsedBegin:J

.field private mUiHandler:Landroid/os/Handler;

.field private mVideoEncoder:Lcn/com/magnity/magnitymx/live/VideoEncoder;

.field private mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

.field private mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

.field private volatile stitchStopPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcn/com/magnity/magnitymx/live/LivePresenter$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/live/LivePresenter$1;-><init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcn/com/magnity/magnitymx/live/LivePresenter$2;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/live/LivePresenter$2;-><init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mUiHandler:Landroid/os/Handler;

    .line 306
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 307
    new-instance v0, Lcn/com/magnity/magnitymx/live/DeviceModel;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/live/DeviceModel;-><init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mDeviceModel:Lcn/com/magnity/magnitymx/live/DeviceModel;

    .line 308
    new-instance v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;-><init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCxDeviceModel:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    .line 309
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCxDeviceModel:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    .line 310
    new-instance v0, Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/live/VideoEncoder;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVideoEncoder:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    .line 311
    new-instance v0, Lcn/com/magnity/magnitymx/live/CachedValue;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/live/CachedValue;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCachedValue:Lcn/com/magnity/magnitymx/live/CachedValue;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    .line 314
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getmMagSQLiteUtils()Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/live/LivePresenter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->actionSelectedDeviceChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/live/LivePresenter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->actionUpdatePalette(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/live/LivePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->setTaskCaptureStatusAndGotoNextTask()V

    return-void
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/live/LivePresenter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->actionGetDeviceInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/live/LivePresenter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->actionUpdateTaskRef(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMainView:Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    return-object v0
.end method

.method static synthetic access$702(Lcn/com/magnity/magnitymx/live/LivePresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSnapFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    return-object v0
.end method

.method static synthetic access$902(Lcn/com/magnity/magnitymx/live/LivePresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->stitchStopPending:Z

    return p1
.end method

.method private actionGetDeviceInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v0

    .line 175
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v1

    const-string v2, "SEND_DEVICE_INFO"

    const-string v3, "PARAMETER1"

    invoke-virtual {v1, v2, v3, v0}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    .end local v0    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :cond_0
    return-void
.end method

.method private actionSelectedDeviceChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 144
    const-string v3, "PARAMETER1"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 145
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    const-string v3, "PARAMETER2"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 146
    .local v1, "forced":Z
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->isSameDevice(Lcn/com/magnity/magnitymx/data/DeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->stopPlay()V

    .line 148
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCommunicationType()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 149
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getUsbType()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 150
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCxDeviceModel:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    .line 154
    :goto_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 155
    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->delayedStartPlay(I)V

    .line 157
    :cond_2
    return-void

    .line 152
    :cond_3
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mDeviceModel:Lcn/com/magnity/magnitymx/live/DeviceModel;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    goto :goto_0
.end method

.method private actionUpdatePalette(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v1, "PARAMETER1"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "paletteIndex":I
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setPaletteIndex(I)V

    .line 162
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 167
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setColorPalette(I)V

    .line 168
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    goto :goto_0
.end method

.method private actionUpdateTaskRef(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x7f0e007b

    const/4 v10, 0x0

    .line 183
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-nez v8, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->lockRefBitmap()V

    .line 189
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 190
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    const/4 v8, 0x0

    iput-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    .line 193
    :cond_2
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->unlockRefBitmap()V

    .line 195
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 196
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 197
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 200
    const-string v8, "PARAMETER1"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "taskRefPath":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    new-instance v2, Lcn/com/magnity/magnitymx/MDTCompat;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/MDTCompat;-><init>()V

    .line 213
    .local v2, "mdt":Lcn/com/magnity/magnitymx/MDTCompat;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v8, v6, v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->loadMDT(Ljava/lang/String;Lcn/com/magnity/magnitymx/MDTCompat;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcn/com/magnity/magnitymx/MDTCompat;->jpgBuf:[B

    if-nez v8, :cond_4

    .line 214
    :cond_3
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIrRefOn()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 215
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v8

    invoke-static {v8, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 216
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->lockRefBitmap()V

    .line 223
    iget-object v8, v2, Lcn/com/magnity/magnitymx/MDTCompat;->jpgBuf:[B

    iget-object v9, v2, Lcn/com/magnity/magnitymx/MDTCompat;->jpgBuf:[B

    array-length v9, v9

    invoke-static {v8, v10, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    .line 224
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_5

    .line 225
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIrRefOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 226
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v8

    invoke-static {v8, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 227
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 230
    :cond_5
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->unlockRefBitmap()V

    .line 233
    iget-object v8, v2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    if-eqz v8, :cond_0

    .line 234
    iget-object v5, v2, Lcn/com/magnity/magnitymx/MDTCompat;->labBuf:[Lcn/com/magnity/magnitymx/ROICompat;

    .line 236
    .local v5, "rois":[Lcn/com/magnity/magnitymx/ROICompat;
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v8, v2, Lcn/com/magnity/magnitymx/MDTCompat;->labSize:I

    if-ge v1, v8, :cond_6

    .line 238
    aget-object v3, v5, v1

    .line 239
    .local v3, "roi":Lcn/com/magnity/magnitymx/ROICompat;
    const/4 v7, -0x1

    .line 240
    .local v7, "type":I
    iget v8, v3, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    packed-switch v8, :pswitch_data_0

    .line 251
    :goto_2
    new-instance v4, Lcn/com/magnity/magnitymx/live/RoiInfo;

    invoke-direct {v4, v7}, Lcn/com/magnity/magnitymx/live/RoiInfo;-><init>(I)V

    .line 252
    .local v4, "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    iget v8, v3, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    iget v9, v3, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    invoke-virtual {v4, v8, v9}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setBeginPoint(II)V

    .line 253
    iget v8, v3, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    iget v9, v3, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    invoke-virtual {v4, v8, v9}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setEndPoint(II)V

    .line 254
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setFinished()V

    .line 255
    invoke-virtual {p0, v4, v10}, Lcn/com/magnity/magnitymx/live/LivePresenter;->addRoi(Lcn/com/magnity/magnitymx/live/RoiInfo;Z)Z

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    .end local v4    # "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    :pswitch_0
    const/4 v7, 0x0

    .line 243
    goto :goto_2

    .line 245
    :pswitch_1
    const/4 v7, 0x1

    .line 246
    goto :goto_2

    .line 248
    :pswitch_2
    const/4 v7, 0x2

    goto :goto_2

    .line 257
    .end local v3    # "roi":Lcn/com/magnity/magnitymx/ROICompat;
    .end local v7    # "type":I
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    goto/16 :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRoiName(I)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 1109
    const-string v3, ""

    .line 1110
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v4, "targetRoiNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/live/RoiInfo;

    .line 1112
    .local v1, "item":Lcn/com/magnity/magnitymx/live/RoiInfo;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 1113
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v2, ""

    .line 1114
    .local v2, "name":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1113
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1117
    .end local v1    # "item":Lcn/com/magnity/magnitymx/live/RoiInfo;
    :cond_2
    if-nez p1, :cond_5

    .line 1118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Pt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1124
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_4

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1126
    .restart local v2    # "name":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1127
    move-object v3, v2

    .line 1131
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    return-object v3

    .line 1119
    .end local v0    # "i":I
    :cond_5
    const/4 v5, 0x1

    if-ne p1, v5, :cond_6

    .line 1120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Rt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1121
    :cond_6
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 1122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Ln"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1124
    .restart local v0    # "i":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private setTaskCaptureStatusAndGotoNextTask()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v4, 0x1

    .line 813
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskGotoNextAuto()Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 817
    .local v7, "file":Ljava/io/File;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskIds()[J

    move-result-object v3

    .line 818
    .local v3, "currentIds":[J
    const-wide/16 v12, -0x1

    .line 819
    .local v12, "nextTaskId":J
    const/4 v8, 0x1

    .line 821
    .local v8, "isOk":Z
    :try_start_0
    invoke-static {v7}, Lcn/com/magnity/magnitymx/task/SqliteTask;->open(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 836
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto :goto_0

    .line 824
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    aget-wide v0, v3, v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/com/magnity/magnitymx/task/SqliteTask;->updateCaptureStatus(JI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 836
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto :goto_0

    .line 827
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v3, v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->updateOrderForTaskData([JI)V

    .line 828
    const/4 v0, 0x1

    aget-wide v0, v3, v0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/task/SqliteTask;->getNextTaskId(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v12

    .line 829
    const-wide/16 v0, 0x1

    cmp-long v0, v12, v0

    if-gez v0, :cond_4

    .line 830
    const/4 v8, 0x0

    .line 836
    :cond_4
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    .line 839
    :goto_1
    if-eqz v8, :cond_5

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskGotoNextAuto()Z

    move-result v0

    if-nez v0, :cond_6

    .line 840
    :cond_5
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "ACTION_UPDATE_TASK_TREE"

    const-string v2, "PARAMETER1"

    const-string v4, "PARAMETER2"

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;[JLjava/lang/String;[J)V

    goto :goto_0

    .line 832
    :catch_0
    move-exception v6

    .line 833
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to set task capture status or get next task ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    const/4 v8, 0x0

    .line 836
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto :goto_1

    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    throw v0

    .line 845
    :cond_6
    new-array v10, v14, [J

    .line 846
    .local v10, "nextIds":[J
    const/4 v9, 0x0

    .line 848
    .local v9, "names":[Ljava/lang/String;
    :try_start_4
    new-instance v11, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;

    invoke-direct {v11}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;-><init>()V

    .line 849
    .local v11, "taskParser":Lcn/com/magnity/magnitymx/task/ITaskParser;
    invoke-interface {v11, v7, v12, v13, v10}, Lcn/com/magnity/magnitymx/task/ITaskParser;->parseTask(Ljava/io/File;J[J)[Ljava/lang/String;

    move-result-object v9

    .line 850
    if-eqz v9, :cond_7

    array-length v0, v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ge v0, v14, :cond_8

    .line 851
    :cond_7
    const/4 v8, 0x0

    .line 858
    .end local v11    # "taskParser":Lcn/com/magnity/magnitymx/task/ITaskParser;
    :cond_8
    :goto_2
    if-eqz v8, :cond_9

    .line 859
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskFirstName(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    aget-object v1, v9, v4

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskLastName(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0, v10}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskIds([J)V

    .line 862
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "UPDATE_TASK_REFIMAGE_OVERLAY"

    const-string v2, "PARAMETER1"

    .line 863
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/FileUtils;->getCurrentTaskFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 862
    invoke-virtual {v0, v1, v2, v4}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "ACTION_UPDATE_TASK_TREE"

    const-string v2, "PARAMETER1"

    const-string v4, "PARAMETER2"

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;[JLjava/lang/String;[J)V

    goto/16 :goto_0

    .line 853
    :catch_1
    move-exception v6

    .line 854
    .restart local v6    # "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to parse task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 855
    const/4 v8, 0x0

    goto :goto_2

    .line 867
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_9
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "ACTION_UPDATE_TASK_TREE"

    const-string v2, "PARAMETER1"

    const-string v4, "PARAMETER2"

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;[JLjava/lang/String;[J)V

    goto/16 :goto_0
.end method

.method private toROICompat()[Lcn/com/magnity/magnitymx/ROICompat;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 873
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/ROICompat;>;"
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 876
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/com/magnity/magnitymx/live/RoiInfo;

    .line 877
    .local v6, "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 880
    new-instance v4, Lcn/com/magnity/magnitymx/ROICompat;

    invoke-direct {v4}, Lcn/com/magnity/magnitymx/ROICompat;-><init>()V

    .line 881
    .local v4, "roi":Lcn/com/magnity/magnitymx/ROICompat;
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 893
    const/4 v8, -0x1

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    .line 896
    :goto_1
    iput v9, v4, Lcn/com/magnity/magnitymx/ROICompat;->targetType:I

    .line 897
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getMaxTemp()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->maxTemp:I

    .line 898
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getMinTemp()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->minTemp:I

    .line 899
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getAveTemp()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->aveTemp:I

    .line 900
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getMaxPos()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->maxPos:I

    .line 901
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getMinPos()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->minPos:I

    .line 902
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 903
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointX()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    .line 904
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointY()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    .line 905
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointX()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    .line 906
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointY()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    .line 913
    :goto_2
    const v8, 0xffffff

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->color:I

    .line 914
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->emissivity:F

    .line 915
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getLowerAlarmTemp()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->lowerAlarmTemp:I

    .line 916
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getHigherAlarmTemp()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->upperAlarmTemp:I

    .line 917
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->name:Ljava/lang/String;

    .line 918
    iput v9, v4, Lcn/com/magnity/magnitymx/ROICompat;->reserved1:I

    .line 919
    iput v9, v4, Lcn/com/magnity/magnitymx/ROICompat;->reserved2:I

    .line 920
    iput v9, v4, Lcn/com/magnity/magnitymx/ROICompat;->reserved3:I

    .line 921
    iput v9, v4, Lcn/com/magnity/magnitymx/ROICompat;->reserved4:I

    .line 922
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 883
    :pswitch_0
    iput v9, v4, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    goto :goto_1

    .line 886
    :pswitch_1
    iput v11, v4, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    goto :goto_1

    .line 889
    :pswitch_2
    iput v10, v4, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    goto :goto_1

    .line 908
    :cond_1
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointX()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    .line 909
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointY()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    .line 910
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointX()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    .line 911
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointY()I

    move-result v8

    iput v8, v4, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    goto :goto_2

    .line 924
    .end local v4    # "roi":Lcn/com/magnity/magnitymx/ROICompat;
    .end local v6    # "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    :cond_2
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 926
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 927
    .local v2, "len":I
    if-ge v2, v10, :cond_4

    .line 928
    const/4 v5, 0x0

    .line 937
    :cond_3
    return-object v5

    .line 931
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lcn/com/magnity/magnitymx/ROICompat;

    .line 933
    .local v5, "roiCompats":[Lcn/com/magnity/magnitymx/ROICompat;
    const/4 v0, 0x0

    .line 934
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/magnity/magnitymx/ROICompat;

    .line 935
    .restart local v4    # "roi":Lcn/com/magnity/magnitymx/ROICompat;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v4, v5, v0

    move v0, v1

    .line 936
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCachedValue()V
    .locals 15

    .prologue
    .line 618
    new-instance v13, Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    invoke-direct {v13}, Lcn/com/magnity/magnitymx/StatisticInfoCompat;-><init>()V

    .line 619
    .local v13, "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 620
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0, v13}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getFrameStatisticInfo(Lcn/com/magnity/magnitymx/StatisticInfoCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCachedValue:Lcn/com/magnity/magnitymx/live/CachedValue;

    iget v1, v13, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxTemperature:I

    iput v1, v0, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxTemp:I

    .line 622
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCachedValue:Lcn/com/magnity/magnitymx/live/CachedValue;

    iget v1, v13, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxPos:I

    iput v1, v0, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxPos:I

    .line 623
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCachedValue:Lcn/com/magnity/magnitymx/live/CachedValue;

    iget v1, v13, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->minTemperature:I

    iput v1, v0, Lcn/com/magnity/magnitymx/live/CachedValue;->mMinTemp:I

    .line 624
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCachedValue:Lcn/com/magnity/magnitymx/live/CachedValue;

    iget v1, v13, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->minPos:I

    iput v1, v0, Lcn/com/magnity/magnitymx/live/CachedValue;->mMinPos:I

    .line 631
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 632
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/com/magnity/magnitymx/live/RoiInfo;

    .line 633
    .local v6, "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 639
    :pswitch_0
    const/4 v0, 0x5

    new-array v5, v0, [I

    .line 640
    .local v5, "info1":[I
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    .line 641
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointX()I

    move-result v1

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointY()I

    move-result v2

    .line 642
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointX()I

    move-result v3

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointY()I

    move-result v4

    .line 640
    invoke-interface/range {v0 .. v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getRectTemperatureInfo(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    const/4 v0, 0x0

    aget v7, v5, v0

    const/4 v0, 0x1

    aget v8, v5, v0

    const/4 v0, 0x2

    aget v9, v5, v0

    const/4 v0, 0x3

    aget v10, v5, v0

    const/4 v0, 0x4

    aget v11, v5, v0

    invoke-virtual/range {v6 .. v11}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setTempInfo(IIIII)V

    goto :goto_0

    .line 648
    .end local v5    # "info1":[I
    :pswitch_1
    const/4 v0, 0x5

    new-array v12, v0, [I

    .line 649
    .local v12, "info4":[I
    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    .line 650
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointX()I

    move-result v8

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointY()I

    move-result v9

    .line 651
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointX()I

    move-result v10

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointY()I

    move-result v11

    .line 649
    invoke-interface/range {v7 .. v12}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getLineTemperatureInfo(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    const/4 v0, 0x0

    aget v7, v12, v0

    const/4 v0, 0x1

    aget v8, v12, v0

    const/4 v0, 0x2

    aget v9, v12, v0

    const/4 v0, 0x3

    aget v10, v12, v0

    const/4 v0, 0x4

    aget v11, v12, v0

    invoke-virtual/range {v6 .. v11}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setTempInfo(IIIII)V

    goto :goto_0

    .line 658
    .end local v6    # "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    .end local v12    # "info4":[I
    :cond_2
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 660
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 661
    return-void

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOrderForTaskData([JI)V
    .locals 8
    .param p1, "ids"    # [J
    .param p2, "status"    # I

    .prologue
    .line 1524
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    if-eqz v2, :cond_2

    .line 1525
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/task/TaskData;->getParentItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 1526
    .local v1, "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v4

    const/4 v3, 0x0

    aget-wide v6, p1, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1527
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->getChilds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 1528
    .local v0, "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v4

    const/4 v3, 0x1

    aget-wide v6, p1, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/com/magnity/magnitymx/task/TreeItem;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1536
    .end local v0    # "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    .end local v1    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    :cond_2
    return-void
.end method


# virtual methods
.method public addRoi(Lcn/com/magnity/magnitymx/live/RoiInfo;Z)Z
    .locals 6
    .param p1, "roiInfo"    # Lcn/com/magnity/magnitymx/live/RoiInfo;
    .param p2, "isManual"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1078
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return v2

    .line 1082
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x9

    if-gt v4, v5, :cond_0

    .line 1097
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->getRoiName(I)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setName(Ljava/lang/String;)V

    .line 1100
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1102
    .local v0, "index":I
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_2

    if-eqz p2, :cond_2

    .line 1103
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v2, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->onRoiAdd(ILjava/lang/String;)V

    :cond_2
    move v2, v3

    .line 1105
    goto :goto_0
.end method

.method public autoPlayUsbDeviceIfCan()V
    .locals 14

    .prologue
    .line 1458
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v11

    .line 1464
    .local v11, "oldDeviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v9

    .line 1466
    .local v9, "ctx":Landroid/content/Context;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1467
    .local v10, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/coresdk/types/EnumInfo;>;"
    const v1, 0x833c

    const/4 v2, 0x1

    invoke-static {v9, v1, v2, v10}, Lcn/com/magnity/coresdk/MagDevice;->getDevices(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 1468
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1469
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/com/magnity/coresdk/types/EnumInfo;

    .line 1471
    .local v12, "terminal":Lcn/com/magnity/coresdk/types/EnumInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v1

    iget v2, v12, Lcn/com/magnity/coresdk/types/EnumInfo;->id:I

    if-eq v1, v2, :cond_0

    .line 1475
    :cond_2
    new-instance v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget-object v1, v12, Lcn/com/magnity/coresdk/types/EnumInfo;->name:Ljava/lang/String;

    const/4 v2, -0x1

    iget v3, v12, Lcn/com/magnity/coresdk/types/EnumInfo;->id:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;II)V

    .line 1477
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v1

    const-string v2, "SELECTED_DEVICE_CHANGED"

    const-string v3, "PARAMETER1"

    const-string v5, "PARAMETER2"

    const/4 v6, 0x1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V

    .line 1479
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_0

    .line 1480
    const-string v1, "autoPlayCx"

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 1485
    .end local v0    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v12    # "terminal":Lcn/com/magnity/coresdk/types/EnumInfo;
    :cond_3
    if-nez v11, :cond_0

    .line 1489
    const/4 v1, 0x1

    new-array v13, v1, [Lcn/com/magnity/sdk/types/EnumerationInfo;

    .line 1491
    .local v13, "terminals":[Lcn/com/magnity/sdk/types/EnumerationInfo;
    const v1, 0x833c

    const/4 v2, 0x2

    invoke-static {v9, v1, v2, v13}, Lcn/com/magnity/sdk/MagService;->getDevices(Landroid/content/Context;II[Lcn/com/magnity/sdk/types/EnumerationInfo;)I

    move-result v8

    .line 1492
    .local v8, "count":I
    if-lez v8, :cond_0

    .line 1493
    const/4 v1, 0x0

    aget-object v12, v13, v1

    .line 1494
    .local v12, "terminal":Lcn/com/magnity/sdk/types/EnumerationInfo;
    iget v1, v12, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1495
    new-instance v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iget-object v1, v12, Lcn/com/magnity/sdk/types/EnumerationInfo;->charCameraName:Ljava/lang/String;

    const/4 v2, -0x1

    iget v3, v12, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraIpOrUsbId:I

    iget v4, v12, Lcn/com/magnity/sdk/types/EnumerationInfo;->intControllerIp:I

    iget-object v5, v12, Lcn/com/magnity/sdk/types/EnumerationInfo;->charCameraMAC:Ljava/lang/String;

    iget v6, v12, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraType:I

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;II)V

    .line 1498
    .restart local v0    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v1

    const-string v2, "SELECTED_DEVICE_CHANGED"

    const-string v3, "PARAMETER1"

    const-string v5, "PARAMETER2"

    const/4 v6, 0x1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;I)V

    .line 1500
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_0

    .line 1501
    const-string v1, "autoPlayMx"

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "alpha"    # I

    .prologue
    .line 1367
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0, p1, p2, p3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public calculateNewImagePos()I
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-interface {v0, v1, v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->calculateNewImagePos(II)I

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getParentWidth()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    .line 493
    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getParentHeight()I

    move-result v2

    .line 492
    invoke-interface {v0, v1, v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->calculateNewImagePos(II)I

    move-result v0

    goto :goto_0
.end method

.method public capturePhoto(Z)V
    .locals 18
    .param p1, "visibleIncluded"    # Z

    .prologue
    .line 726
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSnapFinished:Z

    if-nez v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSnapFinished:Z

    .line 732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->playCapturePhotoAnim()V

    .line 735
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    sget-object v4, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mLastScanResult:Ljava/lang/String;

    const-string v6, ".jpg"

    invoke-static {v1, v4, v6}, Lcn/com/magnity/magnitymx/util/FileUtils;->generateMediaStoragePathName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 736
    .local v13, "fileIr":Ljava/io/File;
    if-eqz v13, :cond_0

    .line 740
    new-instance v11, Lcn/com/magnity/magnitymx/CameraInfoCompat;

    invoke-direct {v11}, Lcn/com/magnity/magnitymx/CameraInfoCompat;-><init>()V

    .line 741
    .local v11, "cameraInfo":Lcn/com/magnity/magnitymx/CameraInfoCompat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1, v11}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 742
    const-string v1, "Fail to get camera information"

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    goto :goto_0

    .line 748
    :cond_2
    iget v1, v11, Lcn/com/magnity/magnitymx/CameraInfoCompat;->bmpWidth:I

    iget v4, v11, Lcn/com/magnity/magnitymx/CameraInfoCompat;->bmpHeight:I

    if-le v1, v4, :cond_4

    .line 749
    const/16 v1, 0x280

    const/16 v4, 0x1e0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 754
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v9, :cond_0

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->saveDDT2Buffer()[B

    move-result-object v3

    .line 760
    .local v3, "ddt":[B
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->updateCachedValue()V

    .line 761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v1, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->fillSignedPicture(Landroid/graphics/Bitmap;)V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->toROICompat()[Lcn/com/magnity/magnitymx/ROICompat;

    move-result-object v5

    .line 766
    .local v5, "rois":[Lcn/com/magnity/magnitymx/ROICompat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 769
    const/4 v2, 0x0

    .line 771
    .local v2, "irBuffer":[B
    :try_start_0
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 772
    .local v16, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    move-object/from16 v0, v16

    invoke-virtual {v9, v1, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 773
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 774
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 781
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 785
    :cond_3
    if-nez p1, :cond_7

    .line 786
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->saveMDT([B[B[B[Lcn/com/magnity/magnitymx/ROICompat;[B[BLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 787
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0e0044

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 798
    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSnapFinished:Z

    goto/16 :goto_0

    .line 751
    .end local v2    # "irBuffer":[B
    .end local v3    # "ddt":[B
    .end local v5    # "rois":[Lcn/com/magnity/magnitymx/ROICompat;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_4
    const/16 v1, 0x1e0

    const/16 v4, 0x280

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 775
    .restart local v2    # "irBuffer":[B
    .restart local v3    # "ddt":[B
    .restart local v5    # "rois":[Lcn/com/magnity/magnitymx/ROICompat;
    :catch_0
    move-exception v12

    .line 776
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Capture photo fail ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 776
    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 781
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 780
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 781
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    throw v1

    .line 790
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->updateBrowseBtnImage(Ljava/lang/String;)V

    .line 792
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->setTaskCaptureStatusAndGotoNextTask()V

    .line 793
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v1

    const/16 v4, 0xa

    invoke-static {v1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v17

    .line 794
    .local v17, "sn_str":Ljava/lang/String;
    invoke-static {v13}, Lcn/com/magnity/magnitymx/util/ParseUtils;->calcMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    .line 796
    .local v14, "md5_str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMagSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v4, v14, v6}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 800
    .end local v14    # "md5_str":Ljava/lang/String;
    .end local v17    # "sn_str":Ljava/lang/String;
    :cond_7
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 801
    .local v15, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v15, Landroid/os/Message;->what:I

    .line 802
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 803
    .local v10, "bundle":Landroid/os/Bundle;
    const-string v1, "pathName"

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v1, "irData"

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 805
    const-string v1, "ddtData"

    invoke-virtual {v10, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 806
    const-string v1, "roiData"

    invoke-virtual {v10, v1, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 807
    invoke-virtual {v15, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public captureVideo(Z)Z
    .locals 1
    .param p1, "bStart"    # Z

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1362
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0, p1, p2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public correctTemperature(IFI)I
    .locals 1
    .param p1, "t"    # I
    .param p2, "emissivity"    # F
    .param p3, "pos"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0, p1, p2, p3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->correctTemperature(IFI)I

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
    .line 665
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->correctTemperature(IFII)I

    move-result v0

    return v0
.end method

.method public delRoi(II)Z
    .locals 4
    .param p1, "sensorX"    # I
    .param p2, "sensorY"    # I

    .prologue
    .line 1148
    const/4 v1, 0x0

    .line 1150
    .local v1, "ret":Z
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1151
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/com/magnity/magnitymx/live/RoiInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/live/RoiInfo;

    .line 1153
    .local v2, "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    invoke-virtual {v2, p1, p2}, Lcn/com/magnity/magnitymx/live/RoiInfo;->isPointIn(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1154
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1155
    const/4 v1, 0x1

    .line 1159
    .end local v2    # "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    :cond_1
    return v1
.end method

.method public delayedStartPlay(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->onIrDrawingStart()V

    .line 574
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->delayedStartPlay(I)V

    goto :goto_0
.end method

.method public fillSignedPicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 979
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->fillSignedPicture(Landroid/graphics/Bitmap;)V

    .line 982
    :cond_0
    return-void
.end method

.method public getCachedValueModel()Lcn/com/magnity/magnitymx/live/CachedValue;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCachedValue:Lcn/com/magnity/magnitymx/live/CachedValue;

    return-object v0
.end method

.method public getCameraInfo()Lcn/com/magnity/magnitymx/CameraInfoCompat;
    .locals 2

    .prologue
    .line 1066
    new-instance v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/CameraInfoCompat;-><init>()V

    .line 1067
    .local v0, "cameraInfo":Lcn/com/magnity/magnitymx/CameraInfoCompat;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z

    .line 1068
    return-object v0
.end method

.method public getChildFragmentPos(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1354
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-nez v0, :cond_0

    .line 1355
    const/4 v0, 0x0

    .line 1357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->getChildFragmentPos(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getColorBarImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getOutputColorBarImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1213
    new-instance v0, Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/StatisticInfoCompat;-><init>()V

    .line 1214
    .local v0, "info":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getFrameStatisticInfo(Lcn/com/magnity/magnitymx/StatisticInfoCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1215
    const/4 v0, 0x0

    .line 1217
    .end local v0    # "info":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    :cond_0
    return-object v0
.end method

.method public getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    return-object v0
.end method

.method public getOutputTempImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getOutputTempImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOutputVideoImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getOutputVideoImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/live/RoiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskData()Lcn/com/magnity/magnitymx/task/TaskData;
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    return-object v0
.end method

.method public hideChildFragment(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1198
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->hideChildFragment(I)V

    .line 1201
    :cond_0
    return-void
.end method

.method public isChildFragmentVisible(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1205
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-nez v0, :cond_0

    .line 1206
    const/4 v0, 0x0

    .line 1208
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->isChildFragmentVisible(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isMgsRecording()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->isMgsRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVideoEncoder:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isStitching()Z
    .locals 2

    .prologue
    .line 1429
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1430
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->isStitching()Z

    move-result v0

    .line 1431
    .local v0, "ret":Z
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 1432
    return v0
.end method

.method public isSurfaceCreated()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSurfaceCreated:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 702
    return-void
.end method

.method public onDeviceConnectedChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 459
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->onDeviceConnectedChanged(Z)V

    .line 462
    :cond_0
    return-void
.end method

.method public onNewFrameCome(IIII)V
    .locals 1
    .param p1, "frameIndex"    # I
    .param p2, "cameraState"    # I
    .param p3, "reveFps"    # I
    .param p4, "drawFps"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->updateCachedValue()V

    .line 686
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->onDraw(IIII)V

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVideoEncoder:Lcn/com/magnity/magnitymx/live/VideoEncoder;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/VideoEncoder;->notify_()V

    .line 692
    :cond_2
    return-void

    .line 682
    :cond_3
    and-int/lit8 v0, p1, 0xf

    if-nez v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->updateCachedValue()V

    goto :goto_0
.end method

.method public onNewImagePosCalculated([I)V
    .locals 8
    .param p1, "size"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 498
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    if-nez v3, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getRotation(Landroid/content/Context;)I

    move-result v2

    .line 502
    .local v2, "orientation":I
    const/4 v0, 0x0

    .local v0, "dx":I
    const/4 v1, 0x0

    .line 503
    .local v1, "dy":I
    packed-switch v2, :pswitch_data_0

    .line 515
    :goto_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    aget v4, p1, v6

    aget v5, p1, v7

    invoke-interface {v3, v0, v1, v4, v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->calculateNewImagePos(IIII)V

    .line 516
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    aget v4, p1, v6

    aget v5, p1, v7

    invoke-interface {v3, v0, v1, v4, v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->calculateNewImagePos(IIII)V

    goto :goto_0

    .line 506
    :pswitch_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getParentWidth()I

    move-result v3

    aget v4, p1, v6

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 507
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getParentHeight()I

    move-result v3

    aget v4, p1, v7

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 508
    goto :goto_1

    .line 511
    :pswitch_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getParentWidth()I

    move-result v3

    aget v4, p1, v6

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 512
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getParentHeight()I

    move-result v3

    aget v4, p1, v7

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    goto :goto_1

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareProgressInBackground(II)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "percent"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    return-void
.end method

.method public openAlarm(Z)V
    .locals 1
    .param p1, "bOpen"    # Z

    .prologue
    .line 1339
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->openAlarm(Z)V

    .line 1340
    return-void
.end method

.method public openIso(Z)[I
    .locals 6
    .param p1, "bOpen"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1264
    if-eqz p1, :cond_1

    .line 1265
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getIsoTemp()[I

    move-result-object v2

    .line 1266
    .local v2, "temp":[I
    aget v3, v2, v4

    const/4 v4, 0x1

    aget v4, v2, v4

    if-lt v3, v4, :cond_0

    .line 1267
    new-instance v1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/StatisticInfoCompat;-><init>()V

    .line 1268
    .local v1, "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1269
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getFrameStatisticInfo(Lcn/com/magnity/magnitymx/StatisticInfoCompat;)Z

    .line 1270
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 1271
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    iget v4, v1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->aveTemperature:I

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x5

    iget v5, v1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxTemperature:I

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setIsoTemp(II)V

    .line 1284
    .end local v1    # "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    .end local v2    # "temp":[I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->openIso(Z)V

    .line 1285
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getIsoTemp()[I

    move-result-object v3

    return-object v3

    .line 1275
    :cond_1
    new-instance v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;-><init>()V

    .line 1276
    .local v0, "para":Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;
    const/4 v3, 0x5

    iput v3, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->range:I

    .line 1277
    iput v4, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->brightness:I

    .line 1278
    iput v4, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->contrast:I

    .line 1279
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1280
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setEnhancementMethod(Ljava/lang/Object;)Z

    .line 1281
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    goto :goto_0
.end method

.method public openManualEnlarge(Z)[I
    .locals 6
    .param p1, "bOpen"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1222
    if-eqz p1, :cond_1

    .line 1223
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getEnlargeTemp()[I

    move-result-object v2

    .line 1224
    .local v2, "temp":[I
    aget v3, v2, v4

    const/4 v4, 0x1

    aget v4, v2, v4

    if-lt v3, v4, :cond_0

    .line 1225
    new-instance v1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/StatisticInfoCompat;-><init>()V

    .line 1226
    .local v1, "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1227
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getFrameStatisticInfo(Lcn/com/magnity/magnitymx/StatisticInfoCompat;)Z

    .line 1228
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 1229
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    iget v4, v1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->minTemperature:I

    div-int/lit16 v4, v4, 0x3e8

    iget v5, v1, Lcn/com/magnity/magnitymx/StatisticInfoCompat;->maxTemperature:I

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setEnlargeTemp(II)V

    .line 1242
    .end local v1    # "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    .end local v2    # "temp":[I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->openManualEnlarge(Z)V

    .line 1243
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getEnlargeTemp()[I

    move-result-object v3

    return-object v3

    .line 1233
    :cond_1
    new-instance v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;-><init>()V

    .line 1234
    .local v0, "para":Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;
    const/4 v3, 0x5

    iput v3, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->range:I

    .line 1235
    iput v4, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->brightness:I

    .line 1236
    iput v4, v0, Lcn/com/magnity/sdk/types/AutoEnlargeEnhancement;->contrast:I

    .line 1237
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1238
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setEnhancementMethod(Ljava/lang/Object;)Z

    .line 1239
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    goto :goto_0
.end method

.method public openRef(Z)V
    .locals 1
    .param p1, "bOpen"    # Z

    .prologue
    .line 1349
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->openIrRef(Z)V

    .line 1350
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->pause()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->pause()V

    .line 552
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->postInvalidate(Z)V

    goto :goto_0
.end method

.method public postInvalidate(Z)V
    .locals 1
    .param p1, "bUpdateCachedValue"    # Z

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    .line 1170
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->updateCachedValue()V

    .line 1172
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->postInvalidate()V

    .line 1173
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->resume()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->resume()V

    goto :goto_0
.end method

.method public saveDeviceInfo(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 591
    if-eqz p1, :cond_0

    .line 592
    const-string v0, "SELECTED_DEVICE_INFO"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 594
    :cond_0
    return-void
.end method

.method public screenXY2SensorXY(II)[I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1042
    new-instance v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/CameraInfoCompat;-><init>()V

    .line 1043
    .local v0, "cameraInfo":Lcn/com/magnity/magnitymx/CameraInfoCompat;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z

    .line 1044
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1046
    .local v1, "coor":[I
    iget v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getLiveImageWidth()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v1, v5

    .line 1047
    iget v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    mul-int/2addr v3, p2

    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->getLiveImageHeight()I

    move-result v4

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v1, v6

    .line 1049
    aget v2, v1, v5

    if-gez v2, :cond_2

    .line 1050
    aput v5, v1, v5

    .line 1055
    :cond_0
    :goto_0
    aget v2, v1, v6

    if-gez v2, :cond_3

    .line 1056
    aput v5, v1, v6

    .line 1061
    :cond_1
    :goto_1
    return-object v1

    .line 1051
    :cond_2
    aget v2, v1, v5

    iget v3, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    .line 1052
    iget v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v5

    goto :goto_0

    .line 1057
    :cond_3
    aget v2, v1, v6

    iget v3, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 1058
    iget v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v6

    goto :goto_1
.end method

.method public sensorPos2ScreenXY(III)[I
    .locals 11
    .param p1, "pos"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 991
    new-instance v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/CameraInfoCompat;-><init>()V

    .line 992
    .local v0, "cameraInfo":Lcn/com/magnity/magnitymx/CameraInfoCompat;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v5, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z

    .line 993
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 998
    .local v1, "coor":[I
    :try_start_0
    iget v5, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    div-int v4, p1, v5

    .line 999
    .local v4, "y":I
    iget v5, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    mul-int/2addr v5, v4

    sub-int v3, p1, v5

    .line 1001
    .local v3, "x":I
    const/4 v5, 0x0

    mul-int v6, v3, p2

    iget v7, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    div-int/2addr v6, v7

    aput v6, v1, v5

    .line 1002
    const/4 v5, 0x1

    add-int/lit8 v6, p3, -0x1

    mul-int v7, v4, p3

    iget v8, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v3    # "x":I
    .end local v4    # "y":I
    :goto_0
    return-object v1

    .line 1003
    :catch_0
    move-exception v2

    .line 1004
    .local v2, "ex":Ljava/lang/Exception;
    aput v9, v1, v9

    .line 1005
    aput v9, v1, v10

    goto :goto_0
.end method

.method public sensorXY2ScreenXY(IIII)[I
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1013
    new-instance v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/CameraInfoCompat;-><init>()V

    .line 1014
    .local v0, "cameraInfo":Lcn/com/magnity/magnitymx/CameraInfoCompat;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v3, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z

    .line 1015
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1018
    .local v1, "coor":[I
    const/4 v3, 0x0

    mul-int v4, p1, p3

    :try_start_0
    iget v5, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaWidth:I

    div-int/2addr v4, v5

    aput v4, v1, v3

    .line 1019
    const/4 v3, 0x1

    add-int/lit8 v4, p4, -0x1

    mul-int v5, p2, p4

    iget v6, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->fpaHeight:I

    div-int/2addr v5, v6

    sub-int/2addr v4, v5

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    aget v3, v1, v7

    if-gez v3, :cond_2

    .line 1026
    aput v7, v1, v7

    .line 1031
    :cond_0
    :goto_1
    aget v3, v1, v8

    if-gez v3, :cond_3

    .line 1032
    aput v7, v1, v8

    .line 1037
    :cond_1
    :goto_2
    return-object v1

    .line 1020
    :catch_0
    move-exception v2

    .line 1021
    .local v2, "ex":Ljava/lang/Exception;
    aput v7, v1, v7

    .line 1022
    aput v7, v1, v8

    goto :goto_0

    .line 1027
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    aget v3, v1, v7

    add-int/lit8 v4, p3, -0x1

    if-le v3, v4, :cond_0

    .line 1028
    add-int/lit8 v3, p3, -0x1

    aput v3, v1, v7

    goto :goto_1

    .line 1033
    :cond_3
    aget v3, v1, v8

    add-int/lit8 v4, p4, -0x1

    if-le v3, v4, :cond_1

    .line 1034
    add-int/lit8 v3, p4, -0x1

    aput v3, v1, v8

    goto :goto_2
.end method

.method public setAlarmTemp(I)V
    .locals 1
    .param p1, "temp"    # I

    .prologue
    .line 1344
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setAlarmTemp(I)V

    .line 1345
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1437
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    .line 1438
    .local v0, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getCaptureMode()I

    move-result v1

    .line 1439
    .local v1, "oldMode":I
    if-ne p1, v1, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1443
    :cond_0
    if-nez p1, :cond_2

    .line 1444
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isStitching()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1445
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->stopStitching(Z)V

    .line 1453
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setCaptureMode(I)V

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-eqz v2, :cond_1

    .line 1449
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->onChangeToStitchingMode()V

    goto :goto_1
.end method

.method public setDeviceInfo(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 598
    if-eqz p1, :cond_1

    .line 599
    const-string v1, "SELECTED_DEVICE_INFO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 600
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCommunicationType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 602
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getUsbType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 603
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mCxDeviceModel:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    .line 608
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 610
    .end local v0    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :cond_1
    return-void

    .line 605
    .restart local v0    # "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mDeviceModel:Lcn/com/magnity/magnitymx/live/DeviceModel;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    goto :goto_0
.end method

.method public setEmissivity(F)V
    .locals 4
    .param p1, "val"    # F

    .prologue
    .line 1321
    const/4 v0, 0x0

    .line 1323
    .local v0, "bSetOk":Z
    new-instance v1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/CorrectionParaCompat;-><init>()V

    .line 1324
    .local v1, "param":Lcn/com/magnity/magnitymx/CorrectionParaCompat;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1325
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1326
    iput p1, v1, Lcn/com/magnity/magnitymx/CorrectionParaCompat;->fEmissivity:F

    .line 1327
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;Z)F

    .line 1328
    const/4 v0, 0x1

    .line 1330
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 1332
    if-eqz v0, :cond_1

    .line 1333
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v2, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->SetCorrectionParam(F)V

    .line 1335
    :cond_1
    return-void
.end method

.method public setEnlargeParam(II)V
    .locals 2
    .param p1, "lowTemp"    # I
    .param p2, "highTemp"    # I

    .prologue
    .line 1248
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v1, p1, p2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setEnlargeTemp(II)V

    .line 1249
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isManualEnlargeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    new-instance v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;-><init>()V

    .line 1251
    .local v0, "para":Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;
    mul-int/lit16 v1, p1, 0x3e8

    iput v1, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->lowerLimitTemp:I

    .line 1252
    mul-int/lit16 v1, p2, 0x3e8

    iput v1, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->upperLimitTemp:I

    .line 1253
    const/4 v1, 0x0

    iput v1, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->grayScale1:I

    .line 1254
    const/16 v1, 0xff

    iput v1, v0, Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;->grayScale2:I

    .line 1255
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1256
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setEnhancementMethod(Ljava/lang/Object;)Z

    .line 1258
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 1260
    .end local v0    # "para":Lcn/com/magnity/sdk/types/ManualEnlargeEnhancement;
    :cond_0
    return-void
.end method

.method public setIsoParam(II)V
    .locals 2
    .param p1, "lowTemp"    # I
    .param p2, "highTemp"    # I

    .prologue
    .line 1290
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v1, p1, p2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setIsoTemp(II)V

    .line 1291
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIsoOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    new-instance v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;-><init>()V

    .line 1293
    .local v0, "para":Lcn/com/magnity/sdk/types/IsoThermalEnhancement;
    mul-int/lit16 v1, p1, 0x3e8

    iput v1, v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;->lowerLimitTemp:I

    .line 1294
    mul-int/lit16 v1, p2, 0x3e8

    iput v1, v0, Lcn/com/magnity/sdk/types/IsoThermalEnhancement;->upperLimitTemp:I

    .line 1295
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1296
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->setEnhancementMethod(Ljava/lang/Object;)Z

    .line 1297
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 1299
    .end local v0    # "para":Lcn/com/magnity/sdk/types/IsoThermalEnhancement;
    :cond_0
    return-void
.end method

.method public setRefAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 954
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 955
    const/4 p1, 0x0

    .line 959
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setRefAlpha(F)V

    .line 960
    return-void

    .line 956
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 957
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setRoiAlarmTemp(ILjava/lang/String;II)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lowerTemp"    # I
    .param p4, "higherTemp"    # I

    .prologue
    .line 1136
    const/4 v0, 0x0

    .line 1138
    .local v0, "ret":Z
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1139
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/live/RoiInfo;

    invoke-virtual {v1, p3, p4}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setAlarmTempInfo(II)V

    .line 1140
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/live/RoiInfo;

    invoke-virtual {v1, p2}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setName(Ljava/lang/String;)V

    .line 1141
    const/4 v0, 0x1

    .line 1143
    :cond_0
    return v0
.end method

.method public setRoiType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1073
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setRoiType(I)V

    .line 1074
    return-void
.end method

.method public setStreamType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1303
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 1304
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 1305
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mRoiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1306
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/com/magnity/magnitymx/live/RoiInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/live/RoiInfo;

    .line 1308
    .local v1, "roi":Lcn/com/magnity/magnitymx/live/RoiInfo;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1309
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1312
    .end local v1    # "roi":Lcn/com/magnity/magnitymx/live/RoiInfo;
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 1314
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/com/magnity/magnitymx/live/RoiInfo;>;"
    :cond_2
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->stopPlay()V

    .line 1315
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v2, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setStreamType(I)V

    .line 1316
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->startPlay()Z

    .line 1317
    return-void
.end method

.method public setSurfaceView(Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;)V
    .locals 1
    .param p1, "surfaceView"    # Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;
    .param p2, "visibleSurfaceView"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    .prologue
    .line 320
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    .line 321
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->setPresenter(Ljava/lang/Object;)V

    .line 325
    :cond_0
    iput-object p2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    .line 326
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->setPresenter(Ljava/lang/Object;)V

    .line 329
    :cond_1
    return-void
.end method

.method public setTaskData(Lcn/com/magnity/magnitymx/task/TaskData;)V
    .locals 0
    .param p1, "taskData"    # Lcn/com/magnity/magnitymx/task/TaskData;

    .prologue
    .line 1551
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    .line 1552
    return-void
.end method

.method public setView(Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;Lcn/com/magnity/magnitymx/live/ILiveContract$IView;)V
    .locals 1
    .param p1, "mainView"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;
    .param p2, "view"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    .prologue
    .line 333
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMainView:Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

    .line 334
    iput-object p2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    .line 335
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->setPresenter(Ljava/lang/Object;)V

    .line 338
    :cond_0
    return-void
.end method

.method public setVisibleAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 942
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 943
    const p1, 0x3e4ccccd    # 0.2f

    .line 947
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->setVisibleAlpha(F)V

    .line 950
    :cond_1
    return-void

    .line 944
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 945
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public showChildFragment(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1191
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->showChildFragment(I)V

    .line 1194
    :cond_0
    return-void
.end method

.method public showWaitMessage()V
    .locals 3

    .prologue
    .line 964
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f0e005d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 965
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 342
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "LivePresenter::start()"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 345
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SELECTED_DEVICE_CHANGED"

    aput-object v4, v2, v3

    const-string v3, "UPDATE_PALETTE"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "GET_DEVICE_INFO"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UPDATE_TASK_REFIMAGE_OVERLAY"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/MsgBus;->register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "UPDATE_TASK_REFIMAGE_OVERLAY"

    const-string v2, "PARAMETER1"

    .line 354
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/FileUtils;->getCurrentTaskFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_1
    iput-boolean v5, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSnapFinished:Z

    .line 359
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "backgroundthread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 360
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 361
    new-instance v0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter$3;-><init>(Lcn/com/magnity/magnitymx/live/LivePresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundHandler:Landroid/os/Handler;

    .line 421
    return-void
.end method

.method public startMgsRecording()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    sget-object v2, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mLastScanResult:Ljava/lang/String;

    const-string v3, ".mgs"

    invoke-static {v1, v2, v3}, Lcn/com/magnity/magnitymx/util/FileUtils;->generateMediaStoragePathName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "mgsPathName":Ljava/io/File;
    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->startMgsRecording(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlay()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-nez v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v1

    .line 524
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->onIrDrawingStart()V

    .line 525
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->startPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    new-instance v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/CameraInfoCompat;-><init>()V

    .line 529
    .local v0, "cameraInfoCompat":Lcn/com/magnity/magnitymx/CameraInfoCompat;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z

    .line 530
    iget-object v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->type:Ljava/lang/String;

    const-string v3, "C1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->type:Ljava/lang/String;

    const-string v3, "C1ProLt"

    .line 531
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 532
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v2, v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskEnabled(Z)V

    .line 533
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v2, v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->openIrRef(Z)V

    .line 535
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startStitching(IIII)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "focusLength"    # I
    .param p4, "pixelSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 1372
    sget-boolean v2, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v2, :cond_0

    .line 1373
    const-string v2, "start stitching..."

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 1376
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1377
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->startStitching(IIII)Z

    move-result v0

    .line 1378
    .local v0, "ret":Z
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 1380
    if-nez v0, :cond_1

    .line 1381
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v2

    const v3, 0x7f0e0123

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1391
    :goto_0
    return v1

    .line 1384
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1385
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-eqz v1, :cond_2

    .line 1386
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->onChangeToStitchingMode()V

    .line 1388
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMainView:Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

    if-eqz v1, :cond_3

    .line 1389
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMainView:Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;->onStitchingStarted()V

    .line 1391
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startVisibleCamera()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->show(Z)V

    .line 1180
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MsgBus;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 427
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->lockRefBitmap()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskRefBitmap:Landroid/graphics/Bitmap;

    .line 434
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->unlockRefBitmap()V

    .line 438
    :cond_2
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mMainView:Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

    .line 439
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    .line 440
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    .line 441
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    .line 443
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 444
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundHandler:Landroid/os/Handler;

    .line 446
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 447
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 449
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 450
    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mUiHandler:Landroid/os/Handler;

    .line 452
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_3

    .line 453
    const-string v0, "LivePresenter::stop()"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 455
    :cond_3
    return-void
.end method

.method public stopMgsRecording()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->stopMgsRecording()V

    .line 94
    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->stopPlay()V

    .line 541
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mSurfaceView:Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;->onIrDrawingStopped()V

    .line 544
    :cond_0
    return-void
.end method

.method public stopStitching(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1407
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->isStitching()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1411
    :cond_0
    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->stitchStopPending:Z

    .line 1413
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    if-eqz v1, :cond_1

    .line 1414
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mView:Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->showWaitingDialog()V

    .line 1417
    :cond_1
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_2

    .line 1418
    const-string v1, "stop stitching..."

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 1421
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1422
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1423
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1424
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopVisibleCamera()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mVisibleView:Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->show(Z)V

    .line 1187
    :cond_0
    return-void
.end method

.method public surfaceCreated()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSurfaceCreated:Z

    .line 472
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->startPlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->autoPlayUsbDeviceIfCan()V

    .line 475
    :cond_0
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mIsSurfaceCreated:Z

    .line 485
    return-void
.end method

.method public timeElapsedBegin()V
    .locals 2

    .prologue
    .line 1509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTimeElapsedBegin:J

    .line 1510
    return-void
.end method

.method public timeElapsedEnd()J
    .locals 4

    .prologue
    .line 1514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTimeElapsedBegin:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public timeElapsedEnd(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTimeElapsedBegin:J

    sub-long v0, v2, v4

    .line 1520
    .local v0, "elapsed":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {p1, v2, v3, v4, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1521
    return-void
.end method

.method public triggerFFC()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->triggerFFC()V

    .line 587
    :cond_0
    return-void
.end method

.method public triggrtStitching()Z
    .locals 2

    .prologue
    .line 1396
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->stitchStopPending:Z

    if-eqz v1, :cond_0

    .line 1397
    const/4 v0, 0x0

    .line 1402
    :goto_0
    return v0

    .line 1399
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 1400
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->triggrtStitching()Z

    move-result v0

    .line 1401
    .local v0, "ret":Z
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mModel:Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 707
    return-void
.end method

.method public updateOrderForTaskData(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    .line 1540
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    if-eqz v2, :cond_1

    .line 1541
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LivePresenter;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/task/TaskData;->getParentItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 1542
    .local v1, "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->getChilds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 1543
    .local v0, "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/com/magnity/magnitymx/task/TreeItem;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1547
    .end local v0    # "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    .end local v1    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    :cond_1
    return-void
.end method
