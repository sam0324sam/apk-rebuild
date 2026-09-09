.class public Lcn/com/magnity/magnitymx/online/DeviceListActivity;
.super Lcn/com/magnity/magnitymx/base/BaseActivity;
.source "DeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;
    }
.end annotation


# instance fields
.field private mOnlineFragment:Landroid/support/v4/app/Fragment;

.field private mPeerFragment:Landroid/support/v4/app/Fragment;

.field private mToolbar:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;-><init>()V

    return-void
.end method

.method private getColor_(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static newInstance()Lcn/com/magnity/magnitymx/online/DeviceListActivity;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getActivityLayoutId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0a0024

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f08005a

    const v5, 0x7f080059

    const/4 v4, 0x0

    .line 41
    const v2, 0x7f080103

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->obtainView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mToolbar:Landroid/view/View;

    .line 43
    new-instance v1, Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/online/DeviceListActivity;Lcn/com/magnity/magnitymx/online/DeviceListActivity$1;)V

    .line 44
    .local v1, "onClickListener":Lcn/com/magnity/magnitymx/online/DeviceListActivity$MagOnClickListener;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mToolbar:Landroid/view/View;

    const v3, 0x7f080196

    invoke-virtual {p0, v2, v3}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mToolbar:Landroid/view/View;

    const v3, 0x7f080015

    invoke-virtual {p0, v2, v3}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mToolbar:Landroid/view/View;

    const v3, 0x7f08000b

    invoke-virtual {p0, v2, v3}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->obtainView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 50
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mOnlineFragment:Landroid/support/v4/app/Fragment;

    .line 51
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mOnlineFragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mOnlineFragment:Landroid/support/v4/app/Fragment;

    .line 53
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mOnlineFragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v2, v5, v4}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->addFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;IZ)V

    .line 57
    :cond_0
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mPeerFragment:Landroid/support/v4/app/Fragment;

    .line 58
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mPeerFragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_1

    .line 59
    new-instance v2, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mPeerFragment:Landroid/support/v4/app/Fragment;

    .line 60
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mPeerFragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v2, v6, v4}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->addFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;IZ)V

    .line 64
    :cond_1
    new-instance v3, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mOnlineFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    .line 65
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-direct {v3, v2, v4, p0}, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;-><init>(Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;Landroid/support/v4/app/LoaderManager;Landroid/content/Context;)V

    .line 67
    new-instance v3, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/DeviceListActivity;->mPeerFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-direct {v3, v2, p0}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;-><init>(Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->onStart()V

    .line 73
    const v0, 0x3f4ccccd    # 0.8f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0, v1}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->setEffect(Landroid/content/Context;FF)V

    .line 74
    return-void
.end method

.method protected setBeforeLayout()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
