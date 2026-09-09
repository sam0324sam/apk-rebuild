.class public Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
.super Ljava/lang/Object;
.source "MagSQLiteUtils.java"


# static fields
.field public static final STATUS_NOT_UPLOAD:I = 0x0

.field public static final STATUS_UPLOADED:I = 0x1

.field public static final STATUS_UPLOAD_FAILED:I = -0x2

.field public static final STATUS_UPLOAD_NOT_DETECT:I = -0x1


# instance fields
.field private mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;

    invoke-direct {v0, p1, p2}, Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .local v0, "helper":Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;
    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getInstance(Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;)Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    .line 20
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->closeDatabase()V

    .line 163
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "file_name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "file"

    const-string v3, "file_name = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "delete file where file_name = \'%s\'"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    .end local v9    # "sql":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_1
    return-void
.end method

.method public getFileUploadStatus(Ljava/lang/String;)I
    .locals 10
    .param p1, "file_name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 129
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v9

    .line 133
    :cond_1
    const-string v1, "file"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "upload_status"

    aput-object v3, v2, v6

    const-string v3, "file_name = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 136
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    if-eqz v8, :cond_2

    .line 138
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->closeDatabase()V

    goto :goto_0

    .line 143
    :cond_3
    const-string v1, "upload_status"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 144
    .local v9, "upload_status":I
    if-eqz v8, :cond_0

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public insertFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "device_sn"    # Ljava/lang/String;
    .param p2, "file_name"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 24
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "insert into file (device_sn, file_name, upload_status) values (\'%s\', \'%s\', 0)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "device_sn"    # Ljava/lang/String;
    .param p2, "file_name"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "upload_status"    # I

    .prologue
    .line 30
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 31
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "file"

    const/4 v2, 0x0

    const-string v3, "file_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 34
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0, p2, p3, p1, p4}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->updateAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    :goto_0
    if-eqz v8, :cond_0

    .line 42
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_0
    return-void

    .line 37
    :cond_1
    const-string v1, "insert into file (device_sn, file_name, md5, upload_status) values (\'%s\', \'%s\', \'%s\', \'%d\')"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 37
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 39
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 154
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 156
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_0
    return-object v8
.end method

.method public updateAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "sn"    # Ljava/lang/String;
    .param p4, "upload_status"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "file"

    const/4 v2, 0x0

    const-string v3, "file_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 102
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p0, p3, p1, p2, p4}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    :goto_0
    if-eqz v8, :cond_0

    .line 110
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_0
    return-void

    .line 105
    :cond_1
    const-string v1, "update file set md5 = \'%s\',device_sn = \'%s\',upload_status = %d where file_name = \'%s\'"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    .line 106
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 105
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDeviceSN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "device_sn"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 64
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "file"

    const-string v3, "file_name = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {p0, p2, p1, v1, v2}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    :goto_0
    if-eqz v8, :cond_0

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_0
    return-void

    .line 71
    :cond_1
    const-string v1, "update file set device_sn = \'%s\' where file_name = \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v10

    aput-object p1, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateMD5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 81
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "file"

    const-string v3, "file_name = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 85
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, p2, v2}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    :goto_0
    if-eqz v8, :cond_0

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    return-void

    .line 88
    :cond_1
    const-string v1, "update file set md5 = \'%s\' where file_name = \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v10

    aput-object p1, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUploadStatus(Ljava/lang/String;I)V
    .locals 12
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->mManager:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "file"

    const-string v3, "file_name = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 51
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v1, p1, v2, p2}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    :goto_0
    if-eqz v8, :cond_0

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_0
    return-void

    .line 54
    :cond_1
    const-string v1, "update file set upload_status = %d where file_name = \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object p1, v2, v11

    .line 54
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
