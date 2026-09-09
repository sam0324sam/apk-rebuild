.class public interface abstract Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;
.super Ljava/lang/Object;
.source "IDownloadContract.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/update/IDownloadContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDownloadBaseView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/com/magnity/magnitymx/base/IBaseView",
        "<",
        "Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract error()V
.end method

.method public abstract finish()V
.end method

.method public abstract progress(JJ)V
.end method

.method public abstract start()V
.end method
