.class Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "CloudDeviceRoomDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;
    .param p2, "x0"    # I

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS `cloud_device` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `device_id` INTEGER NOT NULL, `user_id` INTEGER NOT NULL, `name` TEXT, `serial_number` TEXT, `label` TEXT, `is_online` INTEGER NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_cloud_device_serial_number` ON `cloud_device` (`serial_number`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'3852915ec4e2432e915a97979f232c51\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 44
    const-string v2, "DROP TABLE IF EXISTS `cloud_device`"

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$000(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$100(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$200(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

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
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$300(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$400(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$500(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

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
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2, p1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$602(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 64
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2, p1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$700(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 65
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$800(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$900(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 67
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;->access$1000(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase_Impl;)Ljava/util/List;

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

    const/4 v0, 0x7

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    .local v7, "_columnsCloudDevice":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v12, "id"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "id"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v12, "device_id"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "device_id"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v12, "user_id"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "user_id"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
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

    .line 88
    const-string v12, "serial_number"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "serial_number"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v12, "label"

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v1, "label"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
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

    .line 91
    new-instance v9, Ljava/util/HashSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 92
    .local v9, "_foreignKeysCloudDevice":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v10, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 93
    .local v10, "_indicesCloudDevice":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v0, Landroidx/room/util/TableInfo$Index;

    const-string v1, "index_cloud_device_serial_number"

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

    .line 94
    new-instance v11, Landroidx/room/util/TableInfo;

    const-string v0, "cloud_device"

    invoke-direct {v11, v0, v7, v9, v10}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 95
    .local v11, "_infoCloudDevice":Landroidx/room/util/TableInfo;
    const-string v0, "cloud_device"

    invoke-static {p1, v0}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v8

    .line 96
    .local v8, "_existingCloudDevice":Landroidx/room/util/TableInfo;
    invoke-virtual {v11, v8}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloud_device(cn.com.magnity.magnitymx.database.cloud.CloudDevice).\n Expected:\n"

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

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    goto :goto_0
.end method
