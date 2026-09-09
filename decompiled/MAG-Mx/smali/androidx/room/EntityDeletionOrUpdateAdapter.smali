.class public abstract Landroidx/room/EntityDeletionOrUpdateAdapter;
.super Landroidx/room/SharedSQLiteStatement;
.source "EntityDeletionOrUpdateAdapter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/room/SharedSQLiteStatement;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "database"    # Landroidx/room/RoomDatabase;

    .prologue
    .line 40
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public final handle(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 69
    .local v0, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 70
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 72
    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 70
    return v1

    .line 72
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 73
    throw v1
.end method

.method public final handleMultiple(Ljava/lang/Iterable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)I"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-virtual {p0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    .line 85
    .local v1, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v2, 0x0

    .line 86
    .local v2, "total":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 88
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v2, v4

    .line 89
    goto :goto_0

    .line 92
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 90
    return v2

    .line 92
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 93
    throw v3
.end method

.method public final handleMultiple([Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Landroidx/room/EntityDeletionOrUpdateAdapter;, "Landroidx/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    .line 105
    .local v1, "stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v2, 0x0

    .line 106
    .local v2, "total":I
    :try_start_0
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 107
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Landroidx/room/EntityDeletionOrUpdateAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 108
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/2addr v2, v5

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 110
    return v2

    .line 112
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 113
    throw v3
.end method
