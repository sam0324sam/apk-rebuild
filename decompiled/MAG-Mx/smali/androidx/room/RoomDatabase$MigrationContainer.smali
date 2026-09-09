.class public Landroidx/room/RoomDatabase$MigrationContainer;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationContainer"
.end annotation


# instance fields
.field private mMigrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroidx/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    return-void
.end method

.method private addMigration(Landroidx/room/migration/Migration;)V
    .locals 7
    .param p1, "migration"    # Landroidx/room/migration/Migration;

    .prologue
    .line 978
    iget v2, p1, Landroidx/room/migration/Migration;->startVersion:I

    .line 979
    .local v2, "start":I
    iget v0, p1, Landroidx/room/migration/Migration;->endVersion:I

    .line 980
    .local v0, "end":I
    iget-object v4, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeMap;

    .line 981
    .local v3, "targetMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    if-nez v3, :cond_0

    .line 982
    new-instance v3, Ljava/util/TreeMap;

    .end local v3    # "targetMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 983
    .restart local v3    # "targetMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    iget-object v4, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/migration/Migration;

    .line 986
    .local v1, "existing":Landroidx/room/migration/Migration;
    if-eqz v1, :cond_1

    .line 987
    const-string v4, "ROOM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overriding migration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    return-void
.end method

.method private findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;
    .locals 10
    .param p2, "upgrade"    # Z
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/room/migration/Migration;",
            ">;ZII)",
            "Ljava/util/List",
            "<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1014
    :cond_0
    if-eqz p2, :cond_2

    if-ge p3, p4, :cond_1

    .line 1015
    :goto_0
    iget-object v5, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeMap;

    .line 1016
    .local v3, "targetNodes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    if-nez v3, :cond_3

    move-object p1, v8

    .line 1045
    .end local v3    # "targetNodes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    .end local p1    # "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    :cond_1
    :goto_1
    return-object p1

    .line 1014
    .restart local p1    # "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    :cond_2
    if-le p3, p4, :cond_1

    goto :goto_0

    .line 1021
    .restart local v3    # "targetNodes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    :cond_3
    if-eqz p2, :cond_6

    .line 1022
    invoke-virtual {v3}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    .line 1026
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_2
    const/4 v0, 0x0

    .line 1027
    .local v0, "found":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1029
    .local v4, "targetVersion":I
    if-eqz p2, :cond_8

    .line 1030
    if-gt v4, p4, :cond_7

    if-le v4, p3, :cond_7

    move v2, v6

    .line 1034
    .local v2, "shouldAddToPath":Z
    :goto_3
    if-eqz v2, :cond_4

    .line 1035
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    move p3, v4

    .line 1037
    const/4 v0, 0x1

    .line 1041
    .end local v2    # "shouldAddToPath":Z
    .end local v4    # "targetVersion":I
    :cond_5
    if-nez v0, :cond_0

    move-object p1, v8

    .line 1042
    goto :goto_1

    .line 1024
    .end local v0    # "found":Z
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .restart local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_2

    .restart local v0    # "found":Z
    .restart local v4    # "targetVersion":I
    :cond_7
    move v2, v7

    .line 1030
    goto :goto_3

    .line 1032
    :cond_8
    if-lt v4, p4, :cond_9

    if-ge v4, p3, :cond_9

    move v2, v6

    .restart local v2    # "shouldAddToPath":Z
    :goto_4
    goto :goto_3

    .end local v2    # "shouldAddToPath":Z
    :cond_9
    move v2, v7

    goto :goto_4
.end method


# virtual methods
.method public varargs addMigrations([Landroidx/room/migration/Migration;)V
    .locals 3
    .param p1, "migrations"    # [Landroidx/room/migration/Migration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 972
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 973
    .local v0, "migration":Landroidx/room/migration/Migration;
    invoke-direct {p0, v0}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigration(Landroidx/room/migration/Migration;)V

    .line 972
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 975
    .end local v0    # "migration":Landroidx/room/migration/Migration;
    :cond_0
    return-void
.end method

.method public findMigrationPath(II)Ljava/util/List;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    if-ne p1, p2, :cond_0

    .line 1005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1009
    :goto_0
    return-object v2

    .line 1007
    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1008
    .local v0, "migrateUp":Z
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/room/RoomDatabase$MigrationContainer;->findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 1007
    .end local v0    # "migrateUp":Z
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
