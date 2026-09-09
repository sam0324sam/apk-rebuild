.class public Lcn/com/magnity/magnitymx/media/MediaActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MediaActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;
.implements Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/media/MediaActivity$DelegateBackPressed;
    }
.end annotation


# instance fields
.field private cloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

.field private fragment_:Landroid/support/v4/app/Fragment;

.field private sync_error:Z

.field private sync_running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->sync_running:Z

    .line 32
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->sync_error:Z

    return-void
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/media/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->sync_running:Z

    return p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/media/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaActivity;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->sync_error:Z

    return v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/media/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->sync_error:Z

    return p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/media/MediaActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/media/MediaActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method private cancelDefaultAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x10100ae

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 77
    .local v2, "activityStyle":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 78
    .local v3, "windowAnimationStyleResId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 81
    .local v0, "activityCloseEnterAnimation":I
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 82
    .local v1, "activityCloseExitAnimation":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {p0, v0, v1}, Lcn/com/magnity/magnitymx/media/MediaActivity;->overridePendingTransition(II)V

    .line 84
    return-void

    .line 79
    nop

    :array_0
    .array-data 4
        0x10100ba
        0x10100bb
    .end array-data
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcn/com/magnity/magnitymx/media/MediaActivity$DelegateBackPressed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcn/com/magnity/magnitymx/media/MediaActivity$DelegateBackPressed;

    .line 118
    invoke-interface {v0}, Lcn/com/magnity/magnitymx/media/MediaActivity$DelegateBackPressed;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 121
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0800b3

    const/4 v3, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f0a0021

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/media/MediaActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->cancelDefaultAnimation()V

    .line 42
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 44
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 47
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    .line 48
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/media/FragmentMedia;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    .line 50
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 57
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->cloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->cloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cancel(Z)Z

    .line 73
    :cond_0
    return-void
.end method

.method public onModeChanged(III)V
    .locals 4
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    if-nez p3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->finish()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-nez p2, :cond_2

    .line 107
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_2
    if-ne p2, v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 111
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 200
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    .line 127
    :sswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->onBackPressed()V

    goto :goto_0

    .line 130
    :sswitch_1
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitymx/media/MediaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :sswitch_2
    new-instance v2, Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/media/MediaActivity$1;-><init>(Lcn/com/magnity/magnitymx/media/MediaActivity;)V

    .line 176
    .local v2, "listener":Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;
    new-instance v6, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;-><init>(Landroid/content/Context;Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;)V

    iput-object v6, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->cloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "file_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcn/com/magnity/magnitymx/media/MediaUtils;->updateFileList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 179
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v3

    .line 180
    .local v3, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v5

    .line 181
    .local v5, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    iget-boolean v6, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->sync_running:Z

    if-nez v6, :cond_0

    .line 183
    const v6, 0x7f0e012b

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->cloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    new-array v8, v10, [[Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    iput-boolean v10, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->sync_running:Z

    goto :goto_0

    .line 187
    :cond_0
    const v6, 0x7f0e0128

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_1
    new-instance v4, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-direct {v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;-><init>()V

    .line 191
    .local v4, "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 192
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v1, :cond_2

    .line 193
    const-class v6, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcn/com/magnity/magnitymx/login/LoginDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 194
    new-instance v6, Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {v6, v4}, Lcn/com/magnity/magnitymx/login/LoginPresenter;-><init>(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;)V

    .line 196
    :cond_2
    const v6, 0x7f0e0127

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080097 -> :sswitch_1
        0x7f0800b4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->cancelDefaultAnimation()V

    .line 64
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 65
    return-void
.end method

.method public onQueryResult(II)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "id"    # I

    .prologue
    .line 88
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;

    invoke-interface {v0, p1, p2}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;->onQueryResult(II)V

    .line 93
    :cond_0
    return-void
.end method

.method public onSelChanged(II)V
    .locals 4
    .param p1, "newSelCount"    # I
    .param p2, "count"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
