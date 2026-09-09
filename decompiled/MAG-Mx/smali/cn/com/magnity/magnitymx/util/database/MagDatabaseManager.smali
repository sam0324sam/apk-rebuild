.class public Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;
.super Ljava/lang/Object;
.source "MagDatabaseManager.java"


# static fields
.field private static instance:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

.field private static mMagSQLiteOpenHelper:Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;)Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;
    .locals 2
    .param p0, "helper"    # Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;

    .prologue
    .line 21
    const-class v1, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->instance:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    if-nez v0, :cond_0

    .line 22
    invoke-static {p0}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->initializeInstance(Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;)V

    .line 24
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->instance:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initializeInstance(Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;)V
    .locals 2
    .param p0, "helper"    # Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;

    .prologue
    .line 14
    const-class v1, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->instance:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->instance:Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;

    .line 16
    sput-object p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mMagSQLiteOpenHelper:Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_0
    monitor-exit v1

    return-void

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableDatabases()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 36
    sget-object v0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mMagSQLiteOpenHelper:Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 29
    sget-object v0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mMagSQLiteOpenHelper:Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/util/database/MagSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/database/MagDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
