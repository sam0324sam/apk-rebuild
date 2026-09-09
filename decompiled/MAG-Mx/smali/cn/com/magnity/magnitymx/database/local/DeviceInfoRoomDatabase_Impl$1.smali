.class Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "DeviceInfoRoomDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;
    .param p2, "x0"    # I

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS `local_device` (`name` TEXT, `serial_number` INTEGER NOT NULL, `is_online` INTEGER NOT NULL, `is_cloud` INTEGER NOT NULL, `terminal_ip` INTEGER NOT NULL, `controller_ip` INTEGER NOT NULL, `mac` TEXT, `communication_type` INTEGER NOT NULL, `usb_type` INTEGER NOT NULL, `mWidthPixels` INTEGER NOT NULL, `mHeightPixels` INTEGER NOT NULL, `cam_name` TEXT, `cam_user` TEXT, `cam_pwd` TEXT, `cam_cmd_port` INTEGER NOT NULL, `cam_img_port` INTEGER NOT NULL, `cloud_ip` INTEGER NOT NULL, `cloud_cmd_port` INTEGER NOT NULL, `cloud_img_port` INTEGER NOT NULL, `cloud_user` TEXT, `cloud_pwd` TEXT, PRIMARY KEY(`serial_number`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_local_device_serial_number` ON `local_device` (`serial_number`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'2160d2cdd0c18e89625f36c263442529\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 44
    const-string v2, "DROP TABLE IF EXISTS `local_device`"

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$000(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$100(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$200(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 54
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$300(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$400(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$500(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 63
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2, p1}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$602(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 64
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2, p1}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$700(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 65
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$800(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$900(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 67
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;->access$1000(Lcn/com/magnity/magnitymx/database/local/DeviceInfoRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 79
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 74
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 75
    return-void
.end method

.method protected onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 13
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 83
    new-instance v7, Ljava/util/HashMap;

    const/16 v0, 0x15

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    .local v7, "_columnsLocalDevice":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v12, "name"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "name"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v12, "serial_number"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "serial_number"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v12, "is_online"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "is_online"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v12, "is_cloud"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "is_cloud"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v12, "terminal_ip"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "terminal_ip"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v12, "controller_ip"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "controller_ip"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v12, "mac"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "mac"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v12, "communication_type"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "communication_type"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v12, "usb_type"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "usb_type"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v12, "mWidthPixels"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "mWidthPixels"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v12, "mHeightPixels"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "mHeightPixels"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v12, "cam_name"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cam_name"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v12, "cam_user"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cam_user"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v12, "cam_pwd"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cam_pwd"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v12, "cam_cmd_port"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cam_cmd_port"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v12, "cam_img_port"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cam_img_port"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v12, "cloud_ip"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cloud_ip"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v12, "cloud_cmd_port"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cloud_cmd_port"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v12, "cloud_img_port"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cloud_img_port"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v12, "cloud_user"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cloud_user"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v12, "cloud_pwd"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "cloud_pwd"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v9, Ljava/util/HashSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 106
    .local v9, "_foreignKeysLocalDevice":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v10, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 107
    .local v10, "_indicesLocalDevice":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v0, Landroidx/room/util/TableInfo$Index;

    const-string v1, "index_local_device_serial_number"

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "serial_number"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v11, Landroidx/room/util/TableInfo;

    const-string v0, "local_device"

    invoke-direct {v11, v0, v7, v9, v10}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 109
    .local v11, "_infoLocalDevice":Landroidx/room/util/TableInfo;
    const-string v0, "local_device"

    invoke-static {p1, v0}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v8

    .line 110
    .local v8, "_existingLocalDevice":Landroidx/room/util/TableInfo;
    invoke-virtual {v11, v8}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_device(cn.com.magnity.magnitymx.data.DeviceInfo).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    goto :goto_0
.end method
