.class public interface abstract Lcn/com/magnity/magnitymx/camera/CameraView$Callback;
.super Ljava/lang/Object;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraOpened()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onFramePreview([BIII)V
.end method

.method public abstract onPictureTaken([B)V
.end method

.method public abstract onVideoRecorded(Ljava/lang/String;)V
.end method
