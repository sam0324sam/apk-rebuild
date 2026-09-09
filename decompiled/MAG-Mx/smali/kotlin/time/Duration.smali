.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008&\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0087@\u0018\u0000 s2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u0000H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J\u001b\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,J\u001b\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010-J\u001b\u0010)\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010,J\u0013\u0010/\u001a\u0002002\u0008\u0010&\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020\tH\u00d6\u0001J\r\u00103\u001a\u000200\u00a2\u0006\u0004\u00084\u00105J\r\u00106\u001a\u000200\u00a2\u0006\u0004\u00087\u00105J\r\u00108\u001a\u000200\u00a2\u0006\u0004\u00089\u00105J\r\u0010:\u001a\u000200\u00a2\u0006\u0004\u0008;\u00105J\u001b\u0010<\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010,J\u001b\u0010>\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010,J\u0017\u0010@\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008A\u0010(J\u001b\u0010B\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010,J\u001b\u0010B\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010-J\u008d\u0001\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E2u\u0010F\u001aq\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(J\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(K\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(L\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0GH\u0086\u0008\u00a2\u0006\u0004\u0008O\u0010PJx\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E2`\u0010F\u001a\\\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(K\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(L\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0QH\u0086\u0008\u00a2\u0006\u0004\u0008O\u0010RJc\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E2K\u0010F\u001aG\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(L\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0SH\u0086\u0008\u00a2\u0006\u0004\u0008O\u0010TJN\u0010D\u001a\u0002HE\"\u0004\u0008\u0000\u0010E26\u0010F\u001a2\u0012\u0013\u0012\u00110V\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(M\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u0002HE0UH\u0086\u0008\u00a2\u0006\u0004\u0008O\u0010WJ\u0019\u0010X\u001a\u00020\u00032\n\u0010Y\u001a\u00060Zj\u0002`[\u00a2\u0006\u0004\u0008\\\u0010]J\u0019\u0010^\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[\u00a2\u0006\u0004\u0008_\u0010`J\r\u0010a\u001a\u00020b\u00a2\u0006\u0004\u0008c\u0010dJ\u0019\u0010e\u001a\u00020V2\n\u0010Y\u001a\u00060Zj\u0002`[\u00a2\u0006\u0004\u0008f\u0010gJ\r\u0010h\u001a\u00020V\u00a2\u0006\u0004\u0008i\u0010jJ\r\u0010k\u001a\u00020V\u00a2\u0006\u0004\u0008l\u0010jJ\u000f\u0010m\u001a\u00020bH\u0016\u00a2\u0006\u0004\u0008n\u0010dJ#\u0010m\u001a\u00020b2\n\u0010Y\u001a\u00060Zj\u0002`[2\u0008\u0008\u0002\u0010o\u001a\u00020\t\u00a2\u0006\u0004\u0008n\u0010pJ\u0013\u0010q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008r\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00008F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u001a\u0010\u0008\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0005R\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0005R\u0011\u0010\u0012\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0005R\u0011\u0010\u0014\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0005R\u0011\u0010\u0016\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0005R\u0011\u0010\u0018\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0005R\u0011\u0010\u001a\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0005R\u001a\u0010\u001c\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u000b\u001a\u0004\u0008\u001e\u0010\rR\u001a\u0010\u001f\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008 \u0010\u000b\u001a\u0004\u0008!\u0010\rR\u001a\u0010\"\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010\u000b\u001a\u0004\u0008$\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0002\n\u0000\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006t"
    }
    d2 = {
        "Lkotlin/time/Duration;",
        "",
        "value",
        "",
        "constructor-impl",
        "(D)D",
        "absoluteValue",
        "getAbsoluteValue-impl",
        "hoursComponent",
        "",
        "hoursComponent$annotations",
        "()V",
        "getHoursComponent-impl",
        "(D)I",
        "inDays",
        "getInDays-impl",
        "inHours",
        "getInHours-impl",
        "inMicroseconds",
        "getInMicroseconds-impl",
        "inMilliseconds",
        "getInMilliseconds-impl",
        "inMinutes",
        "getInMinutes-impl",
        "inNanoseconds",
        "getInNanoseconds-impl",
        "inSeconds",
        "getInSeconds-impl",
        "minutesComponent",
        "minutesComponent$annotations",
        "getMinutesComponent-impl",
        "nanosecondsComponent",
        "nanosecondsComponent$annotations",
        "getNanosecondsComponent-impl",
        "secondsComponent",
        "secondsComponent$annotations",
        "getSecondsComponent-impl",
        "compareTo",
        "other",
        "compareTo-LRDsOJo",
        "(DD)I",
        "div",
        "scale",
        "div-impl",
        "(DD)D",
        "(DI)D",
        "div-LRDsOJo",
        "equals",
        "",
        "",
        "hashCode",
        "isFinite",
        "isFinite-impl",
        "(D)Z",
        "isInfinite",
        "isInfinite-impl",
        "isNegative",
        "isNegative-impl",
        "isPositive",
        "isPositive-impl",
        "minus",
        "minus-LRDsOJo",
        "plus",
        "plus-LRDsOJo",
        "precision",
        "precision-impl",
        "times",
        "times-impl",
        "toComponents",
        "T",
        "action",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "days",
        "hours",
        "minutes",
        "seconds",
        "nanoseconds",
        "toComponents-impl",
        "(DLkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "Lkotlin/Function4;",
        "(DLkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(DLkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "",
        "(DLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toDouble",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "Lkotlin/time/DurationUnit;",
        "toDouble-impl",
        "(DLjava/util/concurrent/TimeUnit;)D",
        "toInt",
        "toInt-impl",
        "(DLjava/util/concurrent/TimeUnit;)I",
        "toIsoString",
        "",
        "toIsoString-impl",
        "(D)Ljava/lang/String;",
        "toLong",
        "toLong-impl",
        "(DLjava/util/concurrent/TimeUnit;)J",
        "toLongMilliseconds",
        "toLongMilliseconds-impl",
        "(D)J",
        "toLongNanoseconds",
        "toLongNanoseconds-impl",
        "toString",
        "toString-impl",
        "decimals",
        "(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;",
        "unaryMinus",
        "unaryMinus-impl",
        "Companion",
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

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field private static final INFINITE:D

.field private static final ZERO:D


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 39
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->ZERO:D

    .line 42
    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {v0}, Lkotlin/jvm/internal/DoubleCompanionObject;->getPOSITIVE_INFINITY()D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:D

    return-void
.end method

.method private synthetic constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->value:D

    return-void
.end method

.method public static final synthetic access$getINFINITE$cp()D
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:D

    return-wide v0
.end method

.method public static final synthetic access$getZERO$cp()D
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Lkotlin/time/Duration;->ZERO:D

    return-wide v0
.end method

.method public static final synthetic box-impl(D)Lkotlin/time/Duration;
    .locals 2
    .param p0, "v"    # D
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(D)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(DD)I
    .locals 2
    .param p0, "$this"    # D
    .param p2, "other"    # D

    .prologue
    .line 90
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static constructor-impl(D)D
    .locals 0
    .param p0, "value"    # D

    .prologue
    .line 30
    return-wide p0
.end method

.method public static final div-LRDsOJo(DD)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "other"    # D

    .prologue
    .line 73
    div-double v0, p0, p2

    return-wide v0
.end method

.method public static final div-impl(DD)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "scale"    # D

    .prologue
    .line 70
    div-double v0, p0, p2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final div-impl(DI)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "scale"    # I

    .prologue
    .line 67
    int-to-double v0, p2

    div-double v0, p0, v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static equals-impl(DLjava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p2, Lkotlin/time/Duration;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final equals-impl0(DD)Z
    .locals 1
    .param p0, "p1"    # D
    .param p2, "p2"    # D

    .prologue
    const/4 v0, 0x0

    throw v0
.end method

.method public static final getAbsoluteValue-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 88
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-impl(D)D

    move-result-wide p0

    .end local p0    # "$this":D
    :cond_0
    return-wide p0
.end method

.method public static final getHoursComponent-impl(D)I
    .locals 4
    .param p0, "$this"    # D

    .prologue
    .line 150
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInHours-impl(D)D

    move-result-wide v0

    const/16 v2, 0x18

    int-to-double v2, v2

    rem-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static final getInDays-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 179
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInHours-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 182
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInMicroseconds-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 194
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInMilliseconds-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 191
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInMinutes-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 185
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInNanoseconds-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 197
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInSeconds-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 188
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMinutesComponent-impl(D)I
    .locals 4
    .param p0, "$this"    # D

    .prologue
    .line 152
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInMinutes-impl(D)D

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-double v2, v2

    rem-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static final getNanosecondsComponent-impl(D)I
    .locals 4
    .param p0, "$this"    # D

    .prologue
    .line 156
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInNanoseconds-impl(D)D

    move-result-wide v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    rem-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static final getSecondsComponent-impl(D)I
    .locals 4
    .param p0, "$this"    # D

    .prologue
    .line 154
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInSeconds-impl(D)D

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-double v2, v2

    rem-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static hashCode-impl(D)I
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static synthetic hoursComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final isFinite-impl(D)Z
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 85
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isInfinite-impl(D)Z
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 82
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public static final isNegative-impl(D)Z
    .locals 4
    .param p0, "$this"    # D

    .prologue
    const/4 v0, 0x0

    .line 76
    int-to-double v2, v0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isPositive-impl(D)Z
    .locals 4
    .param p0, "$this"    # D

    .prologue
    const/4 v0, 0x0

    .line 79
    int-to-double v2, v0

    cmpl-double v1, p0, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final minus-LRDsOJo(DD)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "other"    # D

    .prologue
    .line 58
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic minutesComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static synthetic nanosecondsComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final plus-LRDsOJo(DD)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "other"    # D

    .prologue
    .line 55
    add-double v0, p0, p2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final precision-impl(DD)I
    .locals 4
    .param p0, "$this"    # D
    .param p2, "value"    # D

    .prologue
    const/4 v0, 0x1

    .line 260
    nop

    .line 261
    int-to-double v2, v0

    cmpg-double v1, p2, v2

    if-gez v1, :cond_1

    const/4 v0, 0x3

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    const/16 v1, 0xa

    int-to-double v2, v1

    cmpg-double v1, p2, v2

    if-gez v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 263
    :cond_2
    const/16 v1, 0x64

    int-to-double v2, v1

    cmpg-double v1, p2, v2

    if-ltz v1, :cond_0

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic secondsComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final times-impl(DD)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "scale"    # D

    .prologue
    .line 64
    mul-double v0, p0, p2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final times-impl(DI)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "scale"    # I

    .prologue
    .line 61
    int-to-double v0, p2

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # D
    .param p2, "action"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInSeconds-impl(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # D
    .param p2, "action"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function3",
            "<-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInMinutes-impl(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # D
    .param p2, "action"    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function4",
            "<-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInHours-impl(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(DLkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this"    # D
    .param p2, "action"    # Lkotlin/jvm/functions/Function5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Lkotlin/jvm/functions/Function5",
            "<-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .local v6, "$i$f$toComponents":I
    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInDays-impl(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toDouble-impl(DLjava/util/concurrent/TimeUnit;)D
    .locals 2
    .param p0, "$this"    # D
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lkotlin/time/DurationKt;->access$getStorageUnit$p()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final toInt-impl(DLjava/util/concurrent/TimeUnit;)I
    .locals 2
    .param p0, "$this"    # D
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static final toIsoString-impl(D)Ljava/lang/String;
    .locals 16
    .param p0, "$this"    # D
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "$this$buildString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 306
    .local v0, "$i$a$-buildString-Duration$toIsoString$1":I
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isNegative-impl(D)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2d

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    const-string v11, "PT"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getAbsoluteValue-impl(D)D

    move-result-wide v4

    .local v4, "$this$iv":D
    const/4 v2, 0x0

    .line 479
    .local v2, "$i$f$toComponents":I
    invoke-static {v4, v5}, Lkotlin/time/Duration;->getInHours-impl(D)D

    move-result-wide v12

    double-to-int v9, v12

    invoke-static {v4, v5}, Lkotlin/time/Duration;->getMinutesComponent-impl(D)I

    move-result v11

    invoke-static {v4, v5}, Lkotlin/time/Duration;->getSecondsComponent-impl(D)I

    move-result v12

    invoke-static {v4, v5}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(D)I

    move-result v13

    .local v9, "hours":I
    const/4 v1, 0x0

    .line 309
    .local v1, "$i$a$-toComponents-Duration$toIsoString$1$1":I
    if-eqz v9, :cond_8

    const/4 v6, 0x1

    .line 310
    .local v6, "hasHours":Z
    :goto_0
    if-nez v12, :cond_1

    if-eqz v13, :cond_9

    :cond_1
    const/4 v8, 0x1

    .line 311
    .local v8, "hasSeconds":Z
    :goto_1
    if-nez v11, :cond_2

    if-eqz v8, :cond_a

    if-eqz v6, :cond_a

    :cond_2
    const/4 v7, 0x1

    .line 312
    .local v7, "hasMinutes":Z
    :goto_2
    if-eqz v6, :cond_3

    .line 313
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x48

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_3
    if-eqz v7, :cond_4

    .line 316
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v14, 0x4d

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    :cond_4
    if-nez v8, :cond_5

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    .line 319
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    if-eqz v13, :cond_6

    .line 321
    const/16 v11, 0x2e

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    const/16 v14, 0x30

    invoke-static {v11, v12, v14}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, "nss":Ljava/lang/String;
    nop

    .line 324
    const v11, 0xf4240

    rem-int v11, v13, v11

    if-nez v11, :cond_b

    check-cast v10, Ljava/lang/CharSequence;

    .end local v10    # "nss":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v3, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 327
    :cond_6
    :goto_3
    const/16 v11, 0x53

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_7
    nop

    nop

    nop

    .line 332
    nop

    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    return-object v11

    .line 309
    .end local v6    # "hasHours":Z
    .end local v7    # "hasMinutes":Z
    .end local v8    # "hasSeconds":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 310
    .restart local v6    # "hasHours":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_1

    .line 311
    .restart local v8    # "hasSeconds":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_2

    .line 325
    .restart local v7    # "hasMinutes":Z
    .restart local v10    # "nss":Ljava/lang/String;
    :cond_b
    rem-int/lit16 v11, v13, 0x3e8

    if-nez v11, :cond_c

    check-cast v10, Ljava/lang/CharSequence;

    .end local v10    # "nss":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-virtual {v3, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 326
    .restart local v10    # "nss":Ljava/lang/String;
    :cond_c
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static final toLong-impl(DLjava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p0, "$this"    # D
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static final toLongMilliseconds-impl(D)J
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 217
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final toLongNanoseconds-impl(D)J
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 208
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toString-impl(D)Ljava/lang/String;
    .locals 20
    .param p0, "$this"    # D
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 232
    nop

    .line 233
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInfinite-impl(D)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    .line 232
    :goto_0
    return-object v13

    .line 234
    :cond_0
    const-wide/16 v16, 0x0

    cmpg-double v13, p0, v16

    if-nez v13, :cond_1

    const-string v13, "0s"

    goto :goto_0

    .line 236
    :cond_1
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getAbsoluteValue-impl(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/time/Duration;->getInNanoseconds-impl(D)D

    move-result-wide v8

    .line 237
    .local v8, "absNs":D
    const/4 v11, 0x0

    .line 238
    .local v11, "scientific":Z
    const/4 v10, 0x0

    .line 239
    .local v10, "maxDecimals":I
    nop

    .line 240
    const-wide v16, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v13, v8, v16

    if-gez v13, :cond_2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .local v7, "it":Ljava/util/concurrent/TimeUnit;
    const/4 v4, 0x0

    .local v4, "$i$a$-also-Duration$toString$unit$1":I
    const/4 v11, 0x1

    move-object v12, v7

    .line 251
    .end local v4    # "$i$a$-also-Duration$toString$unit$1":I
    .end local v7    # "it":Ljava/util/concurrent/TimeUnit;
    .local v12, "unit":Ljava/util/concurrent/TimeUnit;
    :goto_1
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v12}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v14

    .line 252
    .local v14, "value":D
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    if-eqz v11, :cond_b

    invoke-static {v14, v15}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object v13

    .line 252
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 256
    invoke-static {v12}, Lkotlin/time/DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 241
    .end local v12    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local v14    # "value":D
    :cond_2
    const/4 v13, 0x1

    int-to-double v0, v13

    move-wide/from16 v16, v0

    cmpg-double v13, v8, v16

    if-gez v13, :cond_3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .restart local v7    # "it":Ljava/util/concurrent/TimeUnit;
    const/4 v5, 0x0

    .local v5, "$i$a$-also-Duration$toString$unit$2":I
    const/4 v10, 0x7

    move-object v12, v7

    goto :goto_1

    .line 242
    .end local v5    # "$i$a$-also-Duration$toString$unit$2":I
    .end local v7    # "it":Ljava/util/concurrent/TimeUnit;
    :cond_3
    const-wide v16, 0x408f400000000000L    # 1000.0

    cmpg-double v13, v8, v16

    if-gez v13, :cond_4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v7

    goto :goto_1

    .line 243
    :cond_4
    const-wide v16, 0x412e848000000000L    # 1000000.0

    cmpg-double v13, v8, v16

    if-gez v13, :cond_5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v7

    goto :goto_1

    .line 244
    :cond_5
    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v13, v8, v16

    if-gez v13, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v7

    goto :goto_1

    .line 245
    :cond_6
    const-wide v16, 0x426d1a94a2000000L    # 1.0E12

    cmpg-double v13, v8, v16

    if-gez v13, :cond_7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v7

    goto :goto_1

    .line 246
    :cond_7
    const-wide v16, 0x42cb48eb57e00000L    # 6.0E13

    cmpg-double v13, v8, v16

    if-gez v13, :cond_8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v12, v7

    goto :goto_1

    .line 247
    :cond_8
    const-wide v16, 0x4329945ca2620000L    # 3.6E15

    cmpg-double v13, v8, v16

    if-gez v13, :cond_9

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v7

    goto/16 :goto_1

    .line 248
    :cond_9
    const-wide v16, 0x44476b344f2a78c0L    # 8.64E20

    cmpg-double v13, v8, v16

    if-gez v13, :cond_a

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v7

    goto/16 :goto_1

    .line 249
    :cond_a
    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .restart local v7    # "it":Ljava/util/concurrent/TimeUnit;
    const/4 v6, 0x0

    .local v6, "$i$a$-also-Duration$toString$unit$3":I
    const/4 v11, 0x1

    move-object v12, v7

    goto/16 :goto_1

    .line 254
    .end local v6    # "$i$a$-also-Duration$toString$unit$3":I
    .end local v7    # "it":Ljava/util/concurrent/TimeUnit;
    .restart local v12    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local v14    # "value":D
    :cond_b
    if-lez v10, :cond_c

    invoke-static {v14, v15, v10}, Lkotlin/time/FormatToDecimalsKt;->formatUpToDecimals(DI)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 255
    :cond_c
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v0, p0

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->precision-impl(DD)I

    move-result v13

    invoke-static {v14, v15, v13}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2
.end method

.method public static final toString-impl(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;
    .locals 10
    .param p0, "$this"    # D
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "decimals"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "unit"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    if-ltz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-Duration$toString$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decimals must be not negative, but was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-require-Duration$toString$1":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_1
    return-object v1

    .line 283
    :cond_2
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v2

    .line 284
    .local v2, "number":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x42d6bcc41e900000L    # 1.0E14

    cmpg-double v1, v6, v8

    if-gez v1, :cond_3

    const/16 v1, 0xc

    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    invoke-static {v2, v3, v1}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object v1

    .line 284
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    invoke-static {p2}, Lkotlin/time/DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 286
    :cond_3
    invoke-static {v2, v3}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static synthetic toString-impl$default(DLjava/util/concurrent/TimeUnit;IILjava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 280
    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->toString-impl(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unaryMinus-impl(D)D
    .locals 2
    .param p0, "$this"    # D

    .prologue
    .line 52
    neg-double v0, p0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(D)I

    move-result v0

    return v0
.end method

.method public compareTo-LRDsOJo(D)I
    .locals 3

    .prologue
    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(DD)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(DLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lkotlin/time/Duration;->value:D

    return-wide v0
.end method
