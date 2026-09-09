.class public final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketWriter.kt\nokhttp3/internal/ws/WebSocketWriter\n*L\n1#1,260:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001:\u00012B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020!2\u0008\u0010\'\u001a\u0004\u0018\u00010(J\u0018\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020!2\u0006\u0010+\u001a\u00020(H\u0002J&\u0010,\u001a\u00020%2\u0006\u0010 \u001a\u00020!2\u0006\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0003J\u000e\u00100\u001a\u00020%2\u0006\u0010+\u001a\u00020(J\u000e\u00101\u001a\u00020%2\u0006\u0010+\u001a\u00020(R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00060\u0013R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketWriter;",
        "",
        "isClient",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "random",
        "Ljava/util/Random;",
        "(ZLokio/BufferedSink;Ljava/util/Random;)V",
        "activeWriter",
        "getActiveWriter",
        "()Z",
        "setActiveWriter",
        "(Z)V",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer",
        "()Lokio/Buffer;",
        "frameSink",
        "Lokhttp3/internal/ws/WebSocketWriter$FrameSink;",
        "maskCursor",
        "Lokio/Buffer$UnsafeCursor;",
        "maskKey",
        "",
        "getRandom",
        "()Ljava/util/Random;",
        "getSink",
        "()Lokio/BufferedSink;",
        "sinkBuffer",
        "writerClosed",
        "newMessageSink",
        "Lokio/Sink;",
        "formatOpcode",
        "",
        "contentLength",
        "",
        "writeClose",
        "",
        "code",
        "reason",
        "Lokio/ByteString;",
        "writeControlFrame",
        "opcode",
        "payload",
        "writeMessageFrame",
        "byteCount",
        "isFirstFrame",
        "isFinal",
        "writePing",
        "writePong",
        "FrameSink",
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
.field private activeWriter:Z

.field private final buffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field private final isClient:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final random:Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sink:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sinkBuffer:Lokio/Buffer;

.field private writerClosed:Z


# direct methods
.method public constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "sink"    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "random"    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const-string v0, "sink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 52
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    .line 55
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 56
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 61
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 62
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_0

    new-instance v1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    return-void

    :cond_1
    move-object v0, v1

    .line 61
    goto :goto_0
.end method

.method private final writeControlFrame(ILokio/ByteString;)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "payload"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 110
    :cond_0
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v3

    .line 111
    .local v3, "length":I
    int-to-long v6, v3

    const-wide/16 v8, 0x7d

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_2

    const/4 v0, 0x0

    .line 112
    .local v0, "$i$a$-require-WebSocketWriter$writeControlFrame$1":I
    const-string v7, "Payload size must be less than or equal to 125"

    .line 111
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .end local v0    # "$i$a$-require-WebSocketWriter$writeControlFrame$1":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 115
    :cond_2
    or-int/lit16 v1, p1, 0x80

    .line 116
    .local v1, "b0":I
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v6, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 118
    move v2, v3

    .line 119
    .local v2, "b1":I
    iget-boolean v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v6, :cond_6

    .line 120
    or-int/lit16 v2, v2, 0x80

    .line 121
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v6, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 123
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v7, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-nez v7, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextBytes([B)V

    .line 124
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v7, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v6, v7}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 126
    if-lez v3, :cond_5

    .line 127
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 128
    .local v4, "payloadStart":J
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v6, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 130
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v7, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v6, v7}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 131
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v6, v4, v5}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 132
    sget-object v6, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object v7, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 133
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v6}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 138
    .end local v4    # "payloadStart":J
    :cond_5
    :goto_1
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V

    .line 141
    return-void

    .line 136
    :cond_6
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v6, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 137
    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v6, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_1
.end method


# virtual methods
.method public final getActiveWriter()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    return v0
.end method

.method public final getBuffer()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getRandom()Ljava/util/Random;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    return-object v0
.end method

