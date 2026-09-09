.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "Http2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2.kt\nokhttp3/internal/http2/Http2\n*L\n1#1,147:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bJ.\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0014\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2;",
        "",
        "()V",
        "BINARY",
        "",
        "",
        "[Ljava/lang/String;",
        "CONNECTION_PREFACE",
        "Lokio/ByteString;",
        "FLAGS",
        "FLAG_ACK",
        "",
        "FLAG_COMPRESSED",
        "FLAG_END_HEADERS",
        "FLAG_END_PUSH_PROMISE",
        "FLAG_END_STREAM",
        "FLAG_NONE",
        "FLAG_PADDED",
        "FLAG_PRIORITY",
        "FRAME_NAMES",
        "INITIAL_MAX_FRAME_SIZE",
        "TYPE_CONTINUATION",
        "TYPE_DATA",
        "TYPE_GOAWAY",
        "TYPE_HEADERS",
        "TYPE_PING",
        "TYPE_PRIORITY",
        "TYPE_PUSH_PROMISE",
        "TYPE_RST_STREAM",
        "TYPE_SETTINGS",
        "TYPE_WINDOW_UPDATE",
        "formatFlags",
        "type",
        "flags",
        "frameLog",
        "inbound",
        "",
        "streamId",
        "length",
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
.field private static final BINARY:[Ljava/lang/String;

.field public static final CONNECTION_PREFACE:Lokio/ByteString;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FLAGS:[Ljava/lang/String;

.field public static final FLAG_ACK:I = 0x1

.field public static final FLAG_COMPRESSED:I = 0x20

.field public static final FLAG_END_HEADERS:I = 0x4

.field public static final FLAG_END_PUSH_PROMISE:I = 0x4

.field public static final FLAG_END_STREAM:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_PADDED:I = 0x8

.field public static final FLAG_PRIORITY:I = 0x20

.field private static final FRAME_NAMES:[Ljava/lang/String;

.field public static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field public static final INSTANCE:Lokhttp3/internal/http2/Http2;

.field public static final TYPE_CONTINUATION:I = 0x9

.field public static final TYPE_DATA:I = 0x0

.field public static final TYPE_GOAWAY:I = 0x7

.field public static final TYPE_HEADERS:I = 0x1

.field public static final TYPE_PING:I = 0x6

.field public static final TYPE_PRIORITY:I = 0x2

.field public static final TYPE_PUSH_PROMISE:I = 0x5

.field public static final TYPE_RST_STREAM:I = 0x3

.field public static final TYPE_SETTINGS:I = 0x4

.field public static final TYPE_WINDOW_UPDATE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 21
    new-instance v0, Lokhttp3/internal/http2/Http2;

    invoke-direct {v0}, Lokhttp3/internal/http2/Http2;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Http2;->INSTANCE:Lokhttp3/internal/http2/Http2;

    .line 23
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    const-string v2, "DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HEADERS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RST_STREAM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PUSH_PROMISE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GOAWAY"

    aput-object v2, v0, v1

    .line 51
    const/16 v1, 0x8

    const-string v2, "WINDOW_UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CONTINUATION"

    aput-object v2, v0, v1

    .line 49
    sput-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 59
    const/16 v13, 0x100

    new-array v14, v13, [Ljava/lang/String;

    const/4 v0, 0x0

    move v12, v0

    .local v6, "$i$a$-<init>-Http2$BINARY$1":I
    :goto_0
    if-ge v12, v13, :cond_0

    const/4 v6, 0x0

    .line 60
    const-string v0, "%8s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Integer.toBinaryString(it)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v12

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_0

    :cond_0
    sput-object v14, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 64
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 65
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "END_STREAM"

    aput-object v2, v0, v1

    .line 67
    const/4 v0, 0x1

    new-array v11, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v11, v0

    .line 69
    .local v11, "prefixFlags":[I
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "PADDED"

    aput-object v2, v0, v1

    .line 70
    array-length v1, v11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget v10, v11, v0

    .line 71
    .local v10, "prefixFlag":I
    sget-object v2, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v3, v10, 0x8

    sget-object v4, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v4, v4, v10

    const-string v5, "|PADDED"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v10    # "prefixFlag":I
    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "END_HEADERS"

    aput-object v2, v0, v1

    .line 75
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "PRIORITY"

    aput-object v2, v0, v1

    .line 76
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v1, 0x24

    const-string v2, "END_HEADERS|PRIORITY"

    aput-object v2, v0, v1

    .line 77
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 79
    .local v8, "frameFlags":[I
    array-length v2, v8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_3

    aget v7, v8, v1

    .line 80
    .local v7, "frameFlag":I
    array-length v3, v11

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_2

    aget v10, v11, v0

    .line 81
    .restart local v10    # "prefixFlag":I
    sget-object v4, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v5, v10, v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    .line 82
    sget-object v4, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v5, v10, v7

    or-int/lit8 v5, v5, 0x8

    .line 83
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|PADDED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 79
    .end local v10    # "prefixFlag":I
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 87
    .end local v7    # "frameFlag":I
    :cond_3
    const/4 v9, 0x0

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v0, v0

    :goto_4
    if-ge v9, v0, :cond_5

    .line 88
    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v1, v1, v9

    if-nez v1, :cond_4

    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v2, v2, v9

    aput-object v2, v1, v9

    .line 87
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .local v9, "i":I
    goto :goto_4

    .line 90
    .end local v9    # "i":I
    :cond_5
    return-void

    .line 77
    nop

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatFlags(II)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 128
    if-nez p2, :cond_0

    const-string v1, ""

    .line 136
    :goto_0
    return-object v1

    .line 129
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 133
    :pswitch_0
    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge p2, v1, :cond_4

    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v0, v1, p2

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 136
    .local v0, "result":Ljava/lang/String;
    :cond_1
    :goto_1
    nop

    .line 137
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_5

    .line 138
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v1, v0

    .line 136
    goto :goto_0

    .line 131
    :pswitch_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const-string v1, "ACK"

    goto :goto_0

    :cond_3
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p2

    goto :goto_0

    .line 132
    :pswitch_2
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p2

    goto :goto_0

    .line 133
    :cond_4
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v1, p2

    goto :goto_1

    .line 140
    .restart local v0    # "result":Ljava/lang/String;
    :cond_5
    if-nez p1, :cond_2

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final frameLog(ZIIII)Ljava/lang/String;
    .locals 8
    .param p1, "inbound"    # Z
    .param p2, "streamId"    # I
    .param p3, "length"    # I
    .param p4, "type"    # I
    .param p5, "flags"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    sget-object v3, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge p4, v3, :cond_0

    sget-object v3, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    aget-object v2, v3, p4

    .line 116
    .local v2, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p4, p5}, Lokhttp3/internal/http2/Http2;->formatFlags(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "formattedFlags":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v0, "<<"

    .line 118
    .local v0, "direction":Ljava/lang/String;
    :goto_1
    const-string v3, "%s 0x%08x %5d %-13s %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 119
    aput-object v0, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    .line 118
    invoke-static {v3, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 115
    .end local v0    # "direction":Ljava/lang/String;
    .end local v1    # "formattedFlags":Ljava/lang/String;
    .end local v2    # "formattedType":Ljava/lang/String;
    :cond_0
    const-string v3, "0x%02x"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    .restart local v1    # "formattedFlags":Ljava/lang/String;
    .restart local v2    # "formattedType":Ljava/lang/String;
    :cond_1
    const-string v0, ">>"

    goto :goto_1
.end method
