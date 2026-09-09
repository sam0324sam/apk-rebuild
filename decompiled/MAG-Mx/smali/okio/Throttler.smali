.class public final Lokio/Throttler;
.super Ljava/lang/Object;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThrottler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Throttler.kt\nokio/Throttler\n*L\n1#1,169:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u000cJ$\u0010\u0006\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0013J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u000c\u0010\u0016\u001a\u00020\u0004*\u00020\u0004H\u0002J\u000c\u0010\u0017\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Throttler;",
        "",
        "()V",
        "allocatedUntil",
        "",
        "(J)V",
        "bytesPerSecond",
        "maxByteCount",
        "waitByteCount",
        "byteCountOrWaitNanos",
        "now",
        "byteCount",
        "byteCountOrWaitNanos$jvm",
        "",
        "sink",
        "Lokio/Sink;",
        "source",
        "Lokio/Source;",
        "take",
        "take$jvm",
        "waitNanos",
        "nanosToWait",
        "bytesToNanos",
        "nanosToBytes",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private allocatedUntil:J

.field private bytesPerSecond:J

.field private maxByteCount:J

.field private waitByteCount:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokio/Throttler;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "allocatedUntil"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/Throttler;->allocatedUntil:J

    .line 46
    const-wide/16 v0, 0x2000

    iput-wide v0, p0, Lokio/Throttler;->waitByteCount:J

    .line 47
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lokio/Throttler;->maxByteCount:J

    return-void
.end method

.method public static bridge synthetic bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 55
    iget-wide v4, p0, Lokio/Throttler;->waitByteCount:J

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_0

    .line 56
    iget-wide v6, p0, Lokio/Throttler;->maxByteCount:J

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lokio/Throttler;->bytesPerSecond(JJJ)V

    return-void

    :cond_0
    move-wide v6, p5

    goto :goto_1

    :cond_1
    move-wide v4, p3

    goto :goto_0
.end method

.method private final bytesToNanos(J)J
    .locals 5
    .param p1, "$receiver"    # J

    .prologue
    .line 126
    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lokio/Throttler;->bytesPerSecond:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final nanosToBytes(J)J
    .locals 5
    .param p1, "$receiver"    # J

    .prologue
    .line 124
    iget-wide v0, p0, Lokio/Throttler;->bytesPerSecond:J

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final waitNanos(J)V
    .locals 7
    .param p1, "nanosToWait"    # J

    .prologue
    const-wide/32 v4, 0xf4240

    .line 129
    div-long v0, p1, v4

    .line 130
    .local v0, "millisToWait":J
    mul-long/2addr v4, v0

    sub-long v2, p1, v4

    .line 131
    .local v2, "remainderNanos":J
    if-nez p0, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    check-cast p0, Ljava/lang/Object;

    .end local p0    # "this":Lokio/Throttler;
    long-to-int v4, v2

    invoke-virtual {p0, v0, v1, v4}, Ljava/lang/Object;->wait(JI)V

    .line 132
    return-void
.end method


