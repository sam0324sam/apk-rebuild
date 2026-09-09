.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Companion\n*L\n1#1,369:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokio/AsyncTimeout$Companion;",
        "",
        "()V",
        "IDLE_TIMEOUT_MILLIS",
        "",
        "IDLE_TIMEOUT_NANOS",
        "TIMEOUT_WRITE_SIZE",
        "",
        "head",
        "Lokio/AsyncTimeout;",
        "awaitTimeout",
        "awaitTimeout$jvm",
        "cancelScheduledTimeout",
        "",
        "node",
        "scheduleTimeout",
        "",
        "timeoutNanos",
        "hasDeadline",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 247
    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z
    .locals 1
    .param p0, "$this"    # Lokio/AsyncTimeout$Companion;
    .param p1, "node"    # Lokio/AsyncTimeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lokio/AsyncTimeout$Companion;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .locals 0
    .param p0, "$this"    # Lokio/AsyncTimeout$Companion;
    .param p1, "node"    # Lokio/AsyncTimeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "timeoutNanos"    # J
    .param p4, "hasDeadline"    # Z

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lokio/AsyncTimeout$Companion;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void
.end method

.method private final cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 3
    .param p1, "node"    # Lokio/AsyncTimeout;

    .prologue
    .line 310
    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2

    nop

    .line 312
    :try_start_0
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v0

    .line 313
    .local v0, "prev":Lokio/AsyncTimeout;
    :goto_0
    if-eqz v0, :cond_1

    .line 314
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 315
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v1

    invoke-static {v0, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 316
    const/4 v1, 0x0

    check-cast v1, Lokio/AsyncTimeout;

    invoke-static {p1, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    const/4 v1, 0x0

    monitor-exit v2

    .line 323
    :goto_1
    return v1

    .line 319
    :cond_0
    :try_start_1
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 313
    goto :goto_0

    .line 323
    :cond_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_1

    .line 310
    .end local v0    # "prev":Lokio/AsyncTimeout;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 10
    .param p1, "node"    # Lokio/AsyncTimeout;
    .param p2, "timeoutNanos"    # J
    .param p4, "hasDeadline"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 270
    const-class v6, Lokio/AsyncTimeout;

    monitor-enter v6

    nop

    .line 272
    :try_start_0
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v3

    if-nez v3, :cond_0

    .line 273
    new-instance v3, Lokio/AsyncTimeout;

    invoke-direct {v3}, Lokio/AsyncTimeout;-><init>()V

    invoke-static {v3}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V

    .line 274
    new-instance v3, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v3}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v3}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 277
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 278
    .local v0, "now":J
    cmp-long v3, p2, v8

    if-eqz v3, :cond_5

    if-eqz p4, :cond_5

    .line 281
    invoke-virtual {p1}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {p2, p3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v0

    invoke-static {p1, v8, v9}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 291
    :goto_0
    invoke-static {p1, v0, v1}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v4

    .line 292
    .local v4, "remainingNanos":J
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 293
    .local v2, "prev":Lokio/AsyncTimeout;
    :cond_1
    :goto_1
    invoke-static {v2}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {v3, v0, v1}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-gez v3, :cond_8

    .line 295
    :cond_3
    invoke-static {v2}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    invoke-static {p1, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 296
    invoke-static {v2, p1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 297
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 299
    const-class v3, Lokio/AsyncTimeout;

    check-cast v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 305
    :cond_4
    nop

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v6

    .line 306
    return-void

    .line 282
    .end local v2    # "prev":Lokio/AsyncTimeout;
    .end local v4    # "remainingNanos":J
    :cond_5
    cmp-long v3, p2, v8

    if-eqz v3, :cond_6

    .line 283
    add-long v8, v0, p2

    :try_start_1
    invoke-static {p1, v8, v9}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    .end local v0    # "now":J
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 284
    .restart local v0    # "now":J
    :cond_6
    if-eqz p4, :cond_7

    .line 285
    :try_start_2
    invoke-virtual {p1}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto :goto_0

    .line 287
    :cond_7
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 303
    .restart local v2    # "prev":Lokio/AsyncTimeout;
    .restart local v4    # "remainingNanos":J
    :cond_8
    invoke-static {v2}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v2

    .end local v2    # "prev":Lokio/AsyncTimeout;
    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .restart local v2    # "prev":Lokio/AsyncTimeout;
    :cond_9
    goto :goto_1
.end method


# virtual methods
.method public final awaitTimeout$jvm()Lokio/AsyncTimeout;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/32 v12, 0xf4240

    const/4 v8, 0x0

    .line 337
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v0

    .line 340
    .local v0, "node":Lokio/AsyncTimeout;
    if-nez v0, :cond_3

    .line 341
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 342
    .local v2, "startNanos":J
    const-class v1, Lokio/AsyncTimeout;

    check-cast v1, Ljava/lang/Object;

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 343
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-ltz v1, :cond_2

    .line 344
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v8

    .line 365
    .end local v2    # "startNanos":J
    :cond_2
    :goto_0
    return-object v8

    .line 350
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v6

    .line 353
    .local v6, "waitNanos":J
    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-lez v1, :cond_4

    .line 356
    div-long v4, v6, v12

    .line 357
    .local v4, "waitMillis":J
    mul-long v10, v4, v12

    sub-long/2addr v6, v10

    .line 358
    const-class v1, Lokio/AsyncTimeout;

    check-cast v1, Ljava/lang/Object;

    long-to-int v9, v6

    invoke-virtual {v1, v4, v5, v9}, Ljava/lang/Object;->wait(JI)V

    goto :goto_0

    .line 363
    .end local v4    # "waitMillis":J
    :cond_4
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v9

    invoke-static {v1, v9}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    move-object v1, v8

    .line 364
    check-cast v1, Lokio/AsyncTimeout;

    invoke-static {v0, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    move-object v8, v0

    .line 365
    goto :goto_0
.end method
