.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Part;,
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 #2\u00020\u0001:\u0003\"#$B%\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\r\u0010\n\u001a\u00020\u000bH\u0007\u00a2\u0006\u0002\u0008\u0015J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\u000e\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0012J\u0013\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0008\u0018J\r\u0010\u0011\u001a\u00020\u0012H\u0007\u00a2\u0006\u0002\u0008\u0019J\r\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0008\u001aJ\u001a\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0011\u0010\n\u001a\u00020\u000b8G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128G\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0013\u0010\u0004\u001a\u00020\u00058\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0014\u00a8\u0006%"
    }
    d2 = {
        "Lokhttp3/MultipartBody;",
        "Lokhttp3/RequestBody;",
        "boundaryByteString",
        "Lokio/ByteString;",
        "type",
        "Lokhttp3/MediaType;",
        "parts",
        "",
        "Lokhttp3/MultipartBody$Part;",
        "(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V",
        "boundary",
        "",
        "()Ljava/lang/String;",
        "contentLength",
        "",
        "contentType",
        "()Ljava/util/List;",
        "size",
        "",
        "()I",
        "()Lokhttp3/MediaType;",
        "-deprecated_boundary",
        "part",
        "index",
        "-deprecated_parts",
        "-deprecated_size",
        "-deprecated_type",
        "writeOrCountBytes",
        "sink",
        "Lokio/BufferedSink;",
        "countBytes",
        "",
        "writeTo",
        "",
        "Builder",
        "Companion",
        "Part",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field public static final Companion:Lokhttp3/MultipartBody$Companion;

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FORM:Lokhttp3/MediaType;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIXED:Lokhttp3/MediaType;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARALLEL:Lokhttp3/MediaType;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final boundaryByteString:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Lokhttp3/MediaType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x2d

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lokhttp3/MultipartBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/MultipartBody;->Companion:Lokhttp3/MultipartBody$Companion;

    .line 284
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    .line 292
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/alternative"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    .line 300
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/digest"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    .line 307
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/parallel"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    .line 315
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/form-data"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 317
    new-array v0, v4, [B

    const/16 v1, 0x3a

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    sput-object v0, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 318
    new-array v0, v4, [B

    const/16 v1, 0xd

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    sput-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    .line 319
    new-array v0, v4, [B

    int-to-byte v1, v5

    aput-byte v1, v0, v2

    int-to-byte v1, v5

    aput-byte v1, v0, v3

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 3
    .param p1, "boundaryByteString"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lokhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "parts"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    iput-object p2, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    iput-object p3, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 38
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->boundary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    return-void
.end method

.method private final writeOrCountBytes(Lokio/BufferedSink;Z)J
    .locals 17
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    .line 108
    const-wide/16 v4, 0x0

    .line 110
    .local v4, "byteCount":J
    const/4 v3, 0x0

    check-cast v3, Lokio/Buffer;

    .line 111
    .local v3, "byteCountBuffer":Lokio/Buffer;
    if-eqz p2, :cond_0

    .line 112
    new-instance v3, Lokio/Buffer;

    .end local v3    # "byteCountBuffer":Lokio/Buffer;
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .restart local v3    # "byteCountBuffer":Lokio/Buffer;
    move-object/from16 p1, v3

    .line 113
    check-cast p1, Lokio/BufferedSink;

    .line 116
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    :goto_0
    if-ge v11, v13, :cond_8

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lokhttp3/MultipartBody$Part;

    .line 118
    .local v12, "part":Lokhttp3/MultipartBody$Part;
    invoke-virtual {v12}, Lokhttp3/MultipartBody$Part;->headers()Lokhttp3/Headers;

    move-result-object v10

    .line 119
    .local v10, "headers":Lokhttp3/Headers;
    invoke-virtual {v12}, Lokhttp3/MultipartBody$Part;->body()Lokhttp3/RequestBody;

    move-result-object v2

    .line 121
    .local v2, "body":Lokhttp3/RequestBody;
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object v14, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 123
    sget-object v14, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 125
    if-eqz v10, :cond_2

    .line 126
    const/4 v9, 0x0

    invoke-virtual {v10}, Lokhttp3/Headers;->size()I

    move-result v14

    :goto_1
    if-ge v9, v14, :cond_2

    .line 127
    invoke-virtual {v10, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    .line 128
    sget-object v16, Lokhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v15

    .line 129
    invoke-virtual {v10, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    .line 130
    sget-object v16, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 126
    add-int/lit8 v9, v9, 0x1

    .local v9, "h":I
    goto :goto_1

    .line 134
    .end local v9    # "h":I
    :cond_2
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    .line 135
    .local v8, "contentType":Lokhttp3/MediaType;
    if-eqz v8, :cond_3

    .line 136
    const-string v14, "Content-Type: "

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    .line 137
    invoke-virtual {v8}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    .line 138
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 141
    :cond_3
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    .line 142
    .local v6, "contentLength":J
    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_5

    .line 143
    const-string v14, "Content-Length: "

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v14

    .line 144
    invoke-interface {v14, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v14

    .line 145
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v14, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 150
    :cond_4
    sget-object v14, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 154
    if-eqz p2, :cond_7

    .line 155
    add-long/2addr v4, v6

    .line 158
    :goto_2
    sget-object v14, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 116
    add-int/lit8 v11, v11, 0x1

    .local v11, "p":I
    goto/16 :goto_0

    .line 146
    .end local v11    # "p":I
    :cond_5
    if-eqz p2, :cond_4

    .line 148
    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 149
    const-wide/16 v14, -0x1

    .line 173
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lokhttp3/MediaType;
    .end local v10    # "headers":Lokhttp3/Headers;
    .end local v12    # "part":Lokhttp3/MultipartBody$Part;
    :goto_3
    return-wide v14

    .line 157
    .restart local v2    # "body":Lokhttp3/RequestBody;
    .restart local v6    # "contentLength":J
    .restart local v8    # "contentType":Lokhttp3/MediaType;
    .restart local v10    # "headers":Lokhttp3/Headers;
    .restart local v12    # "part":Lokhttp3/MultipartBody$Part;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    goto :goto_2

    .line 163
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lokhttp3/MediaType;
    .end local v10    # "headers":Lokhttp3/Headers;
    .end local v12    # "part":Lokhttp3/MultipartBody$Part;
    :cond_8
    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    sget-object v13, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 165
    sget-object v13, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 166
    sget-object v13, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 168
    if-eqz p2, :cond_b

    .line 169
    if-nez v3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v14

    add-long/2addr v4, v14

    .line 170
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    :cond_b
    move-wide v14, v4

    .line 173
    goto :goto_3
.end method


# virtual methods
.method public final -deprecated_boundary()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "boundary"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_boundary"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lokhttp3/MultipartBody;->boundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "parts"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_parts"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_size()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_size"
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lokhttp3/MultipartBody;->size()I

    move-result v0

    return v0
.end method

.method public final -deprecated_type()Lokhttp3/MediaType;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "type"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    return-object v0
.end method

.method public final boundary()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "boundary"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 84
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 85
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v0

    .line 86
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 88
    :cond_0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public final part(I)Lokhttp3/MultipartBody$Part;
    .locals 1
    .param p1, "index"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public final parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "parts"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public final size()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final type()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    .line 94
    return-void
.end method
