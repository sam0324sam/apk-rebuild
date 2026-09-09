.class public interface abstract Lcn/com/magnity/magnitymx/live/ILiveContract$IView;
.super Ljava/lang/Object;
.source "ILiveContract.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/ILiveContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/com/magnity/magnitymx/base/IBaseView",
        "<",
        "Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getChildFragmentPos(I)Landroid/graphics/Rect;
.end method

.method public abstract hideChildFragment(I)V
.end method

.method public abstract hidePrepareProgressBar()V
.end method

.method public abstract hideWaitingDialog()V
.end method

.method public abstract isChildFragmentVisible(I)Z
.end method

.method public abstract onChangeToStitchingMode()V
.end method

.method public abstract onDeviceConnectedChanged(Z)V
.end method

.method public abstract onPrepareProgressChanged(I)V
.end method

.method public abstract onRoiAdd(ILjava/lang/String;)V
.end method

.method public abstract playCapturePhotoAnim()V
.end method

.method public abstract showChildFragment(I)V
.end method

.method public abstract showWaitingDialog()V
.end method

.method public abstract updateBrowseBtnImage(Ljava/lang/String;)V
.end method
