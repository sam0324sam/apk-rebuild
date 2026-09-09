.class public Lcn/com/magnity/magnitymx/live/LiveFragment;
.super Lcn/com/magnity/magnitymx/base/BaseFragment;
.source "LiveFragment.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/live/ILiveContract$IView;
.implements Lcn/com/magnity/magnitymx/dialog/IRoiAlarmFeedback;


# instance fields
.field private mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mIsPlayingTasksRemoveAnim:Z

.field private mLiveSurfaceView:Lcn/com/magnity/magnitymx/live/LiveSurfaceView;

.field private mLiveSurfaceViewMask:Landroid/widget/ImageView;

.field private mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

.field private mRootView:Landroid/view/View;

.field private mStitchCancelButton:Landroid/widget/ImageButton;

.field private mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

.field private mTasksView:Landroid/view/View;

.field private mVisibleView:Lcn/com/magnity/magnitymx/live/VisibleView;

.field private mWaiting:Landroid/view/View;

.field private mWaitingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/live/LiveFragment;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/live/LiveFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mStitchCancelButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/live/LiveFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mIsPlayingTasksRemoveAnim:Z

    return p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/live/LiveFragment;)Lcn/com/magnity/magnitymx/dialog/FragmentTask;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    return-object v0
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/live/LiveFragment;Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/dialog/FragmentTask;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/LiveFragment;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    return-object p1
.end method

.method private clearMask()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mLiveSurfaceViewMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 209
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mLiveSurfaceViewMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 210
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mLiveSurfaceViewMask:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    return-void
.end method

