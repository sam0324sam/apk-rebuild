.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,2216:1\n72#2:2217\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n2134#1:2217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Buffer$UnsafeCursor;",
        "Ljava/io/Closeable;",
        "()V",
        "buffer",
        "Lokio/Buffer;",
        "data",
        "",
        "end",
        "",
        "offset",
        "",
        "readWrite",
        "",
        "segment",
        "Lokio/Segment;",
        "start",
        "close",
        "",
        "expandBuffer",
        "minByteCount",
        "next",
        "resizeBuffer",
        "newSize",
        "seek",
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
.field public buffer:Lokio/Buffer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public data:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public end:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public offset:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public readWrite:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private segment:Lokio/Segment;

.field public start:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1991
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1993
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1994
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 2201
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "not attached to a buffer"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2203
    check-cast v0, Lokio/Buffer;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object v0, v1

    .line 2204
    check-cast v0, Lokio/Segment;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2205
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2206
    check-cast v1, [B

    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2207
    iput v4, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2208
    iput v4, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2209
    return-void
.end method

.method public final expandBuffer(I)J
    .locals 9
    .param p1, "minByteCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x2000

    .line 2178
    if-lez p1, :cond_0

    move v7, v5

    :goto_0
    if-nez v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minByteCount <= 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_0
    move v7, v6

    goto :goto_0

    .line 2179
    :cond_1
    if-gt p1, v8, :cond_2

    :goto_1
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minByteCount > Segment.SIZE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    :cond_2
    move v5, v6

    goto :goto_1

    .line 2180
    :cond_3
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_4

    const-string v6, "not attached to a buffer"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 2181
    .local v0, "buffer":Lokio/Buffer;
    :cond_4
    iget-boolean v5, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v5, :cond_5

    const-string v6, "expandBuffer() only permitted for read/write buffers"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 2183
    :cond_5
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 2184
    .local v2, "oldSize":J
    invoke-virtual {v0, p1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v4

    .line 2185
    .local v4, "tail":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    rsub-int v1, v5, 0x2000

    .line 2186
    .local v1, "result":I
    iput v8, v4, Lokio/Segment;->limit:I

    .line 2187
    int-to-long v6, v1

    add-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->setSize$jvm(J)V

    .line 2190
    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2191
    iput-wide v2, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2192
    iget-object v5, v4, Lokio/Segment;->data:[B

    iput-object v5, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2193
    rsub-int v5, v1, 0x2000

    iput v5, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2194
    iput v8, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2196
    int-to-long v6, v1

    return-wide v6
.end method

.method public final next()I
    .locals 4

    .prologue
    .line 2002
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const-string v1, "no more bytes"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2003
    :cond_2
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    :goto_1
    return v0

    :cond_3
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    goto :goto_1
.end method

.method public final resizeBuffer(J)J
    .locals 19
    .param p1, "newSize"    # J

    .prologue
    .line 2102
    move-object/from16 v0, p0

    iget-object v5, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v5, :cond_0

    const-string v17, "not attached to a buffer"

    new-instance v16, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    .line 2103
    .local v5, "buffer":Lokio/Buffer;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    const-string v17, "resizeBuffer() only permitted for read/write buffers"

    new-instance v16, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    .line 2105
    :cond_1
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v12

    .line 2106
    .local v12, "oldSize":J
    cmp-long v16, p1, v12

    if-gtz v16, :cond_9

    .line 2107
    const-wide/16 v16, 0x0

    cmp-long v16, p1, v16

    if-ltz v16, :cond_2

    const/16 v16, 0x1

    :goto_0
    if-nez v16, :cond_3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "newSize < 0: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v16, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 2109
    :cond_3
    sub-long v8, v12, p1

    .line 2110
    .local v8, "bytesToSubtract":J
    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-lez v16, :cond_7

    .line 2111
    iget-object v0, v5, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object/from16 v0, v16

    iget-object v14, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 2112
    .local v14, "tail":Lokio/Segment;
    if-nez v14, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget v0, v14, Lokio/Segment;->limit:I

    move/from16 v16, v0

    iget v0, v14, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v15, v16, v17

    .line 2113
    .local v15, "tailSize":I
    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v16, v16, v8

    if-gtz v16, :cond_6

    .line 2114
    invoke-virtual {v14}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lokio/Buffer;->head:Lokio/Segment;

    .line 2115
    invoke-static {v14}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 2116
    int-to-long v0, v15

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    goto :goto_1

    .line 2118
    :cond_6
    iget v0, v14, Lokio/Segment;->limit:I

    move/from16 v16, v0

    long-to-int v0, v8

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v14, Lokio/Segment;->limit:I

    .line 2123
    .end local v14    # "tail":Lokio/Segment;
    .end local v15    # "tailSize":I
    :cond_7
    const/16 v16, 0x0

    check-cast v16, Lokio/Segment;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2124
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2125
    const/16 v16, 0x0

    check-cast v16, [B

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2126
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2127
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2148
    .end local v8    # "bytesToSubtract":J
    :cond_8
    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Lokio/Buffer;->setSize$jvm(J)V

    .line 2152
    return-wide v12

    .line 2128
    :cond_9
    cmp-long v16, p1, v12

    if-lez v16, :cond_8

    .line 2130
    const/4 v10, 0x1

    .line 2131
    .local v10, "needsToSeek":Z
    sub-long v6, p1, v12

    .line 2132
    .local v6, "bytesToAdd":J
    :cond_a
    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-lez v16, :cond_8

    .line 2133
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v14

    .line 2134
    .restart local v14    # "tail":Lokio/Segment;
    iget v0, v14, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    rsub-int v4, v0, 0x2000

    .line 2217
    .local v4, "b$iv":I
    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    nop

    .line 2134
    move-wide/from16 v0, v16

    long-to-int v11, v0

    .line 2135
    .local v11, "segmentBytesToAdd":I
    iget v0, v14, Lokio/Segment;->limit:I

    move/from16 v16, v0

    add-int v16, v16, v11

    move/from16 v0, v16

    iput v0, v14, Lokio/Segment;->limit:I

    .line 2136
    int-to-long v0, v11

    move-wide/from16 v16, v0

    sub-long v6, v6, v16

    .line 2139
    if-eqz v10, :cond_a

    .line 2140
    move-object/from16 v0, p0

    iput-object v14, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2141
    move-object/from16 v0, p0

    iput-wide v12, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2142
    iget-object v0, v14, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2143
    iget v0, v14, Lokio/Segment;->limit:I

    move/from16 v16, v0

    sub-int v16, v16, v11

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2144
    iget v0, v14, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2145
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public final seek(J)I
    .locals 25
    .param p1, "offset"    # J

    .prologue
    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v4, :cond_0

    const-string v18, "not attached to a buffer"

    new-instance v17, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    .line 2013
    .local v4, "buffer":Lokio/Buffer;
    :cond_0
    const/16 v17, -0x1

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, p1, v18

    if-ltz v17, :cond_1

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v18

    cmp-long v17, p1, v18

    if-lez v17, :cond_2

    .line 2014
    :cond_1
    new-instance v17, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2015
    sget-object v18, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v18, "offset=%s > size=%s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "java.lang.String.format(format, *args)"

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2014
    invoke-direct/range {v17 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    .line 2018
    :cond_2
    const-wide/16 v18, -0x1

    cmp-long v17, p1, v18

    if-eqz v17, :cond_3

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v18

    cmp-long v17, p1, v18

    if-nez v17, :cond_4

    .line 2019
    :cond_3
    const/16 v17, 0x0

    check-cast v17, Lokio/Segment;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2020
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2021
    const/16 v17, 0x0

    check-cast v17, [B

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2022
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2023
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2024
    const/16 v17, -0x1

    .line 2081
    :goto_0
    return v17

    .line 2028
    :cond_4
    const-wide/16 v8, 0x0

    .line 2029
    .local v8, "min":J
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v6

    .line 2030
    .local v6, "max":J
    iget-object v5, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 2031
    .local v5, "head":Lokio/Segment;
    iget-object v11, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 2032
    .local v11, "tail":Lokio/Segment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2033
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    .line 2034
    .local v14, "segmentOffset":J
    cmp-long v17, v14, p1

    if-lez v17, :cond_8

    .line 2036
    move-wide v6, v14

    .line 2037
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2042
    .end local v14    # "segmentOffset":J
    :cond_6
    :goto_1
    sub-long v18, v6, p1

    sub-long v20, p1, v8

    cmp-long v17, v18, v20

    if-lez v17, :cond_9

    .line 2049
    move-object v10, v5

    .line 2050
    .local v10, "next":Lokio/Segment;
    move-wide v12, v8

    .line 2051
    .local v12, "nextOffset":J
    :goto_2
    if-nez v10, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget v0, v10, Lokio/Segment;->limit:I

    move/from16 v17, v0

    iget v0, v10, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    cmp-long v17, p1, v18

    if-ltz v17, :cond_c

    .line 2052
    iget v0, v10, Lokio/Segment;->limit:I

    move/from16 v17, v0

    iget v0, v10, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    .line 2053
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    .line 2051
    goto :goto_2

    .line 2040
    .end local v10    # "next":Lokio/Segment;
    .end local v12    # "nextOffset":J
    .restart local v14    # "segmentOffset":J
    :cond_8
    move-wide v8, v14

    .line 2041
    move-object/from16 v0, p0

    iget-object v5, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    goto :goto_1

    .line 2057
    .end local v14    # "segmentOffset":J
    :cond_9
    move-object v10, v11

    .line 2058
    .restart local v10    # "next":Lokio/Segment;
    move-wide v12, v6

    .line 2059
    .restart local v12    # "nextOffset":J
    :goto_3
    cmp-long v17, v12, p1

    if-lez v17, :cond_c

    .line 2060
    if-nez v10, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    .line 2061
    if-nez v10, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    iget v0, v10, Lokio/Segment;->limit:I

    move/from16 v17, v0

    iget v0, v10, Lokio/Segment;->pos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v12, v12, v18

    .line 2059
    goto :goto_3

    .line 2063
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    if-nez v10, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    iget-boolean v0, v10, Lokio/Segment;->shared:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 2067
    invoke-virtual {v10}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v16

    .line 2068
    .local v16, "unsharedNext":Lokio/Segment;
    iget-object v0, v4, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v10, :cond_e

    .line 2069
    move-object/from16 v0, v16

    iput-object v0, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 2071
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v10

    .line 2072
    iget-object v0, v10, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual/range {v17 .. v17}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2076
    .end local v16    # "unsharedNext":Lokio/Segment;
    :cond_10
    move-object/from16 v0, p0

    iput-object v10, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2077
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2078
    if-nez v10, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    iget-object v0, v10, Lokio/Segment;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2079
    iget v0, v10, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-long v18, p1, v12

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2080
    iget v0, v10, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2081
    move-object/from16 v0, p0

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->end:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lokio/Buffer$UnsafeCursor;->start:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    goto/16 :goto_0
.end method
