.class public Lcn/com/magnity/magnitymx/MainActivity;
.super Lcn/com/magnity/magnitymx/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$IRoiSelectionChanged;
.implements Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;
.implements Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;,
        Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;,
        Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;,
        Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private isTunebarShown:Z

.field private mCaptureBtn:Landroid/widget/ImageView;

.field private mCaptureOptBtn:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHiddenTunebar:Landroid/view/View;

.field private mIsCapturing:Z

.field private mIsSelectedDeviceCloud:Z

.field private mLastActionTime:J

.field private mLiveBottomBar:Landroid/view/ViewGroup;

.field private mLiveFragment:Lcn/com/magnity/magnitymx/live/LiveFragment;

.field private mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

.field private mLogoTitle:Landroid/widget/ImageView;

.field private mMaxTraceAction:Landroid/widget/ImageView;

.field private mMediaBrowseBtn:Landroid/widget/ImageView;

.field private mOnlineDeviceBtn:Landroid/widget/ImageView;

.field private mPauseBtn:Landroid/widget/ImageView;

.field private mPtzBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRoiBtn:Landroid/widget/ImageView;

.field private mSettingsAction:Landroid/widget/ImageView;

.field private mShowTypeAction:Landroid/widget/ImageView;

.field private mShownTips:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;

.field private mToolbar:Landroid/view/View;

.field private mTuneAction:Landroid/widget/ImageView;

.field private mTunebarExpandIndicator:Landroid/widget/ImageView;

.field private mTunebarExpanded:Z

.field private mTunebarView:Landroid/view/View;

.field private mUpdateObserver:Lio/reactivex/Observer;

