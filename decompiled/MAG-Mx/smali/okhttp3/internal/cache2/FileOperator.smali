.class public final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008J\u001e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/internal/cache2/FileOperator;",
        "",
        "fileChannel",
        "Ljava/nio/channels/FileChannel;",
        "(Ljava/nio/channels/FileChannel;)V",
        "read",
        "",
        "pos",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "write",
        "source",
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
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "fileChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public final read(JLokio/Buffer;J)V
    .locals 10
    .param p1, "pos"    # J
    .param p3, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "byteCount"    # J

    .prologue
    const-string v0, "sink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 61
    :cond_0
    move-wide v2, p1

    .line 62
    .local v2, "mutablePos":J
    move-wide v4, p4

    .line 64
    .local v4, "mutableByteCount":J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 65
    iget-object v1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v6, p3

    check-cast v6, Ljava/nio/channels/WritableByteChannel;

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    .line 66
    .local v8, "bytesRead":J
    add-long/2addr v2, v8

    .line 67
    sub-long/2addr v4, v8

    .line 64
    goto :goto_0

    .line 69
    .end local v8    # "bytesRead":J
    :cond_1
    return-void
.end method

.method public final write(JLokio/Buffer;J)V
    .locals 10
    .param p1, "pos"    # J
    .param p3, "source"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    cmp-long v0, p4, v8

    if-ltz v0, :cond_0

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 42
    :cond_1
    move-wide v2, p1

    .line 43
    .local v2, "mutablePos":J
    move-wide v4, p4

    .line 45
    .local v4, "mutableByteCount":J
    :goto_0
    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    .line 46
    iget-object v0, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v1, p3

    check-cast v1, Ljava/nio/channels/ReadableByteChannel;

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v6

    .line 47
    .local v6, "bytesWritten":J
    add-long/2addr v2, v6

    .line 48
    sub-long/2addr v4, v6

    .line 45
    goto :goto_0

    .line 50
    .end local v6    # "bytesWritten":J
    :cond_2
    return-void
.end method
