.class public Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;
.super Ljava/lang/Object;
.source "LanguagePresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBasePresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "ILanguagePresenter"


# instance fields
.field private mView:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;)V
    .locals 3
    .param p1, "view"    # Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;->mView:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;

    .line 12
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;->mView:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;

    invoke-interface {v1, p0}, Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;->setPresenter(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmAppLocale()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "currentAppLocale":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;->mView:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;

    const-string v2, "auto"

    invoke-interface {v1, v2}, Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;->initData(Ljava/lang/String;)V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;->mView:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;->initData(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public save(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmAppLocale()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "oldLocale":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setmAppLocale(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcn/com/magnity/magnitymx/settings/language/LanguagePresenter;->mView:Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/settings/language/ILanguageContract$ILanguageBaseView;->exit()V

    .line 37
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/LanguageUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "systemLanguage":Ljava/lang/String;
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
