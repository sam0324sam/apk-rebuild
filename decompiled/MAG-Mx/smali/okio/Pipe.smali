.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 Timeout.kt\nokio/Timeout\n*L\n1#1,216:1\n204#2,30:217\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n199#1,30:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\nJ\r\u0010\u0011\u001a\u00020\nH\u0007\u00a2\u0006\u0002\u0008 J\r\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u0008!J&\u0010\"\u001a\u00020\u001f*\u00020\n2\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001f0$\u00a2\u0006\u0002\u0008%H\u0082\u0008R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u00020\n8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u00020\u00198\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lokio/Pipe;",
        "",
        "maxBufferSize",
        "",
        "(J)V",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer$jvm",
        "()Lokio/Buffer;",
        "foldedSink",
        "Lokio/Sink;",
        "getFoldedSink$jvm",
        "()Lokio/Sink;",
        "setFoldedSink$jvm",
        "(Lokio/Sink;)V",
        "getMaxBufferSize$jvm",
        "()J",
        "sink",
        "sinkClosed",
        "",
        "getSinkClosed$jvm",
        "()Z",
        "setSinkClosed$jvm",
        "(Z)V",
        "source",
        "Lokio/Source;",
        "()Lokio/Source;",
        "sourceClosed",
        "getSourceClosed$jvm",
        "setSourceClosed$jvm",
        "fold",
        "",
        "-deprecated_sink",
        "-deprecated_source",
        "forward",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.field private final buffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private foldedSink:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxBufferSize:J

.field private final sink:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sinkClosed:Z

.field private final source:Lokio/Source;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "maxBufferSize"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    .line 37
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 43
    iget-wide v0, p0, Lokio/Pipe;->maxBufferSize:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxBufferSize < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lokio/Pipe;->maxBufferSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lokio/Pipe$sink$1;

    invoke-direct {v0, p0}, Lokio/Pipe$sink$1;-><init>(Lokio/Pipe;)V

    check-cast v0, Lokio/Sink;

    iput-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    .line 120
    new-instance v0, Lokio/Pipe$source$1;

    invoke-direct {v0, p0}, Lokio/Pipe$source$1;-><init>(Lokio/Pipe;)V

    check-cast v0, Lokio/Source;

    iput-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-void
.end method

.method public static final synthetic access$forward(Lokio/Pipe;Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "$this"    # Lokio/Pipe;
    .param p1, "$receiver"    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lokio/Pipe;->forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p1, "$receiver"    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lokio/Sink;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 199
    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v6

    invoke-interface {v6}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .line 217
    .local v4, "other$iv":Lokio/Timeout;
    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    .line 218
    .local v2, "originalTimeout$iv":J
    sget-object v6, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v6, v8, v9, v10, v11}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 220
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 221
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    .line 222
    .local v0, "originalDeadline$iv":J
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 225
    :cond_0
    nop

    .line 226
    nop

    .line 199
    :try_start_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 228
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 229
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    invoke-virtual {v5, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_1
    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 245
    .end local v0    # "originalDeadline$iv":J
    :goto_0
    nop

    .line 200
    return-void

    .line 232
    .restart local v0    # "originalDeadline$iv":J
    :catchall_0
    move-exception v6

    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 228
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 229
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 230
    invoke-virtual {v5, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_2
    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v6

    .line 234
    .end local v0    # "originalDeadline$iv":J
    :cond_3
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 235
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 237
    :cond_4
    nop

    .line 238
    nop

    .line 199
    :try_start_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 240
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 241
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 242
    invoke-virtual {v5}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_5
    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_0

    .line 244
    :catchall_1
    move-exception v6

    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 240
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 241
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 242
    invoke-virtual {v5}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_6
    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v6
.end method


# virtual methods
.method public final -deprecated_sink()Lokio/Sink;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "sink"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_sink"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final -deprecated_source()Lokio/Source;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "source"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_source"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method

.method public final fold(Lokio/Sink;)V
    .locals 8
    .param p1, "sink"    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v3, "sink"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :goto_0
    const/4 v0, 0x0

    .line 162
    .local v0, "closed":Z
    const/4 v1, 0x0

    .line 163
    .local v1, "sinkBuffer":Ljava/lang/Object;
    iget-object v5, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v5

    nop

    .line 164
    :try_start_0
    iget-object v3, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    if-nez v3, :cond_1

    const-string v4, "sink already folded"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v1    # "sinkBuffer":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 164
    .restart local v1    # "sinkBuffer":Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 166
    :cond_1
    :try_start_1
    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/Pipe;->sourceClosed:Z

    .line 168
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit v5

    return-void

    .line 172
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lokio/Pipe;->sinkClosed:Z

    .line 173
    new-instance v1, Lokio/Buffer;

    .end local v1    # "sinkBuffer":Ljava/lang/Object;
    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 174
    .local v1, "sinkBuffer":Lokio/Buffer;
    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    iget-object v6, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v1, v3, v6, v7}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 175
    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    if-nez v3, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    check-cast v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 176
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    monitor-exit v5

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "success":Z
    nop

    .line 180
    :try_start_3
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-interface {p1, v1, v6, v7}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 181
    if-eqz v0, :cond_4

    .line 182
    invoke-interface {p1}, Lokio/Sink;->close()V

    .line 185
    :goto_2
    const/4 v2, 0x1

    .line 188
    nop

    .line 194
    goto :goto_0

    .line 184
    :cond_4
    invoke-interface {p1}, Lokio/Sink;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 194
    :catchall_1
    move-exception v3

    move-object v4, v3

    .line 188
    nop

    .line 189
    iget-object v5, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v5

    nop

    .line 190
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lokio/Pipe;->sourceClosed:Z

    .line 191
    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    if-nez v3, :cond_5

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 189
    :catchall_2
    move-exception v3

    monitor-exit v5

    throw v3

    .line 191
    :cond_5
    :try_start_5
    check-cast v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 192
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 189
    monitor-exit v5

    throw v4
.end method

.method public final getBuffer$jvm()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getFoldedSink$jvm()Lokio/Sink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object v0
.end method

.method public final getMaxBufferSize$jvm()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lokio/Pipe;->maxBufferSize:J

    return-wide v0
.end method

.method public final getSinkClosed$jvm()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lokio/Pipe;->sinkClosed:Z

    return v0
.end method

.method public final getSourceClosed$jvm()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lokio/Pipe;->sourceClosed:Z

    return v0
.end method

.method public final setFoldedSink$jvm(Lokio/Sink;)V
    .locals 0
    .param p1, "<set-?>"    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-void
.end method

.method public final setSinkClosed$jvm(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lokio/Pipe;->sinkClosed:Z

    return-void
.end method

.method public final setSourceClosed$jvm(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lokio/Pipe;->sourceClosed:Z

    return-void
.end method

.method public final sink()Lokio/Sink;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "sink"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final source()Lokio/Source;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "source"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method