.method private orientationLocked(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    .line 106
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsForceLandscape:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public getChildFragmentPos(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 324
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 326
    .local v2, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 333
    :goto_0
    if-nez v2, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 340
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_1
    return-object v1

    .line 328
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :pswitch_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 337
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 338
    .local v0, "lt":[I
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 339
    aget v3, v0, v5

    aget v4, v0, v7

    aget v5, v0, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getFragmentLayoutId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0a004c

    return v0
.end method

.method public hideChildFragment(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/live/LiveFragment;->isChildFragmentVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 228
    :pswitch_0
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mIsPlayingTasksRemoveAnim:Z

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->removeTasksFragment()V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hidePrepareProgressBar()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->setVisibility(I)V

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->orientationLocked(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public hideWaitingDialog()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaiting:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaiting:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 152
    return-void
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "container"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f080179

    .line 63
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "LiveFragment::initView"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 67
    :cond_0
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mRootView:Landroid/view/View;

    .line 69
    const v0, 0x7f0800e0

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mLiveSurfaceView:Lcn/com/magnity/magnitymx/live/LiveSurfaceView;

    .line 70
    const v0, 0x7f0801b2

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/live/VisibleView;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mVisibleView:Lcn/com/magnity/magnitymx/live/VisibleView;

    .line 71
    const v0, 0x7f080119

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dinuscxj/progressbar/CircleProgressBar;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mLiveSurfaceView:Lcn/com/magnity/magnitymx/live/LiveSurfaceView;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mVisibleView:Lcn/com/magnity/magnitymx/live/VisibleView;

    invoke-interface {v0, v1, v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setSurfaceView(Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;)V

    .line 74
    const v0, 0x7f080173

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mStitchCancelButton:Landroid/widget/ImageButton;

    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mStitchCancelButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mStitchCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcn/com/magnity/magnitymx/live/LiveFragment$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/live/LiveFragment$1;-><init>(Lcn/com/magnity/magnitymx/live/LiveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0801b3

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaiting:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaiting:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {p0, v0, v1}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaitingText:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaitingText:Landroid/widget/TextView;

    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    const v0, 0x7f080176

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mLiveSurfaceViewMask:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcn/com/magnity/magnitymx/live/LiveFragment;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTasksView:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .line 98
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0, p2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setDeviceInfo(Landroid/os/Bundle;)V

    .line 103
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mStitchCancelButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChildFragmentVisible(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 266
    packed-switch p1, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 268
    :pswitch_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method final synthetic lambda$onStop$0$LiveFragment()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopPlay()V

    .line 174
    return-void
.end method

.method public onAlarmTempAdded(ILjava/lang/String;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lowerTemp"    # I
    .param p4, "higherTemp"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setRoiAlarmTemp(ILjava/lang/String;II)Z

    .line 360
    return-void
.end method

.method public onChangeToStitchingMode()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mStitchCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mStitchCancelButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public onDeviceConnectedChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 286
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/MainActivity;->onDeviceConnectedChanged(Z)V

    .line 289
    :cond_0
    return-void
.end method

.method public onPrepareProgressChanged(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->orientationLocked(Z)V

    .line 132
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    invoke-virtual {v0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/dinuscxj/progressbar/CircleProgressBar;->setVisibility(I)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->setProgress(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mCircularProgressBar:Lcom/dinuscxj/progressbar/CircleProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->setVisibility(I)V

    .line 138
    invoke-direct {p0, v2}, Lcn/com/magnity/magnitymx/live/LiveFragment;->orientationLocked(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;->onResume()V

    .line 181
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mDelayedStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mDelayedStopHandler:Landroid/os/Handler;

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->startPlay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->autoPlayUsbDeviceIfCan()V

    .line 189
    :cond_1
    return-void
.end method

.method public onRoiAdd(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {p1, p2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->newInstance(ILjava/lang/String;)Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;

    move-result-object v0

    .line 351
    .local v0, "dialog":Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 352
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "LiveFragment::onSaveInstanceState"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->saveDeviceInfo(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->hidePrepareProgressBar()V

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->orientationLocked(Z)V

    .line 165
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;->onStop()V

    .line 169
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mDelayedStopHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mDelayedStopHandler:Landroid/os/Handler;

    .line 171
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mDelayedStopHandler:Landroid/os/Handler;

    new-instance v1, Lcn/com/magnity/magnitymx/live/LiveFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/live/LiveFragment$$Lambda$0;-><init>(Lcn/com/magnity/magnitymx/live/LiveFragment;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_0
    return-void
.end method

.method public playCapturePhotoAnim()V
    .locals 3

    .prologue
    .line 215
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->clearMask()V

    .line 216
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 217
    .local v0, "animator":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mLiveSurfaceViewMask:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    return-void
.end method

.method public removeTasksFragment()V
    .locals 3

    .prologue
    .line 295
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mIsPlayingTasksRemoveAnim:Z

    if-eqz v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 300
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcn/com/magnity/magnitymx/live/LiveFragment$2;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/live/LiveFragment$2;-><init>(Lcn/com/magnity/magnitymx/live/LiveFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 319
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTasksView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected setBeforeLayout()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .prologue
    .line 204
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 205
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/live/LiveFragment;->setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V

    return-void
.end method

.method public showChildFragment(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/live/LiveFragment;->isChildFragmentVisible(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-boolean v2, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mIsPlayingTasksRemoveAnim:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getCameraInfo()Lcn/com/magnity/magnitymx/CameraInfoCompat;

    move-result-object v0

    .line 249
    .local v0, "camInfo":Lcn/com/magnity/magnitymx/CameraInfoCompat;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->type:Ljava/lang/String;

    const-string v3, "C1ProLt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/CameraInfoCompat;->type:Ljava/lang/String;

    const-string v3, "C1"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    new-instance v2, Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .line 255
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V

    .line 256
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 257
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f010011

    const v3, 0x7f010012

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 258
    const v2, 0x7f080179

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mTaskFragment:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "enterAnim"    # I

    .prologue
    .line 275
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 280
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 281
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    goto :goto_0
.end method

.method public showWaitingDialog()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaiting:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment;->mWaiting:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 146
    return-void
.end method

.method public updateBrowseBtnImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/MainActivity;->updateBrowseBtnImage(Ljava/lang/String;)V

    .line 346
    return-void
.end method