.field private mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    .line 103
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarExpanded:Z

    .line 107
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mIsSelectedDeviceCloud:Z

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPtzBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1002(Lcn/com/magnity/magnitymx/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity;->stopStitching(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/MainActivity;->startStitching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitymx/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mIsSelectedDeviceCloud:Z

    return v0
.end method

.method static synthetic access$1400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/MainActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$1600(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/MainActivity;->stopTimer()V

    return-void
.end method

.method static synthetic access$1700(Lcn/com/magnity/magnitymx/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarExpanded:Z

    return v0
.end method

.method static synthetic access$1702(Lcn/com/magnity/magnitymx/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarExpanded:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mHiddenTunebar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarExpandIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/com/magnity/magnitymx/MainActivity;)J
    .locals 2
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLastActionTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcn/com/magnity/magnitymx/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShownTips:Z

    return v0
.end method

.method static synthetic access$2200(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mSettingsAction:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMaxTraceAction:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/MainActivity;Landroid/widget/ImageView;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/MainActivity;->exchangeLogo(Landroid/widget/ImageView;IIZ)V

    return-void
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    return v0
.end method

.method static synthetic access$902(Lcn/com/magnity/magnitymx/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    return p1
.end method

.method private exchangeLogo(Landroid/widget/ImageView;IIZ)V
    .locals 7
    .param p1, "btn"    # Landroid/widget/ImageView;
    .param p2, "resIdOn"    # I
    .param p3, "resIdOff"    # I
    .param p4, "on"    # Z

    .prologue
    .line 538
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 539
    const v0, 0x7f010014

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 543
    .local v6, "anim":Landroid/view/animation/Animation;
    :goto_0
    new-instance v0, Lcn/com/magnity/magnitymx/MainActivity$4;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/MainActivity$4;-><init>(Lcn/com/magnity/magnitymx/MainActivity;ZLandroid/widget/ImageView;II)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 573
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 574
    return-void

    .line 541
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_0
    const v0, 0x7f01000a

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .restart local v6    # "anim":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private setToolbarButtonVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 404
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 405
    .local v0, "visibleFlag":I
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMaxTraceAction:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    return-void

    .line 404
    .end local v0    # "visibleFlag":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private startStitching()Z
    .locals 5

    .prologue
    .line 476
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/16 v1, 0x1f40

    const/16 v2, 0x3e8

    const/16 v3, 0x61a8

    const/16 v4, 0x11

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->startStitching(IIII)Z

    move-result v0

    return v0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 1160
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/MainActivity;->stopTimer()V

    .line 1161
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTimer:Ljava/util/Timer;

    .line 1162
    new-instance v0, Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;-><init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTimerTask:Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLastActionTime:J

    .line 1164
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTimerTask:Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShownTips:Z

    .line 1166
    return-void
.end method

.method private stopStitching(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 480
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopStitching(Z)V

    .line 481
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1172
    :cond_0
    return-void
.end method

.method private switchToFirstTask(Lcn/com/magnity/magnitymx/data/LocalConfig;)V
    .locals 9
    .param p1, "localConfig"    # Lcn/com/magnity/magnitymx/data/LocalConfig;

    .prologue
    const/4 v7, 0x2

    .line 1117
    :try_start_0
    new-instance v4, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;

    invoke-direct {v4}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;-><init>()V

    .line 1118
    .local v4, "parser":Lcn/com/magnity/magnitymx/task/ITaskParser;
    const/4 v5, 0x2

    new-array v2, v5, [J

    .line 1119
    .local v2, "ids":[J
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1120
    .local v1, "file":Ljava/io/File;
    invoke-interface {v4, v1, v2}, Lcn/com/magnity/magnitymx/task/ITaskParser;->parseFirstTask(Ljava/io/File;[J)[Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, "names":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-ne v5, v7, :cond_0

    .line 1122
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {p1, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskFirstName(Ljava/lang/String;)V

    .line 1123
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {p1, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskLastName(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p1, v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskIds([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "ids":[J
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "parser":Lcn/com/magnity/magnitymx/task/ITaskParser;
    :cond_0
    :goto_0
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v5

    const-string v6, "UPDATE_TASK_REFIMAGE_OVERLAY"

    const-string v7, "PARAMETER1"

    const-string v8, ""

    invoke-virtual {v5, v6, v7, v8}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to parse first task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLastActionTime:J

    .line 904
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 905
    .local v2, "loc":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 906
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 908
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 909
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    iget-object v11, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v2, v11

    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    .line 910
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 912
    .local v7, "rtTunebar":Landroid/graphics/Rect;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 913
    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    iget-object v11, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v2, v11

    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    .line 914
    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 915
    .local v4, "rtCaptureBtn":Landroid/graphics/Rect;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mOnlineDeviceBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 916
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    iget-object v11, p0, Lcn/com/magnity/magnitymx/MainActivity;->mOnlineDeviceBtn:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v2, v11

    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mOnlineDeviceBtn:Landroid/widget/ImageView;

    .line 917
    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 918
    .local v5, "rtOnlineDeviceBtn":Landroid/graphics/Rect;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 919
    new-instance v6, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    iget-object v11, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v2, v11

    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    .line 920
    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 924
    .local v6, "rtPauseBtn":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v0, v8

    .line 925
    .local v0, "eventRawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v1, v8

    .line 926
    .local v1, "eventRawY":I
    iget-boolean v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    if-eqz v8, :cond_0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 927
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 928
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 929
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 930
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    .line 931
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->updateTunebar()V

    .line 932
    const/4 v8, 0x0

    .line 950
    :goto_0
    return v8

    .line 935
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 936
    :cond_1
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isChildFragmentVisible(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 937
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getChildFragmentPos(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 938
    .local v3, "rt":Landroid/graphics/Rect;
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 939
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->hideChildFragment(I)V

    .line 940
    const/4 v8, 0x1

    goto :goto_0

    .line 942
    .end local v3    # "rt":Landroid/graphics/Rect;
    :cond_2
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isChildFragmentVisible(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 943
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getChildFragmentPos(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 944
    .restart local v3    # "rt":Landroid/graphics/Rect;
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 945
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->hideChildFragment(I)V

    .line 946
    const/4 v8, 0x1

    goto :goto_0

    .line 950
    .end local v3    # "rt":Landroid/graphics/Rect;
    :cond_3
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0
.end method

.method protected getActivityLayoutId()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0a0020

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 1136
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_0

    .line 1137
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->performClick()Z

    .line 1138
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;-><init>()V

    .line 1139
    .local v0, "dialog":Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1140
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShownTips:Z

    .line 1143
    .end local v0    # "dialog":Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    const-string v17, "MainActivity::onCreate"

    invoke-static/range {v17 .. v17}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string v17, "isTunebarShown"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    .line 131
    :cond_0
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v19, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z

    .line 135
    new-instance v5, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V

    .line 136
    .local v5, "clickListener":Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;
    new-instance v10, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;-><init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V

    .line 139
    .local v10, "longClickListener":Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;
    const v17, 0x7f0800e2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080196

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080016

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mSettingsAction:Landroid/widget/ImageView;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mSettingsAction:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080019

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mTuneAction:Landroid/widget/ImageView;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTuneAction:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080017

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f08000f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mMaxTraceAction:Landroid/widget/ImageView;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mMaxTraceAction:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mMaxTraceAction:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080197

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mLogoTitle:Landroid/widget/ImageView;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLogoTitle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v14, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;-><init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V

    .line 159
    .local v14, "tunebarClickListener":Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;
    const v17, 0x7f0801a2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0800e7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 162
    .local v11, "manualStretchLayout":Landroid/view/View;
    invoke-virtual {v11, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0800c7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 164
    .local v9, "isothermyLayout":Landroid/view/View;
    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080065

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 166
    .local v8, "emissivityLayout":Landroid/view/View;
    invoke-virtual {v8, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080043

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 168
    .local v7, "colorPaletteLayout":Landroid/view/View;
    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080183

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 170
    .local v13, "temperatureAlarmLayout":Landroid/view/View;
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080180

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 172
    .local v12, "taskManagerLayout":Landroid/view/View;
    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f08002a

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 174
    .local v4, "baseImageLayout":Landroid/view/View;
    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080027

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 176
    .local v3, "barcodeScanLayout":Landroid/view/View;
    invoke-virtual {v3, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080040

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 178
    .local v6, "codeStreamLayout":Landroid/view/View;
    invoke-virtual {v6, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0801a1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mHiddenTunebar:Landroid/view/View;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0801a3

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarExpandIndicator:Landroid/widget/ImageView;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarExpandIndicator:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/MainActivity;->updateTunebar()V

    .line 185
    const-string v18, "mag"

    const/16 v17, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v17, :pswitch_data_0

    .line 201
    :goto_1
    const v17, 0x7f0800d9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mLiveBottomBar:Landroid/view/ViewGroup;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveBottomBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f0800df

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mRoiBtn:Landroid/widget/ImageView;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveBottomBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f0800ea

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mMediaBrowseBtn:Landroid/widget/ImageView;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveBottomBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f0800da

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveBottomBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f0800db

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureOptBtn:Landroid/widget/ImageView;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveBottomBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f0800de

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveBottomBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f0800dd

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mOnlineDeviceBtn:Landroid/widget/ImageView;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mRoiBtn:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mMediaBrowseBtn:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureOptBtn:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mOnlineDeviceBtn:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    const v18, 0x7f0800e3

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v17

    check-cast v17, Lcn/com/magnity/magnitymx/live/LiveFragment;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mLiveFragment:Lcn/com/magnity/magnitymx/live/LiveFragment;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveFragment:Lcn/com/magnity/magnitymx/live/LiveFragment;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 220
    new-instance v17, Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-direct/range {v17 .. v17}, Lcn/com/magnity/magnitymx/live/LiveFragment;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mLiveFragment:Lcn/com/magnity/magnitymx/live/LiveFragment;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveFragment:Lcn/com/magnity/magnitymx/live/LiveFragment;

    move-object/from16 v18, v0

    const v19, 0x7f0800e3

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->addFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;IZ)V

    .line 226
    :cond_2
    new-instance v17, Lcn/com/magnity/magnitymx/live/LivePresenter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->start()V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mLiveFragment:Lcn/com/magnity/magnitymx/live/LiveFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setView(Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;Lcn/com/magnity/magnitymx/live/ILiveContract$IView;)V

    .line 231
    invoke-static/range {p0 .. p0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitymx/util/LocationUtils;->openLocationSwitch()V

    .line 232
    invoke-static/range {p0 .. p0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitymx/util/LocationUtils;->registerListener()Z

    .line 234
    new-instance v17, Lcn/com/magnity/magnitymx/MainActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/com/magnity/magnitymx/MainActivity$1;-><init>(Lcn/com/magnity/magnitymx/MainActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/MainActivity;->mUpdateObserver:Lio/reactivex/Observer;

    .line 272
    new-instance v15, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;-><init>(Ljava/lang/String;)V

    .line 273
    .local v15, "updateRequest":Lcn/com/magnity/magnitymx/http/update/UpdateRequest;
    if-nez p1, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mUpdateObserver:Lio/reactivex/Observer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->checkForUpdate(Lio/reactivex/Observer;)V

    .line 276
    :cond_3
    return-void

    .line 185
    .end local v15    # "updateRequest":Lcn/com/magnity/magnitymx/http/update/UpdateRequest;
    :sswitch_0
    const-string v19, "skld"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v17, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v19, "zhongxing"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v17, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v19, "hidelogo"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v17, 0x2

    goto/16 :goto_0

    .line 187
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080197

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 188
    .local v16, "v":Landroid/widget/ImageView;
    const v17, 0x7f0c000e

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 194
    .end local v16    # "v":Landroid/widget/ImageView;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/MainActivity;->mToolbar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f080197

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 195
    .restart local v16    # "v":Landroid/widget/ImageView;
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 185
    :sswitch_data_0
    .sparse-switch
        -0x727c801c -> :sswitch_1
        -0x69b0ce13 -> :sswitch_2
        0x35e5d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 875
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2, v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isChildFragmentVisible(I)Z

    move-result v0

    .line 876
    .local v0, "isSettingsVisible":Z
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2, v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isChildFragmentVisible(I)Z

    move-result v1

    .line 878
    .local v1, "isTaksVisible":Z
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 879
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isStitching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 880
    invoke-direct {p0, v3}, Lcn/com/magnity/magnitymx/MainActivity;->stopStitching(Z)V

    .line 882
    :cond_0
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onBackPressed()V

    .line 888
    :cond_1
    :goto_0
    return-void

    .line 883
    :cond_2
    if-eqz v0, :cond_3

    .line 884
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2, v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->hideChildFragment(I)V

    goto :goto_0

    .line 885
    :cond_3
    if-eqz v1, :cond_1

    .line 886
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2, v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->hideChildFragment(I)V

    goto :goto_0
.end method

.method public varargs onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Object:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "[TObject;)V"
        }
    .end annotation

    .prologue
    .local p3, "vals":[Ljava/lang/Object;, "[TObject;"
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1027
    sparse-switch p1, :sswitch_data_0

    .line 1113
    :goto_0
    return-void

    .line 1029
    :sswitch_0
    :try_start_0
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, p3, v9

    .line 1030
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1029
    invoke-interface {v7, v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setEnlargeParam(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v1

    .line 1111
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received wrong data from user settings - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 1034
    .end local v1    # "ex":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, p3, v9

    .line 1035
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1034
    invoke-interface {v7, v8, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setIsoParam(II)V

    goto :goto_0

    .line 1039
    :sswitch_2
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-interface {v7, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setEmissivity(F)V

    goto :goto_0

    .line 1043
    :sswitch_3
    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1044
    .local v3, "index":I
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v7}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setPaletteIndex(I)V

    .line 1045
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v7

    const-string v8, "UPDATE_PALETTE"

    const-string v9, "PARAMETER1"

    invoke-virtual {v7, v8, v9, v3}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1049
    .end local v3    # "index":I
    :sswitch_4
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setAlarmTemp(I)V

    goto/16 :goto_0

    .line 1053
    :sswitch_5
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v5

    .line 1054
    .local v5, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    const/4 v8, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_0
    move v7, v8

    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 1096
    .end local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :cond_1
    :goto_2
    :sswitch_6
    iget-object v8, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v7, v9

    invoke-interface {v8, v7}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setRefAlpha(F)V

    goto/16 :goto_0

    .line 1054
    .restart local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_7
    const-string v9, "task_changed"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :sswitch_8
    const-string v7, "task_reset"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_1

    :sswitch_9
    const-string v7, "task_delete"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    .line 1056
    :pswitch_0
    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskFileName(Ljava/lang/String;)V

    .line 1057
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskEnabled(Z)V

    .line 1058
    const-string v7, ""

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskFirstName(Ljava/lang/String;)V

    .line 1059
    const-string v7, ""

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskLastName(Ljava/lang/String;)V

    .line 1060
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskIds([J)V

    .line 1061
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setTaskData(Lcn/com/magnity/magnitymx/task/TaskData;)V

    .line 1062
    invoke-direct {p0, v5}, Lcn/com/magnity/magnitymx/MainActivity;->switchToFirstTask(Lcn/com/magnity/magnitymx/data/LocalConfig;)V

    goto :goto_2

    .line 1065
    :pswitch_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p3, v8

    .line 1066
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1068
    .local v2, "file":Ljava/io/File;
    :try_start_2
    invoke-static {v2}, Lcn/com/magnity/magnitymx/task/SqliteTask;->open(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 1075
    :try_start_3
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1071
    :cond_2
    :try_start_4
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->resetCaptureStatus()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1075
    :try_start_5
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    .line 1077
    :goto_3
    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1078
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->updateOrderForTaskData(I)V

    .line 1079
    invoke-direct {p0, v5}, Lcn/com/magnity/magnitymx/MainActivity;->switchToFirstTask(Lcn/com/magnity/magnitymx/data/LocalConfig;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 1072
    :catch_1
    move-exception v1

    .line 1073
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to reset capture status("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1075
    :try_start_7
    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    goto :goto_3

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {}, Lcn/com/magnity/magnitymx/task/SqliteTask;->close()V

    throw v7

    .line 1083
    .end local v2    # "file":Ljava/io/File;
    :pswitch_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p3, v8

    .line 1084
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1085
    .local v6, "target_file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1086
    .local v0, "deleted":Z
    if-eqz v0, :cond_1

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1087
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setTaskData(Lcn/com/magnity/magnitymx/task/TaskData;)V

    .line 1088
    const-string v7, ""

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskFileName(Ljava/lang/String;)V

    .line 1089
    const-string v7, ""

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskFirstName(Ljava/lang/String;)V

    .line 1090
    const-string v7, ""

    invoke-virtual {v5, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskLastName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1100
    .end local v0    # "deleted":Z
    .end local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    .end local v6    # "target_file":Ljava/io/File;
    :sswitch_a
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setStreamType(I)V

    .line 1103
    :sswitch_b
    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1104
    .local v4, "isResumePlay":Z
    if-eqz v4, :cond_3

    .line 1105
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->performClick()Z

    .line 1107
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShownTips:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 1027
    :sswitch_data_0
    .sparse-switch
        0x7f08002a -> :sswitch_6
        0x7f080040 -> :sswitch_a
        0x7f080043 -> :sswitch_3
        0x7f080065 -> :sswitch_2
        0x7f0800c7 -> :sswitch_1
        0x7f0800e7 -> :sswitch_0
        0x7f080180 -> :sswitch_5
        0x7f080183 -> :sswitch_4
        0x7f0a0043 -> :sswitch_b
    .end sparse-switch

    .line 1054
    :sswitch_data_1
    .sparse-switch
        0x4e29be15 -> :sswitch_8
        0x5559e9fa -> :sswitch_7
        0x5f26fda5 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 397
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->unregisterListener()V

    .line 398
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onDestroy()V

    .line 399
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopPlay()V

    .line 400
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stop()V

    .line 401
    return-void
.end method

.method public onDeviceConnectedChanged(Z)V
    .locals 4
    .param p1, "bConnected"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 410
    const-string v1, "mIsSelectedDeviceCloud"

    invoke-static {v1, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mIsSelectedDeviceCloud:Z

    .line 411
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity;->setToolbarButtonVisibility(Z)V

    .line 413
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 414
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    const/16 v2, 0x127

    invoke-static {p0, v1, v2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    .line 416
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->startVisibleCamera()V

    .line 424
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    .line 425
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isMaxTraceOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMaxTraceAction:Landroid/widget/ImageView;

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    :goto_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v1

    if-nez v1, :cond_5

    .line 432
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    :cond_1
    :goto_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPause()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 443
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    :goto_3
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mIsSelectedDeviceCloud:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShownTips:Z

    if-nez v1, :cond_2

    .line 449
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/MainActivity;->startTimer()V

    .line 451
    :cond_2
    return-void

    .line 420
    :cond_3
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopVisibleCamera()V

    goto :goto_0

    .line 428
    :cond_4
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMaxTraceAction:Landroid/widget/ImageView;

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 434
    :cond_5
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 437
    :cond_6
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1, v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isChildFragmentVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1, v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->hideChildFragment(I)V

    goto :goto_2

    .line 445
    :cond_7
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    const v2, 0x7f070092

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public onFunctionOpened(ILjava/lang/String;Z)[I
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "on"    # Z

    .prologue
    .line 996
    sparse-switch p1, :sswitch_data_0

    .line 1021
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 998
    :sswitch_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1, p3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->openManualEnlarge(Z)[I

    move-result-object v1

    goto :goto_1

    .line 1000
    :sswitch_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1, p3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->openIso(Z)[I

    move-result-object v1

    goto :goto_1

    .line 1002
    :sswitch_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1, p3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->openAlarm(Z)V

    goto :goto_0

    .line 1005
    :sswitch_3
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    .line 1006
    .local v0, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :cond_0
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1008
    :pswitch_0
    invoke-virtual {v0, p3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskEnabled(Z)V

    goto :goto_0

    .line 1006
    :sswitch_4
    const-string v2, "task_enable"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_5
    const-string v2, "task_gotonext"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    .line 1011
    :pswitch_1
    invoke-virtual {v0, p3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskGotoNextAuto(Z)V

    goto :goto_0

    .line 1017
    .end local v0    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_6
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1, p3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->openRef(Z)V

    goto :goto_0

    .line 996
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08002a -> :sswitch_6
        0x7f0800c7 -> :sswitch_1
        0x7f0800e7 -> :sswitch_0
        0x7f080180 -> :sswitch_3
        0x7f080183 -> :sswitch_2
    .end sparse-switch

    .line 1006
    :sswitch_data_1
    .sparse-switch
        -0x77cefbb0 -> :sswitch_5
        0x61559d7d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1175
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 1176
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 1177
    const/4 v0, 0x1

    .line 1179
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onPause()V

    .line 387
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPtzBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPtzBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 492
    iget-object v4, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 494
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_7

    .line 495
    aget-object v2, p2, v0

    .line 496
    .local v2, "permission":Ljava/lang/String;
    aget v3, p3, v0

    .line 498
    .local v3, "result":I
    if-eqz v3, :cond_1

    .line 494
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 504
    :pswitch_0
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getCaptureMode()I

    move-result v4

    if-nez v4, :cond_4

    .line 505
    iget-boolean v4, p0, Lcn/com/magnity/magnitymx/MainActivity;->mIsCapturing:Z

    if-eqz v4, :cond_0

    .line 506
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_3
    invoke-interface {v7, v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->capturePhoto(Z)V

    .line 507
    iget-object v4, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    .line 508
    iput-boolean v6, p0, Lcn/com/magnity/magnitymx/MainActivity;->mIsCapturing:Z

    goto :goto_1

    .line 502
    :sswitch_0
    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v6

    goto :goto_2

    :sswitch_1
    const-string v7, "android.permission.CAMERA"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    goto :goto_2

    :sswitch_2
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    move v4, v6

    .line 506
    goto :goto_3

    .line 511
    :cond_4
    iget-object v4, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isStitching()Z

    move-result v4

    if-nez v4, :cond_0

    .line 512
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/MainActivity;->startStitching()Z

    goto :goto_1

    .line 517
    :pswitch_1
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v4

    if-nez v4, :cond_5

    .line 518
    iget-object v4, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->startVisibleCamera()V

    .line 519
    invoke-virtual {v1, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setShowType(I)V

    .line 524
    :goto_4
    iget-object v7, p0, Lcn/com/magnity/magnitymx/MainActivity;->mShowTypeAction:Landroid/widget/ImageView;

    const v8, 0x7f070070

    const v9, 0x7f07006f

    .line 525
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v5

    .line 524
    :goto_5
    invoke-direct {p0, v7, v8, v9, v4}, Lcn/com/magnity/magnitymx/MainActivity;->exchangeLogo(Landroid/widget/ImageView;IIZ)V

    goto :goto_1

    .line 521
    :cond_5
    iget-object v4, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopVisibleCamera()V

    .line 522
    invoke-virtual {v1, v6}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setShowType(I)V

    goto :goto_4

    :cond_6
    move v4, v6

    .line 525
    goto :goto_5

    .line 528
    :pswitch_2
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/util/LocationUtils;->registerListener()Z

    goto/16 :goto_1

    .line 532
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 533
    return-void

    .line 502
    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_2
        0x1b9efa65 -> :sswitch_1
        0x516a29a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLastActionTime:J

    .line 281
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onResume()V

    .line 284
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 286
    .local v10, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 287
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "ssid":Ljava/lang/String;
    const-string v12, "MainActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onResume \u8fde\u63a5\u5230\u7f51\u7edc "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v12, "HERO-RC"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 291
    .local v4, "match":Z
    if-eqz v4, :cond_0

    .line 292
    const-string v12, "MainActivity"

    const-string v13, "connected to target wifi"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mSettingsAction:Landroid/widget/ImageView;

    const v13, 0x7f07009f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    const-string v12, "mIsPTZConnected"

    invoke-static {v12, v3}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 297
    :cond_0
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 298
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v2, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, v2}, Lcn/com/magnity/magnitymx/media/MediaUtils;->updateFileList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 301
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 302
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 303
    .local v5, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcn/com/magnity/magnitymx/MainActivity;->updateBrowseBtnImage(Ljava/lang/String;)V

    move-object v0, v1

    .line 310
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v12, Lcn/com/magnity/magnitymx/MainActivity$2;

    invoke-direct {v12, p0}, Lcn/com/magnity/magnitymx/MainActivity$2;-><init>(Lcn/com/magnity/magnitymx/MainActivity;)V

    iput-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPtzBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v7, "udpIntentFilter":Landroid/content/IntentFilter;
    const-string v12, "ptz_command"

    invoke-virtual {v7, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPtzBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v7}, Lcn/com/magnity/magnitymx/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    new-instance v12, Lcn/com/magnity/magnitymx/MainActivity$3;

    invoke-direct {v12, p0}, Lcn/com/magnity/magnitymx/MainActivity$3;-><init>(Lcn/com/magnity/magnitymx/MainActivity;)V

    iput-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v9, "wifiIntentFilter":Landroid/content/IntentFilter;
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v9, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v9}, Lcn/com/magnity/magnitymx/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    sget-boolean v12, Lcn/com/magnity/magnitymx/MagApp;->mIsForceLandscape:Z

    if-eqz v12, :cond_2

    .line 377
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v3, :cond_4

    .line 378
    .local v3, "isPortrait":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 379
    invoke-virtual {p0, v11}, Lcn/com/magnity/magnitymx/MainActivity;->setRequestedOrientation(I)V

    .line 382
    .end local v3    # "isPortrait":Z
    :cond_2
    return-void

    .line 306
    .end local v7    # "udpIntentFilter":Landroid/content/IntentFilter;
    .end local v9    # "wifiIntentFilter":Landroid/content/IntentFilter;
    .restart local v2    # "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMediaBrowseBtn:Landroid/widget/ImageView;

    const v13, 0x7f0c0004

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .end local v2    # "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "udpIntentFilter":Landroid/content/IntentFilter;
    .restart local v9    # "wifiIntentFilter":Landroid/content/IntentFilter;
    :cond_4
    move v3, v11

    .line 377
    goto :goto_1
.end method

.method public onRoiSelectionChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mLivePresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setRoiType(I)V

    .line 486
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 892
    const-string v0, "isTunebarShown"

    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 893
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 894
    return-void
.end method

.method public onStitchingStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 459
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMediaBrowseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mRoiBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mOnlineDeviceBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    return-void
.end method

.method public onStitchingStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mCaptureBtn:Landroid/widget/ImageView;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMediaBrowseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mRoiBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mOnlineDeviceBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    return-void
.end method

.method protected setBeforeLayout()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .prologue
    .line 455
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity;->setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V

    return-void
.end method

.method public updateBrowseBtnImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x38

    .line 955
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity;->mMediaBrowseBtn:Landroid/widget/ImageView;

    invoke-static {p1, v1, v1}, Lcn/com/magnity/magnitymx/media/BitmapUtilities;->getBitmapThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 956
    return-void
.end method

.method public updateTunebar()V
    .locals 12

    .prologue
    .line 959
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v11, 0x1

    .line 961
    .local v11, "isPortrait":Z
    :goto_0
    const/4 v1, 0x0

    .line 962
    .local v1, "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    const/4 v0, 0x0

    .line 963
    .local v0, "mShowAction":Landroid/view/animation/TranslateAnimation;
    if-eqz v11, :cond_1

    .line 964
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 967
    .end local v1    # "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    .restart local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 969
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 972
    .restart local v1    # "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 985
    :goto_1
    iget-boolean v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->isTunebarShown:Z

    if-nez v2, :cond_2

    .line 986
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 987
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :goto_2
    return-void

    .line 959
    .end local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "isPortrait":Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 974
    .restart local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    .restart local v1    # "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    .restart local v11    # "isPortrait":Z
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 977
    .restart local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 979
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 982
    .restart local v1    # "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_1

    .line 989
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 990
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity;->mTunebarView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
