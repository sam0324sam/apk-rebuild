.class public Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;
.super Ljava/lang/Object;
.source "AppUpdateItem.java"


# static fields
.field public static final APK_URL:Ljava/lang/String; = "apkUrl"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DESCRIPTION_EN:Ljava/lang/String; = "descriptionEn"

.field public static final FORCE_UPGRADE:Ljava/lang/String; = "forceUpgrade"

.field public static final MX_HAS_NEW:Ljava/lang/String; = "mxHasNew"

.field public static final VER_CODE:Ljava/lang/String; = "verCode"

.field public static final VER_NAME:Ljava/lang/String; = "verName"


# instance fields
.field private apkUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private descriptionEn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description-en"
    .end annotation
.end field

.field private forceUpgrade:Z

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionEn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->descriptionEn:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->verCode:I

    return v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public isForceUpgrade()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->forceUpgrade:Z

    return v0
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->apkUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->description:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDescriptionEn(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionEn"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->descriptionEn:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setForceUpgrade(Z)V
    .locals 0
    .param p1, "forceUpgrade"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->forceUpgrade:Z

    .line 45
    return-void
.end method

.method public setVerCode(I)V
    .locals 0
    .param p1, "verCode"    # I

    .prologue
    .line 28
    iput p1, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->verCode:I

    .line 29
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "verName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/update/AppUpdateItem;->verName:Ljava/lang/String;

    .line 37
    return-void
.end method
