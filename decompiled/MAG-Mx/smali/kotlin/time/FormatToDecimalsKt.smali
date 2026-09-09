.class public final Lkotlin/time/FormatToDecimalsKt;
.super Ljava/lang/Object;
.source "formatToDecimals.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nformatToDecimals.kt\nKotlin\n*S Kotlin\n*F\n+ 1 formatToDecimals.kt\nkotlin/time/FormatToDecimalsKt\n*L\n1#1,42:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u001a\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\"\u001c\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "precisionFormats",
        "",
        "Ljava/lang/ThreadLocal;",
        "Ljava/text/DecimalFormat;",
        "[Ljava/lang/ThreadLocal;",
        "rootNegativeExpFormatSymbols",
        "Ljava/text/DecimalFormatSymbols;",
        "rootPositiveExpFormatSymbols",
        "scientificFormat",
        "createFormatForDecimals",
        "decimals",
        "",
        "formatScientific",
        "",
        "value",
        "",
        "formatToExactDecimals",
        "formatUpToDecimals",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final precisionFormats:[Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

.field private static final rootPositiveExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

.field private static final scientificFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 14
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .local v3, "$this$apply":Ljava/text/DecimalFormatSymbols;
    const/4 v1, 0x0

    .local v1, "$i$a$-apply-FormatToDecimalsKt$rootNegativeExpFormatSymbols$1":I
    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    sput-object v3, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    .line 15
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    .end local v3    # "$this$apply":Ljava/text/DecimalFormatSymbols;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .restart local v3    # "$this$apply":Ljava/text/DecimalFormatSymbols;
    const/4 v2, 0x0

    .local v2, "$i$a$-apply-FormatToDecimalsKt$rootPositiveExpFormatSymbols$1":I
    const-string v4, "e+"

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    sput-object v3, Lkotlin/time/FormatToDecimalsKt;->rootPositiveExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    .line 16
    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    const/4 v0, 0x0

    .local v0, "$i$a$-<init>-FormatToDecimalsKt$precisionFormats$1":I
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "$i$a$-<init>-FormatToDecimalsKt$precisionFormats$1":I
    :cond_0
    sput-object v6, Lkotlin/time/FormatToDecimalsKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    .line 36
    new-instance v4, Ljava/lang/ThreadLocal;

    invoke-direct {v4}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v4, Lkotlin/time/FormatToDecimalsKt;->scientificFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static final createFormatForDecimals(I)Ljava/text/DecimalFormat;
    .locals 4
    .param p0, "decimals"    # I

    .prologue
    .line 18
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0"

    sget-object v3, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .local v1, "$this$apply":Ljava/text/DecimalFormat;
    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-apply-FormatToDecimalsKt$createFormatForDecimals$1":I
    if-lez p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 20
    :cond_0
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 21
    nop

    return-object v1
.end method

.method public static final formatScientific(D)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # D
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 38
    sget-object v5, Lkotlin/time/FormatToDecimalsKt;->scientificFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    move-object v3, v4

    .line 39
    check-cast v3, Ljava/text/DecimalFormat;

    .local v3, "$this$apply":Ljava/text/DecimalFormat;
    const/4 v1, 0x0

    .line 40
    .local v1, "$i$a$-apply-FormatToDecimalsKt$formatScientific$2":I
    const/4 v5, 0x1

    int-to-double v6, v5

    cmpl-double v5, p0, v6

    if-gez v5, :cond_0

    const/4 v5, -0x1

    int-to-double v6, v5

    cmpg-double v5, p0, v6

    if-gtz v5, :cond_2

    :cond_0
    sget-object v5, Lkotlin/time/FormatToDecimalsKt;->rootPositiveExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    :goto_1
    invoke-virtual {v3, v5}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 41
    nop

    .line 39
    check-cast v4, Ljava/text/DecimalFormat;

    .line 42
    invoke-virtual {v4, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scientificFormat.getOrSe\u2026 }\n        .format(value)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 38
    .end local v1    # "$i$a$-apply-FormatToDecimalsKt$formatScientific$2":I
    .end local v3    # "$this$apply":Ljava/text/DecimalFormat;
    :cond_1
    const/4 v2, 0x0

    .local v2, "$i$a$-getOrSet-FormatToDecimalsKt$formatScientific$1":I
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0E0"

    sget-object v6, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3, v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .restart local v3    # "$this$apply":Ljava/text/DecimalFormat;
    const/4 v0, 0x0

    .local v0, "$i$a$-apply-FormatToDecimalsKt$formatScientific$1$1":I
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v4, v3

    goto :goto_0

    .line 40
    .end local v0    # "$i$a$-apply-FormatToDecimalsKt$formatScientific$1$1":I
    .end local v2    # "$i$a$-getOrSet-FormatToDecimalsKt$formatScientific$1":I
    .restart local v1    # "$i$a$-apply-FormatToDecimalsKt$formatScientific$2":I
    :cond_2
    sget-object v5, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    goto :goto_1
.end method

.method public static final formatToExactDecimals(DI)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D
    .param p2, "decimals"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    sget-object v2, Lkotlin/time/FormatToDecimalsKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    array-length v2, v2

    if-ge p2, v2, :cond_1

    .line 25
    sget-object v2, Lkotlin/time/FormatToDecimalsKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    aget-object v3, v2, p2

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    check-cast v2, Ljava/text/DecimalFormat;

    move-object v1, v2

    .line 28
    .local v1, "format":Ljava/text/DecimalFormat;
    :goto_1
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format.format(value)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 25
    .end local v1    # "format":Ljava/text/DecimalFormat;
    :cond_0
    const/4 v0, 0x0

    .local v0, "$i$a$-getOrSet-FormatToDecimalsKt$formatToExactDecimals$format$1":I
    invoke-static {p2}, Lkotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    .end local v0    # "$i$a$-getOrSet-FormatToDecimalsKt$formatToExactDecimals$format$1":I
    :cond_1
    invoke-static {p2}, Lkotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v1

    goto :goto_1
.end method

.method public static final formatUpToDecimals(DI)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D
    .param p2, "decimals"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 32
    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v1

    .line 33
    .local v1, "$this$apply":Ljava/text/DecimalFormat;
    const/4 v0, 0x0

    .local v0, "$i$a$-apply-FormatToDecimalsKt$formatUpToDecimals$1":I
    invoke-virtual {v1, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 34
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "createFormatForDecimals(\u2026 }\n        .format(value)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
