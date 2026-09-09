.class public Lcn/com/magnity/magnitymx/update/UpdatePresenter;
.super Ljava/lang/Object;
.source "UpdatePresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBasePresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdatePresenter"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;

.field private mView:Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "descriptionEn"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mView:Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;

    .line 17
    iget-object v3, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mView:Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;

    invoke-interface {v3, p0}, Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;->setPresenter(Ljava/lang/Object;)V

    .line 18
    iput-object p2, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mVersionName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mUrl:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/LanguageUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "systemLanguage":Ljava/lang/String;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmAppLocale()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "appLocale":Ljava/lang/String;
    const-string v1, ""

    .line 23
    .local v1, "language":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    iput-object p4, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mDescription:Ljava/lang/String;

    .line 33
    :goto_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mView:Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mVersionName:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mDescription:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 26
    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 31
    :cond_2
    iput-object p5, p0, Lcn/com/magnity/magnitymx/update/UpdatePresenter;->mDescription:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
