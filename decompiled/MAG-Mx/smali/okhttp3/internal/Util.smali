.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,569:1\n389#1,6:582\n37#2,2:570\n1391#3,6:572\n1313#4:578\n1382#4,3:579\n*E\n*S KotlinDebug\n*F\n+ 1 Util.kt\nokhttp3/internal/Util\n*L\n399#1,6:582\n126#1,2:570\n166#1,6:572\n291#1:578\n291#1,3:579\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000c\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u001a\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0013\u001a\'\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0012\u0010\u001c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001e0\u001d\"\u00020\u001e\u00a2\u0006\u0002\u0010\u001f\u001a\u0017\u0010 \u001a\u00020\u00172\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00170\"H\u0086\u0008\u001a-\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H%0$\"\u0004\u0008\u0000\u0010%2\u0012\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H%0\u001d\"\u0002H%H\u0007\u00a2\u0006\u0002\u0010\'\u001a1\u0010(\u001a\u0004\u0018\u0001H%\"\u0004\u0008\u0000\u0010%2\u0006\u0010)\u001a\u00020\u001e2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H%0+2\u0006\u0010,\u001a\u00020\u0011\u00a2\u0006\u0002\u0010-\u001a\u0016\u0010.\u001a\u00020/2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00100\u001a\u000201\u001a\u001f\u00102\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00170\"H\u0086\u0008\u001a\u0015\u00103\u001a\u00020\u000f*\u0002042\u0006\u00105\u001a\u00020\u000fH\u0086\u0004\u001a\u0015\u00103\u001a\u00020\u0013*\u00020\u000f2\u0006\u00105\u001a\u00020\u0013H\u0086\u0004\u001a\u0015\u00103\u001a\u00020\u000f*\u0002062\u0006\u00105\u001a\u00020\u000fH\u0086\u0004\u001a\n\u00107\u001a\u000208*\u000209\u001a\n\u0010:\u001a\u000201*\u00020\u0011\u001a\u0012\u0010;\u001a\u000201*\u00020<2\u0006\u0010=\u001a\u00020<\u001a\n\u0010>\u001a\u00020\u0017*\u00020?\u001a\n\u0010>\u001a\u00020\u0017*\u00020@\u001a\n\u0010>\u001a\u00020\u0017*\u00020A\u001a#\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001d*\u0008\u0012\u0004\u0012\u00020\u00110\u001d2\u0006\u0010C\u001a\u00020\u0011\u00a2\u0006\u0002\u0010D\u001a\n\u0010E\u001a\u00020\u0011*\u00020A\u001a&\u0010F\u001a\u00020\u000f*\u00020\u00112\u0006\u0010G\u001a\u00020H2\u0008\u0008\u0002\u0010I\u001a\u00020\u000f2\u0008\u0008\u0002\u0010J\u001a\u00020\u000f\u001a&\u0010F\u001a\u00020\u000f*\u00020\u00112\u0006\u0010K\u001a\u00020\u00112\u0008\u0008\u0002\u0010I\u001a\u00020\u000f2\u0008\u0008\u0002\u0010J\u001a\u00020\u000f\u001a\u001a\u0010L\u001a\u000201*\u00020M2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u0015\u001a%\u0010P\u001a\u00020\u0017*\u00020Q2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0004\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00170\"H\u0086\u0008\u001a5\u0010R\u001a\u000201*\u0008\u0012\u0004\u0012\u00020\u00110\u001d2\u000e\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001d2\u000e\u0010S\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00110T\u00a2\u0006\u0002\u0010U\u001a\n\u0010V\u001a\u00020\u0013*\u00020W\u001a+\u0010X\u001a\u00020\u000f*\u0008\u0012\u0004\u0012\u00020\u00110\u001d2\u0006\u0010C\u001a\u00020\u00112\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00110T\u00a2\u0006\u0002\u0010Y\u001a\n\u0010Z\u001a\u00020\u000f*\u00020\u0011\u001a\u001e\u0010[\u001a\u00020\u000f*\u00020\u00112\u0008\u0008\u0002\u0010I\u001a\u00020\u000f2\u0008\u0008\u0002\u0010J\u001a\u00020\u000f\u001a\u001e\u0010\\\u001a\u00020\u000f*\u00020\u00112\u0008\u0008\u0002\u0010I\u001a\u00020\u000f2\u0008\u0008\u0002\u0010J\u001a\u00020\u000f\u001a\u0014\u0010]\u001a\u00020\u000f*\u00020\u00112\u0008\u0008\u0002\u0010I\u001a\u00020\u000f\u001a9\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001d*\u0008\u0012\u0004\u0012\u00020\u00110\u001d2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001d2\u000e\u0010S\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00110T\u00a2\u0006\u0002\u0010_\u001a\u0012\u0010`\u001a\u00020\u0017*\u00020\u001e2\u0006\u0010a\u001a\u00020\u0013\u001a\r\u0010b\u001a\u00020\u0017*\u00020\u001eH\u0086\u0008\u001a\r\u0010c\u001a\u00020\u0017*\u00020\u001eH\u0086\u0008\u001a\n\u0010d\u001a\u00020\u000f*\u00020H\u001a\u0012\u0010e\u001a\u00020f*\u00020g2\u0006\u0010h\u001a\u00020f\u001a\n\u0010i\u001a\u00020\u000f*\u00020g\u001a\u0012\u0010j\u001a\u00020\u000f*\u00020k2\u0006\u0010l\u001a\u000204\u001a\u001a\u0010j\u001a\u000201*\u00020M2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u0015\u001a\u0010\u0010m\u001a\u0008\u0012\u0004\u0012\u00020n0$*\u00020\u0003\u001a\u0010\u0010o\u001a\u00020\u0003*\u0008\u0012\u0004\u0012\u00020n0$\u001a\n\u0010p\u001a\u00020\u0011*\u00020\u000f\u001a\n\u0010p\u001a\u00020\u0011*\u00020\u0013\u001a\u0014\u0010q\u001a\u00020\u0011*\u00020<2\u0008\u0008\u0002\u0010r\u001a\u000201\u001a\u001c\u0010s\u001a\u0008\u0012\u0004\u0012\u0002H%0$\"\u0004\u0008\u0000\u0010%*\u0008\u0012\u0004\u0012\u0002H%0$\u001a.\u0010t\u001a\u000e\u0012\u0004\u0012\u0002Hv\u0012\u0004\u0012\u0002Hw0u\"\u0004\u0008\u0000\u0010v\"\u0004\u0008\u0001\u0010w*\u000e\u0012\u0004\u0012\u0002Hv\u0012\u0004\u0012\u0002Hw0u\u001a\u0012\u0010x\u001a\u00020\u0013*\u00020\u00112\u0006\u0010y\u001a\u00020\u0013\u001a\u0014\u0010z\u001a\u00020\u000f*\u0004\u0018\u00010\u00112\u0006\u0010y\u001a\u00020\u000f\u001a\u001e\u0010{\u001a\u00020\u0011*\u00020\u00112\u0008\u0008\u0002\u0010I\u001a\u00020\u000f2\u0008\u0008\u0002\u0010J\u001a\u00020\u000f\u001a%\u0010|\u001a\u00020\u0017*\u00020Q2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0004\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00170\"H\u0086\u0008\u001a\r\u0010}\u001a\u00020\u0017*\u00020\u001eH\u0086\u0008\u001a\u001c\u0010~\u001a\u00020\u0017*\u00020\u001e2\u0006\u0010N\u001a\u00020\u00132\u0008\u0008\u0002\u0010a\u001a\u00020\u000f\u001a\u0014\u0010\u007f\u001a\u00020\u0017*\u00030\u0080\u00012\u0007\u0010\u0081\u0001\u001a\u00020\u000f\"\u0010\u0010\u0000\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "EMPTY_BYTE_ARRAY",
        "",
        "EMPTY_HEADERS",
        "Lokhttp3/Headers;",
        "EMPTY_REQUEST",
        "Lokhttp3/RequestBody;",
        "EMPTY_RESPONSE",
        "Lokhttp3/ResponseBody;",
        "UNICODE_BOMS",
        "Lokio/Options;",
        "UTC",
        "Ljava/util/TimeZone;",
        "VERIFY_AS_IP_ADDRESS",
        "Lkotlin/text/Regex;",
        "checkDuration",
        "",
        "name",
        "",
        "duration",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "checkOffsetAndCount",
        "",
        "arrayLength",
        "offset",
        "count",
        "format",
        "args",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;",
        "ignoreIoExceptions",
        "block",
        "Lkotlin/Function0;",
        "immutableListOf",
        "",
        "T",
        "elements",
        "([Ljava/lang/Object;)Ljava/util/List;",
        "readFieldOrNull",
        "instance",
        "fieldType",
        "Ljava/lang/Class;",
        "fieldName",
        "(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;",
        "threadFactory",
        "Ljava/util/concurrent/ThreadFactory;",
        "daemon",
        "",
        "threadName",
        "and",
        "",
        "mask",
        "",
        "asFactory",
        "Lokhttp3/EventListener$Factory;",
        "Lokhttp3/EventListener;",
        "canParseAsIpAddress",
        "canReuseConnectionFor",
        "Lokhttp3/HttpUrl;",
        "other",
        "closeQuietly",
        "Ljava/io/Closeable;",
        "Ljava/net/ServerSocket;",
        "Ljava/net/Socket;",
        "concat",
        "value",
        "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;",
        "connectionName",
        "delimiterOffset",
        "delimiter",
        "",
        "startIndex",
        "endIndex",
        "delimiters",
        "discard",
        "Lokio/Source;",
        "timeout",
        "timeUnit",
        "execute",
        "Ljava/util/concurrent/Executor;",
        "hasIntersection",
        "comparator",
        "Ljava/util/Comparator;",
        "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z",
        "headersContentLength",
        "Lokhttp3/Response;",
        "indexOf",
        "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I",
        "indexOfControlOrNonAscii",
        "indexOfFirstNonAsciiWhitespace",
        "indexOfLastNonAsciiWhitespace",
        "indexOfNonWhitespace",
        "intersect",
        "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;",
        "lockAndWaitNanos",
        "nanos",
        "notify",
        "notifyAll",
        "parseHexDigit",
        "readBomAsCharset",
        "Ljava/nio/charset/Charset;",
        "Lokio/BufferedSource;",
        "default",
        "readMedium",
        "skipAll",
        "Lokio/Buffer;",
        "b",
        "toHeaderList",
        "Lokhttp3/internal/http2/Header;",
        "toHeaders",
        "toHexString",
        "toHostHeader",
        "includeDefaultPort",
        "toImmutableList",
        "toImmutableMap",
        "",
        "K",
        "V",
        "toLongOrDefault",
        "defaultValue",
        "toNonNegativeInt",
        "trimSubstring",
        "tryExecute",
        "wait",
        "waitMillis",
        "writeMedium",
        "Lokio/BufferedSink;",
        "medium",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "Util"
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EMPTY_HEADERS:Lokhttp3/Headers;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EMPTY_REQUEST:Lokhttp3/RequestBody;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EMPTY_RESPONSE:Lokhttp3/ResponseBody;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNICODE_BOMS:Lokio/Options;

