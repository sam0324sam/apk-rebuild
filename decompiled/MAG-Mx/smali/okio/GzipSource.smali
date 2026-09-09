.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 3 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 4 -Util.kt\nokio/-Util\n*L\n1#1,220:1\n32#2:221\n32#2:223\n32#2:225\n32#2:226\n32#2:227\n32#2:229\n32#2:231\n202#3:222\n202#3:224\n202#3:228\n202#3:230\n75#4:232\n*E\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n105#1:221\n107#1:223\n119#1:225\n120#1:226\n122#1:227\n133#1:229\n144#1:231\n106#1:222\n117#1:224\n130#1:228\n141#1:230\n187#1:232\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lokio/GzipSource;",
        "Lokio/Source;",
        "source",
        "(Lokio/Source;)V",
        "crc",
        "Ljava/util/zip/CRC32;",
        "inflater",
        "Ljava/util/zip/Inflater;",
        "inflaterSource",
        "Lokio/InflaterSource;",
        "section",
        "",
        "Lokio/RealBufferedSource;",
        "checkEqual",
        "",
        "name",
        "",
        "expected",
        "",
        "actual",
        "close",
        "consumeHeader",
        "consumeTrailer",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "timeout",
        "Lokio/Timeout;",
        "updateCrc",
        "buffer",
        "offset",
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
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lokio/InflaterSource;

.field private section:B

.field private final source:Lokio/RealBufferedSource;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 3
    .param p1, "source"    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object v0, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    .line 44
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 50
    new-instance v1, Lokio/InflaterSource;

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    check-cast v0, Lokio/BufferedSource;

    iget-object v2, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v1, v0, v2}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    .line 53
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method private final checkEqual(Ljava/lang/String;II)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # I
    .param p3, "actual"    # I

    .prologue
    .line 196
    if-eq p3, p2, :cond_0

    .line 197
    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(this, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 199
    :cond_0
    return-void
.end method

.method private final consumeHeader()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object/from16 v20, v0

    .line 221
    .local v20, "this_$iv":Lokio/RealBufferedSource;
    move-object/from16 v0, v20

    iget-object v2, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 105
    const-wide/16 v4, 0x3

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v16

    .line 106
    .local v16, "flags":I
    const/4 v14, 0x1

    .line 222
    .local v14, "bit$iv":I
    shr-int v2, v16, v14

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v15, 0x1

    .line 107
    .local v15, "fhcrc":Z
    :goto_0
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    .line 223
    iget-object v3, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 107
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v2}, Lokio/RealBufferedSource;->readShort()S

    move-result v17

    .line 110
    .local v17, "id1id2":S
    const-string v2, "ID1ID2"

    const/16 v3, 0x1f8b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v3, v1}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Lokio/RealBufferedSource;->skip(J)V

    .line 117
    const/4 v14, 0x2

    .line 224
    shr-int v2, v16, v14

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    .line 119
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    .line 225
    iget-object v3, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 119
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-object/from16 v20, v0

    .line 226
    move-object/from16 v0, v20

    iget-object v2, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 120
    invoke-virtual {v2}, Lokio/Buffer;->readShortLe()S

    move-result v2

    int-to-long v6, v2

    .line 121
    .local v6, "xlen":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v2, v6, v7}, Lokio/RealBufferedSource;->require(J)V

    .line 122
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    .line 227
    iget-object v3, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 122
    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v2, v6, v7}, Lokio/RealBufferedSource;->skip(J)V

    .line 130
    .end local v6    # "xlen":J
    :cond_3
    const/4 v14, 0x3

    .line 228
    shr-int v2, v16, v14

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_9

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v18

    .line 132
    .local v18, "index":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 222
    .end local v15    # "fhcrc":Z
    .end local v17    # "id1id2":S
    .end local v18    # "index":J
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 224
    .restart local v15    # "fhcrc":Z
    .restart local v17    # "id1id2":S
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 228
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 133
    .restart local v18    # "index":J
    :cond_7
    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    .line 229
    iget-object v9, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 133
    const-wide/16 v10, 0x0

    const-wide/16 v2, 0x1

    add-long v12, v18, v2

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 134
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v4, 0x1

    add-long v4, v4, v18

    invoke-virtual {v2, v4, v5}, Lokio/RealBufferedSource;->skip(J)V

    .line 141
    .end local v18    # "index":J
    :cond_9
    const/4 v14, 0x4

    .line 230
    shr-int v2, v16, v14

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_d

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v18

    .line 143
    .restart local v18    # "index":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 230
    .end local v18    # "index":J
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 144
    .restart local v18    # "index":J
    :cond_b
    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    .line 231
    iget-object v9, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 144
    const-wide/16 v10, 0x0

    const-wide/16 v2, 0x1

    add-long v12, v18, v2

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    .line 145
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v4, 0x1

    add-long v4, v4, v18

    invoke-virtual {v2, v4, v5}, Lokio/RealBufferedSource;->skip(J)V

    .line 152
    .end local v18    # "index":J
    :cond_d
    if-eqz v15, :cond_e

    .line 153
    const-string v2, "FHCRC"

    move-object/from16 v0, p0

    iget-object v3, v0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v3}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-short v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 156
    :cond_e
    return-void
