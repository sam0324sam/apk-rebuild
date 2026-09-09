.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Companion;,
        Lkotlin/random/Random$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n*L\n1#1,353:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/random/Random;",
        "",
        "()V",
        "nextBits",
        "",
        "bitCount",
        "nextBoolean",
        "",
        "nextBytes",
        "",
        "array",
        "fromIndex",
        "toIndex",
        "size",
        "nextDouble",
        "",
        "until",
        "from",
        "nextFloat",
        "",
        "nextInt",
        "nextLong",
        "",
        "Companion",
        "Default",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# static fields
.field public static final Companion:Lkotlin/random/Random$Companion;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Default:Lkotlin/random/Random$Default;

.field private static final defaultRandom:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lkotlin/random/Random$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 242
    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v0}, Lkotlin/internal/PlatformImplementations;->defaultPlatformRandom()Lkotlin/random/Random;

    move-result-object v0

    sput-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    .line 268
    sget-object v0, Lkotlin/random/Random$Companion;->INSTANCE:Lkotlin/random/Random$Companion;

    sput-object v0, Lkotlin/random/Random;->Companion:Lkotlin/random/Random$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultRandom$cp()Lkotlin/random/Random;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    return-object v0
.end method

.method public static synthetic nextBytes$default(Lkotlin/random/Random;[BIIILjava/lang/Object;)[B
    .locals 2

    .prologue
    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: nextBytes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 195
    const/4 p2, 0x0

    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    array-length p3, p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/random/Random;->nextBytes([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract nextBits(I)I
.end method

.method public nextBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes(I)[B
    .locals 1
    .param p1, "size"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 230
    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public nextBytes([B)[B
    .locals 2
    .param p1, "array"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lkotlin/random/Random;->nextBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public nextBytes([BII)[B
    .locals 12
    .param p1, "array"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const-string v11, "array"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    array-length v11, p1

    if-gez p2, :cond_1

    :cond_0
    move v11, v3

    :goto_0
    if-nez v11, :cond_2

    const/4 v1, 0x0

    .local v1, "$i$a$-require-Random$nextBytes$1":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fromIndex ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") or toIndex ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") are out of range: 0.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .end local v1    # "$i$a$-require-Random$nextBytes$1":I
    :cond_1
    if-lt v11, p2, :cond_0

    array-length v11, p1

    if-ltz p3, :cond_0

    if-lt v11, p3, :cond_0

    move v11, v10

    goto :goto_0

    .line 197
    :cond_2
    if-gt p2, p3, :cond_3

    :goto_1
    if-nez v10, :cond_4

    const/4 v2, 0x0

    .local v2, "$i$a$-require-Random$nextBytes$2":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fromIndex ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") must be not greater than toIndex ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .end local v2    # "$i$a$-require-Random$nextBytes$2":I
    :cond_3
    move v10, v3

    goto :goto_1

    .line 199
    :cond_4
    sub-int v10, p3, p2

    div-int/lit8 v7, v10, 0x4

    .line 201
    .local v7, "steps":I
    move v5, p2

    .local v5, "position":I
    move v4, v3

    .line 202
    :goto_2
    if-ge v4, v7, :cond_5

    .local v4, "it":I
    const/4 v0, 0x0

    .line 203
    .local v0, "$i$a$-repeat-Random$nextBytes$3":I
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v8

    .line 204
    .local v8, "v":I
    int-to-byte v10, v8

    aput-byte v10, p1, v5

    .line 205
    add-int/lit8 v10, v5, 0x1

    ushr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    aput-byte v11, p1, v10

    .line 206
    add-int/lit8 v10, v5, 0x2

    ushr-int/lit8 v11, v8, 0x10

    int-to-byte v11, v11

    aput-byte v11, p1, v10

    .line 207
    add-int/lit8 v10, v5, 0x3

    ushr-int/lit8 v11, v8, 0x18

    int-to-byte v11, v11

    aput-byte v11, p1, v10

    .line 208
    add-int/lit8 v5, v5, 0x4

    .line 209
    nop

    nop

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "$i$a$-repeat-Random$nextBytes$3":I
    .end local v4    # "it":I
    .end local v8    # "v":I
    :cond_5
    sub-int v6, p3, v5

    .line 212
    .local v6, "remainder":I
    mul-int/lit8 v10, v6, 0x8

    invoke-virtual {p0, v10}, Lkotlin/random/Random;->nextBits(I)I

    move-result v9

    .line 213
    .local v9, "vr":I
    :goto_3
    if-ge v3, v6, :cond_6

    .line 214
    add-int v10, v5, v3

    mul-int/lit8 v11, v3, 0x8

    ushr-int v11, v9, v11

    int-to-byte v11, v11

    aput-byte v11, p1, v10

    .line 213
    add-int/lit8 v3, v3, 0x1

    .local v3, "i":I
    goto :goto_3

    .line 217
    .end local v3    # "i":I
    :cond_6
    return-object p1
.end method

.method public nextDouble()D
    .locals 2

    .prologue
    .line 152
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lkotlin/random/Random;->nextBits(I)I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/random/PlatformRandomKt;->doubleFromParts(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 3
    .param p1, "until"    # D

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lkotlin/random/Random;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextDouble(DD)D
    .locals 15
    .param p1, "from"    # D
    .param p3, "until"    # D

    .prologue
    .line 173
    invoke-static/range {p1 .. p4}, Lkotlin/random/RandomKt;->checkRangeBounds(DD)V

    .line 174
    sub-double v6, p3, p1

    .line 175
    .local v6, "size":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_3

    .line 176
    invoke-virtual {p0}, Lkotlin/random/Random;->nextDouble()D

    move-result-wide v8

    const/4 v10, 0x2

    int-to-double v10, v10

    div-double v10, p3, v10

    const/4 v12, 0x2

    int-to-double v12, v12

    div-double v12, p1, v12

    sub-double/2addr v10, v12

    mul-double v4, v8, v10

    .line 177
    .local v4, "r1":D
    add-double v8, p1, v4

    add-double v2, v8, v4

    .line 181
    .end local v4    # "r1":D
    .local v2, "r":D
    :goto_2
    cmpl-double v8, v2, p3

    if-ltz v8, :cond_0

    sget-object v8, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {v8}, Lkotlin/jvm/internal/DoubleCompanionObject;->getNEGATIVE_INFINITY()D

    move-result-wide v8

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v2

    .end local v2    # "r":D
    :cond_0
    return-wide v2

    .line 175
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {p0}, Lkotlin/random/Random;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double v2, p1, v8

    goto :goto_2
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 187
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x1000000

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1
    .param p1, "until"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlin/random/Random;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public nextInt(II)I
    .locals 7
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 57
    invoke-static {p1, p2}, Lkotlin/random/RandomKt;->checkRangeBounds(II)V

    .line 58
    sub-int v2, p2, p1

    .line 59
    .local v2, "n":I
    if-gtz v2, :cond_0

    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_3

    .line 60
    :cond_0
    neg-int v5, v2

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_1

    .line 61
    invoke-static {v2}, Lkotlin/random/RandomKt;->fastLog2(I)I

    move-result v0

    .line 62
    .local v0, "bitCount":I
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result v3

    .line 71
    .end local v0    # "bitCount":I
    .local v3, "rnd":I
    :goto_0
    add-int v5, p1, v3

    .line 75
    :goto_1
    return v5

    .line 64
    .end local v3    # "rnd":I
    :cond_1
    const/4 v4, 0x0

    .line 65
    .local v4, "v":I
    :cond_2
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v5

    ushr-int/lit8 v1, v5, 0x1

    .line 67
    .local v1, "bits":I
    rem-int v4, v1, v2

    .line 68
    sub-int v5, v1, v4

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v5, v6

    if-ltz v5, :cond_2

    move v3, v4

    .line 69
    goto :goto_0

    .line 73
    .end local v1    # "bits":I
    .end local v4    # "v":I
    :cond_3
    nop

    .line 74
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v3

    .line 75
    .restart local v3    # "rnd":I
    if-gt p1, v3, :cond_3

    if-le p2, v3, :cond_3

    move v5, v3

    goto :goto_1
.end method

.method public nextLong()J
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 3
    .param p1, "until"    # J

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lkotlin/random/Random;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(JJ)J
    .locals 19
    .param p1, "from"    # J
    .param p3, "until"    # J

    .prologue
    .line 106
    invoke-static/range {p1 .. p4}, Lkotlin/random/RandomKt;->checkRangeBounds(JJ)V

    .line 107
    sub-long v6, p3, p1

    .line 108
    .local v6, "n":J
    const-wide/16 v14, 0x0

    cmp-long v9, v6, v14

    if-lez v9, :cond_4

    .line 109
    const-wide/16 v10, 0x0

    .line 110
    .local v10, "rnd":J
    neg-long v14, v6

    and-long/2addr v14, v6

    cmp-long v9, v14, v6

    if-nez v9, :cond_2

    .line 111
    long-to-int v8, v6

    .line 112
    .local v8, "nLow":I
    const/16 v9, 0x20

    ushr-long v14, v6, v9

    long-to-int v3, v14

    .line 113
    .local v3, "nHigh":I
    nop

    .line 114
    if-eqz v8, :cond_0

    .line 115
    invoke-static {v8}, Lkotlin/random/RandomKt;->fastLog2(I)I

    move-result v2

    .line 117
    .local v2, "bitCount":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lkotlin/random/Random;->nextBits(I)I

    move-result v9

    int-to-long v14, v9

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    .line 134
    .end local v2    # "bitCount":I
    .end local v3    # "nHigh":I
    .end local v8    # "nLow":I
    :goto_0
    add-long v14, p1, v10

    .line 139
    :goto_1
    return-wide v14

    .line 119
    .restart local v3    # "nHigh":I
    .restart local v8    # "nLow":I
    :cond_0
    const/4 v9, 0x1

    if-ne v3, v9, :cond_1

    .line 121
    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextInt()I

    move-result v9

    int-to-long v14, v9

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v3}, Lkotlin/random/RandomKt;->fastLog2(I)I

    move-result v2

    .line 124
    .restart local v2    # "bitCount":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lkotlin/random/Random;->nextBits(I)I

    move-result v9

    int-to-long v14, v9

    const/16 v9, 0x20

    shl-long/2addr v14, v9

    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextInt()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v16, v0

    add-long v10, v14, v16

    goto :goto_0

    .line 128
    .end local v2    # "bitCount":I
    .end local v3    # "nHigh":I
    .end local v8    # "nLow":I
    :cond_2
    const-wide/16 v12, 0x0

    .line 129
    .local v12, "v":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v14

    const/4 v9, 0x1

    ushr-long v4, v14, v9

    .line 131
    .local v4, "bits":J
    rem-long v12, v4, v6

    .line 132
    sub-long v14, v4, v12

    const-wide/16 v16, 0x1

    sub-long v16, v6, v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    .line 133
    move-wide v10, v12

    goto :goto_0

    .line 137
    .end local v4    # "bits":J
    .end local v10    # "rnd":J
    .end local v12    # "v":J
    :cond_4
    nop

    .line 138
    invoke-virtual/range {p0 .. p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v10

    .line 139
    .restart local v10    # "rnd":J
    cmp-long v9, p1, v10

    if-gtz v9, :cond_4

    cmp-long v9, p3, v10

    if-lez v9, :cond_4

    move-wide v14, v10

    goto :goto_1
.end method
