.class public interface abstract Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;
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
    name = "IMainView"
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
.method public abstract onStitchingStarted()V
.end method

.method public abstract onStitchingStopped()V
.end method