.field public static final UTC:Ljava/util/TimeZone;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 59
    new-array v0, v3, [B

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 61
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Companion;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    .line 64
    sget-object v0, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0, v1, v2, v7, v2}, Lokhttp3/ResponseBody$Companion;->create$default(Lokhttp3/ResponseBody$Companion;[BLokhttp3/MediaType;ILjava/lang/Object;)Lokhttp3/ResponseBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 66
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v5, 0x7

    move v4, v3

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    .line 69
    sget-object v0, Lokio/Options;->Companion:Lokio/Options$Companion;

    const/4 v1, 0x5

    new-array v1, v1, [Lokio/ByteString;

    .line 70
    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v4, "efbbbf"

    invoke-virtual {v2, v4}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v3

    .line 71
    sget-object v2, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v3, "feff"

    invoke-virtual {v2, v3}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v7

    .line 72
    const/4 v2, 0x2

    sget-object v3, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v4, "fffe"

    invoke-virtual {v3, v4}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 73
    const/4 v2, 0x3

    sget-object v3, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v4, "0000ffff"

    invoke-virtual {v3, v4}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 74
    const/4 v2, 0x4

    sget-object v3, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v4, "ffff0000"

    invoke-virtual {v3, v4}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    invoke-virtual {v0, v1}, Lokio/Options$Companion;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UNICODE_BOMS:Lokio/Options;

    .line 79
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 92
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    return-void
.end method

.method public static final and(BI)I
    .locals 1
    .param p0, "$this$and"    # B
    .param p1, "mask"    # I

    .prologue
    .line 304
    and-int v0, p0, p1

    return v0
.end method

.method public static final and(SI)I
    .locals 1
    .param p0, "$this$and"    # S
    .param p1, "mask"    # I

    .prologue
    .line 305
    and-int v0, p0, p1

    return v0
.end method

.method public static final and(IJ)J
    .locals 3
    .param p0, "$this$and"    # I
    .param p1, "mask"    # J

    .prologue
    .line 306
    int-to-long v0, p0

    and-long/2addr v0, p1

    return-wide v0
.end method

.method public static final asFactory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
    .locals 1
    .param p0, "$this$asFactory"    # Lokhttp3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$asFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v0, Lokhttp3/internal/Util$asFactory$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/Util$asFactory$1;-><init>(Lokhttp3/EventListener;)V

    check-cast v0, Lokhttp3/EventListener$Factory;

    .line 302
    return-object v0
.end method

.method public static final canParseAsIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "$this$canParseAsIpAddress"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "$this$canParseAsIpAddress"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    .end local p0    # "$this$canParseAsIpAddress":Ljava/lang/String;
    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z
    .locals 2
    .param p0, "$this$canReuseConnectionFor"    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "other"    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "$this$canReuseConnectionFor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 17
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v14, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "name"

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    cmp-long v12, p1, v14

    if-ltz v12, :cond_0

    move v12, v11

    :goto_0
    if-nez v12, :cond_1

    const/4 v4, 0x0

    .local v4, "$i$a$-check-Util$checkDuration$1":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .end local v4    # "$i$a$-check-Util$checkDuration$1":I
    :cond_0
    move v12, v10

    goto :goto_0

    .line 269
    :cond_1
    if-eqz p3, :cond_2

    move v12, v11

    :goto_1
    if-nez v12, :cond_3

    const/4 v5, 0x0

    .local v5, "$i$a$-check-Util$checkDuration$2":I
    const-string v11, "unit == null"

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .end local v5    # "$i$a$-check-Util$checkDuration$2":I
    :cond_2
    move v12, v10

    goto :goto_1

    .line 270
    :cond_3
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 271
    .local v8, "millis":J
    const v12, 0x7fffffff

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-gtz v12, :cond_4

    move v12, v11

    :goto_2
    if-nez v12, :cond_5

    const/4 v6, 0x0

    .local v6, "$i$a$-require-Util$checkDuration$3":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " too large."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .end local v6    # "$i$a$-require-Util$checkDuration$3":I
    :cond_4
    move v12, v10

    goto :goto_2

    .line 272
    :cond_5
    cmp-long v12, v8, v14

    if-nez v12, :cond_6

    cmp-long v12, p1, v14

    if-gtz v12, :cond_7

    :cond_6
    move v10, v11

    :cond_7
    if-nez v10, :cond_8

    const/4 v7, 0x0

    .local v7, "$i$a$-require-Util$checkDuration$4":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " too small."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 273
    .end local v7    # "$i$a$-require-Util$checkDuration$4":I
    :cond_8
    long-to-int v10, v8

    return v10
.end method

.method public static final checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .prologue
    .line 95
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 98
    :cond_1
    return-void
.end method

.method public static final closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "$this$closeQuietly"    # Ljava/io/Closeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "$this$closeQuietly"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    nop

    .line 480
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 483
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final closeQuietly(Ljava/net/ServerSocket;)V
    .locals 2
    .param p0, "$this$closeQuietly"    # Ljava/net/ServerSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "$this$closeQuietly"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    nop

    .line 502
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 506
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 505
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final closeQuietly(Ljava/net/Socket;)V
    .locals 3
    .param p0, "$this$closeQuietly"    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "$this$closeQuietly"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    nop

    .line 490
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 496
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/AssertionError;
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/AssertionError;
    throw v0

    .line 493
    :catch_1
    move-exception v1

    .line 494
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    throw v1

    .line 495
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public static final concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "$this$concat"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$this$concat"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    .line 171
    .local v0, "result":[Ljava/lang/String;
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    aput-object p1, v0, v1

    .line 172
    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public static final connectionName(Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$connectionName"    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$this$connectionName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 365
    .local v0, "address":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    .end local v0    # "address":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address.hostName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v1

    .restart local v0    # "address":Ljava/net/SocketAddress;
    :cond_0
    invoke-virtual {v0}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final delimiterOffset(Ljava/lang/String;CII)I
    .locals 3
    .param p0, "$this$delimiterOffset"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    const-string v1, "$this$delimiterOffset"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, p2

    .line 224
    :goto_0
    if-ge v1, p3, :cond_0

    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    move p3, v1

    .line 227
    .end local p3    # "endIndex":I
    :cond_0
    return p3

    .line 224
    .restart local p3    # "endIndex":I
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    move v1, v0

    goto :goto_0
.end method

.method public static final delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 7
    .param p0, "$this$delimiterOffset"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "delimiters"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    const-string v1, "$this$delimiterOffset"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "delimiters"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, p2

    .line 213
    :goto_0
    if-ge v2, p3, :cond_0

    move-object v1, p1

    .line 214
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v2

    .line 216
    .end local p3    # "endIndex":I
    :cond_0
    return p3

    .line 213
    .restart local p3    # "endIndex":I
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .local v0, "i":I
    move v2, v0

    goto :goto_0
.end method

.method public static synthetic delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 223
    const/4 p2, 0x0

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v0

    return v0
.end method

.method public static synthetic delimiterOffset$default(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 212
    const/4 p2, 0x0

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p0, "$this$discard"    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "$this$discard"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeUnit"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    nop

    .line 358
    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    :goto_0
    return v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "_":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final execute(Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0, "$this$execute"    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$execute":I
    const-string v1, "$this$execute"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    new-instance v1, Lokhttp3/internal/Util$execute$1;

    invoke-direct {v1, p1, p2}, Lokhttp3/internal/Util$execute$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method public static final varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "format"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final hasIntersection([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z
    .locals 9
    .param p0, "$this$hasIntersection"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "other"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "comparator"    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "$this$hasIntersection"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "comparator"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    array-length v4, p0

    if-nez v4, :cond_2

    move v4, v2

    :goto_0
    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_3

    move v4, v2

    :goto_1
    if-eqz v4, :cond_4

    :cond_0
    move v2, v3

    .line 149
    :cond_1
    :goto_2
    return v2

    :cond_2
    move v4, v3

    .line 139
    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    .line 142
    :cond_4
    array-length v6, p0

    move v4, v3

    :goto_3
    if-ge v4, v6, :cond_6

    aget-object v0, p0, v4

    .line 143
    .local v0, "a":Ljava/lang/String;
    array-length v7, p1

    move v5, v3

    :goto_4
    if-ge v5, v7, :cond_5

    aget-object v1, p1, v5

    .line 144
    .local v1, "b":Ljava/lang/String;
    invoke-interface {p2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 142
    .end local v1    # "b":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0    # "a":Ljava/lang/String;
    :cond_6
    move v2, v3

    .line 149
    goto :goto_2
.end method

.method public static final headersContentLength(Lokhttp3/Response;)J
    .locals 4
    .param p0, "$this$headersContentLength"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v0, -0x1

    const-string v2, "$this$headersContentLength"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v0, v1}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static final ignoreIoExceptions(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$ignoreIoExceptions":I
    const-string v1, "block"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    nop

    .line 371
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final varargs immutableListOf([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "elements"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.unmodifiable\u2026sList(*elements.clone()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final indexOf([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I
    .locals 9
    .param p0, "$this$indexOf"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "comparator"    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v5, "$this$indexOf"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "comparator"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    move-object v2, p0

    .local v2, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 572
    .local v1, "$i$f$indexOfFirst":I
    array-length v8, v2

    move v5, v7

    :goto_0
    if-ge v5, v8, :cond_2

    .line 573
    aget-object v4, v2, v5

    .local v4, "it":Ljava/lang/String;
    const/4 v0, 0x0

    .line 166
    .local v0, "$i$a$-indexOfFirst-Util$indexOf$1":I
    invoke-interface {p2, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_1

    .end local v0    # "$i$a$-indexOfFirst-Util$indexOf$1":I
    .end local v4    # "it":Ljava/lang/String;
    :goto_2
    return v5

    .restart local v0    # "$i$a$-indexOfFirst-Util$indexOf$1":I
    .restart local v4    # "it":Ljava/lang/String;
    :cond_0
    move v6, v7

    goto :goto_1

    .line 572
    :cond_1
    add-int/lit8 v3, v5, 0x1

    .local v3, "index$iv":I
    move v5, v3

    goto :goto_0

    .line 577
    .end local v0    # "$i$a$-indexOfFirst-Util$indexOf$1":I
    .end local v3    # "index$iv":I
    .end local v4    # "it":Ljava/lang/String;
    :cond_2
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public static final indexOfControlOrNonAscii(Ljava/lang/String;)I
    .locals 5
    .param p0, "$this$indexOfControlOrNonAscii"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "$this$indexOfControlOrNonAscii"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 236
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 237
    .local v0, "c":C
    const/16 v4, 0x1f

    if-le v0, v4, :cond_0

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_1

    .line 241
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v2

    .line 235
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    move v2, v1

    goto :goto_0

    .line 241
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static final indexOfFirstNonAsciiWhitespace(Ljava/lang/String;II)I
    .locals 3
    .param p0, "$this$indexOfFirstNonAsciiWhitespace"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const-string v1, "$this$indexOfFirstNonAsciiWhitespace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, p1

    .line 179
    :goto_0
    if-ge v1, p2, :cond_0

    .line 180
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move p2, v1

    .line 185
    .end local p2    # "endIndex":I
    :cond_0
    return p2

    .line 183
    .restart local p2    # "endIndex":I
    :sswitch_0
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    move v1, v0

    goto :goto_0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic indexOfFirstNonAsciiWhitespace$default(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 178
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->indexOfFirstNonAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final indexOfLastNonAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p0, "$this$indexOfLastNonAsciiWhitespace"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const-string v1, "$this$indexOfLastNonAsciiWhitespace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    add-int/lit8 v0, p2, -0x1

    if-lt v0, p1, :cond_0

    .line 193
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 195
    add-int/lit8 p1, v0, 0x1

    .line 198
    .end local p1    # "startIndex":I
    :cond_0
    return p1

    .line 196
    .restart local p1    # "startIndex":I
    :sswitch_0
    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic indexOfLastNonAsciiWhitespace$default(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 191
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->indexOfLastNonAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final indexOfNonWhitespace(Ljava/lang/String;I)I
    .locals 5
    .param p0, "$this$indexOfNonWhitespace"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "startIndex"    # I

    .prologue
    const-string v2, "$this$indexOfNonWhitespace"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, p1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 419
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 420
    .local v0, "c":C
    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const/16 v4, 0x9

    if-eq v0, v4, :cond_0

    .line 424
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 418
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    move v2, v1

    goto :goto_0

    .line 424
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method public static synthetic indexOfNonWhitespace$default(Ljava/lang/String;IILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 417
    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final intersect([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;
    .locals 12
    .param p0, "$this$intersect"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "other"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "comparator"    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v6, "$this$intersect"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "other"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "comparator"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 118
    .local v4, "result":Ljava/util/List;
    array-length v9, p0

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_2

    aget-object v2, p0, v6

    .line 119
    .local v2, "a":Ljava/lang/String;
    array-length v10, p1

    move v8, v7

    :goto_1
    if-ge v8, v10, :cond_0

    aget-object v3, p1, v8

    .line 120
    .local v3, "b":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-nez v11, :cond_1

    .line 121
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v3    # "b":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    .restart local v3    # "b":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v2    # "a":Ljava/lang/String;
    .end local v3    # "b":Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .line 126
    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v0, 0x0

    .line 570
    .local v0, "$i$f$toTypedArray":I
    move-object v5, v1

    .line 571
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v6, v7, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static final lockAndWaitNanos(Ljava/lang/Object;J)V
    .locals 9
    .param p0, "$this$lockAndWaitNanos"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0xf4240

    const-string v1, "$this$lockAndWaitNanos"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    div-long v2, p1, v6

    .line 520
    .local v2, "ms":J
    mul-long/2addr v6, v2

    sub-long v4, p1, v6

    .line 521
    .local v4, "ns":J
    monitor-enter p0

    nop

    const/4 v0, 0x0

    .line 522
    .local v0, "$i$a$-synchronized-Util$lockAndWaitNanos$1":I
    long-to-int v1, v4

    :try_start_0
    invoke-static {p0, v2, v3, v1}, Lokhttp3/internal/Util;->waitMillis(Ljava/lang/Object;JI)V

    .line 523
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    .line 524
    return-void

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static final notify(Ljava/lang/Object;)V
    .locals 2
    .param p0, "$this$notify"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$notify":I
    const-string v1, "$this$notify"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method public static final notifyAll(Ljava/lang/Object;)V
    .locals 2
    .param p0, "$this$notifyAll"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$notifyAll":I
    const-string v1, "$this$notifyAll"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public static final parseHexDigit(C)I
    .locals 2
    .param p0, "$this$parseHexDigit"    # C

    .prologue
    .line 276
    .line 277
    const/16 v0, 0x39

    const/16 v1, 0x30

    if-le v1, p0, :cond_3

    .line 278
    :cond_0
    const/16 v0, 0x66

    const/16 v1, 0x61

    if-le v1, p0, :cond_4

    .line 279
    :cond_1
    const/16 v0, 0x46

    const/16 v1, 0x41

    if-le v1, p0, :cond_5

    .line 280
    :cond_2
    const/4 v0, -0x1

    .line 276
    :goto_0
    return v0

    .line 277
    :cond_3
    if-lt v0, p0, :cond_0

    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    .line 278
    :cond_4
    if-lt v0, p0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 279
    :cond_5
    if-lt v0, p0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static final readBomAsCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "$this$readBomAsCharset"    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "default"    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$readBomAsCharset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lokhttp3/internal/Util;->UNICODE_BOMS:Lokio/Options;

    invoke-interface {p0, v0}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 257
    :pswitch_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .end local p1    # "default":Ljava/nio/charset/Charset;
    const-string v0, "UTF_8"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :goto_0
    :pswitch_1
    return-object p1

    .line 258
    .restart local p1    # "default":Ljava/nio/charset/Charset;
    :pswitch_2
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .end local p1    # "default":Ljava/nio/charset/Charset;
    const-string v0, "UTF_16BE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .restart local p1    # "default":Ljava/nio/charset/Charset;
    :pswitch_3
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .end local p1    # "default":Ljava/nio/charset/Charset;
    const-string v0, "UTF_16LE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .restart local p1    # "default":Ljava/nio/charset/Charset;
    :pswitch_4
    sget-object v0, Lkotlin/text/Charsets;->INSTANCE:Lkotlin/text/Charsets;

    invoke-virtual {v0}, Lkotlin/text/Charsets;->UTF32_BE()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    .line 261
    :pswitch_5
    sget-object v0, Lkotlin/text/Charsets;->INSTANCE:Lkotlin/text/Charsets;

    invoke-virtual {v0}, Lkotlin/text/Charsets;->UTF32_LE()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "instance"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "fieldType"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fieldName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "instance"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fieldType"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fieldName"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 548
    .local v0, "c":Ljava/lang/Class;
    :goto_0
    const-class v5, Ljava/lang/Object;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 549
    nop

    .line 550
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 551
    .local v2, "field":Ljava/lang/reflect/Field;
    const-string v5, "field"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 552
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 553
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 567
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v4

    .line 553
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 554
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 555
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "c":Ljava/lang/Class;
    const-string v5, "c.superclass"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .restart local v0    # "c":Ljava/lang/Class;
    goto :goto_0

    .line 562
    :cond_2
    const-string v5, "delegate"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 563
    const-class v5, Ljava/lang/Object;

    const-string v6, "delegate"

    invoke-static {p0, v5, v6}, Lokhttp3/internal/Util;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 564
    .local v1, "delegate":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-static {v1, p1, p2}, Lokhttp3/internal/Util;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method public static final readMedium(Lokio/BufferedSource;)I
    .locals 3
    .param p0, "$this$readMedium"    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xff

    const-string v0, "$this$readMedium"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    invoke-static {v0, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 318
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 319
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final skipAll(Lokio/Buffer;B)I
    .locals 4
    .param p0, "$this$skipAll"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "b"    # B

    .prologue
    const-string v1, "$this$skipAll"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    if-ne v1, p1, :cond_0

    .line 407
    add-int/lit8 v0, v0, 0x1

    .line 408
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_0

    .line 410
    :cond_0
    return v0
.end method

.method public static final skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p0, "$this$skipAll"    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-string v8, "$this$skipAll"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "timeUnit"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 329
    .local v2, "now":J
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 330
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 334
    .local v4, "originalDuration":J
    :goto_0
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    int-to-long v10, p1

    invoke-virtual {p2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 335
    nop

    .line 336
    :try_start_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 337
    .local v1, "skipBuffer":Lokio/Buffer;
    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v1, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 338
    invoke-virtual {v1}, Lokio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 341
    .end local v1    # "skipBuffer":Lokio/Buffer;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "_":Ljava/io/InterruptedIOException;
    const/4 v8, 0x0

    .line 344
    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 345
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_2
    move v6, v8

    .line 335
    .end local v0    # "_":Ljava/io/InterruptedIOException;
    :goto_3
    return v6

    .end local v4    # "originalDuration":J
    :cond_0
    move-wide v4, v6

    .line 332
    goto :goto_0

    .line 340
    .restart local v1    # "skipBuffer":Lokio/Buffer;
    .restart local v4    # "originalDuration":J
    :cond_1
    const/4 v8, 0x1

    .line 344
    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 345
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_4
    move v6, v8

    .line 348
    goto :goto_3

    .line 347
    :cond_2
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_4

    .end local v1    # "skipBuffer":Lokio/Buffer;
    .restart local v0    # "_":Ljava/io/InterruptedIOException;
    :cond_3
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    .line 348
    .end local v0    # "_":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v8

    .line 344
    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 345
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 348
    :goto_5
    throw v8

    .line 347
    :cond_4
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_5
.end method

.method public static final threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "daemon"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lokhttp3/internal/Util$threadFactory$1;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$threadFactory$1;-><init>(Ljava/lang/String;Z)V

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    .line 107
    return-object v0
.end method

.method public static final threadName(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, "$i$f$threadName":I
    const-string v3, "name"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 378
    .local v1, "currentThread":Ljava/lang/Thread;
    const-string v3, "currentThread"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 380
    nop

    .line 381
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 384
    return-void

    :catchall_0
    move-exception v3

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final toHeaderList(Lokhttp3/Headers;)Ljava/util/List;
    .locals 10
    .param p0, "$this$toHeaderList"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v6, "$this$toHeaderList"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    const/4 v6, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v7

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 578
    .local v1, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 579
    .local v2, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .line 580
    .local v5, "item$iv$iv":I
    const/4 v0, 0x0

    .line 292
    .local v0, "$i$a$-map-Util$toHeaderList$1":I
    new-instance v6, Lokhttp3/internal/http2/Header;

    invoke-virtual {p0, v5}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    .end local v0    # "$i$a$-map-Util$toHeaderList$1":I
    .end local v5    # "item$iv$iv":I
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 293
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    return-object v4
.end method

.method public static final toHeaders(Ljava/util/List;)Lokhttp3/Headers;
    .locals 6
    .param p0, "$this$toHeaders"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "$this$toHeaders"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 285
    .local v0, "builder":Lokhttp3/Headers$Builder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/http2/Header;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Header;->component1()Lokio/ByteString;

    move-result-object v1

    .local v1, "name":Lokio/ByteString;
    invoke-virtual {v3}, Lokhttp3/internal/http2/Header;->component2()Lokio/ByteString;

    move-result-object v2

    .line 286
    .local v2, "value":Lokio/ByteString;
    invoke-virtual {v1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 288
    .end local v1    # "name":Lokio/ByteString;
    .end local v2    # "value":Lokio/ByteString;
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    return-object v3
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "$this$toHexString"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 511
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Integer.toHexString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toHexString(J)Ljava/lang/String;
    .locals 2
    .param p0, "$this$toHexString"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 509
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Long.toHexString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 6
    .param p0, "$this$toHostHeader"    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "includeDefaultPort"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$this$toHostHeader"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ":"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "host":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Companion;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic toHostHeader$default(Lokhttp3/HttpUrl;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 152
    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lokhttp3/internal/Util;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toImmutableList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "$this$toImmutableList"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$toImmutableList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "$this$toImmutableList":Ljava/util/List;
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.unmodifiableList(toMutableList())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toImmutableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "$this$toImmutableMap"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$toImmutableMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    .line 473
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final toLongOrDefault(Ljava/lang/String;J)J
    .locals 3
    .param p0, "$this$toLongOrDefault"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # J

    .prologue
    const-string v1, "$this$toLongOrDefault"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    nop

    .line 434
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 433
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 435
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 436
    .local v0, "_":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final toNonNegativeInt(Ljava/lang/String;I)I
    .locals 6
    .param p0, "$this$toNonNegativeInt"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "defaultValue"    # I

    .prologue
    const v1, 0x7fffffff

    .line 445
    nop

    .line 446
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 447
    .local v2, "value":J
    nop

    .line 448
    int-to-long v4, v1

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    :goto_0
    move p1, v1

    .line 453
    .end local v2    # "value":J
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_1
    return p1

    .line 449
    .restart local v2    # "value":J
    .restart local p1    # "defaultValue":I
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 450
    :cond_2
    long-to-int v1, v2

    goto :goto_0

    .line 452
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    .line 453
    .local v0, "_":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public static final trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "$this$trimSubstring"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "$this$trimSubstring"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->indexOfFirstNonAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 204
    .local v1, "start":I
    invoke-static {p0, v1, p2}, Lokhttp3/internal/Util;->indexOfLastNonAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 205
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic trimSubstring$default(Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 202
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final tryExecute(Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p0, "$this$tryExecute"    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "$i$f$tryExecute":I
    const-string v3, "$this$tryExecute"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    nop

    .line 399
    move-object v2, p0

    .local v2, "$this$execute$iv":Ljava/util/concurrent/Executor;
    const/4 v0, 0x0

    .line 582
    .local v0, "$i$f$execute":I
    :try_start_0
    new-instance v3, Lokhttp3/internal/Util$execute$1;

    invoke-direct {v3, p1, p2}, Lokhttp3/internal/Util$execute$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static final wait(Ljava/lang/Object;)V
    .locals 2
    .param p0, "$this$wait"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$wait":I
    const-string v1, "$this$wait"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    return-void
.end method

.method public static final waitMillis(Ljava/lang/Object;JI)V
    .locals 3
    .param p0, "$this$waitMillis"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "timeout"    # J
    .param p3, "nanos"    # I

    .prologue
    const-string v0, "$this$waitMillis"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    if-lez p3, :cond_1

    .line 536
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/Object;->wait(JI)V

    .line 538
    :cond_1
    return-void
.end method

.method public static synthetic waitMillis$default(Ljava/lang/Object;JIILjava/lang/Object;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 534
    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lokhttp3/internal/Util;->waitMillis(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static final writeMedium(Lokio/BufferedSink;I)V
    .locals 1
    .param p0, "$this$writeMedium"    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "medium"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "$this$writeMedium"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 311
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 312
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 313
    return-void
.end method
