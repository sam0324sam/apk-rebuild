.class public interface abstract Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;
.super Ljava/lang/Object;
.source "CloudDeviceDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract deleteDevice(Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteUserDevices(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM cloud_device WHERE user_id=:userId"
    .end annotation
.end method

.method public abstract findCloudDeviceByName(Ljava/lang/String;)Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_device WHERE name = :name LIMIT 1"
    .end annotation
.end method

.method public abstract findCloudDeviceBySN(Ljava/lang/String;)Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_device WHERE serial_number = :sn LIMIT 1"
    .end annotation
.end method

.method public abstract insertDevice(Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract loadAllDevices()[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_device"
    .end annotation
.end method

.method public abstract loadUserDevices(I)[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_device WHERE user_id=:userId"
    .end annotation
.end method

.method public abstract updateDevice(Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
