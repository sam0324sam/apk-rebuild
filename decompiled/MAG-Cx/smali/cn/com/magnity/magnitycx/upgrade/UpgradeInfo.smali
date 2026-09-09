.class public Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;
.super Ljava/lang/Object;
.source "UpgradeInfo.java"


# instance fields
.field private apkUrl_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private isForceUpgrade_:Z

.field private versionCode_:I

.field private versionName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->apkUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->versionCode_:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->versionName_:Ljava/lang/String;

    return-object v0
.end method

.method public isForceUpgrade()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->isForceUpgrade_:Z

    return v0
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->apkUrl_:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->description_:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setForceUpgrade(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->isForceUpgrade_:Z

    .line 44
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 19
    iput p1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->versionCode_:I

    .line 20
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeInfo;->versionName_:Ljava/lang/String;

    .line 12
    return-void
.end method
