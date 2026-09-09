.class public final Lokio/SegmentedByteString$Companion;
.super Ljava/lang/Object;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/SegmentedByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString$Companion\n*L\n1#1,325:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lokio/SegmentedByteString$Companion;",
        "",
        "()V",
        "of",
        "Lokio/ByteString;",
        "buffer",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 58
    invoke-direct {p0}, Lokio/SegmentedByteString$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Lokio/Buffer;I)Lokio/ByteString;
    .locals 11
    .param p1, "buffer"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 63
    const/4 v7, 0x0

    .line 64
    .local v7, "offset":I
    const/4 v9, 0x0

    .line 65
    .local v9, "segmentCount":I
    iget-object v8, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 66
    .local v8, "s":Lokio/Segment;
    :goto_0
    if-ge v7, p2, :cond_2

    .line 67
    if-nez v8, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    if-ne v0, v1, :cond_1

    .line 68
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 70
    :cond_1
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 66
    goto :goto_0

    .line 76
    :cond_2
    new-array v10, v9, [[B

    .line 77
    .local v10, "segments":[[B
    mul-int/lit8 v0, v9, 0x2

    new-array v6, v0, [I

    .line 78
    .local v6, "directory":[I
    const/4 v7, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    iget-object v8, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 81
    :goto_1
    if-ge v7, p2, :cond_4

    .line 82
    if-nez v8, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v0, v8, Lokio/Segment;->data:[B

    aput-object v0, v10, v9

    .line 83
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 85
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v6, v9

    move-object v0, v10

    .line 86
    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, v9

    iget v1, v8, Lokio/Segment;->pos:I

    aput v1, v6, v0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, v8, Lokio/Segment;->shared:Z

    .line 88
    add-int/lit8 v9, v9, 0x1

    .line 89
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 81
    goto :goto_1

    .line 91
    :cond_4
    new-instance v0, Lokio/SegmentedByteString;

    check-cast v10, [[B

    .end local v10    # "segments":[[B
    const/4 v1, 0x0

    invoke-direct {v0, v10, v6, v1}, Lokio/SegmentedByteString;-><init>([[B[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lokio/ByteString;

    return-object v0
.end method
