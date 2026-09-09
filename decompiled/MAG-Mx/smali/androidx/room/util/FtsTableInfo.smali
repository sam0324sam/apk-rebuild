.class public Landroidx/room/util/FtsTableInfo;
.super Ljava/lang/Object;
.source "FtsTableInfo.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final FTS_OPTIONS:[Ljava/lang/String;


# instance fields
.field public final columns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tokenize="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "compress="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "languageid="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "matchinfo="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "notindexed="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "order="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "prefix="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "uncompress="

    aput-object v2, v0, v1

    sput-object v0, Landroidx/room/util/FtsTableInfo;->FTS_OPTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "createSql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    .line 69
    invoke-static {p3}, Landroidx/room/util/FtsTableInfo;->parseOptions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    .line 63
    iput-object p3, p0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    .line 64
    return-void
.end method

.method static parseOptions(Ljava/lang/String;)Ljava/util/Set;
    .locals 14
    .param p0, "createStatement"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 189
    :cond_0
    return-object v6

    .line 136
    :cond_1
    const/16 v9, 0x28

    .line 137
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x29

    .line 138
    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 136
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "argsString":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 146
    .local v7, "quoteStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Character;>;"
    const/4 v5, -0x1

    .line 147
    .local v5, "lastDelimiterIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 149
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 147
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :sswitch_0
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 154
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-ne v9, v3, :cond_2

    .line 156
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 160
    :sswitch_1
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 161
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    :sswitch_2
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_2

    .line 166
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 170
    :sswitch_3
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 171
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move v5, v4

    goto :goto_1

    .line 177
    .end local v3    # "c":C
    :cond_4
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 181
    .local v6, "options":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, "arg":Ljava/lang/String;
    sget-object v11, Landroidx/room/util/FtsTableInfo;->FTS_OPTIONS:[Ljava/lang/String;

    array-length v12, v11

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_5

    aget-object v8, v11, v9

    .line 183
    .local v8, "validOption":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 184
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2c -> :sswitch_3
        0x5b -> :sswitch_1
        0x5d -> :sswitch_2
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public static read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/FtsTableInfo;
    .locals 3
    .param p0, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0, p1}, Landroidx/room/util/FtsTableInfo;->readColumns(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 81
    .local v0, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroidx/room/util/FtsTableInfo;->readOptions(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 83
    .local v1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroidx/room/util/FtsTableInfo;

    invoke-direct {v2, p1, v0, v1}, Landroidx/room/util/FtsTableInfo;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method private static readColumns(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p0, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA table_info(`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "`)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 89
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v0, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 92
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 93
    .local v2, "nameIndex":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v2    # "nameIndex":I
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 99
    throw v3

    .line 98
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 100
    return-object v0
.end method

.method private static readOptions(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p0, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const-string v1, ""

    .line 106
    .local v1, "sql":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM sqlite_master WHERE `name` = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "sql"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    invoke-static {v1}, Landroidx/room/util/FtsTableInfo;->parseOptions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 113
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 114
    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 195
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 197
    check-cast v0, Landroidx/room/util/FtsTableInfo;

    .line 199
    .local v0, "that":Landroidx/room/util/FtsTableInfo;
    iget-object v3, p0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    :cond_2
    iget-object v3, p0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    iget-object v4, v0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    :cond_3
    iget-object v3, p0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    if-eqz v3, :cond_7

    iget-object v1, p0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    iget-object v2, v0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    :goto_1
    move v2, v1

    goto :goto_0

    .line 199
    :cond_5
    iget-object v3, v0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 200
    :cond_6
    iget-object v3, v0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 201
    :cond_7
    iget-object v3, v0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 207
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 209
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 206
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 207
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtsTableInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/FtsTableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/FtsTableInfo;->columns:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/FtsTableInfo;->options:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