# virtual methods
.method public final byteCountOrWaitNanos$jvm(JJ)J
    .locals 15
    .param p1, "now"    # J
    .param p3, "byteCount"    # J

    .prologue
    .line 94
    iget-wide v10, p0, Lokio/Throttler;->bytesPerSecond:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 121
    .end local p3    # "byteCount":J
    :goto_0
    return-wide p3

    .line 96
    .restart local p3    # "byteCount":J
    :cond_0
    iget-wide v10, p0, Lokio/Throttler;->allocatedUntil:J

    sub-long v10, v10, p1

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 97
    .local v2, "idleInNanos":J
    iget-wide v10, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v2, v3}, Lokio/Throttler;->nanosToBytes(J)J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 100
    .local v4, "immediateBytes":J
    cmp-long v10, v4, p3

    if-ltz v10, :cond_1

    .line 101
    add-long v10, p1, v2

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lokio/Throttler;->allocatedUntil:J

    goto :goto_0

    .line 106
    :cond_1
    iget-wide v10, p0, Lokio/Throttler;->waitByteCount:J

    cmp-long v10, v4, v10

    if-ltz v10, :cond_2

    .line 107
    iget-wide v10, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v10, v11}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v10

    add-long v10, v10, p1

    iput-wide v10, p0, Lokio/Throttler;->allocatedUntil:J

    move-wide/from16 p3, v4

    .line 108
    goto :goto_0

    .line 112
    :cond_2
    iget-wide v10, p0, Lokio/Throttler;->waitByteCount:J

    move-wide/from16 v0, p3

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 113
    .local v6, "minByteCount":J
    iget-wide v10, p0, Lokio/Throttler;->maxByteCount:J

    sub-long v10, v6, v10

    invoke-direct {p0, v10, v11}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v10

    add-long v8, v2, v10

    .line 116
    .local v8, "minWaitNanos":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_3

    .line 117
    iget-wide v10, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v10, v11}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v10

    add-long v10, v10, p1

    iput-wide v10, p0, Lokio/Throttler;->allocatedUntil:J

    move-wide/from16 p3, v6

    .line 118
    goto :goto_0

    .line 121
    :cond_3
    neg-long v0, v8

    move-wide/from16 p3, v0

    goto :goto_0
.end method

.method public final bytesPerSecond(J)V
    .locals 11
    .param p1, "bytesPerSecond"    # J
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, v4

    invoke-static/range {v1 .. v9}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJ)V
    .locals 11
    .param p1, "bytesPerSecond"    # J
    .param p3, "waitByteCount"    # J
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v9}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJJ)V
    .locals 9
    .param p1, "bytesPerSecond"    # J
    .param p3, "waitByteCount"    # J
    .param p5, "maxByteCount"    # J
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    monitor-enter p0

    nop

    .line 59
    cmp-long v4, p1, v6

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    :try_start_0
    const-string v3, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    move v4, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    cmp-long v4, p3, v6

    if-lez v4, :cond_2

    move v4, v2

    :goto_1
    if-nez v4, :cond_3

    :try_start_1
    const-string v3, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_2
    move v4, v3

    goto :goto_1

    .line 61
    :cond_3
    cmp-long v4, p5, p3

    if-ltz v4, :cond_4

    :goto_2
    if-nez v2, :cond_5

    const-string v3, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_4
    move v2, v3

    goto :goto_2

    .line 63
    :cond_5
    iput-wide p1, p0, Lokio/Throttler;->bytesPerSecond:J

    .line 64
    iput-wide p3, p0, Lokio/Throttler;->waitByteCount:J

    .line 65
    iput-wide p5, p0, Lokio/Throttler;->maxByteCount:J

    .line 66
    if-nez p0, :cond_6

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 67
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    .line 68
    return-void
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1
    .param p1, "sink"    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lokio/Throttler$sink$1;

    invoke-direct {v0, p0, p1, p1}, Lokio/Throttler$sink$1;-><init>(Lokio/Throttler;Lokio/Sink;Lokio/Sink;)V

    check-cast v0, Lokio/Sink;

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1, "source"    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lokio/Throttler$source$1;

    invoke-direct {v0, p0, p1, p1}, Lokio/Throttler$source$1;-><init>(Lokio/Throttler;Lokio/Source;Lokio/Source;)V

    check-cast v0, Lokio/Source;

    return-object v0
.end method

.method public final take$jvm(J)J
    .locals 9
    .param p1, "byteCount"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 75
    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    const-string v5, "Failed requirement."

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 77
    :cond_1
    monitor-enter p0

    nop

    .line 78
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 80
    .local v2, "now":J
    invoke-virtual {p0, v2, v3, p1, p2}, Lokio/Throttler;->byteCountOrWaitNanos$jvm(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 81
    .local v0, "byteCountOrWaitNanos":J
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    monitor-exit p0

    return-wide v0

    .line 82
    :cond_2
    neg-long v4, v0

    :try_start_1
    invoke-direct {p0, v4, v5}, Lokio/Throttler;->waitNanos(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    .end local v0    # "byteCountOrWaitNanos":J
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
