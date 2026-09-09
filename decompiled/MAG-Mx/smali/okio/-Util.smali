.class public final Lokio/-Util;
.super Ljava/lang/Object;
.source "-Util.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Util.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Util.kt\nokio/-Util\n*L\n1#1,89:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0003\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u000cH\u0000\u001a\u0019\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0080\u0008\u001a\u0019\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u0015\u0010\u000f\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0080\u000c\u001a\u0015\u0010\u000f\u001a\u00020\u000c*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000cH\u0080\u000c\u001a\u000c\u0010\u0012\u001a\u00020\u0005*\u00020\u0005H\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u000c*\u00020\u000cH\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u0013*\u00020\u0013H\u0000\u001a\u0015\u0010\u0014\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u0015\u0010\u0015\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "arrayRangeEquals",
        "",
        "a",
        "",
        "aOffset",
        "",
        "b",
        "bOffset",
        "byteCount",
        "checkOffsetAndCount",
        "",
        "size",
        "",
        "offset",
        "minOf",
        "and",
        "",
        "other",
        "reverseBytes",
        "",
        "shl",
        "shr",
        "jvm"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-Util"
.end annotation


# direct methods
.method public static final and(BI)I
    .locals 1
    .param p0, "$receiver"    # B
    .param p1, "other"    # I

    .prologue
    .line 63
    and-int v0, p0, p1

    return v0
.end method

.method public static final and(BJ)J
    .locals 3
    .param p0, "$receiver"    # B
    .param p1, "other"    # J

    .prologue
    .line 66
    int-to-long v0, p0

    and-long/2addr v0, p1

    return-wide v0
.end method

.method public static final and(IJ)J
    .locals 3
    .param p0, "$receiver"    # I
    .param p1, "other"    # J

    .prologue
    .line 69
    int-to-long v0, p0

    and-long/2addr v0, p1

    return-wide v0
.end method

.method public static final arrayRangeEquals([BI[BII)Z
    .locals 4
    .param p0, "a"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "aOffset"    # I
    .param p2, "b"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "bOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    const/4 v1, 0x0

    const-string v2, "a"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 84
    :goto_0
    if-ge v0, p4, :cond_1

    .line 85
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    .line 87
    :goto_1
    return v1

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static final checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "size"    # J
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .prologue
    .line 22
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byteCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 25
    :cond_1
    return-void
.end method

.method public static final minOf(IJ)J
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # J

    .prologue
    .line 75
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final minOf(JI)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # I

    .prologue
    .line 72
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final reverseBytes(I)I
    .locals 2
    .param p0, "$receiver"    # I

    .prologue
    .line 37
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    .line 38
    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    .line 37
    or-int/2addr v0, v1

    .line 39
    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    .line 38
    or-int/2addr v0, v1

    .line 40
    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 39
    or-int/2addr v0, v1

    return v0
.end method

.method public static final reverseBytes(J)J
    .locals 8
    .param p0, "$receiver"    # J

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x28

    const/16 v5, 0x18

    const/16 v4, 0x8

    .line 44
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    ushr-long/2addr v0, v7

    .line 45
    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v6

    .line 44
    or-long/2addr v0, v2

    .line 46
    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v5

    .line 45
    or-long/2addr v0, v2

    .line 47
    const-wide v2, 0xff00000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v4

    .line 46
    or-long/2addr v0, v2

    .line 48
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    .line 47
    or-long/2addr v0, v2

    .line 49
    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    .line 48
    or-long/2addr v0, v2

    .line 50
    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    .line 49
    or-long/2addr v0, v2

    .line 51
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    .line 50
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static final reverseBytes(S)S
    .locals 4
    .param p0, "$receiver"    # S

    .prologue
    .line 30
    const v2, 0xffff

    and-int v0, p0, v2

    .line 31
    .local v0, "i":I
    const v2, 0xff00

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    .line 32
    and-int/lit16 v3, v0, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 31
    or-int v1, v2, v3

    .line 33
    .local v1, "reversed":I
    int-to-short v2, v1

    return v2
.end method

.method public static final shl(BI)I
    .locals 1
    .param p0, "$receiver"    # B
    .param p1, "other"    # I

    .prologue
    .line 60
    shl-int v0, p0, p1

    return v0
.end method

.method public static final shr(BI)I
    .locals 1
    .param p0, "$receiver"    # B
    .param p1, "other"    # I

    .prologue
    .line 57
    shr-int v0, p0, p1

    return v0
.end method
