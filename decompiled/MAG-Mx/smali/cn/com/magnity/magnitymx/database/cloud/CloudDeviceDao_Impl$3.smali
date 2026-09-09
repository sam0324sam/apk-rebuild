.class Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "CloudDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter",
        "<",
        "Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$3;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .locals 7
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 82
    iget v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->id:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 83
    const/4 v1, 0x2

    iget v2, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->deviceId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 84
    const/4 v1, 0x3

    iget v2, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->userId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 85
    iget-object v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 86
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 90
    :goto_0
    iget-object v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->serialNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 91
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 95
    :goto_1
    iget-object v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->label:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 96
    invoke-interface {p1, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 101
    :goto_2
    iget-boolean v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->isOnline:Z

    if-eqz v1, :cond_3

    .line 102
    .local v0, "_tmp":I
    :goto_3
    const/4 v1, 0x7

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 103
    const/16 v1, 0x8

    iget v2, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->id:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 104
    return-void

    .line 88
    .end local v0    # "_tmp":I
    :cond_0
    iget-object v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->serialNumber:Ljava/lang/String;

    invoke-interface {p1, v5, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object v1, p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->label:Ljava/lang/String;

    invoke-interface {p1, v6, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2

    .line 101
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p2, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "UPDATE OR ABORT `cloud_device` SET `id` = ?,`device_id` = ?,`user_id` = ?,`name` = ?,`serial_number` = ?,`label` = ?,`is_online` = ? WHERE `id` = ?"

    return-object v0
.end method
