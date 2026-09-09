.class public Lcn/com/magnity/magnitycx/SettingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingActivity.java"


# instance fields
.field fragmentSetting_:Lcn/com/magnity/magnitycx/FragmentSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e008b

    const/4 v4, 0x1

    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v3, 0x7f040021

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/SettingActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/SettingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 22
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 23
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/SettingActivity;->setTitle(I)V

    .line 27
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/SettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 28
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 29
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_0

    .line 30
    new-instance v3, Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-direct {v3}, Lcn/com/magnity/magnitycx/FragmentSetting;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/SettingActivity;->fragmentSetting_:Lcn/com/magnity/magnitycx/FragmentSetting;

    .line 31
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/SettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitycx/SettingActivity;->fragmentSetting_:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 51
    :pswitch_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 44
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u4e3b\u754c\u9762"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 38
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u4e3b\u754c\u9762"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method
