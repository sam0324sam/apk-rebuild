.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/SegmentedByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n1#1,325:1\n257#1,12:326\n257#1,12:338\n257#1,12:350\n257#1,12:362\n257#1,12:374\n279#1,14:386\n279#1,14:400\n257#1,12:414\n*E\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n107#1,12:326\n117#1,12:338\n178#1,12:350\n189#1,12:362\n195#1,12:374\n217#1,14:386\n236#1,14:400\n308#1,12:414\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u0005\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 J2\u00020\u0001:\u0001JB\u001d\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0015\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0011H\u0010\u00a2\u0006\u0002\u0008\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002JV\u0010\u001a\u001a\u00020\u001b2K\u0010\u001c\u001aG\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u001b0\u001dH\u0082\u0008Jf\u0010\u001a\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020!2K\u0010\u001c\u001aG\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u001b0\u001dH\u0082\u0008J\r\u0010&\u001a\u00020!H\u0010\u00a2\u0006\u0002\u0008\'J\u0008\u0010(\u001a\u00020!H\u0016J\u0008\u0010)\u001a\u00020\u0011H\u0016J\u001d\u0010*\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0001H\u0010\u00a2\u0006\u0002\u0008,J\u0018\u0010-\u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010.\u001a\u00020!H\u0016J\r\u0010/\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u00080J\u0015\u00101\u001a\u0002022\u0006\u00103\u001a\u00020!H\u0010\u00a2\u0006\u0002\u00084J\u0018\u00105\u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010.\u001a\u00020!H\u0016J(\u00106\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u00107\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0016J(\u00106\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u00107\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0016J\u0010\u00108\u001a\u00020!2\u0006\u00103\u001a\u00020!H\u0002J\u0010\u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020;H\u0016J\u0018\u0010<\u001a\u00020\u00012\u0006\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020!H\u0016J\u0008\u0010=\u001a\u00020\u0001H\u0016J\u0008\u0010>\u001a\u00020\u0001H\u0016J\u0008\u0010?\u001a\u00020\u0004H\u0016J\u0008\u0010@\u001a\u00020\u0001H\u0002J\u0008\u0010A\u001a\u00020\u0011H\u0016J\u0010\u0010B\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020DH\u0016J\u0015\u0010B\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020FH\u0010\u00a2\u0006\u0002\u0008GJ\u0008\u0010H\u001a\u00020IH\u0002R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006K"
    }
    d2 = {
        "Lokio/SegmentedByteString;",
        "Lokio/ByteString;",
        "segments",
        "",
        "",
        "directory",
        "",
        "([[B[I)V",
        "getDirectory",
        "()[I",
        "getSegments",
        "()[[B",
        "[[B",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "kotlin.jvm.PlatformType",
        "base64",
        "",
        "base64Url",
        "digest",
        "algorithm",
        "digest$jvm",
        "equals",
        "",
        "other",
        "",
        "forEachSegment",
        "",
        "action",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "data",
        "",
        "offset",
        "byteCount",
        "beginIndex",
        "endIndex",
        "getSize",
        "getSize$jvm",
        "hashCode",
        "hex",
        "hmac",
        "key",
        "hmac$jvm",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$jvm",
        "internalGet",
        "",
        "pos",
        "internalGet$jvm",
        "lastIndexOf",
        "rangeEquals",
        "otherOffset",
        "segment",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toByteString",
        "toString",
        "write",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$jvm",
        "writeReplace",
        "Ljava/lang/Object;",
        "Companion",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final Companion:Lokio/SegmentedByteString$Companion;


# instance fields
.field private final transient directory:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transient segments:[[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/SegmentedByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/SegmentedByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/SegmentedByteString;->Companion:Lokio/SegmentedByteString$Companion;

    return-void
.end method

.method private constructor <init>([[B[I)V
    .locals 1
    .param p1, "segments"    # [[B
    .param p2, "directory"    # [I

    .prologue
    .line 53
    .line 56
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    return-void
.end method

.method public synthetic constructor <init>([[B[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "segments"    # [[B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "directory"    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    return-void
.end method

.method public static final synthetic access$segment(Lokio/SegmentedByteString;I)I
    .locals 1
    .param p0, "$this"    # Lokio/SegmentedByteString;
    .param p1, "pos"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    return v0
.end method

.method private final forEachSegment(IILkotlin/jvm/functions/Function3;)V
    .locals 10
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "action"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function3",
            "<-[B-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {p0, p1}, Lokio/SegmentedByteString;->access$segment(Lokio/SegmentedByteString;I)I

    move-result v3

    .line 280
    .local v3, "s":I
    move v2, p1

    .line 281
    .local v2, "pos":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 282
    if-nez v3, :cond_0

    const/4 v4, 0x0

    .line 283
    .local v4, "segmentOffset":I
    :goto_1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v7

    aget v7, v7, v3

    sub-int v6, v7, v4

    .line 284
    .local v6, "segmentSize":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v8

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    array-length v7, v7

    add-int/2addr v7, v3

    aget v5, v8, v7

    .line 286
    .local v5, "segmentPos":I
    add-int v7, v4, v6

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v0, v7, v2

    .line 287
    .local v0, "byteCount":I
    sub-int v7, v2, v4

    add-int v1, v5, v7

    .line 288
    .local v1, "offset":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v7

    aget-object v7, v7, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v7, v8, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    add-int/2addr v2, v0

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 281
    goto :goto_0

    .line 282
    .end local v0    # "byteCount":I
    .end local v1    # "offset":I
    .end local v4    # "segmentOffset":I
    .end local v5    # "segmentPos":I
    .end local v6    # "segmentSize":I
    :cond_0
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    aget v4, v7, v8

    goto :goto_1

    .line 292
    :cond_1
    return-void
.end method

.method private final forEachSegment(Lkotlin/jvm/functions/Function3;)V
    .locals 8
    .param p1, "action"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3",
            "<-[B-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v3, v5

    .line 258
    .local v3, "segmentCount":I
    const/4 v2, 0x0

    .line 259
    .local v2, "s":I
    const/4 v1, 0x0

    .line 260
    .local v1, "pos":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 261
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v5

    add-int v6, v3, v2

    aget v4, v5, v6

    .line 262
    .local v4, "segmentPos":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v5

    aget v0, v5, v2

    .line 264
    .local v0, "nextSegmentOffset":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sub-int v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v5, v6, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move v1, v0

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 260
    goto :goto_0

    .line 268
    .end local v0    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    :cond_0
    return-void
.end method

.method private final segment(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 169
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    const/4 v3, 0x0

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v2, v3, v1, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 170
    .local v0, "i":I
    if-ltz v0, :cond_0

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private final toByteString()Lokio/ByteString;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public digest$jvm(Ljava/lang/String;)Lokio/ByteString;
    .locals 11
    .param p1, "algorithm"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v8, "algorithm"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 107
    .local v1, "digest":Ljava/security/MessageDigest;
    move-object v7, p0

    .line 326
    .local v7, "this_$iv":Lokio/SegmentedByteString;
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    array-length v5, v8

    .line 327
    .local v5, "segmentCount$iv":I
    const/4 v4, 0x0

    .line 328
    .local v4, "s$iv":I
    const/4 v3, 0x0

    .line 329
    .local v3, "pos$iv":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 330
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v8

    add-int v9, v5, v4

    aget v6, v8, v9

    .line 331
    .local v6, "segmentPos$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v8

    aget v2, v8, v4

    .line 333
    .local v2, "nextSegmentOffset$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v8

    aget-object v0, v8, v4

    sub-int v8, v2, v3

    .line 108
    .local v0, "data":[B
    invoke-virtual {v1, v0, v6, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 109
    nop

    .line 334
    move v3, v2

    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 329
    goto :goto_0

    .line 337
    .end local v0    # "data":[B
    .end local v2    # "nextSegmentOffset$iv":I
    .end local v6    # "segmentPos$iv":I
    :cond_0
    nop

    .line 110
    new-instance v8, Lokio/ByteString;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    const-string v10, "digest.digest()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lokio/ByteString;-><init>([B)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    move-object v0, p0

    check-cast v0, Lokio/SegmentedByteString;

    if-ne p1, v0, :cond_0

    move v0, v1

    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 297
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lokio/ByteString;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    move v0, v2

    .line 298
    goto :goto_0
.end method

.method public final getDirectory()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    return-object v0
.end method

.method public final getSegments()[[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    return-object v0
.end method

.method public getSize$jvm()I
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0
.end method

.method public hashCode()I
    .locals 13

    .prologue
    .line 303
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getHashCode$jvm()I

    move-result v5

    .line 304
    .local v5, "result":I
    if-eqz v5, :cond_0

    move v6, v5

    .line 317
    .end local v5    # "result":I
    .local v6, "result":I
    :goto_0
    return v6

    .line 307
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :cond_0
    const/4 v5, 0x1

    .line 308
    move-object v10, p0

    .line 414
    .local v10, "this_$iv":Lokio/SegmentedByteString;
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    array-length v8, v11

    .line 415
    .local v8, "segmentCount$iv":I
    const/4 v7, 0x0

    .line 416
    .local v7, "s$iv":I
    const/4 v4, 0x0

    .line 417
    .local v4, "pos$iv":I
    :goto_1
    if-ge v7, v8, :cond_2

    .line 418
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v11

    add-int v12, v8, v7

    aget v9, v11, v12

    .line 419
    .local v9, "segmentPos$iv":I
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v11

    aget v3, v11, v7

    .line 421
    .local v3, "nextSegmentOffset$iv":I
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v11

    aget-object v0, v11, v7

    sub-int v11, v3, v4

    .line 309
    .local v0, "data":[B
    move v1, v9

    .line 310
    .local v1, "i":I
    add-int v2, v9, v11

    .line 311
    .local v2, "limit":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 312
    mul-int/lit8 v11, v5, 0x1f

    aget-byte v12, v0, v1

    add-int v5, v11, v12

    .line 313
    add-int/lit8 v1, v1, 0x1

    .line 311
    goto :goto_2

    .line 315
    :cond_1
    nop

    nop

    .line 422
    move v4, v3

    .line 423
    add-int/lit8 v7, v7, 0x1

    .line 417
    goto :goto_1

    .line 425
    .end local v0    # "data":[B
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v3    # "nextSegmentOffset$iv":I
    .end local v9    # "segmentPos$iv":I
    :cond_2
    nop

    .line 316
    invoke-virtual {p0, v5}, Lokio/SegmentedByteString;->setHashCode$jvm(I)V

    move v6, v5

    .line 317
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmac$jvm(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 12
    .param p1, "algorithm"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v9, "algorithm"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "key"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    nop

    .line 115
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 116
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v9, Ljava/security/Key;

    invoke-virtual {v2, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 117
    move-object v8, p0

    .line 338
    .local v8, "this_$iv":Lokio/SegmentedByteString;
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    array-length v6, v9

    .line 339
    .local v6, "segmentCount$iv":I
    const/4 v5, 0x0

    .line 340
    .local v5, "s$iv":I
    const/4 v4, 0x0

    .line 341
    .local v4, "pos$iv":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 342
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    add-int v10, v6, v5

    aget v7, v9, v10

    .line 343
    .local v7, "segmentPos$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    aget v3, v9, v5

    .line 345
    .local v3, "nextSegmentOffset$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    aget-object v0, v9, v5

    sub-int v9, v3, v4

    .line 118
    .local v0, "data":[B
    invoke-virtual {v2, v0, v7, v9}, Ljavax/crypto/Mac;->update([BII)V

    .line 119
    nop

    .line 346
    move v4, v3

    .line 347
    add-int/lit8 v5, v5, 0x1

    .line 341
    goto :goto_0

    .line 349
    .end local v0    # "data":[B
    .end local v3    # "nextSegmentOffset$iv":I
    .end local v7    # "segmentPos$iv":I
    :cond_0
    nop

    .line 120
    new-instance v9, Lokio/ByteString;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v10

    const-string v11, "mac.doFinal()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 121
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "pos$iv":I
    .end local v5    # "s$iv":I
    .end local v6    # "segmentCount$iv":I
    .end local v8    # "this_$iv":Lokio/SegmentedByteString;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    invoke-direct {v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9
.end method

.method public indexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fromIndex"    # I

    .prologue
    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public internalArray$jvm()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public internalGet$jvm(I)B
    .locals 9
    .param p1, "pos"    # I

    .prologue
    .line 159
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 160
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v6

    .line 161
    .local v6, "segment":I
    if-nez v6, :cond_0

    const/4 v7, 0x0

    .line 162
    .local v7, "segmentOffset":I
    :goto_0
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, v6

    aget v8, v1, v0

    .line 163
    .local v8, "segmentPos":I
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v0, v0, v6

    sub-int v1, p1, v7

    add-int/2addr v1, v8

    aget-byte v0, v0, v1

    return v0

    .line 161
    .end local v7    # "segmentOffset":I
    .end local v8    # "segmentPos":I
    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v1, v6, -0x1

    aget v7, v0, v1

    goto :goto_0
.end method

.method public lastIndexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fromIndex"    # I

    .prologue
    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    .line 246
    return v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 11
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    const-string v9, "other"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v9

    sub-int/2addr v9, p4

    if-le p1, v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    .line 221
    :goto_0
    return v9

    .line 217
    :cond_1
    add-int v2, p1, p4

    .line 386
    .local v2, "endIndex$iv":I
    invoke-static {p0, p1}, Lokio/SegmentedByteString;->access$segment(Lokio/SegmentedByteString;I)I

    move-result v5

    .line 387
    .local v5, "s$iv":I
    move v4, p1

    .line 388
    .local v4, "pos$iv":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 389
    if-nez v5, :cond_2

    const/4 v6, 0x0

    .line 390
    .local v6, "segmentOffset$iv":I
    :goto_2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    aget v9, v9, v5

    sub-int v8, v9, v6

    .line 391
    .local v8, "segmentSize$iv":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v10

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    add-int/2addr v9, v5

    aget v7, v10, v9

    .line 393
    .local v7, "segmentPos$iv":I
    add-int v9, v6, v8

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v0, v9, v4

    .line 394
    .local v0, "byteCount$iv":I
    sub-int v9, v4, v6

    add-int v3, v7, v9

    .line 395
    .local v3, "offset$iv":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    aget-object v1, v9, v5

    .line 218
    .local v1, "data":[B
    invoke-virtual {p2, p3, v1, v3, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .line 389
    .end local v0    # "byteCount$iv":I
    .end local v1    # "data":[B
    .end local v3    # "offset$iv":I
    .end local v6    # "segmentOffset$iv":I
    .end local v7    # "segmentPos$iv":I
    .end local v8    # "segmentSize$iv":I
    :cond_2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v6, v9, v10

    goto :goto_2

    .line 219
    .restart local v0    # "byteCount$iv":I
    .restart local v1    # "data":[B
    .restart local v3    # "offset$iv":I
    .restart local v6    # "segmentOffset$iv":I
    .restart local v7    # "segmentPos$iv":I
    .restart local v8    # "segmentSize$iv":I
    :cond_3
    add-int/2addr p3, v0

    .line 220
    nop

    .line 396
    add-int/2addr v4, v0

    .line 397
    add-int/lit8 v5, v5, 0x1

    .line 388
    goto :goto_1

    .line 399
    .end local v0    # "byteCount$iv":I
    .end local v1    # "data":[B
    .end local v3    # "offset$iv":I
    .end local v6    # "segmentOffset$iv":I
    .end local v7    # "segmentPos$iv":I
    .end local v8    # "segmentSize$iv":I
    :cond_4
    nop

    .line 221
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public rangeEquals(I[BII)Z
    .locals 11
    .param p1, "offset"    # I
    .param p2, "other"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    const-string v9, "other"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v9

    sub-int/2addr v9, p4

    if-gt p1, v9, :cond_0

    if-ltz p3, :cond_0

    .line 231
    array-length v9, p2

    sub-int/2addr v9, p4

    if-le p3, v9, :cond_1

    .line 232
    :cond_0
    const/4 v9, 0x0

    .line 240
    :goto_0
    return v9

    .line 236
    :cond_1
    add-int v2, p1, p4

    .line 400
    .local v2, "endIndex$iv":I
    invoke-static {p0, p1}, Lokio/SegmentedByteString;->access$segment(Lokio/SegmentedByteString;I)I

    move-result v5

    .line 401
    .local v5, "s$iv":I
    move v4, p1

    .line 402
    .local v4, "pos$iv":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 403
    if-nez v5, :cond_2

    const/4 v6, 0x0

    .line 404
    .local v6, "segmentOffset$iv":I
    :goto_2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    aget v9, v9, v5

    sub-int v8, v9, v6

    .line 405
    .local v8, "segmentSize$iv":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v10

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    add-int/2addr v9, v5

    aget v7, v10, v9

    .line 407
    .local v7, "segmentPos$iv":I
    add-int v9, v6, v8

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v0, v9, v4

    .line 408
    .local v0, "byteCount$iv":I
    sub-int v9, v4, v6

    add-int v3, v7, v9

    .line 409
    .local v3, "offset$iv":I
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    aget-object v1, v9, v5

    .line 237
    .local v1, "data":[B
    invoke-static {v1, v3, p2, p3, v0}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .line 403
    .end local v0    # "byteCount$iv":I
    .end local v1    # "data":[B
    .end local v3    # "offset$iv":I
    .end local v6    # "segmentOffset$iv":I
    .end local v7    # "segmentPos$iv":I
    .end local v8    # "segmentSize$iv":I
    :cond_2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v6, v9, v10

    goto :goto_2

    .line 238
    .restart local v0    # "byteCount$iv":I
    .restart local v1    # "data":[B
    .restart local v3    # "offset$iv":I
    .restart local v6    # "segmentOffset$iv":I
    .restart local v7    # "segmentPos$iv":I
    .restart local v8    # "segmentSize$iv":I
    :cond_3
    add-int/2addr p3, v0

    .line 239
    nop

    .line 410
    add-int/2addr v4, v0

    .line 411
    add-int/lit8 v5, v5, 0x1

    .line 402
    goto :goto_1

    .line 413
    .end local v0    # "byteCount$iv":I
    .end local v1    # "data":[B
    .end local v3    # "offset$iv":I
    .end local v6    # "segmentOffset$iv":I
    .end local v7    # "segmentPos$iv":I
    .end local v8    # "segmentSize$iv":I
    :cond_4
    nop

    .line 240
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 12
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 129
    if-ltz p1, :cond_0

    move v10, v9

    :goto_0
    if-nez v10, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "beginIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " < 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    move v10, v7

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v10

    if-gt p2, v10, :cond_2

    move v10, v9

    :goto_1
    if-nez v10, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "endIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > length("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_2
    move v10, v7

    goto :goto_1

    .line 132
    :cond_3
    sub-int v8, p2, p1

    .line 133
    .local v8, "subLen":I
    if-ltz v8, :cond_4

    :goto_2
    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "endIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " < beginIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_4
    move v9, v7

    goto :goto_2

    .line 135
    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v9

    if-ne p2, v9, :cond_6

    check-cast p0, Lokio/ByteString;

    .line 155
    .end local p0    # "this":Lokio/SegmentedByteString;
    :goto_3
    return-object p0

    .line 137
    .restart local p0    # "this":Lokio/SegmentedByteString;
    :cond_6
    if-ne p1, p2, :cond_7

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_3

    .line 138
    :cond_7
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    .line 141
    .local v0, "beginSegment":I
    add-int/lit8 v9, p2, -0x1

    invoke-direct {p0, v9}, Lokio/SegmentedByteString;->segment(I)I

    move-result v1

    .line 143
    .local v1, "endSegment":I
    iget-object v9, p0, Lokio/SegmentedByteString;->segments:[[B

    check-cast v9, [Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    invoke-static {v9, v0, v10}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    const-string v9, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, [[B

    .local v5, "newSegments":[[B
    move-object v9, v5

    .line 144
    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    new-array v4, v9, [I

    .line 145
    .local v4, "newDirectory":[I
    const/4 v2, 0x0

    .line 146
    .local v2, "index":I
    if-gt v0, v1, :cond_9

    move v6, v0

    .line 147
    :goto_4
    iget-object v9, p0, Lokio/SegmentedByteString;->directory:[I

    aget v9, v9, v6

    sub-int/2addr v9, p1

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v4, v2

    .line 148
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    move-object v9, v5

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    add-int v10, v2, v9

    iget-object v11, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v9, p0, Lokio/SegmentedByteString;->segments:[[B

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    add-int/2addr v9, v6

    aget v9, v11, v9

    aput v9, v4, v10

    .line 146
    if-eq v6, v1, :cond_8

    add-int/lit8 v6, v6, 0x1

    .local v6, "s":I
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_4

    .end local v2    # "index":I
    .end local v6    # "s":I
    .restart local v3    # "index":I
    :cond_8
    move v2, v3

    .line 152
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_9
    if-nez v0, :cond_a

    .local v7, "segmentOffset":I
    :goto_5
    move-object v9, v5

    .line 153
    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    aget v10, v4, v9

    sub-int v11, p1, v7

    add-int/2addr v10, v11

    aput v10, v4, v9

    .line 155
    new-instance v9, Lokio/SegmentedByteString;

    invoke-direct {v9, v5, v4}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v9, Lokio/ByteString;

    move-object p0, v9

    goto :goto_3

    .line 152
    .end local v7    # "segmentOffset":I
    :cond_a
    iget-object v9, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v10, v0, -0x1

    aget v7, v9, v10

    goto :goto_5
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v9

    new-array v3, v9, [B

    .line 177
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 178
    .local v4, "resultPos":I
    move-object v8, p0

    .line 350
    .local v8, "this_$iv":Lokio/SegmentedByteString;
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    array-length v6, v9

    .line 351
    .local v6, "segmentCount$iv":I
    const/4 v5, 0x0

    .line 352
    .local v5, "s$iv":I
    const/4 v2, 0x0

    .line 353
    .local v2, "pos$iv":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 354
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    add-int v10, v6, v5

    aget v7, v9, v10

    .line 355
    .local v7, "segmentPos$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v9

    aget v1, v9, v5

    .line 357
    .local v1, "nextSegmentOffset$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v9

    aget-object v0, v9, v5

    sub-int v9, v1, v2

    .line 179
    .local v0, "data":[B
    invoke-static {v0, v7, v3, v4, v9}, Lokio/-Platform;->arraycopy([BI[BII)V

    .line 180
    add-int/2addr v4, v9

    .line 181
    nop

    .line 358
    move v2, v1

    .line 359
    add-int/lit8 v5, v5, 0x1

    .line 353
    goto :goto_0

    .line 361
    .end local v0    # "data":[B
    .end local v1    # "nextSegmentOffset$iv":I
    .end local v7    # "segmentPos$iv":I
    :cond_0
    nop

    .line 182
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "out"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    move-object v6, p0

    .line 362
    .local v6, "this_$iv":Lokio/SegmentedByteString;
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    array-length v4, v7

    .line 363
    .local v4, "segmentCount$iv":I
    const/4 v3, 0x0

    .line 364
    .local v3, "s$iv":I
    const/4 v2, 0x0

    .line 365
    .local v2, "pos$iv":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 366
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v7

    add-int v8, v4, v3

    aget v5, v7, v8

    .line 367
    .local v5, "segmentPos$iv":I
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v7

    aget v1, v7, v3

    .line 369
    .local v1, "nextSegmentOffset$iv":I
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v7

    aget-object v0, v7, v3

    sub-int v7, v1, v2

    .line 190
    .local v0, "data":[B
    invoke-virtual {p1, v0, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    nop

    .line 370
    move v2, v1

    .line 371
    add-int/lit8 v3, v3, 0x1

    .line 365
    goto :goto_0

    .line 373
    .end local v0    # "data":[B
    .end local v1    # "nextSegmentOffset$iv":I
    .end local v5    # "segmentPos$iv":I
    :cond_0
    nop

    .line 192
    return-void
.end method

.method public write$jvm(Lokio/Buffer;)V
    .locals 14
    .param p1, "buffer"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v3, "buffer"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    move-object v10, p0

    .line 374
    .local v10, "this_$iv":Lokio/SegmentedByteString;
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v9, v3

    .line 375
    .local v9, "segmentCount$iv":I
    const/4 v8, 0x0

    .line 376
    .local v8, "s$iv":I
    const/4 v7, 0x0

    .line 377
    .local v7, "pos$iv":I
    :goto_0
    if-ge v8, v9, :cond_3

    .line 378
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v3

    add-int v4, v9, v8

    aget v2, v3, v4

    .line 379
    .local v2, "segmentPos$iv":I
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v3

    aget v6, v3, v8

    .line 381
    .local v6, "nextSegmentOffset$iv":I
    invoke-virtual {v10}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v3

    aget-object v1, v3, v8

    sub-int v3, v6, v7

    .line 196
    .local v1, "data":[B
    new-instance v0, Lokio/Segment;

    add-int/2addr v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    .line 197
    .local v0, "segment":Lokio/Segment;
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_0

    .line 198
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 199
    iget-object v3, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 200
    iget-object v3, v0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 203
    :goto_1
    nop

    nop

    .line 382
    move v7, v6

    .line 383
    add-int/lit8 v8, v8, 0x1

    .line 377
    goto :goto_0

    .line 202
    :cond_0
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_1

    .line 385
    .end local v0    # "segment":Lokio/Segment;
    .end local v1    # "data":[B
    .end local v2    # "segmentPos$iv":I
    .end local v6    # "nextSegmentOffset$iv":I
    :cond_3
    nop

    .line 205
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    int-to-long v12, v3

    add-long/2addr v4, v12

    invoke-virtual {p1, v4, v5}, Lokio/Buffer;->setSize$jvm(J)V

    .line 206
    return-void
.end method
