.class public final Lokhttp3/HttpUrl$Builder$Companion;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001c\u0010\u000c\u001a\u00020\u0006*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Builder$Companion;",
        "",
        "()V",
        "INVALID_HOST",
        "",
        "parsePort",
        "",
        "input",
        "pos",
        "limit",
        "portColonOffset",
        "schemeDelimiterOffset",
        "slashCount",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 1479
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->parsePort(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->portColonOffset(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Builder$Companion;
    .param p1, "$this$access_u24slashCount"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->slashCount(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final parsePort(Ljava/lang/String;II)I
    .locals 15
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1540
    nop

    .line 1542
    :try_start_0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1543
    .local v14, "portString":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1544
    .local v13, "i":I
    const v0, 0xffff

    const/4 v1, 0x1

    if-le v1, v13, :cond_1

    :cond_0
    const/4 v13, -0x1

    .line 1540
    .end local v13    # "i":I
    .end local v14    # "portString":Ljava/lang/String;
    :goto_0
    return v13

    .line 1544
    .restart local v13    # "i":I
    .restart local v14    # "portString":Ljava/lang/String;
    :cond_1
    if-lt v0, v13, :cond_0

    goto :goto_0

    .line 1545
    .end local v13    # "i":I
    .end local v14    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1546
    .local v12, "_":Ljava/lang/NumberFormatException;
    const/4 v13, -0x1

    goto :goto_0
.end method

.method private final portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1524
    move v0, p2

    .line 1525
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 1526
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1533
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1525
    goto :goto_0

    .line 1528
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_0

    .line 1529
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p3

    .line 1536
    .end local v0    # "i":I
    :sswitch_1
    return v0

    .line 1526
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private final schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 11
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/4 v3, -0x1

    .line 1487
    sub-int v2, p3, p2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return v3

    .line 1489
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1490
    .local v0, "c0":C
    if-lt v0, v9, :cond_2

    if-le v0, v10, :cond_3

    :cond_2
    if-lt v0, v7, :cond_0

    if-gt v0, v8, :cond_0

    .line 1492
    :cond_3
    add-int/lit8 v2, p2, 0x1

    :goto_1
    if-ge v2, p3, :cond_0

    .line 1493
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1495
    if-le v9, v4, :cond_8

    :cond_4
    if-le v7, v4, :cond_9

    :cond_5
    const/16 v5, 0x39

    const/16 v6, 0x30

    if-le v6, v4, :cond_a

    :cond_6
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_b

    .line 1492
    :cond_7
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    move v2, v1

    goto :goto_1

    .line 1495
    .end local v1    # "i":I
    :cond_8
    if-lt v10, v4, :cond_4

    goto :goto_2

    :cond_9
    if-lt v8, v4, :cond_5

    goto :goto_2

    :cond_a
    if-lt v5, v4, :cond_6

    goto :goto_2

    :cond_b
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_7

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_7

    .line 1498
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_c

    :goto_3
    move v3, v2

    .line 1493
    goto :goto_0

    :cond_c
    move v2, v3

    .line 1501
    goto :goto_3
.end method

.method private final slashCount(Ljava/lang/String;II)I
    .locals 4
    .param p1, "$this$slashCount"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1510
    const/4 v2, 0x0

    .line 1511
    .end local p2    # "pos":I
    .local v2, "slashCount":I
    :goto_0
    if-ge p2, p3, :cond_1

    .line 1512
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1513
    .local v0, "c":C
    const/16 v3, 0x5c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_1

    .line 1514
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1517
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    move p2, v1

    goto :goto_0

    .line 1519
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_1
    return v2
.end method
