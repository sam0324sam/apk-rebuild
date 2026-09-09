.class public final Lokhttp3/internal/http/DatesKt;
.super Ljava/lang/Object;
.source "dates.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ndates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 dates.kt\nokhttp3/internal/http/DatesKt\n*L\n1#1,107:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\n\u001a\u000e\u0010\u000c\u001a\u0004\u0018\u00010\r*\u00020\u0005H\u0000\u001a\u000c\u0010\u000e\u001a\u00020\u0005*\u00020\rH\u0000\"\u0018\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "BROWSER_COMPATIBLE_DATE_FORMATS",
        "",
        "Ljava/text/DateFormat;",
        "[Ljava/text/DateFormat;",
        "BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS",
        "",
        "[Ljava/lang/String;",
        "MAX_DATE",
        "",
        "STANDARD_DATE_FORMAT",
        "okhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1",
        "Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;",
        "toHttpDateOrNull",
        "Ljava/util/Date;",
        "toHttpDateString",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field public static final MAX_DATE:J = 0xe677d21fdbffL

.field private static final STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-direct {v0}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    .line 43
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    .line 46
    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    .line 47
    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    .line 49
    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 50
    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    .line 51
    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 52
    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 53
    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 54
    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    .line 55
    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 56
    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 57
    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 58
    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 59
    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 62
    const/16 v1, 0xe

    const-string v2, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 66
    sget-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method public static final toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;
    .locals 13
    .param p0, "$this$toHttpDateOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v8, "$this$toHttpDateOrNull"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p0

    .line 70
    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_2

    move-object v7, v9

    .line 102
    :cond_0
    :goto_1
    return-object v7

    :cond_1
    move v8, v5

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 73
    .local v6, "position":Ljava/text/ParsePosition;
    sget-object v8, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-virtual {v8}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/text/DateFormat;

    invoke-virtual {v8, p0, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 74
    .local v7, "result":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v8, v10, :cond_0

    .line 79
    sget-object v10, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v10

    nop

    const/4 v2, 0x0

    .line 80
    .local v2, "$i$a$-synchronized-DatesKt$toHttpDateOrNull$1":I
    :try_start_0
    sget-object v8, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v8, v8

    :goto_2
    if-ge v5, v8, :cond_5

    .line 81
    sget-object v11, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v4, v11, v5

    .line 82
    .local v4, "format":Ljava/text/DateFormat;
    if-nez v4, :cond_3

    .line 83
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v11, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v11, v11, v5

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v3, "$this$apply":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 86
    .local v1, "$i$a$-apply-DatesKt$toHttpDateOrNull$1$1":I
    sget-object v11, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 87
    nop

    .line 83
    move-object v0, v3

    check-cast v0, Ljava/text/DateFormat;

    move-object v4, v0

    .line 88
    sget-object v11, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v4, v11, v5

    .line 90
    .end local v1    # "$i$a$-apply-DatesKt$toHttpDateOrNull$1$1":I
    .end local v3    # "$this$apply":Ljava/text/SimpleDateFormat;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 91
    invoke-virtual {v4, p0, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 92
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_4

    .line 98
    monitor-exit v10

    goto :goto_1

    .line 80
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .local v5, "i":I
    goto :goto_2

    .line 101
    .end local v4    # "format":Ljava/text/DateFormat;
    .end local v5    # "i":I
    :cond_5
    :try_start_1
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit v10

    move-object v7, v9

    .line 102
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method public static final toHttpDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$toHttpDateString"    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$toHttpDateString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-virtual {v0}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STANDARD_DATE_FORMAT.get().format(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
