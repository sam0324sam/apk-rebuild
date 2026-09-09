.class public Lcn/com/magnity/magnitymx/settings/AccountActivity;
.super Lcn/com/magnity/magnitymx/base/ElementActivity;
.source "AccountActivity.java"


# static fields
.field private static final COMMON_USER:I = 0x14

.field private static final MANAGER_USER:I = 0xa

.field private static final SUPER_USER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AccountActivity"


# instance fields
.field private mApiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

.field private mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/ElementActivity;-><init>()V

    return-void
.end method

.method private logout()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/UserInfo;->logout()V

    .line 99
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->onBackPressed()V

    .line 100
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 32
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v7, 0x7f0a001d

    invoke-virtual {p0, v7}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    .line 35
    .local v3, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 37
    invoke-virtual {v3, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    :cond_0
    const v7, 0x7f0e00f2

    invoke-virtual {p0, v7}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->setTitle(I)V

    .line 41
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v5

    .line 42
    .local v5, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v7

    iput-object v7, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    .line 44
    const v7, 0x7f080149

    invoke-virtual {p0, v7}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "accountName":Landroid/widget/TextView;
    iget-object v7, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v7, 0x7f080148

    invoke-virtual {p0, v7}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "accountGroup":Landroid/widget/TextView;
    iget-object v7, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v7, 0x7f08014a

    invoke-virtual {p0, v7}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, "accountRank":Landroid/widget/TextView;
    const-string v6, ""

    .line 50
    .local v6, "rankStr":Ljava/lang/String;
    iget-object v7, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserRank()I

    move-result v7

    if-nez v7, :cond_2

    .line 51
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getServerBasicURL()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "basicUrl":Ljava/lang/String;
    new-instance v7, Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-direct {v7, v4}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mApiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    .line 61
    return-void

    .line 52
    .end local v4    # "basicUrl":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserRank()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    .line 53
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 54
    :cond_3
    iget-object v7, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserRank()I

    move-result v7

    const/16 v8, 0x14

    if-ne v7, v8, :cond_1

    .line 55
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 66
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 67
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/high16 v1, 0x7f080000

    if-ne v0, v1, :cond_1

    .line 73
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->logout()V

    .line 74
    new-instance v5, Lcn/com/magnity/magnitymx/settings/AccountActivity$1;

    invoke-direct {v5, p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity$1;-><init>(Lcn/com/magnity/magnitymx/settings/AccountActivity;)V

    .line 88
    .local v5, "apiCallback":Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity;->mApiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->userLogout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V

    .line 92
    .end local v5    # "apiCallback":Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 89
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/AccountActivity;->onBackPressed()V

    goto :goto_0
.end method
