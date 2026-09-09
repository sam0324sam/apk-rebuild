.class public final Lkotlin/time/MeasureTimeKt;
.super Ljava/lang/Object;
.source "measureTime.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmeasureTime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,86:1\n33#1,7:87\n78#1,7:94\n*E\n*S KotlinDebug\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n21#1,7:87\n66#1,7:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a,\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u0005\u001a0\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0003H\u0087\u0008\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\t2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\n\u001a4\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u0008*\u00020\t2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0003H\u0087\u0008\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "measureTime",
        "Lkotlin/time/Duration;",
        "block",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)D",
        "measureTimedValue",
        "Lkotlin/time/TimedValue;",
        "T",
        "Lkotlin/time/Clock;",
        "(Lkotlin/time/Clock;Lkotlin/jvm/functions/Function0;)D",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final measureTime(Lkotlin/jvm/functions/Function0;)D
    .locals 6
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)D"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$measureTime":I
    const-string v3, "block"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lkotlin/time/MonoClock;->INSTANCE:Lkotlin/time/MonoClock;

    check-cast v1, Lkotlin/time/Clock;

    .local v1, "$this$measureTime$iv":Lkotlin/time/Clock;
    const/4 v0, 0x0

    .line 91
    invoke-interface {v1}, Lkotlin/time/Clock;->markNow()Lkotlin/time/ClockMark;

    move-result-object v2

    .line 92
    .local v2, "mark$iv":Lkotlin/time/ClockMark;
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 93
    invoke-virtual {v2}, Lkotlin/time/ClockMark;->elapsedNow()D

    move-result-wide v4

    return-wide v4
.end method

.method public static final measureTime(Lkotlin/time/Clock;Lkotlin/jvm/functions/Function0;)D
    .locals 4
    .param p0, "$this$measureTime"    # Lkotlin/time/Clock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/Clock;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)D"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$measureTime":I
    const-string v2, "$this$measureTime"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p0}, Lkotlin/time/Clock;->markNow()Lkotlin/time/ClockMark;

    move-result-object v1

    .line 38
    .local v1, "mark":Lkotlin/time/ClockMark;
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 39
    invoke-virtual {v1}, Lkotlin/time/ClockMark;->elapsedNow()D

    move-result-wide v2

    return-wide v2
.end method

.method public static final measureTimedValue(Lkotlin/jvm/functions/Function0;)Lkotlin/time/TimedValue;
    .locals 8
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)",
            "Lkotlin/time/TimedValue",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$measureTimedValue":I
    const-string v4, "block"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lkotlin/time/MonoClock;->INSTANCE:Lkotlin/time/MonoClock;

    check-cast v1, Lkotlin/time/Clock;

    .local v1, "$this$measureTimedValue$iv":Lkotlin/time/Clock;
    const/4 v0, 0x0

    .line 98
    invoke-interface {v1}, Lkotlin/time/Clock;->markNow()Lkotlin/time/ClockMark;

    move-result-object v2

    .line 99
    .local v2, "mark$iv":Lkotlin/time/ClockMark;
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    .line 100
    .local v3, "result$iv":Ljava/lang/Object;
    new-instance v4, Lkotlin/time/TimedValue;

    invoke-virtual {v2}, Lkotlin/time/ClockMark;->elapsedNow()D

    move-result-wide v6

    const/4 v5, 0x0

    invoke-direct {v4, v3, v6, v7, v5}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;DLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public static final measureTimedValue(Lkotlin/time/Clock;Lkotlin/jvm/functions/Function0;)Lkotlin/time/TimedValue;
    .locals 7
    .param p0, "$this$measureTimedValue"    # Lkotlin/time/Clock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/time/Clock;",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)",
            "Lkotlin/time/TimedValue",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$measureTimedValue":I
    const-string v3, "$this$measureTimedValue"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p0}, Lkotlin/time/Clock;->markNow()Lkotlin/time/ClockMark;

    move-result-object v1

    .line 83
    .local v1, "mark":Lkotlin/time/ClockMark;
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, "result":Ljava/lang/Object;
    new-instance v3, Lkotlin/time/TimedValue;

    invoke-virtual {v1}, Lkotlin/time/ClockMark;->elapsedNow()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v2, v4, v5, v6}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;DLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
