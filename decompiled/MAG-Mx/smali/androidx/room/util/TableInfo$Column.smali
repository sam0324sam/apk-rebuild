.class public Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public final affinity:I
    .annotation build Landroidx/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation
.end field

.field public final defaultValue:Ljava/lang/String;

.field private final mCreatedFrom:I

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "notNull"    # Z
    .param p4, "primaryKeyPosition"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 392
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "notNull"    # Z
    .param p4, "primaryKeyPosition"    # I
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "createdFrom"    # I

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 398
    iput-object p2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 399
    iput-boolean p3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 400
    iput p4, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 401
    invoke-static {p2}, Landroidx/room/util/TableInfo$Column;->findAffinity(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 402
    iput-object p5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 403
    iput p6, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    .line 404
    return-void
.end method

.method private static findAffinity(Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 414
    if-nez p0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "uppercaseType":Ljava/lang/String;
    const-string v2, "INT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    const/4 v1, 0x3

    goto :goto_0

    .line 421
    :cond_2
    const-string v2, "CHAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CLOB"

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TEXT"

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 426
    :cond_4
    const-string v2, "BLOB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    const-string v1, "REAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "FLOA"

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "DOUB"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 432
    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    .line 436
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 472
    :cond_0
    :goto_0
    return v2

    .line 442
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 444
    check-cast v0, Landroidx/room/util/TableInfo$Column;

    .line 445
    .local v0, "column":Landroidx/room/util/TableInfo$Column;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_6

    .line 446
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    iget v4, v0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-ne v3, v4, :cond_0

    .line 451
    :cond_2
    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iget-object v4, v0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    iget-boolean v3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    iget-boolean v4, v0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-ne v3, v4, :cond_0

    .line 457
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v1, :cond_3

    iget v3, v0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    iget-object v4, v0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    :cond_3
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v5, :cond_4

    iget v3, v0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v1, :cond_4

    iget-object v3, v0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    :cond_4
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-eqz v3, :cond_5

    iget v3, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    iget v4, v0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    iget-object v4, v0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 467
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    :cond_5
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    iget v4, v0, Landroidx/room/util/TableInfo$Column;->affinity:I

    if-ne v3, v4, :cond_8

    :goto_1
    move v2, v1

    goto :goto_0

    .line 448
    :cond_6
    invoke-virtual {p0}, Landroidx/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v3

    invoke-virtual {v0}, Landroidx/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v4

    if-eq v3, v4, :cond_2

    goto/16 :goto_0

    .line 467
    :cond_7
    iget-object v3, v0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 472
    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 487
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    add-int v0, v1, v2

    .line 488
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 489
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    add-int v0, v1, v2

    .line 493
    return v0

    .line 488
    :cond_0
    const/16 v1, 0x4d5

    goto :goto_0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affinity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
