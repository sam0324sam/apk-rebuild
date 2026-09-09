.class public final Lkotlin/concurrent/TimersKt;
.super Ljava/lang/Object;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt\n*L\n1#1,148:1\n94#1,3:149\n108#1,3:152\n123#1,3:155\n137#1,3:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001aJ\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001aL\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a\u001a\u0010\u0010\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001aJ\u0010\u0010\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001aL\u0010\u0010\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a$\u0010\u0011\u001a\u00020\u000c2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a0\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a0\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0012\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0015\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a8\u0010\u0015\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0004\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "fixedRateTimer",
        "Ljava/util/Timer;",
        "name",
        "",
        "daemon",
        "",
        "startAt",
        "Ljava/util/Date;",
        "period",
        "",
        "action",
        "Lkotlin/Function1;",
        "Ljava/util/TimerTask;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "initialDelay",
        "timer",
        "timerTask",
        "schedule",
        "time",
        "delay",
        "scheduleAtFixedRate",
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
    name = "TimersKt"
.end annotation


# direct methods
.method private static final fixedRateTimer(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 123
    .local v6, "$i$f$fixedRateTimer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    .line 124
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p6}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 125
    return-object v0
.end method

.method private static final fixedRateTimer(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "startAt"    # Ljava/util/Date;
    .param p3, "period"    # J
    .param p5, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    .local v0, "$i$f$fixedRateTimer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v1

    .line 138
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v2, p5}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Ljava/util/TimerTask;

    invoke-virtual {v1, v2, p2, p3, p4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 139
    return-object v1
.end method

.method static synthetic fixedRateTimer$default(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "action"    # Lkotlin/jvm/functions/Function1;

    .prologue
    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    .line 122
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_2

    const-wide/16 p2, 0x0

    :cond_2
    const/4 v6, 0x0

    .line 155
    .local v6, "$i$f$fixedRateTimer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    .line 156
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p6}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 157
    return-object v0
.end method

.method static synthetic fixedRateTimer$default(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "startAt"    # Ljava/util/Date;
    .param p3, "period"    # J
    .param p5, "action"    # Lkotlin/jvm/functions/Function1;

    .prologue
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    .line 136
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/String;

    :cond_0
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v0, 0x0

    .line 158
    .local v0, "$i$f$fixedRateTimer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v1

    .line 159
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v2, p5}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Ljava/util/TimerTask;

    invoke-virtual {v1, v2, p2, p3, p4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 160
    return-object v1
.end method

.method private static final schedule(Ljava/util/Timer;JJLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 7
    .param p0, "$this$schedule"    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "delay"    # J
    .param p3, "period"    # J
    .param p5, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "JJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 40
    .local v6, "$i$f$schedule":I
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p5}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    .local v1, "task":Ljava/util/TimerTask;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 41
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 42
    return-object v1
.end method

.method private static final schedule(Ljava/util/Timer;JLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 3
    .param p0, "$this$schedule"    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "delay"    # J
    .param p3, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$schedule":I
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p3}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    .line 19
    .local v1, "task":Ljava/util/TimerTask;
    invoke-virtual {p0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 20
    return-object v1
.end method

.method private static final schedule(Ljava/util/Timer;Ljava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 2
    .param p0, "$this$schedule"    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "period"    # J
    .param p4, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$schedule":I
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p4}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    .line 52
    .local v1, "task":Ljava/util/TimerTask;
    invoke-virtual {p0, v1, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 53
    return-object v1
.end method

.method private static final schedule(Ljava/util/Timer;Ljava/util/Date;Lkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 2
    .param p0, "$this$schedule"    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "Ljava/util/Date;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 28
    .local v0, "$i$f$schedule":I
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p2}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    .line 29
    .local v1, "task":Ljava/util/TimerTask;
    invoke-virtual {p0, v1, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    .line 30
    return-object v1
.end method

.method private static final scheduleAtFixedRate(Ljava/util/Timer;JJLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 7
    .param p0, "$this$scheduleAtFixedRate"    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "delay"    # J
    .param p3, "period"    # J
    .param p5, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "JJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 63
    .local v6, "$i$f$scheduleAtFixedRate":I
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p5}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    .local v1, "task":Ljava/util/TimerTask;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 64
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 65
    return-object v1
.end method

.method private static final scheduleAtFixedRate(Ljava/util/Timer;Ljava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 2
    .param p0, "$this$scheduleAtFixedRate"    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "period"    # J
    .param p4, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Timer;",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    .local v0, "$i$f$scheduleAtFixedRate":I
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p4}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    .line 75
    .local v1, "task":Ljava/util/TimerTask;
    invoke-virtual {p0, v1, p1, p2, p3}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 76
    return-object v1
.end method

.method public static final timer(Ljava/lang/String;Z)Ljava/util/Timer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "daemon"    # Z
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 82
    if-nez p0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, p0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static final timer(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 94
    .local v6, "$i$f$timer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    .line 95
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p6}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 96
    return-object v0
.end method

.method private static final timer(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;)Ljava/util/Timer;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "startAt"    # Ljava/util/Date;
    .param p3, "period"    # J
    .param p5, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            "J",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/Timer;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    .local v0, "$i$f$timer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v1

    .line 109
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v2, p5}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Ljava/util/TimerTask;

    invoke-virtual {v1, v2, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 110
    return-object v1
.end method

.method static synthetic timer$default(Ljava/lang/String;ZJJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "action"    # Lkotlin/jvm/functions/Function1;

    .prologue
    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    .line 93
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_2

    const-wide/16 p2, 0x0

    :cond_2
    const/4 v6, 0x0

    .line 149
    .local v6, "$i$f$timer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    .line 150
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p6}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 151
    return-object v0
.end method

.method static synthetic timer$default(Ljava/lang/String;ZLjava/util/Date;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Timer;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z
    .param p2, "startAt"    # Ljava/util/Date;
    .param p3, "period"    # J
    .param p5, "action"    # Lkotlin/jvm/functions/Function1;

    .prologue
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    .line 107
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/String;

    :cond_0
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$timer":I
    invoke-static {p0, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v1

    .line 153
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v2, p5}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Ljava/util/TimerTask;

    invoke-virtual {v1, v2, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 154
    return-object v1
.end method

.method private static final timerTask(Lkotlin/jvm/functions/Function1;)Ljava/util/TimerTask;
    .locals 2
    .param p0, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/TimerTask;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/TimerTask;"
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 146
    .local v0, "$i$f$timerTask":I
    new-instance v1, Lkotlin/concurrent/TimersKt$timerTask$1;

    invoke-direct {v1, p0}, Lkotlin/concurrent/TimersKt$timerTask$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/TimerTask;

    .line 148
    return-object v1
.end method
