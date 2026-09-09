.class public final Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;
.super Ljava/lang/Object;
.source "CloudDeviceDao_Impl.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfCloudDevice:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter",
            "<",
            "Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCloudDevice:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter",
            "<",
            "Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteUserDevices:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfCloudDevice:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter",
            "<",
            "Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    new-instance v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$1;-><init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__insertionAdapterOfCloudDevice:Landroidx/room/EntityInsertionAdapter;

    .line 63
    new-instance v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$2;-><init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__deletionAdapterOfCloudDevice:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 74
    new-instance v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$3;-><init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__updateAdapterOfCloudDevice:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 106
    new-instance v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl$4;-><init>(Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__preparedStmtOfDeleteUserDevices:Landroidx/room/SharedSQLiteStatement;

    .line 113
    return-void
.end method


# virtual methods
.method public deleteDevice(Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .locals 2
    .param p1, "device"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    .prologue
    .line 129
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 130
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__deletionAdapterOfCloudDevice:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 133
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 137
    return-void

    .line 135
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public deleteUserDevices(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 153
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 154
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__preparedStmtOfDeleteUserDevices:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    .line 155
    .local v1, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v0, 0x1

    .line 156
    .local v0, "_argIndex":I
    int-to-long v2, p1

    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 157
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 159
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 160
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 163
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__preparedStmtOfDeleteUserDevices:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 165
    return-void

    .line 162
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 163
    iget-object v3, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__preparedStmtOfDeleteUserDevices:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v2
.end method

.method public findCloudDeviceByName(Ljava/lang/String;)Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .locals 26
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v20, "SELECT * FROM cloud_device WHERE name = ? LIMIT 1"

    .line 260
    .local v20, "_sql":Ljava/lang/String;
    const-string v23, "SELECT * FROM cloud_device WHERE name = ? LIMIT 1"

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v21

    .line 261
    .local v21, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v11, 0x1

    .line 262
    .local v11, "_argIndex":I
    if-nez p1, :cond_0

    .line 263
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 267
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 270
    .local v12, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 271
    .local v14, "_cursorIndexOfId":I
    const-string v23, "device_id"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 272
    .local v13, "_cursorIndexOfDeviceId":I
    const-string v23, "user_id"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 273
    .local v19, "_cursorIndexOfUserId":I
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 274
    .local v17, "_cursorIndexOfName":I
    const-string v23, "serial_number"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 275
    .local v18, "_cursorIndexOfSerialNumber":I
    const-string v23, "label"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 276
    .local v16, "_cursorIndexOfLabel":I
    const-string v23, "is_online"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 278
    .local v15, "_cursorIndexOfIsOnline":I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 280
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 282
    .local v5, "_tmpDeviceId":I
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 284
    .local v6, "_tmpUserId":I
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "_tmpName":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "_tmpSerialNumber":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, "_tmpLabel":Ljava/lang/String;
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 292
    .local v22, "_tmp":I
    if-eqz v22, :cond_1

    const/4 v10, 0x1

    .line 293
    .local v10, "_tmpIsOnline":Z
    :goto_1
    new-instance v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    invoke-direct/range {v4 .. v10}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    .local v4, "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v5    # "_tmpDeviceId":I
    .end local v6    # "_tmpUserId":I
    .end local v7    # "_tmpName":Ljava/lang/String;
    .end local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .end local v9    # "_tmpLabel":Ljava/lang/String;
    .end local v10    # "_tmpIsOnline":Z
    .end local v22    # "_tmp":I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 301
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 298
    return-object v4

    .line 265
    .end local v4    # "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v12    # "_cursor":Landroid/database/Cursor;
    .end local v13    # "_cursorIndexOfDeviceId":I
    .end local v14    # "_cursorIndexOfId":I
    .end local v15    # "_cursorIndexOfIsOnline":I
    .end local v16    # "_cursorIndexOfLabel":I
    .end local v17    # "_cursorIndexOfName":I
    .end local v18    # "_cursorIndexOfSerialNumber":I
    .end local v19    # "_cursorIndexOfUserId":I
    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .restart local v5    # "_tmpDeviceId":I
    .restart local v6    # "_tmpUserId":I
    .restart local v7    # "_tmpName":Ljava/lang/String;
    .restart local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .restart local v9    # "_tmpLabel":Ljava/lang/String;
    .restart local v12    # "_cursor":Landroid/database/Cursor;
    .restart local v13    # "_cursorIndexOfDeviceId":I
    .restart local v14    # "_cursorIndexOfId":I
    .restart local v15    # "_cursorIndexOfIsOnline":I
    .restart local v16    # "_cursorIndexOfLabel":I
    .restart local v17    # "_cursorIndexOfName":I
    .restart local v18    # "_cursorIndexOfSerialNumber":I
    .restart local v19    # "_cursorIndexOfUserId":I
    .restart local v22    # "_tmp":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 296
    .end local v5    # "_tmpDeviceId":I
    .end local v6    # "_tmpUserId":I
    .end local v7    # "_tmpName":Ljava/lang/String;
    .end local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .end local v9    # "_tmpLabel":Ljava/lang/String;
    .end local v22    # "_tmp":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    goto :goto_2

    .line 300
    .end local v4    # "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v13    # "_cursorIndexOfDeviceId":I
    .end local v14    # "_cursorIndexOfId":I
    .end local v15    # "_cursorIndexOfIsOnline":I
    .end local v16    # "_cursorIndexOfLabel":I
    .end local v17    # "_cursorIndexOfName":I
    .end local v18    # "_cursorIndexOfSerialNumber":I
    .end local v19    # "_cursorIndexOfUserId":I
    :catchall_0
    move-exception v23

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 301
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v23
.end method

.method public findCloudDeviceBySN(Ljava/lang/String;)Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .locals 26
    .param p1, "sn"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v20, "SELECT * FROM cloud_device WHERE serial_number = ? LIMIT 1"

    .line 308
    .local v20, "_sql":Ljava/lang/String;
    const-string v23, "SELECT * FROM cloud_device WHERE serial_number = ? LIMIT 1"

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v21

    .line 309
    .local v21, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v11, 0x1

    .line 310
    .local v11, "_argIndex":I
    if-nez p1, :cond_0

    .line 311
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 315
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 318
    .local v12, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 319
    .local v14, "_cursorIndexOfId":I
    const-string v23, "device_id"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 320
    .local v13, "_cursorIndexOfDeviceId":I
    const-string v23, "user_id"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 321
    .local v19, "_cursorIndexOfUserId":I
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 322
    .local v17, "_cursorIndexOfName":I
    const-string v23, "serial_number"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 323
    .local v18, "_cursorIndexOfSerialNumber":I
    const-string v23, "label"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 324
    .local v16, "_cursorIndexOfLabel":I
    const-string v23, "is_online"

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 326
    .local v15, "_cursorIndexOfIsOnline":I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 328
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 330
    .local v5, "_tmpDeviceId":I
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 332
    .local v6, "_tmpUserId":I
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "_tmpName":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, "_tmpSerialNumber":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, "_tmpLabel":Ljava/lang/String;
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 340
    .local v22, "_tmp":I
    if-eqz v22, :cond_1

    const/4 v10, 0x1

    .line 341
    .local v10, "_tmpIsOnline":Z
    :goto_1
    new-instance v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    invoke-direct/range {v4 .. v10}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    .local v4, "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v5    # "_tmpDeviceId":I
    .end local v6    # "_tmpUserId":I
    .end local v7    # "_tmpName":Ljava/lang/String;
    .end local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .end local v9    # "_tmpLabel":Ljava/lang/String;
    .end local v10    # "_tmpIsOnline":Z
    .end local v22    # "_tmp":I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 346
    return-object v4

    .line 313
    .end local v4    # "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v12    # "_cursor":Landroid/database/Cursor;
    .end local v13    # "_cursorIndexOfDeviceId":I
    .end local v14    # "_cursorIndexOfId":I
    .end local v15    # "_cursorIndexOfIsOnline":I
    .end local v16    # "_cursorIndexOfLabel":I
    .end local v17    # "_cursorIndexOfName":I
    .end local v18    # "_cursorIndexOfSerialNumber":I
    .end local v19    # "_cursorIndexOfUserId":I
    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .restart local v5    # "_tmpDeviceId":I
    .restart local v6    # "_tmpUserId":I
    .restart local v7    # "_tmpName":Ljava/lang/String;
    .restart local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .restart local v9    # "_tmpLabel":Ljava/lang/String;
    .restart local v12    # "_cursor":Landroid/database/Cursor;
    .restart local v13    # "_cursorIndexOfDeviceId":I
    .restart local v14    # "_cursorIndexOfId":I
    .restart local v15    # "_cursorIndexOfIsOnline":I
    .restart local v16    # "_cursorIndexOfLabel":I
    .restart local v17    # "_cursorIndexOfName":I
    .restart local v18    # "_cursorIndexOfSerialNumber":I
    .restart local v19    # "_cursorIndexOfUserId":I
    .restart local v22    # "_tmp":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 344
    .end local v5    # "_tmpDeviceId":I
    .end local v6    # "_tmpUserId":I
    .end local v7    # "_tmpName":Ljava/lang/String;
    .end local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .end local v9    # "_tmpLabel":Ljava/lang/String;
    .end local v22    # "_tmp":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    goto :goto_2

    .line 348
    .end local v4    # "_result":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v13    # "_cursorIndexOfDeviceId":I
    .end local v14    # "_cursorIndexOfId":I
    .end local v15    # "_cursorIndexOfIsOnline":I
    .end local v16    # "_cursorIndexOfLabel":I
    .end local v17    # "_cursorIndexOfName":I
    .end local v18    # "_cursorIndexOfSerialNumber":I
    .end local v19    # "_cursorIndexOfUserId":I
    :catchall_0
    move-exception v23

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v23
.end method

.method public insertDevice(Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .locals 2
    .param p1, "device"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 118
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__insertionAdapterOfCloudDevice:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public loadAllDevices()[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .locals 27

    .prologue
    .line 169
    const-string v21, "SELECT * FROM cloud_device"

    .line 170
    .local v21, "_sql":Ljava/lang/String;
    const-string v24, "SELECT * FROM cloud_device"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v22

    .line 171
    .local v22, "_statement":Landroidx/room/RoomSQLiteQuery;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 174
    .local v11, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v24, "id"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 175
    .local v13, "_cursorIndexOfId":I
    const-string v24, "device_id"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 176
    .local v12, "_cursorIndexOfDeviceId":I
    const-string v24, "user_id"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 177
    .local v18, "_cursorIndexOfUserId":I
    const-string v24, "name"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 178
    .local v16, "_cursorIndexOfName":I
    const-string v24, "serial_number"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 179
    .local v17, "_cursorIndexOfSerialNumber":I
    const-string v24, "label"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 180
    .local v15, "_cursorIndexOfLabel":I
    const-string v24, "is_online"

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 181
    .local v14, "_cursorIndexOfIsOnline":I
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    move-object/from16 v20, v0

    .line 182
    .local v20, "_result":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    const/16 v19, 0x0

    .line 183
    .local v19, "_index":I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 186
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 188
    .local v5, "_tmpDeviceId":I
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 190
    .local v6, "_tmpUserId":I
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "_tmpName":Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "_tmpSerialNumber":Ljava/lang/String;
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "_tmpLabel":Ljava/lang/String;
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 198
    .local v23, "_tmp":I
    if-eqz v23, :cond_0

    const/4 v10, 0x1

    .line 199
    .local v10, "_tmpIsOnline":Z
    :goto_1
    new-instance v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    invoke-direct/range {v4 .. v10}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    .local v4, "_item":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->id:I

    .line 201
    aput-object v4, v20, v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    add-int/lit8 v19, v19, 0x1

    .line 203
    goto :goto_0

    .line 198
    .end local v4    # "_item":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v10    # "_tmpIsOnline":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 206
    .end local v5    # "_tmpDeviceId":I
    .end local v6    # "_tmpUserId":I
    .end local v7    # "_tmpName":Ljava/lang/String;
    .end local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .end local v9    # "_tmpLabel":Ljava/lang/String;
    .end local v23    # "_tmp":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 207
    invoke-virtual/range {v22 .. v22}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 204
    return-object v20

    .line 206
    .end local v12    # "_cursorIndexOfDeviceId":I
    .end local v13    # "_cursorIndexOfId":I
    .end local v14    # "_cursorIndexOfIsOnline":I
    .end local v15    # "_cursorIndexOfLabel":I
    .end local v16    # "_cursorIndexOfName":I
    .end local v17    # "_cursorIndexOfSerialNumber":I
    .end local v18    # "_cursorIndexOfUserId":I
    .end local v19    # "_index":I
    .end local v20    # "_result":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    :catchall_0
    move-exception v24

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 207
    invoke-virtual/range {v22 .. v22}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v24
.end method

.method public loadUserDevices(I)[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .locals 28
    .param p1, "userId"    # I

    .prologue
    .line 213
    const-string v22, "SELECT * FROM cloud_device WHERE user_id=?"

    .line 214
    .local v22, "_sql":Ljava/lang/String;
    const-string v25, "SELECT * FROM cloud_device WHERE user_id=?"

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v23

    .line 215
    .local v23, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v11, 0x1

    .line 216
    .local v11, "_argIndex":I
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v11, v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 220
    .local v12, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v25, "id"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 221
    .local v14, "_cursorIndexOfId":I
    const-string v25, "device_id"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 222
    .local v13, "_cursorIndexOfDeviceId":I
    const-string v25, "user_id"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 223
    .local v19, "_cursorIndexOfUserId":I
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 224
    .local v17, "_cursorIndexOfName":I
    const-string v25, "serial_number"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 225
    .local v18, "_cursorIndexOfSerialNumber":I
    const-string v25, "label"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 226
    .local v16, "_cursorIndexOfLabel":I
    const-string v25, "is_online"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 227
    .local v15, "_cursorIndexOfIsOnline":I
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    move-object/from16 v21, v0

    .line 228
    .local v21, "_result":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    const/16 v20, 0x0

    .line 229
    .local v20, "_index":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 232
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 234
    .local v5, "_tmpDeviceId":I
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 236
    .local v6, "_tmpUserId":I
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "_tmpName":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "_tmpSerialNumber":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "_tmpLabel":Ljava/lang/String;
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 244
    .local v24, "_tmp":I
    if-eqz v24, :cond_0

    const/4 v10, 0x1

    .line 245
    .local v10, "_tmpIsOnline":Z
    :goto_1
    new-instance v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    invoke-direct/range {v4 .. v10}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    .local v4, "_item":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    iput v0, v4, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->id:I

    .line 247
    aput-object v4, v21, v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    add-int/lit8 v20, v20, 0x1

    .line 249
    goto :goto_0

    .line 244
    .end local v4    # "_item":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v10    # "_tmpIsOnline":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 252
    .end local v5    # "_tmpDeviceId":I
    .end local v6    # "_tmpUserId":I
    .end local v7    # "_tmpName":Ljava/lang/String;
    .end local v8    # "_tmpSerialNumber":Ljava/lang/String;
    .end local v9    # "_tmpLabel":Ljava/lang/String;
    .end local v24    # "_tmp":I
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 253
    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 250
    return-object v21

    .line 252
    .end local v13    # "_cursorIndexOfDeviceId":I
    .end local v14    # "_cursorIndexOfId":I
    .end local v15    # "_cursorIndexOfIsOnline":I
    .end local v16    # "_cursorIndexOfLabel":I
    .end local v17    # "_cursorIndexOfName":I
    .end local v18    # "_cursorIndexOfSerialNumber":I
    .end local v19    # "_cursorIndexOfUserId":I
    .end local v20    # "_index":I
    .end local v21    # "_result":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    :catchall_0
    move-exception v25

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 253
    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v25
.end method

.method public updateDevice(Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V
    .locals 2
    .param p1, "device"    # Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    .prologue
    .line 141
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 142
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__updateAdapterOfCloudDevice:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 145
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
