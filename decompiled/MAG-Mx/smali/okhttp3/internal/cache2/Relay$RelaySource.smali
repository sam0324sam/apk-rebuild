.class public final Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RelaySource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,356:1\n544#2:357\n544#2:358\n544#2:359\n544#2:360\n*E\n*S KotlinDebug\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n*L\n265#1:357\n265#1:358\n265#1:359\n265#1:360\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lokhttp3/internal/cache2/Relay$RelaySource;",
        "Lokio/Source;",
        "(Lokhttp3/internal/cache2/Relay;)V",
        "fileOperator",
        "Lokhttp3/internal/cache2/FileOperator;",
        "sourcePos",
        "",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "read",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .locals 3
    .param p1, "$outer"    # Lokhttp3/internal/cache2/Relay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 160
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    invoke-virtual {p1}, Lokhttp3/internal/cache2/Relay;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-string v2, "file!!.channel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v3

    .line 277
    check-cast v2, Lokhttp3/internal/cache2/FileOperator;

    iput-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    move-object v1, v3

    .line 279
    check-cast v1, Ljava/io/RandomAccessFile;

    .line 280
    .local v1, "fileToClose":Ljava/io/RandomAccessFile;
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v3

    nop

    const/4 v0, 0x0

    .line 281
    .local v0, "$i$a$-synchronized-Relay$RelaySource$close$1":I
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getSourceCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lokhttp3/internal/cache2/Relay;->setSourceCount(I)V

    .line 282
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getSourceCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 283
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 284
    iget-object v4, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    check-cast v2, Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Lokhttp3/internal/cache2/Relay;->setFile(Ljava/io/RandomAccessFile;)V

    .line 286
    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v3

    .line 288
    if-eqz v1, :cond_0

    check-cast v1, Ljava/io/Closeable;

    .end local v1    # "fileToClose":Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 280
    .restart local v1    # "fileToClose":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public read(Lokio/Buffer;J)J
    .locals 32
    .param p1, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "sink"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    const-string v5, "Check failed."

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v10

    nop

    const/16 v24, 0x0

    .line 192
    .local v24, "$i$a$-synchronized-Relay$RelaySource$read$source$1":I
    :goto_1
    nop

    .line 193
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    move-result-wide v30

    .line 194
    .local v30, "upstreamPos":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v4, v4, v30

    if-eqz v4, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v6}, Lokhttp3/internal/cache2/Relay;->getBuffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    sub-long v28, v4, v6

    .line 213
    .local v28, "bufferPos":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v28

    if-gez v4, :cond_6

    .line 214
    const/16 v27, 0x2

    .line 190
    .end local v28    # "bufferPos":J
    :goto_2
    monitor-exit v10

    .line 225
    .local v27, "source":I
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long/2addr v4, v6

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 227
    .local v8, "bytesToRead":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-wide/16 v6, 0x20

    move-object/from16 v0, p0

    iget-wide v10, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v5, v6, v10

    move-object/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 228
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 265
    .end local v8    # "bytesToRead":J
    .end local v27    # "source":I
    :goto_3
    return-wide v8

    .line 197
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getComplete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v8, -0x1

    monitor-exit v10

    goto :goto_3

    .line 200
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamReader()Ljava/lang/Thread;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4, v5}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 190
    .end local v30    # "upstreamPos":J
    :catchall_0
    move-exception v4

    monitor-exit v10

    throw v4

    .line 206
    .restart local v30    # "upstreamPos":J
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 207
    const/16 v27, 0x1

    goto :goto_2

    .line 218
    .restart local v28    # "bufferPos":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long/2addr v4, v6

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 219
    .restart local v8    # "bytesToRead":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getBuffer()Lokio/Buffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v6, v6, v28

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 220
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    monitor-exit v10

    goto :goto_3

    .line 234
    .end local v8    # "bytesToRead":J
    .end local v28    # "bufferPos":J
    .restart local v27    # "source":I
    :cond_7
    nop

    .line 235
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstream()Lokio/Source;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()Lokio/Buffer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v6}, Lokhttp3/internal/cache2/Relay;->getBufferMaxSize()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v20

    .line 238
    .local v20, "upstreamBytesRead":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_a

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 240
    const-wide/16 v8, -0x1

    .line 265
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    nop

    const/16 v23, 0x0

    .line 266
    .local v23, "$i$a$-synchronized-Relay$RelaySource$read$2":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v6, v4}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v26, v0

    .local v26, "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    const/16 v25, 0x0

    .line 357
    .local v25, "$i$f$notifyAll":I
    if-nez v26, :cond_9

    new-instance v4, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v4, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 265
    .end local v25    # "$i$f$notifyAll":I
    .end local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 357
    .restart local v25    # "$i$f$notifyAll":I
    .restart local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    :cond_9
    :try_start_6
    check-cast v26, Ljava/lang/Object;

    .end local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 268
    nop

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 265
    monitor-exit v5

    goto/16 :goto_3

    .line 244
    .end local v23    # "$i$a$-synchronized-Relay$RelaySource$read$2":I
    .end local v25    # "$i$f$notifyAll":I
    :cond_a
    nop

    :try_start_7
    move-wide/from16 v0, v20

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 245
    .local v14, "bytesRead":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()Lokio/Buffer;

    move-result-object v10

    const-wide/16 v12, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 246
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 250
    :cond_b
    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v6}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    move-result-wide v6

    add-long v17, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v19

    .line 249
    invoke-virtual/range {v16 .. v21}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 252
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    nop

    const/16 v22, 0x0

    .line 254
    .local v22, "$i$a$-synchronized-Relay$RelaySource$read$1":I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getBuffer()Lokio/Buffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v6}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()Lokio/Buffer;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v4, v6, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getBuffer()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getBufferMaxSize()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-lez v4, :cond_c

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getBuffer()Lokio/Buffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v6}, Lokhttp3/internal/cache2/Relay;->getBuffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v10}, Lokhttp3/internal/cache2/Relay;->getBufferMaxSize()J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 260
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    move-result-wide v6

    add-long v6, v6, v20

    invoke-virtual {v4, v6, v7}, Lokhttp3/internal/cache2/Relay;->setUpstreamPos(J)V

    .line 261
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 252
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 265
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    nop

    const/16 v23, 0x0

    .line 266
    .restart local v23    # "$i$a$-synchronized-Relay$RelaySource$read$2":I
    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v6, v4}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v26, v0

    .restart local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    const/16 v25, 0x0

    .line 358
    .restart local v25    # "$i$f$notifyAll":I
    if-nez v26, :cond_d

    new-instance v4, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v4, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 265
    .end local v25    # "$i$f$notifyAll":I
    .end local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 252
    .end local v23    # "$i$a$-synchronized-Relay$RelaySource$read$2":I
    :catchall_3
    move-exception v4

    :try_start_b
    monitor-exit v5

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 269
    .end local v14    # "bytesRead":J
    .end local v20    # "upstreamBytesRead":J
    .end local v22    # "$i$a$-synchronized-Relay$RelaySource$read$1":I
    :catchall_4
    move-exception v4

    move-object v5, v4

    .line 265
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v6

    nop

    const/16 v23, 0x0

    .line 266
    .restart local v23    # "$i$a$-synchronized-Relay$RelaySource$read$2":I
    :try_start_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v7, v4}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-object/from16 v26, v0

    .restart local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    const/16 v25, 0x0

    .line 360
    .restart local v25    # "$i$f$notifyAll":I
    if-nez v26, :cond_e

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 265
    .end local v25    # "$i$f$notifyAll":I
    .end local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    :catchall_5
    move-exception v4

    monitor-exit v6

    throw v4

    .line 358
    .restart local v14    # "bytesRead":J
    .restart local v20    # "upstreamBytesRead":J
    .restart local v22    # "$i$a$-synchronized-Relay$RelaySource$read$1":I
    .restart local v25    # "$i$f$notifyAll":I
    .restart local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    :cond_d
    :try_start_d
    check-cast v26, Ljava/lang/Object;

    .end local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 268
    nop

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 265
    monitor-exit v5

    move-wide v8, v14

    goto/16 :goto_3

    .line 360
    .end local v14    # "bytesRead":J
    .end local v20    # "upstreamBytesRead":J
    .end local v22    # "$i$a$-synchronized-Relay$RelaySource$read$1":I
    .restart local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    :cond_e
    :try_start_e
    check-cast v26, Ljava/lang/Object;

    .end local v26    # "$this$notifyAll$iv":Lokhttp3/internal/cache2/Relay;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 268
    nop

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 265
    monitor-exit v6

    throw v5
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object v0
.end method
