.class public final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0001$B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0008\u0010\u001f\u001a\u00020\u001eH\u0002J\u0008\u0010 \u001a\u00020\u001eH\u0002J\u0008\u0010!\u001a\u00020\u001eH\u0002J\u0008\u0010\"\u001a\u00020\u001eH\u0002J\u0008\u0010#\u001a\u00020\u001eH\u0002R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006%"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketReader;",
        "",
        "isClient",
        "",
        "source",
        "Lokio/BufferedSource;",
        "frameCallback",
        "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;",
        "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V",
        "closed",
        "getClosed",
        "()Z",
        "setClosed",
        "(Z)V",
        "controlFrameBuffer",
        "Lokio/Buffer;",
        "frameLength",
        "",
        "isControlFrame",
        "isFinalFrame",
        "maskCursor",
        "Lokio/Buffer$UnsafeCursor;",
        "maskKey",
        "",
        "messageFrameBuffer",
        "opcode",
        "",
        "getSource",
        "()Lokio/BufferedSource;",
        "processNextFrame",
        "",
        "readControlFrame",
        "readHeader",
        "readMessage",
        "readMessageFrame",
        "readUntilNonControlFrame",
        "FrameCallback",
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
.field private closed:Z

.field private final controlFrameBuffer:Lokio/Buffer;

.field private final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field private frameLength:J

.field private final isClient:Z

.field private isControlFrame:Z

.field private isFinalFrame:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final messageFrameBuffer:Lokio/Buffer;

.field private opcode:I

.field private final source:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "frameCallback"    # Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 67
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 68
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 71
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 72
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    goto :goto_1
.end method

.method private final readControlFrame()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 171
    iget-wide v6, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 172
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v5, v6, v8, v9}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 174
    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v5, :cond_2

    .line 175
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v5, v6}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 176
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v5, v10, v11}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 177
    sget-object v5, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v7, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    if-nez v7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 178
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v5}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 182
    :cond_2
    iget v5, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v5, :pswitch_data_0

    .line 205
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown control opcode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v7}, Lokhttp3/internal/Util;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 184
    :pswitch_0
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    .line 207
    :goto_0
    return-void

    .line 187
    :pswitch_1
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    goto :goto_0

    .line 190
    :pswitch_2
    const/16 v2, 0x3ed

    .line 191
    .local v2, "code":I
    const-string v4, ""

    .line 192
    .local v4, "reason":Ljava/lang/String;
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 193
    .local v0, "bufferSize":J
    const-wide/16 v6, 0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    .line 194
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Malformed close payload length of 1."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 195
    :cond_3
    cmp-long v5, v0, v10

    if-eqz v5, :cond_4

    .line 196
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readShort()S

    move-result v2

    .line 197
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v4

    .line 198
    sget-object v5, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-virtual {v5, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "codeExceptionMessage":Ljava/lang/String;
    if-eqz v3, :cond_4

    new-instance v5, Ljava/net/ProtocolException;

    invoke-direct {v5, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 200
    .end local v3    # "codeExceptionMessage":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v5, v2, v4}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 202
    const/4 v5, 0x1

    iput-boolean v5, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final readHeader()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xff

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 106
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    const-string v9, "closed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    .local v0, "b0":I
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    .line 111
    .local v6, "timeoutBefore":J
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 112
    nop

    .line 113
    :try_start_0
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    const/16 v11, 0xff

    invoke-static {v8, v11}, Lokhttp3/internal/Util;->and(BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 115
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 116
    and-int/lit8 v8, v0, 0xf

    iput v8, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 119
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_1

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 120
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_2

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 123
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v8, :cond_3

    .line 124
    new-instance v8, Ljava/net/ProtocolException;

    const-string v9, "Control frames must be final."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 116
    :catchall_0
    move-exception v8

    .line 115
    iget-object v9, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v6, v7, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v8

    :cond_1
    move v8, v10

    .line 119
    goto :goto_0

    :cond_2
    move v8, v10

    .line 120
    goto :goto_1

    .line 127
    :cond_3
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move v3, v9

    .line 128
    .local v3, "reservedFlag1":Z
    :goto_2
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_6

    move v4, v9

    .line 129
    .local v4, "reservedFlag2":Z
    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_7

    move v5, v9

    .line 130
    .local v5, "reservedFlag3":Z
    :goto_4
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_8

    .line 132
    :cond_4
    new-instance v8, Ljava/net/ProtocolException;

    const-string v9, "Reserved flags are unsupported."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .end local v3    # "reservedFlag1":Z
    .end local v4    # "reservedFlag2":Z
    .end local v5    # "reservedFlag3":Z
    :cond_5
    move v3, v10

    .line 127
    goto :goto_2

    .restart local v3    # "reservedFlag1":Z
    :cond_6
    move v4, v10

    .line 128
    goto :goto_3

    .restart local v4    # "reservedFlag2":Z
    :cond_7
    move v5, v10

    .line 129
    goto :goto_4

    .line 135
    .restart local v5    # "reservedFlag3":Z
    :cond_8
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    invoke-static {v8, v12}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    .line 137
    .local v1, "b1":I
    and-int/lit16 v8, v1, 0x80

    if-eqz v8, :cond_9

    move v2, v9

    .line 138
    .local v2, "isMasked":Z
    :goto_5
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v2, v8, :cond_b

    .line 140
    new-instance v8, Ljava/net/ProtocolException;

    iget-boolean v9, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v9, :cond_a

    .line 141
    const-string v9, "Server-sent frames must not be masked."

    .line 140
    :goto_6
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .end local v2    # "isMasked":Z
    :cond_9
    move v2, v10

    .line 137
    goto :goto_5

    .line 143
    .restart local v2    # "isMasked":Z
    :cond_a
    const-string v9, "Client-sent frames must be masked."

    goto :goto_6

    .line 148
    :cond_b
    and-int/lit8 v8, v1, 0x7f

    int-to-long v8, v8

    iput-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 149
    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const/16 v10, 0x7e

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 150
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readShort()S

    move-result v8

    const v9, 0xffff

    invoke-static {v8, v9}, Lokhttp3/internal/Util;->and(SI)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 157
    :cond_c
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v8, :cond_e

    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x7d

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    .line 160
    new-instance v8, Ljava/net/ProtocolException;

    const-string v9, "Control frame must be less than 125B."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 151
    :cond_d
    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const/16 v10, 0x7f

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 152
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 153
    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_c

    .line 154
    new-instance v8, Ljava/net/ProtocolException;

    .line 155
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Frame length 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-static {v10, v11}, Lokhttp3/internal/Util;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 163
    :cond_e
    if-eqz v2, :cond_10

    .line 165
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v9, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    if-nez v9, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-interface {v8, v9}, Lokio/BufferedSource;->readFully([B)V

    .line 167
    :cond_10
    return-void
.end method

.method private final readMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    :cond_0
    nop

    .line 246
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 248
    :cond_1
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 249
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v1, v2, v3}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 251
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_4

    .line 252
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 253
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 254
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 255
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 259
    :cond_4
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_5

    .line 266
    return-void

    .line 261
    :cond_5
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 262
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Lokhttp3/internal/Util;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final readMessageFrame()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 212
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 213
    .local v0, "opcode":I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 214
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lokhttp3/internal/Util;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 217
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessage()V

    .line 219
    if-ne v0, v2, :cond_1

    .line 220
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    goto :goto_0
.end method

.method private final readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 231
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_1

    .line 236
    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method


# virtual methods
.method public final getClosed()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    return v0
.end method

.method public final getSource()Lokio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method public final processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 97
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_0
.end method

.method public final setClosed(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    return-void
.end method
