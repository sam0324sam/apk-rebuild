.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 Pipe.kt\nokio/Pipe\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,216:1\n199#2:217\n200#2:248\n199#2:249\n200#2:280\n199#2:281\n200#2:312\n204#3,30:218\n204#3,30:250\n204#3,30:282\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n77#1:217\n77#1:248\n95#1:249\n95#1:280\n113#1:281\n113#1:312\n77#1,30:218\n95#1,30:250\n113#1,30:282\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "flush",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
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
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1
    .param p1, "$outer"    # Lokio/Pipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 18

    .prologue
    .line 99
    const/4 v3, 0x0

    check-cast v3, Lokio/Sink;

    .line 100
    .local v3, "delegate":Lokio/Sink;
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v12

    monitor-enter v12

    nop

    .line 101
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getSinkClosed$jvm()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_1

    monitor-exit v12

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getFoldedSink$jvm()Lokio/Sink;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 104
    .local v4, "it":Lokio/Sink;
    move-object v3, v4

    .line 111
    .end local v4    # "it":Lokio/Sink;
    :goto_1
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit v12

    .line 113
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 281
    .local v10, "this_$iv":Lokio/Pipe;
    invoke-interface {v3}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v11

    invoke-virtual {v10}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v12

    invoke-interface {v12}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .line 282
    .local v5, "other$iv$iv":Lokio/Timeout;
    invoke-virtual {v11}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    .line 283
    .local v8, "originalTimeout$iv$iv":J
    sget-object v12, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v14

    invoke-virtual {v11}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 285
    invoke-virtual {v11}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 286
    invoke-virtual {v11}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    .line 287
    .local v6, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 288
    invoke-virtual {v11}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v12

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 290
    :cond_2
    nop

    .line 291
    nop

    .line 281
    move-object v2, v3

    .line 113
    .local v2, "$receiver":Lokio/Sink;
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    .line 293
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 294
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 295
    invoke-virtual {v11, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 310
    .end local v6    # "originalDeadline$iv$iv":J
    :cond_3
    :goto_2
    nop

    .line 312
    nop

    goto :goto_0

    .line 108
    .end local v2    # "$receiver":Lokio/Sink;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v8    # "originalTimeout$iv$iv":J
    .end local v10    # "this_$iv":Lokio/Pipe;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getSourceClosed$jvm()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_5

    new-instance v11, Ljava/io/IOException;

    const-string v13, "source is closed"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 109
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lokio/Pipe;->setSinkClosed$jvm(Z)V

    .line 110
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v11

    if-nez v11, :cond_6

    new-instance v11, Lkotlin/TypeCastException;

    const-string v13, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v11, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_6
    check-cast v11, Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 297
    .restart local v2    # "$receiver":Lokio/Sink;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "originalDeadline$iv$iv":J
    .restart local v8    # "originalTimeout$iv$iv":J
    .restart local v10    # "this_$iv":Lokio/Pipe;
    :catchall_1
    move-exception v12

    .line 293
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 294
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 295
    invoke-virtual {v11, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_7
    throw v12

    .line 299
    .end local v2    # "$receiver":Lokio/Sink;
    .end local v6    # "originalDeadline$iv$iv":J
    :cond_8
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 300
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 302
    :cond_9
    nop

    .line 303
    nop

    .line 281
    move-object v2, v3

    .line 113
    .restart local v2    # "$receiver":Lokio/Sink;
    :try_start_5
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    .line 305
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 306
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 307
    invoke-virtual {v11}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_2

    .line 309
    :catchall_2
    move-exception v12

    .line 305
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 306
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 307
    invoke-virtual {v11}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_a
    throw v12
.end method

.method public flush()V
    .locals 18

    .prologue
    .line 81
    const/4 v3, 0x0

    check-cast v3, Lokio/Sink;

    .line 82
    .local v3, "delegate":Lokio/Sink;
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v12

    monitor-enter v12

    nop

    .line 83
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getSinkClosed$jvm()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    if-nez v11, :cond_1

    const-string v13, "closed"

    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 83
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 85
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getFoldedSink$jvm()Lokio/Sink;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 86
    .local v4, "it":Lokio/Sink;
    move-object v3, v4

    .line 93
    .end local v4    # "it":Lokio/Sink;
    :cond_2
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit v12

    .line 95
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 249
    .local v10, "this_$iv":Lokio/Pipe;
    invoke-interface {v3}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v11

    invoke-virtual {v10}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v12

    invoke-interface {v12}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .line 250
    .local v5, "other$iv$iv":Lokio/Timeout;
    invoke-virtual {v11}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    .line 251
    .local v8, "originalTimeout$iv$iv":J
    sget-object v12, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v14

    invoke-virtual {v11}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 253
    invoke-virtual {v11}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 254
    invoke-virtual {v11}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    .line 255
    .local v6, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 256
    invoke-virtual {v11}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v12

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 258
    :cond_3
    nop

    .line 259
    nop

    .line 249
    move-object v2, v3

    .line 95
    .local v2, "$receiver":Lokio/Sink;
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    .line 261
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 262
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 263
    invoke-virtual {v11, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 278
    .end local v6    # "originalDeadline$iv$iv":J
    :cond_4
    :goto_1
    nop

    .line 280
    nop

    .line 96
    .end local v2    # "$receiver":Lokio/Sink;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v8    # "originalTimeout$iv$iv":J
    .end local v10    # "this_$iv":Lokio/Pipe;
    :cond_5
    return-void

    .line 90
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getSourceClosed$jvm()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v11}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_2

    .line 91
    new-instance v11, Ljava/io/IOException;

    const-string v13, "source is closed"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    .restart local v2    # "$receiver":Lokio/Sink;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "originalDeadline$iv$iv":J
    .restart local v8    # "originalTimeout$iv$iv":J
    .restart local v10    # "this_$iv":Lokio/Pipe;
    :catchall_1
    move-exception v12

    .line 261
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 262
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 263
    invoke-virtual {v11, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_7
    throw v12

    .line 267
    .end local v2    # "$receiver":Lokio/Sink;
    .end local v6    # "originalDeadline$iv$iv":J
    :cond_8
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 268
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 270
    :cond_9
    nop

    .line 271
    nop

    .line 249
    move-object v2, v3

    .line 95
    .restart local v2    # "$receiver":Lokio/Sink;
    :try_start_4
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    .line 273
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 274
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 275
    invoke-virtual {v11}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_1

    .line 277
    :catchall_2
    move-exception v12

    .line 273
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 274
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 275
    invoke-virtual {v11}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_a
    throw v12
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 26
    .param p1, "source"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J

    .prologue
    const-string v19, "source"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const/4 v7, 0x0

    check-cast v7, Lokio/Sink;

    .line 53
    .local v7, "delegate":Lokio/Sink;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v20

    monitor-enter v20

    nop

    .line 54
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getSinkClosed$jvm()Z

    move-result v19

    if-nez v19, :cond_0

    const/16 v19, 0x1

    :goto_0
    if-nez v19, :cond_2

    const-string v21, "closed"

    new-instance v19, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v19, Ljava/lang/Throwable;

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 54
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 64
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getMaxBufferSize$jvm()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->size()J

    move-result-wide v24

    sub-long v8, v22, v24

    .line 65
    .local v8, "bufferSpaceAvailable":J
    const-wide/16 v22, 0x0

    cmp-long v19, v8, v22

    if-nez v19, :cond_8

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 56
    .end local v8    # "bufferSpaceAvailable":J
    :cond_2
    :goto_1
    const-wide/16 v22, 0x0

    cmp-long v19, p2, v22

    if-lez v19, :cond_3

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getFoldedSink$jvm()Lokio/Sink;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 58
    .local v12, "it":Lokio/Sink;
    move-object v7, v12

    .line 75
    .end local v12    # "it":Lokio/Sink;
    :cond_3
    sget-object v19, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit v20

    .line 77
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v18, v0

    .line 217
    .local v18, "this_$iv":Lokio/Pipe;
    invoke-interface {v7}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v13

    .line 218
    .local v13, "other$iv$iv":Lokio/Timeout;
    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v16

    .line 219
    .local v16, "originalTimeout$iv$iv":J
    sget-object v20, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v13}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v22

    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v20

    sget-object v22, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v19 .. v22}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 221
    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->hasDeadline()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 222
    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    .line 223
    .local v14, "originalDeadline$iv$iv":J
    invoke-virtual {v13}, Lokio/Timeout;->hasDeadline()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 224
    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v20

    invoke-virtual {v13}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 226
    :cond_4
    nop

    .line 227
    nop

    .line 217
    move-object v6, v7

    .line 77
    .local v6, "$receiver":Lokio/Sink;
    :try_start_2
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-interface {v6, v0, v1, v2}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    .line 229
    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 230
    invoke-virtual {v13}, Lokio/Timeout;->hasDeadline()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 231
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 246
    .end local v14    # "originalDeadline$iv$iv":J
    :cond_5
    :goto_2
    nop

    .line 248
    nop

    .line 78
    .end local v6    # "$receiver":Lokio/Sink;
    .end local v13    # "other$iv$iv":Lokio/Timeout;
    .end local v16    # "originalTimeout$iv$iv":J
    .end local v18    # "this_$iv":Lokio/Pipe;
    :cond_6
    return-void

    .line 62
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getSourceClosed$jvm()Z

    move-result v19

    if-eqz v19, :cond_1

    new-instance v19, Ljava/io/IOException;

    const-string v21, "source is closed"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    .line 70
    .restart local v8    # "bufferSpaceAvailable":J
    :cond_8
    move-wide/from16 v0, p2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 71
    .local v10, "bytesToWrite":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 72
    sub-long p2, p2, v10

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v19

    if-nez v19, :cond_9

    new-instance v19, Lkotlin/TypeCastException;

    const-string v21, "null cannot be cast to non-null type java.lang.Object"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_9
    check-cast v19, Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 233
    .end local v8    # "bufferSpaceAvailable":J
    .end local v10    # "bytesToWrite":J
    .restart local v6    # "$receiver":Lokio/Sink;
    .restart local v13    # "other$iv$iv":Lokio/Timeout;
    .restart local v14    # "originalDeadline$iv$iv":J
    .restart local v16    # "originalTimeout$iv$iv":J
    .restart local v18    # "this_$iv":Lokio/Pipe;
    :catchall_1
    move-exception v20

    .line 229
    sget-object v21, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 230
    invoke-virtual {v13}, Lokio/Timeout;->hasDeadline()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 231
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_a
    throw v20

    .line 235
    .end local v6    # "$receiver":Lokio/Sink;
    .end local v14    # "originalDeadline$iv$iv":J
    :cond_b
    invoke-virtual {v13}, Lokio/Timeout;->hasDeadline()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 236
    invoke-virtual {v13}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 238
    :cond_c
    nop

    .line 239
    nop

    .line 217
    move-object v6, v7

    .line 77
    .restart local v6    # "$receiver":Lokio/Sink;
    :try_start_4
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-interface {v6, v0, v1, v2}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    .line 241
    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 242
    invoke-virtual {v13}, Lokio/Timeout;->hasDeadline()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 243
    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto/16 :goto_2

    .line 245
    :catchall_2
    move-exception v20

    .line 241
    sget-object v21, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 242
    invoke-virtual {v13}, Lokio/Timeout;->hasDeadline()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 243
    invoke-virtual/range {v19 .. v19}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_d
    throw v20
.end method
