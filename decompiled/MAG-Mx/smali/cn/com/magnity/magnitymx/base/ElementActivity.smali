.class public Lcn/com/magnity/magnitymx/base/ElementActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ElementActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 19
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/LanguageUtils;->setSavedLocale(Landroid/content/Context;)V

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/LanguageUtils;->setSavedLocale(Landroid/content/Context;)V

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
