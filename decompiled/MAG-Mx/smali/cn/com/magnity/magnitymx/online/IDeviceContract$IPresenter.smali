.class public interface abstract Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;
.super Ljava/lang/Object;
.source "IDeviceContract.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/online/IDeviceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract getSelected(I)Lcn/com/magnity/magnitymx/data/DeviceInfo;
.end method

.method public abstract loadSelected(Landroid/os/Bundle;)V
.end method

.method public abstract notifyLiveWindow()V
.end method

.method public abstract refresh()V
.end method

.method public abstract saveSelected(Landroid/os/Bundle;)V
.end method

.method public abstract sendSelChangedMsgToAnotherListFragment()V
.end method

.method public abstract updateListAdapter(ILandroid/widget/Adapter;)V
.end method

.method public abstract updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
.end method
