.class public interface abstract Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;
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
    name = "ISurfaceView"
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
.method public abstract calculateNewImagePos(IIII)V
.end method

.method public abstract fillSignedPicture(Landroid/graphics/Bitmap;)V
.end method

.method public abstract getLiveImageHeight()I
.end method

.method public abstract getLiveImageWidth()I
.end method

.method public abstract getParentHeight()I
.end method

.method public abstract getParentWidth()I
.end method

.method public abstract lockRefBitmap()V
.end method

.method public abstract onDraw(IIII)V
.end method

.method public abstract onIrDrawingStart()V
.end method

.method public abstract onIrDrawingStopped()V
.end method

.method public abstract unlockRefBitmap()V
.end method
