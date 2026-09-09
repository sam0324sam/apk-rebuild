.class public interface abstract Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;
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
    name = "IVisibleView"
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

.method public abstract capturePicture(Ljava/lang/String;)Z
.end method

.method public abstract capturePicture()[B
.end method

.method public abstract pause()Z
.end method

.method public abstract resume()Z
.end method

.method public abstract setVisibleAlpha(F)V
.end method

.method public abstract show(Z)V
.end method
