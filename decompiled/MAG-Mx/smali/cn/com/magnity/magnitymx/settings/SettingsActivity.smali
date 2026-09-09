.class public Lcn/com/magnity/magnitymx/settings/SettingsActivity;
.super Lcn/com/magnity/magnitymx/base/ElementActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# instance fields
.field private mAccountName:Landroid/widget/TextView;

.field private mHasNew:Z

.field private mNewVersionIndicator:Landroid/view/View;

.field private mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/ElementActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mNewVersionIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mHasNew:Z

    return v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/settings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mHasNew:Z

    return p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)Lcn/com/magnity/magnitymx/util/ToastUtils;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    return-object v0
.end method

.method private checkForUpdate(Lio/reactivex/Observer;)V
    .locals 2
    .param p1, "observer"    # Lio/reactivex/Observer;

    .prologue
    .line 161
    new-instance v0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "updateRequest":Lcn/com/magnity/magnitymx/http/update/UpdateRequest;
    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->checkForUpdate(Lio/reactivex/Observer;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    .line 39
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v9, 0x7f0a0026

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 43
    .local v2, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 45
    invoke-virtual {v2, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    :cond_0
    const v9, 0x7f0e00f1

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->setTitle(I)V

    .line 49
    const v9, 0x7f080156

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mAccountName:Landroid/widget/TextView;

    .line 50
    new-instance v9, Lcn/com/magnity/magnitymx/util/ToastUtils;

    invoke-direct {v9}, Lcn/com/magnity/magnitymx/util/ToastUtils;-><init>()V

    iput-object v9, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    .line 52
    new-instance v7, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;

    invoke-direct {v7, p0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;-><init>(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)V

    .line 53
    .local v7, "settingsClickListener":Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;
    const v9, 0x7f08014c

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 54
    .local v1, "accountLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v9, 0x7f08014d

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 56
    .local v3, "cameraLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v9, 0x7f080153

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 58
    .local v5, "languagesLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v9, 0x7f080155

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 60
    .local v8, "themesLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v9, 0x7f08014e

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 62
    .local v4, "checkForUpdatesLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v9, 0x7f08014b

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .local v0, "aboutLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v9, 0x7f080154

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mNewVersionIndicator:Landroid/view/View;

    .line 67
    new-instance v6, Lcn/com/magnity/magnitymx/settings/SettingsActivity$1;

    invoke-direct {v6, p0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity$1;-><init>(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)V

    .line 83
    .local v6, "observer":Lio/reactivex/Observer;
    invoke-direct {p0, v6}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->checkForUpdate(Lio/reactivex/Observer;)V

    .line 84
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 137
    :pswitch_0
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onBackPressed()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onResume()V

    .line 146
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->updateAccountName()V

    .line 147
    return-void
.end method

.method public updateAccountName()V
    .locals 5

    .prologue
    .line 150
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 151
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v2

    .line 152
    .local v2, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "accountName":Ljava/lang/String;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v0    # "accountName":Ljava/lang/String;
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->mAccountName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
