.class public final Lkotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "UnsignedUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnsignedUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnsignedUtils.kt\nkotlin/UnsignedKt\n*L\n1#1,107:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0001\u001a\"\u0010\u000c\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u001a\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\tH\u0001\u001a\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u0013H\u0001\u001a\"\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0016\u001a\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0013H\u0001\u001a\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0013H\u0000\u001a\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\tH\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "doubleToUInt",
        "Lkotlin/UInt;",
        "v",
        "",
        "(D)I",
        "doubleToULong",
        "Lkotlin/ULong;",
        "(D)J",
        "uintCompare",
        "",
        "v1",
        "v2",
        "uintDivide",
        "uintDivide-J1ME1BU",
        "(II)I",
        "uintRemainder",
        "uintRemainder-J1ME1BU",
        "uintToDouble",
        "ulongCompare",
        "",
        "ulongDivide",
        "ulongDivide-eb3DHEI",
        "(JJ)J",
        "ulongRemainder",
        "ulongRemainder-eb3DHEI",
        "ulongToDouble",
        "ulongToString",
        "",
        "base",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "UnsignedKt"
.end annotation


# direct methods
.method public static final doubleToUInt(D)I
    .locals 6
    .param p0, "v"    # D
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    const/4 v1, -0x1

    const v4, 0x7fffffff

    const/4 v0, 0x0

    .line 66
    nop

    .line 67
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-static {v0}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    move-result-wide v2

    cmpg-double v2, p0, v2

    if-lez v2, :cond_0

    .line 69
    invoke-static {v1}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    move-result-wide v2

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 70
    :cond_2
    int-to-double v0, v4

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_3

    double-to-int v0, p0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    goto :goto_0

    .line 71
    :cond_3
    int-to-double v0, v4

    sub-double v0, p0, v0

    double-to-int v0, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {v4}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    goto :goto_0
.end method

.method public static final doubleToULong(D)J
    .locals 6
    .param p0, "v"    # D
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    .line 75
    nop

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-wide v0

    .line 77
    :cond_1
    invoke-static {v0, v1}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    move-result-wide v4

    cmpg-double v4, p0, v4

    if-lez v4, :cond_0

    .line 78
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    move-result-wide v0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_2

    move-wide v0, v2

    goto :goto_0

    .line 79
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    long-to-double v0, v0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    double-to-long v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    goto :goto_0

    .line 82
    :cond_3
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    sub-double v0, p0, v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final uintCompare(II)I
    .locals 2
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    const/high16 v1, -0x80000000

    .line 10
    xor-int v0, p0, v1

    xor-int/2addr v1, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    return v0
.end method

.method public static final uintDivide-J1ME1BU(II)I
    .locals 6
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    .line 15
    int-to-long v0, p0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final uintRemainder-J1ME1BU(II)I
    .locals 6
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    .line 17
    int-to-long v0, p0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    rem-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final uintToDouble(I)D
    .locals 6
    .param p0, "v"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    .line 87
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    int-to-double v0, v0

    ushr-int/lit8 v2, p0, 0x1f

    shl-int/lit8 v2, v2, 0x1e

    int-to-double v2, v2

    const/4 v4, 0x2

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final ulongCompare(JJ)I
    .locals 4
    .param p0, "v1"    # J
    .param p2, "v2"    # J
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 12
    xor-long v0, p0, v2

    xor-long/2addr v2, p2

    cmp-long v0, v0, v2

    return v0
.end method

.method public static final ulongDivide-eb3DHEI(JJ)J
    .locals 12
    .param p0, "v1"    # J
    .param p2, "v2"    # J
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    .line 24
    move-wide v0, p0

    .line 25
    .local v0, "dividend":J
    move-wide v2, p2

    .line 26
    .local v2, "divisor":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 27
    invoke-static {p0, p1, p2, p3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v8

    if-gez v8, :cond_0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    .line 38
    :goto_0
    return-wide v8

    .line 27
    :cond_0
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    goto :goto_0

    .line 31
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-ltz v8, :cond_2

    .line 32
    div-long v8, v0, v2

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    goto :goto_0

    .line 36
    :cond_2
    const/4 v8, 0x1

    ushr-long v8, v0, v8

    div-long/2addr v8, v2

    const/4 v10, 0x1

    shl-long v4, v8, v10

    .line 37
    .local v4, "quotient":J
    mul-long v8, v4, v2

    sub-long v6, v0, v8

    .line 38
    .local v6, "rem":J
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v8

    if-ltz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static final ulongRemainder-eb3DHEI(JJ)J
    .locals 12
    .param p0, "v1"    # J
    .param p2, "v2"    # J
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    .line 44
    move-wide v0, p0

    .line 45
    .local v0, "dividend":J
    move-wide v2, p2

    .line 46
    .local v2, "divisor":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 47
    invoke-static {p0, p1, p2, p3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v8

    if-gez v8, :cond_0

    .line 62
    .end local v2    # "divisor":J
    .end local p0    # "v1":J
    :goto_0
    return-wide p0

    .line 50
    .restart local v2    # "divisor":J
    .restart local p0    # "v1":J
    :cond_0
    sub-long v8, p0, p2

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    goto :goto_0

    .line 55
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-ltz v8, :cond_2

    .line 56
    rem-long v8, v0, v2

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    goto :goto_0

    .line 60
    :cond_2
    const/4 v8, 0x1

    ushr-long v8, v0, v8

    div-long/2addr v8, v2

    const/4 v10, 0x1

    shl-long v4, v8, v10

    .line 61
    .local v4, "quotient":J
    mul-long v8, v4, v2

    sub-long v6, v0, v8

    .line 62
    .local v6, "rem":J
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v8

    if-ltz v8, :cond_3

    .end local v2    # "divisor":J
    :goto_1
    sub-long v8, v6, v2

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    goto :goto_0

    .restart local v2    # "divisor":J
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public static final ulongToDouble(J)D
    .locals 4
    .param p0, "v"    # J
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .prologue
    .line 90
    const/16 v0, 0xb

    ushr-long v0, p0, v0

    long-to-double v0, v0

    const/16 v2, 0x800

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr v2, p0

    long-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final ulongToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 93
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final ulongToString(JI)Ljava/lang/String;
    .locals 10
    .param p0, "v"    # J
    .param p2, "base"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 96
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-ltz v4, :cond_0

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {p0, p1, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-object v4

    .line 98
    :cond_0
    ushr-long v4, p0, v8

    int-to-long v6, p2

    div-long/2addr v4, v6

    shl-long v0, v4, v8

    .line 99
    .local v0, "quotient":J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    sub-long v2, p0, v4

    .line 100
    .local v2, "rem":J
    int-to-long v4, p2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 101
    int-to-long v4, p2

    sub-long/2addr v2, v4

    .line 102
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 104
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v0, v1, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
