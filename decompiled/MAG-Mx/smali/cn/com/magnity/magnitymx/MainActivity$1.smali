.class Lcn/com/magnity/magnitymx/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/MainActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$1;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 267
    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 14
    .param p1, "hasNew"    # Ljava/lang/Boolean;

    .prologue
    const/4 v13, 0x0

    .line 240
    const-string v0, "forceUpgrade"

    invoke-static {v0, v13}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 241
    .local v9, "forceUpgrade":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "verCode"

    invoke-static {v0, v13}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 243
    .local v11, "verCode":I
    const-string v0, "verName"

    const-string v12, ""

    invoke-static {v0, v12}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "verName":Ljava/lang/String;
    const-string v0, "forceUpgrade"

    invoke-static {v0, v13}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 245
    .local v8, "forceUpdate":Z
    const-string v0, "apkUrl"

    const-string v12, ""

    invoke-static {v0, v12}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "apkUrl":Ljava/lang/String;
    const-string v0, "description"

    const-string v12, ""

    invoke-static {v0, v12}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "description":Ljava/lang/String;
    const-string v0, "descriptionEn"

    const-string v12, ""

    invoke-static {v0, v12}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "descriptionEn":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 250
    new-instance v6, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;

    invoke-direct {v6}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;-><init>()V

    .line 251
    .local v6, "downloadProgressDialog":Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;
    const-string v0, "MAG-Mx-%s.apk"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v13

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "fileName":Ljava/lang/String;
    new-instance v0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-direct {v0, v6, v7, v3}, Lcn/com/magnity/magnitymx/update/DownloadPresenter;-><init>(Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity$1;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    .line 254
    .local v10, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v10, :cond_0

    .line 255
    const-class v0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 265
    .end local v2    # "verName":Ljava/lang/String;
    .end local v3    # "apkUrl":Ljava/lang/String;
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "descriptionEn":Ljava/lang/String;
    .end local v6    # "downloadProgressDialog":Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "forceUpdate":Z
    .end local v10    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v11    # "verCode":I
    :cond_0
    :goto_0
    return-void

    .line 259
    .restart local v2    # "verName":Ljava/lang/String;
    .restart local v3    # "apkUrl":Ljava/lang/String;
    .restart local v4    # "description":Ljava/lang/String;
    .restart local v5    # "descriptionEn":Ljava/lang/String;
    .restart local v8    # "forceUpdate":Z
    .restart local v11    # "verCode":I
    :cond_1
    new-instance v1, Lcn/com/magnity/magnitymx/update/UpdateDialog;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/update/UpdateDialog;-><init>()V

    .line 260
    .local v1, "dialog":Lcn/com/magnity/magnitymx/update/UpdateDialog;
    new-instance v0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/update/UpdatePresenter;-><init>(Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcn/com/magnity/magnitymx/MainActivity$1;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v12, Lcn/com/magnity/magnitymx/update/UpdateDialog;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v0, v12}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 236
    return-void
.end method
