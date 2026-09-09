.class public interface abstract Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;
.super Ljava/lang/Object;
.source "IDeviceContract.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/online/IDeviceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPeerView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/com/magnity/magnitymx/base/IBaseView",
        "<",
        "Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addData(Lcn/com/magnity/magnitymx/device/DeviceGroup;)V
.end method

.method public abstract initData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshData(II)V
.end method

.method public abstract removeData(I)V
.end method

.method public abstract updateData(ILcn/com/magnity/magnitymx/device/DeviceGroup;)V
.end method
