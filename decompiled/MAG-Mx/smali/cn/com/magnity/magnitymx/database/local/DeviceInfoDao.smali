.class public interface abstract Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;
.super Ljava/lang/Object;
.source "DeviceInfoDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract flush()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM local_device"
    .end annotation
.end method

.method public abstract insertDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract loadAllDeviceInfo()[Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_device"
    .end annotation
.end method

.method public abstract updateDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation
.end method
