.class public Landroidx/room/util/DBUtil;
.super Ljava/lang/Object;
.source "DBUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public static createCancellationSignal()Landroid/os/CancellationSignal;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 168
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6
    .param p0, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .prologue
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "existingTriggers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-interface {p0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    throw v3

    .line 118
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "triggerName":Ljava/lang/String;
    const-string v4, "room_fts_content_sync_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v2    # "triggerName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;
    .locals 1
    .param p0, "db"    # Landroidx/room/RoomDatabase;
    .param p1, "sqLiteQuery"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "maybeCopy"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6
    .param p0, "db"    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "sqLiteQuery"    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "maybeCopy"    # Z
    .param p3, "signal"    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1, p3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz p2, :cond_1

    instance-of v4, v0, Landroid/database/AbstractWindowedCursor;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 85
    check-cast v3, Landroid/database/AbstractWindowedCursor;

    .line 86
    .local v3, "windowedCursor":Landroid/database/AbstractWindowedCursor;
    invoke-virtual {v3}, Landroid/database/AbstractWindowedCursor;->getCount()I

    move-result v1

    .line 88
    .local v1, "rowsInCursor":I
    invoke-virtual {v3}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    invoke-virtual {v3}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    .line 93
    .local v2, "rowsInWindow":I
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    if-ge v2, v1, :cond_1

    .line 94
    :cond_0
    invoke-static {v3}, Landroidx/room/util/CursorUtil;->copyAndClose(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "rowsInCursor":I
    .end local v2    # "rowsInWindow":I
    .end local v3    # "windowedCursor":Landroid/database/AbstractWindowedCursor;
    :cond_1
    return-object v0

    .line 91
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "rowsInCursor":I
    .restart local v3    # "windowedCursor":Landroid/database/AbstractWindowedCursor;
    :cond_2
    move v2, v1

    .restart local v2    # "rowsInWindow":I
    goto :goto_0
.end method

.method public static readVersion(Ljava/io/File;)I
    .locals 9
    .param p0, "databaseFile"    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "input":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x4

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 144
    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    .line 145
    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 146
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 147
    .local v7, "read":I
    if-eq v7, v8, :cond_1

    .line 148
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad database header, unable to read 4 bytes at offset 60"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "read":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 156
    :cond_0
    throw v2

    .line 150
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "read":I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 153
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 151
    :cond_2
    return v2
.end method