.method public final getSink()Lokio/BufferedSink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method public final newMessageSink(IJ)Lokio/Sink;
    .locals 4
    .param p1, "formatOpcode"    # I
    .param p2, "contentLength"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-check-WebSocketWriter$newMessageSink$1":I
    const-string v2, "Another message writer is active. Did you call close()?"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .end local v0    # "$i$a$-check-WebSocketWriter$newMessageSink$1":I
    :cond_0
    move v1, v3

    goto :goto_0

    .line 149
    :cond_1
    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 152
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-virtual {v1, p1}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->setFormatOpcode(I)V

    .line 153
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->setContentLength(J)V

    .line 154
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-virtual {v1, v2}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->setFirstFrame(Z)V

    .line 155
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-virtual {v1, v3}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->setClosed(Z)V

    .line 157
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    check-cast v1, Lokio/Sink;

    return-object v1
.end method

.method public final setActiveWriter(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    return-void
.end method

.method public final writeClose(ILokio/ByteString;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 85
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 86
    .local v2, "payload":Lokio/ByteString;
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    sget-object v3, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-virtual {v3, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 90
    :cond_1
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .local v1, "$this$run":Lokio/Buffer;
    const/4 v0, 0x0

    .line 91
    .local v0, "$i$a$-run-WebSocketWriter$writeClose$1":I
    invoke-virtual {v1, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 92
    if-eqz p2, :cond_2

    .line 93
    invoke-virtual {v1, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 95
    :cond_2
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    .line 99
    .end local v0    # "$i$a$-run-WebSocketWriter$writeClose$1":I
    .end local v1    # "$this$run":Lokio/Buffer;
    :cond_3
    nop

    .line 100
    const/16 v3, 0x8

    :try_start_0
    invoke-direct {p0, v3, v2}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iput-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 103
    return-void

    :catchall_0
    move-exception v3

    .line 102
    iput-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw v3
.end method

.method public final writeMessageFrame(IJZZ)V
    .locals 8
    .param p1, "formatOpcode"    # I
    .param p2, "byteCount"    # J
    .param p4, "isFirstFrame"    # Z
    .param p5, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 169
    :cond_0
    if-eqz p4, :cond_6

    move v0, p1

    .line 170
    .local v0, "b0":I
    :goto_0
    if-eqz p5, :cond_1

    .line 171
    or-int/lit16 v0, v0, 0x80

    .line 173
    :cond_1
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "b1":I
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v4, :cond_2

    .line 177
    or-int/lit16 v1, v1, 0x80

    .line 179
    :cond_2
    nop

    .line 180
    const-wide/16 v4, 0x7d

    cmp-long v4, p2, v4

    if-gtz v4, :cond_7

    .line 181
    long-to-int v4, p2

    or-int/2addr v1, v4

    .line 182
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 194
    :goto_1
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v4, :cond_9

    .line 197
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 198
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v4, v5}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 200
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_5

    .line 201
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 202
    .local v2, "bufferStart":J
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v5, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 204
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v4, v5}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 205
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 206
    sget-object v4, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v4, v5, v6}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 207
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v4}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 211
    .end local v2    # "bufferStart":J
    :cond_5
    :goto_2
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    .line 214
    return-void

    .line 169
    .end local v0    # "b0":I
    .end local v1    # "b1":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    .restart local v0    # "b0":I
    .restart local v1    # "b1":I
    :cond_7
    const-wide/32 v4, 0xffff

    cmp-long v4, p2, v4

    if-gtz v4, :cond_8

    .line 185
    or-int/lit8 v1, v1, 0x7e

    .line 186
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 187
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    long-to-int v5, p2

    invoke-virtual {v4, v5}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    goto :goto_1

    .line 190
    :cond_8
    or-int/lit8 v1, v1, 0x7f

    .line 191
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 192
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, p2, p3}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    goto :goto_1

    .line 210
    :cond_9
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v5, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_2
.end method

.method public final writePing(Lokio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    .line 68
    return-void
.end method

.method public final writePong(Lokio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    .line 74
    return-void
.end method
