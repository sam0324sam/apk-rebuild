.class public final Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;
.super Ljava/lang/Object;
.source "DeviceInfoDao_Impl.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfDeviceInfo:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfFlush:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfDeviceInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    new-instance v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$1;-><init>(Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__insertionAdapterOfDeviceInfo:Landroidx/room/EntityInsertionAdapter;

    .line 92
    new-instance v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$2;-><init>(Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__updateAdapterOfDeviceInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 154
    new-instance v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$3;-><init>(Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__preparedStmtOfFlush:Landroidx/room/SharedSQLiteStatement;

    .line 161
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 190
    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__preparedStmtOfFlush:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 191
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 193
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 194
    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 197
    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__preparedStmtOfFlush:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 199
    return-void

    .line 196
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 197
    iget-object v2, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__preparedStmtOfFlush:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public insertDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 165
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 166
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__insertionAdapterOfDeviceInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 173
    return-void

    .line 171
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public loadAllDeviceInfo()[Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 43

    .prologue
    .line 203
    const-string v29, "SELECT * FROM local_device"

    .line 204
    .local v29, "_sql":Ljava/lang/String;
    const-string v40, "SELECT * FROM local_device"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v30

    .line 205
    .local v30, "_statement":Landroidx/room/RoomSQLiteQuery;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 208
    .local v4, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v40, "name"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v21

    .line 209
    .local v21, "_cursorIndexOfMName":I
    const-string v40, "serial_number"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    .line 210
    .local v22, "_cursorIndexOfMSerialNo":I
    const-string v40, "is_online"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 211
    .local v19, "_cursorIndexOfMIsOnlineDevice":I
    const-string v40, "is_cloud"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 212
    .local v18, "_cursorIndexOfMIsCloud":I
    const-string v40, "terminal_ip"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    .line 213
    .local v23, "_cursorIndexOfMTerminalIp":I
    const-string v40, "controller_ip"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 214
    .local v16, "_cursorIndexOfMControllerIp":I
    const-string v40, "mac"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    .line 215
    .local v20, "_cursorIndexOfMMac":I
    const-string v40, "communication_type"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 216
    .local v15, "_cursorIndexOfMCommunicationType":I
    const-string v40, "usb_type"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v24

    .line 217
    .local v24, "_cursorIndexOfMUsbType":I
    const-string v40, "mWidthPixels"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v25

    .line 218
    .local v25, "_cursorIndexOfMWidthPixels":I
    const-string v40, "mHeightPixels"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 219
    .local v17, "_cursorIndexOfMHeightPixels":I
    const-string v40, "cam_name"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 220
    .local v7, "_cursorIndexOfMCamName":I
    const-string v40, "cam_user"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 221
    .local v9, "_cursorIndexOfMCamUser":I
    const-string v40, "cam_pwd"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 222
    .local v8, "_cursorIndexOfMCamPwd":I
    const-string v40, "cam_cmd_port"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 223
    .local v5, "_cursorIndexOfMCamCmdPort":I
    const-string v40, "cam_img_port"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 224
    .local v6, "_cursorIndexOfMCamImgPort":I
    const-string v40, "cloud_ip"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 225
    .local v12, "_cursorIndexOfMCloudIp":I
    const-string v40, "cloud_cmd_port"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 226
    .local v10, "_cursorIndexOfMCloudCmdPort":I
    const-string v40, "cloud_img_port"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 227
    .local v11, "_cursorIndexOfMCloudImgPort":I
    const-string v40, "cloud_user"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 228
    .local v14, "_cursorIndexOfMCloudUser":I
    const-string v40, "cloud_pwd"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 229
    .local v13, "_cursorIndexOfMCloudPwd":I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v40

    move/from16 v0, v40

    new-array v0, v0, [Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-object/from16 v28, v0

    .line 230
    .local v28, "_result":[Lcn/com/magnity/magnitymx/data/DeviceInfo;
    const/16 v26, 0x0

    .line 231
    .local v26, "_index":I
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v40

    if-eqz v40, :cond_1

    .line 233
    new-instance v27, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-direct/range {v27 .. v27}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>()V

    .line 235
    .local v27, "_item":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 236
    .local v36, "_tmpMName":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setName(Ljava/lang/String;)V

    .line 238
    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 239
    .local v37, "_tmpMSerialNo":I
    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setSerialNo(I)V

    .line 240
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsOnlineDevice:I

    .line 242
    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 243
    .local v31, "_tmp":I
    if-eqz v31, :cond_0

    const/16 v40, 0x1

    :goto_1
    move/from16 v0, v40

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    .line 244
    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    .line 246
    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 247
    .local v33, "_tmpMControllerIp":I
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setControllerIp(I)V

    .line 249
    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 250
    .local v35, "_tmpMMac":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setMac(Ljava/lang/String;)V

    .line 252
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 253
    .local v32, "_tmpMCommunicationType":I
    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setCommunicationType(I)V

    .line 255
    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 256
    .local v38, "_tmpMUsbType":I
    move-object/from16 v0, v27

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setUsbType(I)V

    .line 258
    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 259
    .local v39, "_tmpMWidthPixels":I
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setWidthPixels(I)V

    .line 261
    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 262
    .local v34, "_tmpMHeightPixels":I
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setHeightPixels(I)V

    .line 263
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    iput-object v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    .line 264
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    iput-object v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    .line 265
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    iput-object v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    .line 266
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    .line 267
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    .line 268
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    .line 269
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    .line 270
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    .line 271
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    iput-object v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    .line 272
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    iput-object v0, v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    .line 273
    aput-object v27, v28, v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    add-int/lit8 v26, v26, 0x1

    .line 275
    goto/16 :goto_0

    .line 243
    .end local v32    # "_tmpMCommunicationType":I
    .end local v33    # "_tmpMControllerIp":I
    .end local v34    # "_tmpMHeightPixels":I
    .end local v35    # "_tmpMMac":Ljava/lang/String;
    .end local v38    # "_tmpMUsbType":I
    .end local v39    # "_tmpMWidthPixels":I
    :cond_0
    const/16 v40, 0x0

    goto/16 :goto_1

    .line 278
    .end local v27    # "_item":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .end local v31    # "_tmp":I
    .end local v36    # "_tmpMName":Ljava/lang/String;
    .end local v37    # "_tmpMSerialNo":I
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 279
    invoke-virtual/range {v30 .. v30}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 276
    return-object v28

    .line 278
    .end local v5    # "_cursorIndexOfMCamCmdPort":I
    .end local v6    # "_cursorIndexOfMCamImgPort":I
    .end local v7    # "_cursorIndexOfMCamName":I
    .end local v8    # "_cursorIndexOfMCamPwd":I
    .end local v9    # "_cursorIndexOfMCamUser":I
    .end local v10    # "_cursorIndexOfMCloudCmdPort":I
    .end local v11    # "_cursorIndexOfMCloudImgPort":I
    .end local v12    # "_cursorIndexOfMCloudIp":I
    .end local v13    # "_cursorIndexOfMCloudPwd":I
    .end local v14    # "_cursorIndexOfMCloudUser":I
    .end local v15    # "_cursorIndexOfMCommunicationType":I
    .end local v16    # "_cursorIndexOfMControllerIp":I
    .end local v17    # "_cursorIndexOfMHeightPixels":I
    .end local v18    # "_cursorIndexOfMIsCloud":I
    .end local v19    # "_cursorIndexOfMIsOnlineDevice":I
    .end local v20    # "_cursorIndexOfMMac":I
    .end local v21    # "_cursorIndexOfMName":I
    .end local v22    # "_cursorIndexOfMSerialNo":I
    .end local v23    # "_cursorIndexOfMTerminalIp":I
    .end local v24    # "_cursorIndexOfMUsbType":I
    .end local v25    # "_cursorIndexOfMWidthPixels":I
    .end local v26    # "_index":I
    .end local v28    # "_result":[Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :catchall_0
    move-exception v40

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 279
    invoke-virtual/range {v30 .. v30}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v40
.end method

.method public updateDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 177
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 178
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__updateAdapterOfDeviceInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 181
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
