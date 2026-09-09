.class Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v7

    .line 92
    .local v7, "isLogin":Z
    if-nez v7, :cond_0

    .line 93
    new-instance v8, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-direct {v8}, Lcn/com/magnity/magnitymx/login/LoginDialog;-><init>()V

    .line 94
    .local v8, "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v10, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Lcn/com/magnity/magnitymx/login/LoginDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {v0, v8}, Lcn/com/magnity/magnitymx/login/LoginPresenter;-><init>(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;)V

    goto :goto_0

    .line 97
    .end local v8    # "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    const-class v12, Lcn/com/magnity/magnitymx/settings/AccountActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    .end local v7    # "isLogin":Z
    :pswitch_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    const-class v12, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    const-class v12, Lcn/com/magnity/magnitymx/settings/language/LanguageActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    const-string v10, "mxHasNew"

    invoke-static {v10, v11}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v0, v10}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->access$102(Lcn/com/magnity/magnitymx/settings/SettingsActivity;Z)Z

    .line 110
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->access$100(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "verCode"

    invoke-static {v0, v11}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 112
    .local v9, "verCode":I
    const-string v0, "verName"

    const-string v10, ""

    invoke-static {v0, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "verName":Ljava/lang/String;
    const-string v0, "forceUpgrade"

    invoke-static {v0, v11}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 114
    .local v6, "forceUpdate":Z
    const-string v0, "apkUrl"

    const-string v10, ""

    invoke-static {v0, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "apkUrl":Ljava/lang/String;
    const-string v0, "description"

    const-string v10, ""

    invoke-static {v0, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "description":Ljava/lang/String;
    const-string v0, "descriptionEn"

    const-string v10, ""

    invoke-static {v0, v10}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "descriptionEn":Ljava/lang/String;
    new-instance v1, Lcn/com/magnity/magnitymx/update/UpdateDialog;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/update/UpdateDialog;-><init>()V

    .line 120
    .local v1, "dialog":Lcn/com/magnity/magnitymx/update/UpdateDialog;
    new-instance v0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/update/UpdatePresenter;-><init>(Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v10, Lcn/com/magnity/magnitymx/update/UpdateDialog;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "dialog":Lcn/com/magnity/magnitymx/update/UpdateDialog;
    .end local v2    # "verName":Ljava/lang/String;
    .end local v3    # "apkUrl":Ljava/lang/String;
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "descriptionEn":Ljava/lang/String;
    .end local v6    # "forceUpdate":Z
    .end local v9    # "verCode":I
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->access$200(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)Lcn/com/magnity/magnitymx/util/ToastUtils;

    move-result-object v0

    iget-object v10, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e00aa

    invoke-virtual {v0, v10, v11}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 127
    :pswitch_5
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$SettingsClickListener;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    const-class v12, Lcn/com/magnity/magnitymx/settings/AboutActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f08014b
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
