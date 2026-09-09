.class public Lcn/com/magnity/magnitymx/task/SqliteTask;
.super Ljava/lang/Object;
.source "SqliteTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/task/SqliteTask$Device;,
        Lcn/com/magnity/magnitymx/task/SqliteTask$Task;,
        Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    }
.end annotation


# static fields
.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 12
    sput-object p0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    return-void
.end method

.method public static findDevice(J)Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    .locals 12
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v9, 0x0

    .line 278
    .local v9, "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    const/4 v0, 0x0

    .line 280
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT name, devicetype_id, voltage_id FROM device WHERE id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    new-instance v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;

    const/4 v2, 0x1

    .line 285
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x2

    .line 286
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x0

    .line 287
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-wide v2, p0

    invoke-direct/range {v1 .. v8}, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;-><init>(JJJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v9    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    .local v1, "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    return-object v1

    .line 293
    .end local v1    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    .restart local v9    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    :catch_0
    move-exception v10

    move-object v1, v9

    .line 294
    .end local v9    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    .restart local v1    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    .local v10, "ex":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 293
    .end local v10    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v1    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    .restart local v9    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    :cond_1
    move-object v1, v9

    .end local v9    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    .restart local v1    # "device":Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
    goto :goto_0
.end method

.method public static findDeviceType(J)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    const-string v1, ""

    .line 343
    .local v1, "deviceType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 345
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT name FROM device_type WHERE id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 347
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-object v1

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static findFirstTaskIdByOrder()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    const-wide/16 v2, 0x0

    .line 258
    .local v2, "taskId":J
    const/4 v0, 0x0

    .line 260
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT id FROM task ORDER BY `order` LIMIT 1"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 266
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-wide v2

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static findPart(J)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    const-string v2, ""

    .line 323
    .local v2, "partName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 325
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT name FROM part WHERE id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-object v2

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 335
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static findPhase(J)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    const-string v2, ""

    .line 303
    .local v2, "phaseName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 305
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT name FROM phase WHERE id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    return-object v2

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static findRegionByParentId(J)Ljava/util/List;
    .locals 12
    .param p0, "parentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/SqliteTask$Region;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v10, "regions":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Region;>;"
    const/4 v0, 0x0

    .line 132
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM region WHERE parent_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 134
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    const/4 v2, 0x0

    .line 136
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    .line 137
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x3

    .line 138
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 139
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;-><init>(JJJLjava/lang/String;)V

    .line 135
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v9

    .line 146
    .local v9, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 143
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    return-object v10
.end method

.method public static findRegionByParentId(JLjava/util/List;)V
    .locals 10
    .param p0, "parentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/SqliteTask$Region;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Region;>;"
    const/4 v0, 0x0

    .line 108
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM region WHERE parent_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 110
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    const/4 v2, 0x0

    .line 112
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    .line 113
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x3

    .line 114
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 115
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;-><init>(JJJLjava/lang/String;)V

    .line 111
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v9

    .line 121
    .local v9, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    return-void
.end method

.method public static findRegionByRegionId(J)Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    .locals 12
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 154
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v10, "regions":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Region;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM region WHERE id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 159
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;

    const/4 v2, 0x0

    .line 161
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    .line 162
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x3

    .line 163
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 164
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;-><init>(JJJLjava/lang/String;)V

    .line 160
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v9

    .line 174
    .local v9, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 168
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, v11

    .line 172
    :goto_1
    return-object v1

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static findTaskByRegionId(J)Ljava/util/List;
    .locals 2
    .param p0, "regionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/SqliteTask$Task;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM task WHERE region_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY `order`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findTaskInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findTaskByTaskId(J)Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
    .locals 4
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM task WHERE id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findTaskInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Task;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 252
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;

    goto :goto_0
.end method

.method private static findTaskInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p0, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/SqliteTask$Task;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v14, "tasks":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/SqliteTask$Task;>;"
    const/4 v0, 0x0

    .line 365
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 367
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    new-instance v1, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;

    const/4 v2, 0x0

    .line 369
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 370
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x2

    .line 371
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x3

    .line 372
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x4

    .line 373
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x5

    .line 374
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-direct/range {v1 .. v12}, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;-><init>(JJJJJI)V

    .line 368
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v13

    .line 381
    .local v13, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 378
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    return-object v14
.end method

.method public static findTasksByOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/SqliteTask$Task;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    const-string v0, "SELECT * FROM task ORDER BY `order`"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/task/SqliteTask;->findTaskInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findVoltage(Ljava/lang/String;)J
    .locals 8
    .param p0, "voltageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    const-wide/16 v2, -0x1

    .line 183
    .local v2, "voltageId":J
    const/4 v0, 0x0

    .line 185
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT id FROM voltage WHERE name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 187
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 191
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return-wide v2

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static findVoltage(J)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    const-string v2, ""

    .line 203
    .local v2, "voltageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 205
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT name FROM voltage WHERE id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-object v2

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getNextTaskId(J)J
    .locals 10
    .param p0, "taskId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v5, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT `order` FROM task WHERE id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 33
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v2, v6

    .line 57
    :cond_1
    :goto_0
    return-wide v2

    .line 37
    :cond_2
    const-string v5, "order"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 38
    .local v4, "order":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 40
    const/4 v5, 0x1

    if-ge v4, v5, :cond_3

    move-wide v2, v6

    .line 41
    goto :goto_0

    .line 44
    :cond_3
    sget-object v5, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT id FROM task WHERE `order` > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ORDER BY `order` LIMIT 1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 46
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v2, v6

    .line 47
    goto :goto_0

    .line 50
    :cond_5
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 51
    .local v2, "nextTaskId":J
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const-wide/16 v8, 0x1

    cmp-long v5, v2, v8

    if-gez v5, :cond_1

    move-wide v2, v6

    .line 54
    goto :goto_0

    .line 58
    .end local v2    # "nextTaskId":J
    .end local v4    # "order":I
    :catch_0
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_6
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static open(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 67
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcn/com/magnity/magnitymx/task/SqliteTask$1;

    invoke-direct {v3}, Lcn/com/magnity/magnitymx/task/SqliteTask$1;-><init>()V

    invoke-static {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 82
    :cond_0
    sget-object v1, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static regionParentIs(JJ)Z
    .locals 6
    .param p0, "id"    # J
    .param p2, "parentId"    # J

    .prologue
    const/4 v2, 0x0

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT id FROM region WHERE id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND parent_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v2, 0x1

    .line 239
    :cond_0
    :goto_0
    return v2

    .line 233
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static resetCaptureStatus()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE task SET capture_status=0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static updateCaptureStatus(JI)Z
    .locals 4
    .param p0, "taskId"    # J
    .param p2, "status"    # I

    .prologue
    .line 17
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 20
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/task/SqliteTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE task SET capture_status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x1

    goto :goto_0
.end method
