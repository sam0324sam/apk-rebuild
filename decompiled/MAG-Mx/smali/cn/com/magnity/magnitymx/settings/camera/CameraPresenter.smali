.class public Lcn/com/magnity/magnitymx/settings/camera/CameraPresenter;
.super Ljava/lang/Object;
.source "CameraPresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraPresenter"


# instance fields
.field private mView:Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;)V
    .locals 3
    .param p1, "view"    # Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraPresenter;->mView:Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;

    .line 14
    invoke-interface {p1, p0}, Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;->setPresenter(Ljava/lang/Object;)V

    .line 15
    const-string v1, "rotate"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 16
    .local v0, "currentRotate":I
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraPresenter;->mView:Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;->initData(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public save(I)V
    .locals 2
    .param p1, "rotate"    # I

    .prologue
    .line 21
    const-string v0, "MainActivityCx"

    const-string v1, "rotate save"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v0, "rotate"

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/util/SharedPreferencesUtils;->putIntWithCommit(Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