.end method

.method private final consumeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v0, "CRC"

    iget-object v1, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v1}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 165
    const-string v0, "ISIZE"

    iget-object v1, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v1}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 166
    return-void
.end method

.method private final updateCrc(Lokio/Buffer;JJ)V
    .locals 6
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .prologue
    .line 175
    .line 178
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 179
    .local v2, "s":Lokio/Segment;
    :cond_0
    :goto_0
    iget v4, v2, Lokio/Segment;->limit:I

    iget v5, v2, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_2

    .line 180
    iget v4, v2, Lokio/Segment;->limit:I

    iget v5, v2, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr p2, v4

    .line 181
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .end local v2    # "s":Lokio/Segment;
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 179
    .restart local v2    # "s":Lokio/Segment;
    :cond_1
    goto :goto_0

    .line 185
    :cond_2
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_4

    .line 186
    iget v4, v2, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int v1, v4

    .line 187
    .local v1, "pos":I
    iget v4, v2, Lokio/Segment;->limit:I

    sub-int v0, v4, v1

    .line 232
    .local v0, "a$iv":I
    int-to-long v4, v0

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    nop

    .line 187
    long-to-int v3, v4

    .line 188
    .local v3, "toUpdate":I
    iget-object v4, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v5, v2, Lokio/Segment;->data:[B

    invoke-virtual {v4, v5, v1, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 189
    int-to-long v4, v3

    sub-long/2addr p4, v4

    .line 190
    const-wide/16 p2, 0x0

    .line 191
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .end local v2    # "s":Lokio/Segment;
    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 185
    .restart local v2    # "s":Lokio/Segment;
    :cond_3
    goto :goto_1

    .line 193
    .end local v0    # "a$iv":I
    .end local v1    # "pos":I
    .end local v3    # "toUpdate":I
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10
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
    const-wide/16 v0, -0x1

    const/4 v8, 0x2

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const-string v6, "sink"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    cmp-long v6, p2, v4

    if-ltz v6, :cond_0

    move v6, v7

    :goto_0
    if-nez v6, :cond_1

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
    const/4 v6, 0x0

    goto :goto_0

    .line 58
    :cond_1
    cmp-long v6, p2, v4

    if-nez v6, :cond_2

    .line 93
    :goto_1
    return-wide v4

    .line 61
    :cond_2
    iget-byte v6, p0, Lokio/GzipSource;->section:B

    if-nez v6, :cond_3

    .line 62
    invoke-direct {p0}, Lokio/GzipSource;->consumeHeader()V

    .line 63
    iput-byte v7, p0, Lokio/GzipSource;->section:B

    .line 67
    :cond_3
    iget-byte v6, p0, Lokio/GzipSource;->section:B

    if-ne v6, v7, :cond_5

    .line 68
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 69
    .local v2, "offset":J
    iget-object v6, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v6, p1, p2, p3}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 70
    .local v4, "result":J
    cmp-long v6, v4, v0

    if-eqz v6, :cond_4

    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    goto :goto_1

    .line 74
    :cond_4
    iput-byte v8, p0, Lokio/GzipSource;->section:B

    .line 80
    .end local v2    # "offset":J
    .end local v4    # "result":J
    :cond_5
    iget-byte v6, p0, Lokio/GzipSource;->section:B

    if-ne v6, v8, :cond_6

    .line 81
    invoke-direct {p0}, Lokio/GzipSource;->consumeTrailer()V

    .line 82
    const/4 v6, 0x3

    iput-byte v6, p0, Lokio/GzipSource;->section:B

    .line 88
    iget-object v6, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v6}, Lokio/RealBufferedSource;->exhausted()Z

    move-result v6

    if-nez v6, :cond_6

    .line 89
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_6
    move-wide v4, v0

    .line 93
    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
