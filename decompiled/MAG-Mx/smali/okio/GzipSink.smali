.class public final Lokio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGzipSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n+ 2 -Util.kt\nokio/-Util\n+ 3 RealBufferedSink.kt\nokio/RealBufferedSink\n*L\n1#1,153:1\n72#2:154\n32#3:155\n*E\n*S KotlinDebug\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n*L\n132#1:154\n64#1:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\r\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\u0010J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0008\u001a\u00020\t8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lokio/GzipSink;",
        "Lokio/Sink;",
        "sink",
        "(Lokio/Sink;)V",
        "closed",
        "",
        "crc",
        "Ljava/util/zip/CRC32;",
        "deflater",
        "Ljava/util/zip/Deflater;",
        "()Ljava/util/zip/Deflater;",
        "deflaterSink",
        "Lokio/DeflaterSink;",
        "Lokio/RealBufferedSink;",
        "close",
        "",
        "-deprecated_deflater",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "updateCrc",
        "buffer",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "write",
        "source",
        "writeFooter",
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
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deflaterSink:Lokio/DeflaterSink;

.field private final sink:Lokio/RealBufferedSink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 6
    .param p1, "sink"    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const-string v2, "sink"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Lokio/RealBufferedSink;

    invoke-direct {v2, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object v2, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    .line 49
    new-instance v2, Ljava/util/zip/Deflater;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v2, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 55
    new-instance v3, Lokio/DeflaterSink;

    iget-object v2, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    check-cast v2, Lokio/BufferedSink;

    iget-object v4, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v3, v2, v4}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v3, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    .line 60
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v2, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 64
    iget-object v1, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    .line 155
    .local v1, "this_$iv":Lokio/RealBufferedSink;
    iget-object v0, v1, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 65
    .local v0, "$receiver":Lokio/Buffer;
    const/16 v2, 0x1f8b

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 66
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 67
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 68
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 69
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 70
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 71
    nop

    .line 64
    return-void
.end method

.method private final updateCrc(Lokio/Buffer;J)V
    .locals 8
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .prologue
    .line 129
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 130
    .local v1, "head":Lokio/Segment;
    :cond_0
    move-wide v2, p2

    .line 131
    .local v2, "remaining":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    .line 132
    iget v5, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int v0, v5, v6

    .line 154
    .local v0, "b$iv":I
    int-to-long v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    nop

    .line 132
    long-to-int v4, v6

    .line 133
    .local v4, "segmentLength":I
    iget-object v5, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v6, v1, Lokio/Segment;->data:[B

    iget v7, v1, Lokio/Segment;->pos:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 134
    int-to-long v6, v4

    sub-long/2addr v2, v6

    .line 135
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .end local v1    # "head":Lokio/Segment;
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 131
    .restart local v1    # "head":Lokio/Segment;
    :cond_1
    goto :goto_0

    .line 137
    .end local v0    # "b$iv":I
    .end local v4    # "segmentLength":I
    :cond_2
    return-void
.end method

.method private final writeFooter()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lokio/RealBufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    .line 124
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lokio/RealBufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    .line 125
    return-void
.end method


# virtual methods
.method public final -deprecated_deflater()Ljava/util/zip/Deflater;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "deflater"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_deflater"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v2, p0, Lokio/GzipSink;->closed:Z

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    .line 98
    .local v1, "thrown":Ljava/lang/Throwable;
    nop

    .line 99
    :try_start_0
    iget-object v2, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v2}, Lokio/DeflaterSink;->finishDeflate$jvm()V

    .line 100
    invoke-direct {p0}, Lokio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    nop

    .line 106
    :try_start_1
    iget-object v2, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_2
    :goto_1
    nop

    .line 112
    :try_start_2
    iget-object v2, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    invoke-virtual {v2}, Lokio/RealBufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    :cond_3
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lokio/GzipSink;->closed:Z

    .line 119
    if-eqz v1, :cond_0

    throw v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_1

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_2
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "deflater"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0}, Lokio/DeflaterSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/RealBufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 4
    .param p1, "source"    # Lokio/Buffer;
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
    const-wide/16 v2, 0x0

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    .line 77
    :cond_1
    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    .line 81
    :goto_1
    return-void

    .line 79
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lokio/GzipSink;->updateCrc(Lokio/Buffer;J)V

    .line 80
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lokio/DeflaterSink;->write(Lokio/Buffer;J)V

    goto :goto_1
.end method
