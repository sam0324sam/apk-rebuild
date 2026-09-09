.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;,
        Lokio/Buffer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,2216:1\n1395#1,20:2220\n1395#1,20:2276\n1395#1:2296\n1397#1,8:2298\n1407#1,8:2307\n1395#1,20:2316\n75#2:2217\n72#2:2218\n72#2:2219\n63#2:2240\n63#2:2241\n63#2:2242\n63#2:2243\n63#2:2244\n63#2:2245\n63#2:2246\n63#2:2247\n63#2:2248\n63#2:2249\n63#2:2250\n63#2:2251\n69#2:2252\n69#2:2253\n66#2:2254\n66#2:2255\n66#2:2256\n66#2:2257\n66#2:2258\n66#2:2259\n66#2:2260\n66#2:2261\n63#2:2262\n63#2:2263\n75#2:2264\n63#2:2265\n63#2:2266\n63#2:2267\n63#2:2268\n63#2:2269\n63#2:2270\n63#2:2271\n63#2:2272\n63#2:2273\n63#2:2274\n72#2:2275\n75#2:2297\n75#2:2306\n75#2:2315\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n287#1,20:2220\n1432#1,20:2276\n1467#1:2296\n1467#1,8:2298\n1467#1,8:2307\n1503#1,20:2316\n135#1:2217\n194#1:2218\n232#1:2219\n302#1:2240\n302#1:2241\n307#1:2242\n307#1:2243\n330#1:2244\n331#1:2245\n332#1:2246\n333#1:2247\n337#1:2248\n338#1:2249\n339#1:2250\n340#1:2251\n363#1:2252\n364#1:2253\n368#1:2254\n369#1:2255\n370#1:2256\n371#1:2257\n372#1:2258\n373#1:2259\n374#1:2260\n375#1:2261\n577#1:2262\n601#1:2263\n710#1:2264\n743#1:2265\n745#1:2266\n749#1:2267\n751#1:2268\n755#1:2269\n757#1:2270\n761#1:2271\n763#1:2272\n784#1:2273\n787#1:2274\n883#1:2275\n1467#1:2297\n1467#1:2306\n1467#1:2315\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0018\u0000 \u009c\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004\u009c\u0001\u009d\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0000H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0000H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\u000cJ$\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000cH\u0007J\"\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000cJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020\u0000H\u0016J\u0008\u0010 \u001a\u00020\u0000H\u0016J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0096\u0002J\u0008\u0010%\u001a\u00020\"H\u0016J\u0008\u0010&\u001a\u00020\u0012H\u0016J\u0016\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008*J\u0015\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008,J\u0008\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u001cH\u0002J\u000e\u00101\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u001cJ\u000e\u00102\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u001cJ\u000e\u00103\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u001cJ\u0010\u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u00020(H\u0016J\u0018\u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u00020(2\u0006\u00106\u001a\u00020\u000cH\u0016J \u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u00020(2\u0006\u00106\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0010\u00104\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u001cH\u0016J\u0018\u00104\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u001c2\u0006\u00106\u001a\u00020\u000cH\u0016J\u0010\u00109\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020\u001cH\u0016J\u0018\u00109\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020\u001c2\u0006\u00106\u001a\u00020\u000cH\u0016J\u0008\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020\"H\u0016J\u0006\u0010>\u001a\u00020\u001cJ\u0008\u0010?\u001a\u00020\u0018H\u0016J\u0008\u0010@\u001a\u00020\u0001H\u0016J\u0018\u0010A\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u001cH\u0016J(\u0010A\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u001c2\u0006\u0010B\u001a\u00020.2\u0006\u0010\u001a\u001a\u00020.H\u0016J0\u0010A\u001a\u00020\"2\u0006\u0010C\u001a\u00020\n2\u0006\u0010D\u001a\u00020.2\u0006\u00108\u001a\u00020E2\u0006\u0010B\u001a\u00020.2\u0006\u0010F\u001a\u00020.H\u0002J\u0010\u0010G\u001a\u00020.2\u0006\u0010H\u001a\u00020IH\u0016J\u0010\u0010G\u001a\u00020.2\u0006\u0010H\u001a\u00020EH\u0016J \u0010G\u001a\u00020.2\u0006\u0010H\u001a\u00020E2\u0006\u0010\u0019\u001a\u00020.2\u0006\u0010\u001a\u001a\u00020.H\u0016J\u0018\u0010G\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0010\u0010J\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020KH\u0016J\u0012\u0010L\u001a\u00020M2\u0008\u0008\u0002\u0010N\u001a\u00020MH\u0007J\u0008\u0010O\u001a\u00020(H\u0016J\u0008\u0010P\u001a\u00020EH\u0016J\u0010\u0010P\u001a\u00020E2\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010Q\u001a\u00020\u001cH\u0016J\u0010\u0010Q\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010R\u001a\u00020\u000cH\u0016J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010T\u001a\u00020<J\u0016\u0010S\u001a\u00020\u00002\u0006\u0010T\u001a\u00020<2\u0006\u0010\u001a\u001a\u00020\u000cJ \u0010S\u001a\u00020\u00122\u0006\u0010T\u001a\u00020<2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010U\u001a\u00020\"H\u0002J\u0010\u0010V\u001a\u00020\u00122\u0006\u0010H\u001a\u00020EH\u0016J\u0018\u0010V\u001a\u00020\u00122\u0006\u0010H\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010W\u001a\u00020\u000cH\u0016J\u0008\u0010X\u001a\u00020.H\u0016J\u0008\u0010Y\u001a\u00020.H\u0016J\u0008\u0010Z\u001a\u00020\u000cH\u0016J\u0008\u0010[\u001a\u00020\u000cH\u0016J\u0008\u0010\\\u001a\u00020]H\u0016J\u0008\u0010^\u001a\u00020]H\u0016J\u0010\u0010_\u001a\u00020\u001e2\u0006\u0010`\u001a\u00020aH\u0016J\u0018\u0010_\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010`\u001a\u00020aH\u0016J\u0012\u0010b\u001a\u00020M2\u0008\u0008\u0002\u0010N\u001a\u00020MH\u0007J\u0008\u0010c\u001a\u00020\u001eH\u0016J\u0010\u0010c\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010d\u001a\u00020.H\u0016J\n\u0010e\u001a\u0004\u0018\u00010\u001eH\u0016J\u0015\u0010e\u001a\u00020\u001e2\u0006\u0010f\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008gJ\u0008\u0010h\u001a\u00020\u001eH\u0016J\u0010\u0010h\u001a\u00020\u001e2\u0006\u0010i\u001a\u00020\u000cH\u0016J\u0010\u0010j\u001a\u00020\"2\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0010\u0010k\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J8\u0010l\u001a\u0002Hm\"\u0004\u0008\u0000\u0010m2\u0006\u00106\u001a\u00020\u000c2\u001a\u0010n\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002Hm0oH\u0082\u0008\u00a2\u0006\u0002\u0010pJ\u0010\u0010q\u001a\u00020.2\u0006\u0010r\u001a\u00020sH\u0016J\u001f\u0010t\u001a\u00020.2\u0006\u0010r\u001a\u00020s2\u0008\u0008\u0002\u0010u\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008vJ\u0006\u0010w\u001a\u00020\u001cJ\u0006\u0010x\u001a\u00020\u001cJ\u0006\u0010y\u001a\u00020\u001cJ\r\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008zJ\u0010\u0010{\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0006\u0010|\u001a\u00020\u001cJ\u000e\u0010|\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020.J\u0008\u0010}\u001a\u00020~H\u0016J\u0008\u0010\u007f\u001a\u00020\u001eH\u0016J\u0018\u0010\u0080\u0001\u001a\u00020\n2\u0007\u0010\u0081\u0001\u001a\u00020.H\u0000\u00a2\u0006\u0003\u0008\u0082\u0001J\u0012\u0010\u0083\u0001\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020IH\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020EH\u0016J\"\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020E2\u0006\u0010\u0019\u001a\u00020.2\u0006\u0010\u001a\u001a\u00020.H\u0016J\u001a\u0010\u0083\u0001\u001a\u00020\u00122\u0007\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\u001cH\u0016J\u001b\u0010\u0083\u0001\u001a\u00020\u00022\u0008\u0010\u0084\u0001\u001a\u00030\u0086\u00012\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0013\u0010\u0087\u0001\u001a\u00020\u000c2\u0008\u0010\u0084\u0001\u001a\u00030\u0086\u0001H\u0016J\u0011\u0010\u0088\u0001\u001a\u00020\u00002\u0006\u00105\u001a\u00020.H\u0016J\u0012\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u000cH\u0016J\u0012\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u000cH\u0016J\u0012\u0010\u008c\u0001\u001a\u00020\u00002\u0007\u0010\u008d\u0001\u001a\u00020.H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008d\u0001\u001a\u00020.H\u0016J\u0012\u0010\u008f\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u000cH\u0016J\u0012\u0010\u0090\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u000cH\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0092\u0001\u001a\u00020.H\u0016J\u0012\u0010\u0093\u0001\u001a\u00020\u00002\u0007\u0010\u0092\u0001\u001a\u00020.H\u0016J\u001a\u0010\u0094\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u001e2\u0006\u0010`\u001a\u00020aH\u0016J,\u0010\u0094\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u001e2\u0007\u0010\u0096\u0001\u001a\u00020.2\u0007\u0010\u0097\u0001\u001a\u00020.2\u0006\u0010`\u001a\u00020aH\u0016J\u001b\u0010\u0098\u0001\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000cH\u0007J\u0012\u0010\u0099\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u001eH\u0016J$\u0010\u0099\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u001e2\u0007\u0010\u0096\u0001\u001a\u00020.2\u0007\u0010\u0097\u0001\u001a\u00020.H\u0016J\u0012\u0010\u009a\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020.H\u0016R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8\u0007@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u009e\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "()V",
        "buffer",
        "getBuffer",
        "()Lokio/Buffer;",
        "head",
        "Lokio/Segment;",
        "<set-?>",
        "",
        "size",
        "()J",
        "setSize$jvm",
        "(J)V",
        "clear",
        "",
        "clone",
        "close",
        "completeSegmentByteCount",
        "copyTo",
        "out",
        "Ljava/io/OutputStream;",
        "offset",
        "byteCount",
        "digest",
        "Lokio/ByteString;",
        "algorithm",
        "",
        "emit",
        "emitCompleteSegments",
        "equals",
        "",
        "other",
        "",
        "exhausted",
        "flush",
        "get",
        "",
        "pos",
        "getByte",
        "index",
        "-deprecated_getByte",
        "hashCode",
        "",
        "hmac",
        "key",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "b",
        "fromIndex",
        "toIndex",
        "bytes",
        "indexOfElement",
        "targetBytes",
        "inputStream",
        "Ljava/io/InputStream;",
        "isOpen",
        "md5",
        "outputStream",
        "peek",
        "rangeEquals",
        "bytesOffset",
        "segment",
        "segmentPos",
        "",
        "bytesLimit",
        "read",
        "sink",
        "Ljava/nio/ByteBuffer;",
        "readAll",
        "Lokio/Sink;",
        "readAndWriteUnsafe",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "readByte",
        "readByteArray",
        "readByteString",
        "readDecimalLong",
        "readFrom",
        "input",
        "forever",
        "readFully",
        "readHexadecimalUnsignedLong",
        "readInt",
        "readIntLe",
        "readLong",
        "readLongLe",
        "readShort",
        "",
        "readShortLe",
        "readString",
        "charset",
        "Ljava/nio/charset/Charset;",
        "readUnsafe",
        "readUtf8",
        "readUtf8CodePoint",
        "readUtf8Line",
        "newline",
        "readUtf8Line$jvm",
        "readUtf8LineStrict",
        "limit",
        "request",
        "require",
        "seek",
        "T",
        "lambda",
        "Lkotlin/Function2;",
        "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "select",
        "options",
        "Lokio/Options;",
        "selectPrefix",
        "selectTruncated",
        "selectPrefix$jvm",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "skip",
        "snapshot",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "writableSegment",
        "minimumCapacity",
        "writableSegment$jvm",
        "write",
        "source",
        "byteString",
        "Lokio/Source;",
        "writeAll",
        "writeByte",
        "writeDecimalLong",
        "v",
        "writeHexadecimalUnsignedLong",
        "writeInt",
        "i",
        "writeIntLe",
        "writeLong",
        "writeLongLe",
        "writeShort",
        "s",
        "writeShortLe",
        "writeString",
        "string",
        "beginIndex",
        "endIndex",
        "writeTo",
        "writeUtf8",
        "writeUtf8CodePoint",
        "codePoint",
        "Companion",
        "UnsafeCursor",
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
.field public static final Companion:Lokio/Buffer$Companion;

.field private static final DIGITS:[B


# instance fields
.field public head:Lokio/Segment;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lokio/Buffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Buffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Buffer;->Companion:Lokio/Buffer$Companion;

    .line 2213
    const-string v0, "0123456789abcdef"

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    .line 117
    const-wide/16 v2, 0x0

    :goto_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    .line 118
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v4, v0, v2

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0

    :cond_0
    move-wide v4, p4

    goto :goto_1

    :cond_1
    move-wide v2, p2

    goto :goto_0
.end method

.method public static bridge synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    .line 148
    const-wide/16 v2, 0x0

    :goto_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    .line 149
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v4, v0, v2

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0

    :cond_0
    move-wide v4, p4

    goto :goto_1

    :cond_1
    move-wide v2, p2

    goto :goto_0
.end method

.method private final digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 7
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 1638
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1639
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3

    .line 1640
    .local v0, "head":Lokio/Segment;
    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v4, v0, Lokio/Segment;->pos:I

    iget v5, v0, Lokio/Segment;->limit:I

    iget v6, v0, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 1641
    iget-object v2, v0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1642
    .local v2, "s":Lokio/Segment;
    :cond_0
    :goto_0
    if-eq v2, v0, :cond_2

    .line 1643
    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->pos:I

    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 1644
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .end local v2    # "s":Lokio/Segment;
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1642
    .restart local v2    # "s":Lokio/Segment;
    :cond_1
    goto :goto_0

    .line 1646
    :cond_2
    nop

    nop

    .line 1647
    .end local v0    # "head":Lokio/Segment;
    .end local v2    # "s":Lokio/Segment;
    :cond_3
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const-string v5, "messageDigest.digest()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    return-object v3
.end method

.method private final hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    .prologue
    .line 1660
    nop

    .line 1661
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 1662
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v4, Ljava/security/Key;

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1663
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_3

    .line 1664
    .local v1, "head":Lokio/Segment;
    iget-object v4, v1, Lokio/Segment;->data:[B

    iget v5, v1, Lokio/Segment;->pos:I

    iget v6, v1, Lokio/Segment;->limit:I

    iget v7, v1, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 1665
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1666
    .local v3, "s":Lokio/Segment;
    :cond_0
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1667
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 1668
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .end local v3    # "s":Lokio/Segment;
    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1666
    .restart local v3    # "s":Lokio/Segment;
    :cond_1
    goto :goto_0

    .line 1670
    :cond_2
    nop

    nop

    .line 1671
    .end local v1    # "head":Lokio/Segment;
    .end local v3    # "s":Lokio/Segment;
    :cond_3
    new-instance v4, Lokio/ByteString;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    const-string v6, "mac.doFinal()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1672
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/security/InvalidKeyException;
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method

.method private final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 5
    .param p1, "segment"    # Lokio/Segment;
    .param p2, "segmentPos"    # I
    .param p3, "bytes"    # [B
    .param p4, "bytesOffset"    # I
    .param p5, "bytesLimit"    # I

    .prologue
    .line 1592
    .line 1594
    iget v2, p1, Lokio/Segment;->limit:I

    .line 1595
    .local v2, "segmentLimit":I
    iget-object v0, p1, Lokio/Segment;->data:[B

    .line 1597
    .local v0, "data":[B
    move v1, p4

    .line 1598
    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_3

    .line 1599
    if-ne p2, v2, :cond_1

    .line 1600
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .end local p1    # "segment":Lokio/Segment;
    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1601
    .restart local p1    # "segment":Lokio/Segment;
    :cond_0
    iget-object v0, p1, Lokio/Segment;->data:[B

    .line 1602
    iget p2, p1, Lokio/Segment;->pos:I

    .line 1603
    iget v2, p1, Lokio/Segment;->limit:I

    .line 1606
    :cond_1
    aget-byte v3, v0, p2

    aget-byte v4, p3, v1

    if-eq v3, v4, :cond_2

    .line 1607
    const/4 v3, 0x0

    .line 1614
    :goto_1
    return v3

    .line 1610
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 1611
    add-int/lit8 v1, v1, 0x1

    .line 1598
    goto :goto_0

    .line 1614
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static bridge synthetic readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1770
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method private final readFrom(Ljava/io/InputStream;JZ)V
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    .line 230
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_0

    if-eqz p4, :cond_1

    .line 231
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 232
    .local v3, "tail":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    rsub-int v0, v4, 0x2000

    .line 2219
    .local v0, "b$iv":I
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    nop

    .line 232
    long-to-int v2, v4

    .line 233
    .local v2, "maxToCopy":I
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 234
    .local v1, "bytesRead":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 235
    if-eqz p4, :cond_2

    .line 242
    .end local v0    # "b$iv":I
    .end local v1    # "bytesRead":I
    .end local v2    # "maxToCopy":I
    .end local v3    # "tail":Lokio/Segment;
    :cond_1
    return-void

    .line 236
    .restart local v0    # "b$iv":I
    .restart local v1    # "bytesRead":I
    .restart local v2    # "maxToCopy":I
    .restart local v3    # "tail":Lokio/Segment;
    :cond_2
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 238
    :cond_3
    iget v4, v3, Lokio/Segment;->limit:I

    add-int/2addr v4, v1

    iput v4, v3, Lokio/Segment;->limit:I

    .line 239
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 240
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 230
    goto :goto_0
.end method

.method public static bridge synthetic readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1761
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method private final seek(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 9
    .param p1, "fromIndex"    # J
    .param p3, "lambda"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lokio/Segment;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1395
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_1

    .line 1397
    .local v4, "s":Lokio/Segment;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    sub-long/2addr v6, p1

    cmp-long v5, v6, p1

    if-gez v5, :cond_3

    .line 1399
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 1400
    .local v2, "offset":J
    :goto_0
    cmp-long v5, v2, p1

    if-lez v5, :cond_2

    .line 1401
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .end local v4    # "s":Lokio/Segment;
    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1402
    .restart local v4    # "s":Lokio/Segment;
    :cond_0
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 1400
    goto :goto_0

    .line 1395
    .end local v2    # "offset":J
    .end local v4    # "s":Lokio/Segment;
    :cond_1
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p3, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1414
    :goto_1
    return-object v5

    .line 1404
    .restart local v2    # "offset":J
    .restart local v4    # "s":Lokio/Segment;
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 1407
    .end local v2    # "offset":J
    :cond_3
    const-wide/16 v2, 0x0

    .line 1408
    .restart local v2    # "offset":J
    :goto_2
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v6, v5

    add-long v0, v2, v6

    .line 1410
    .local v0, "nextOffset":J
    cmp-long v5, v0, p1

    if-lez v5, :cond_4

    .line 1414
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 1411
    :cond_4
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .end local v4    # "s":Lokio/Segment;
    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1412
    .restart local v4    # "s":Lokio/Segment;
    :cond_5
    move-wide v2, v0

    .line 1408
    goto :goto_2
.end method

.method public static bridge synthetic selectPrefix$jvm$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 546
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->selectPrefix$jvm(Lokio/Options;Z)I

    move-result v0

    return v0
.end method

.method public static bridge synthetic writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 188
    iget-wide p2, p0, Lokio/Buffer;->size:J

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final -deprecated_getByte(J)B
    .locals 1
    .param p1, "index"    # J
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_getByte"
    .end annotation

    .prologue
    .line 1783
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    return v0
.end method

.method public final -deprecated_size()J
    .locals 2
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
    .line 1790
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public buffer()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 51
    return-object p0
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 874
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1735
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1736
    .local v0, "result":Lokio/Buffer;
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1747
    :goto_0
    return-object v0

    .line 1738
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v2

    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1739
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1740
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1741
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v1, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1742
    .local v1, "s":Lokio/Segment;
    :goto_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_9

    .line 1743
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1744
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1742
    goto :goto_1

    .line 1746
    :cond_9
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iput-wide v2, v0, Lokio/Buffer;->size:J

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1621
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 249
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 250
    .local v0, "result":J
    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 258
    :goto_0
    return-wide v4

    .line 253
    :cond_0
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v2, v3, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 254
    .local v2, "tail":Lokio/Segment;
    :cond_2
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_3

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_3

    .line 255
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    sub-long/2addr v0, v4

    :cond_3
    move-wide v4, v0

    .line 258
    goto :goto_0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 123
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    return-object p0

    .line 126
    :cond_1
    iget-object v8, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 127
    .local v8, "s":Lokio/Segment;
    :goto_0
    if-nez v8, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    .line 128
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 129
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 127
    goto :goto_0

    .line 133
    :cond_3
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 134
    if-nez v8, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget v0, v8, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v7, v0

    .line 135
    .local v7, "pos":I
    iget v0, v8, Lokio/Segment;->limit:I

    sub-int v6, v0, v7

    .line 2217
    .local v6, "a$iv":I
    int-to-long v0, v6

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    .line 135
    long-to-int v9, v0

    .line 136
    .local v9, "toCopy":I
    iget-object v0, v8, Lokio/Segment;->data:[B

    invoke-virtual {p1, v0, v7, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 137
    int-to-long v0, v9

    sub-long/2addr p4, v0

    .line 138
    const-wide/16 p2, 0x0

    .line 139
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 133
    goto :goto_1
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 10
    .param p1, "out"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 154
    cmp-long v0, p4, v8

    if-nez v0, :cond_1

    .line 182
    :cond_0
    return-object p0

    .line 156
    :cond_1
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 159
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 160
    .local v7, "s":Lokio/Segment;
    :goto_0
    if-nez v7, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    .line 161
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 162
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 160
    goto :goto_0

    .line 166
    :cond_3
    :goto_1
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 167
    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v6

    .line 168
    .local v6, "copy":Lokio/Segment;
    iget v0, v6, Lokio/Segment;->pos:I

    long-to-int v1, p2

    add-int/2addr v0, v1

    iput v0, v6, Lokio/Segment;->pos:I

    .line 169
    iget v0, v6, Lokio/Segment;->pos:I

    long-to-int v1, p4

    add-int/2addr v0, v1

    iget v1, v6, Lokio/Segment;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lokio/Segment;->limit:I

    .line 170
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_5

    .line 171
    iput-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    .line 172
    iget-object v0, v6, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 173
    iget-object v0, v6, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 176
    :goto_2
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p4, v0

    .line 178
    const-wide/16 p2, 0x0

    .line 179
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 166
    goto :goto_1

    .line 175
    :cond_5
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0, v6}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_2
.end method

.method public emit()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 75
    return-object p0
.end method

.method public bridge synthetic emit()Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lokio/Buffer;->emit()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 73
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1678
    move-object v10, p0

    check-cast v10, Lokio/Buffer;

    if-ne v10, p1, :cond_0

    const/4 v10, 0x1

    .line 1709
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v10

    .line 1679
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v10, p1, Lokio/Buffer;

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 1680
    :cond_1
    iget-wide v12, p0, Lokio/Buffer;->size:J

    move-object v10, p1

    check-cast v10, Lokio/Buffer;

    iget-wide v10, v10, Lokio/Buffer;->size:J

    cmp-long v10, v12, v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    .line 1681
    :cond_2
    iget-wide v10, p0, Lokio/Buffer;->size:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    .line 1683
    :cond_3
    iget-object v8, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1684
    .local v8, "sa":Lokio/Segment;
    :cond_4
    check-cast p1, Lokio/Buffer;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v9, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v9, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1685
    .local v9, "sb":Lokio/Segment;
    :cond_5
    iget v4, v8, Lokio/Segment;->pos:I

    .line 1686
    .local v4, "posA":I
    iget v6, v9, Lokio/Segment;->pos:I

    .line 1688
    .local v6, "posB":I
    const-wide/16 v2, 0x0

    .line 1689
    .local v2, "pos":J
    :goto_1
    iget-wide v10, p0, Lokio/Buffer;->size:J

    cmp-long v10, v2, v10

    if-gez v10, :cond_a

    .line 1691
    iget v10, v8, Lokio/Segment;->limit:I

    sub-int/2addr v10, v4

    iget v11, v9, Lokio/Segment;->limit:I

    sub-int/2addr v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-long v0, v10

    .line 1693
    .local v0, "count":J
    const-wide/16 v10, 0x0

    move v7, v6

    .end local v6    # "posB":I
    .local v7, "posB":I
    move v5, v4

    .end local v4    # "posA":I
    .local v5, "posA":I
    :goto_2
    cmp-long v12, v10, v0

    if-gez v12, :cond_7

    .line 1694
    iget-object v12, v8, Lokio/Segment;->data:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "posA":I
    .restart local v4    # "posA":I
    aget-byte v12, v12, v5

    iget-object v13, v9, Lokio/Segment;->data:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "posB":I
    .restart local v6    # "posB":I
    aget-byte v13, v13, v7

    if-eq v12, v13, :cond_6

    const/4 v10, 0x0

    goto :goto_0

    .line 1693
    :cond_6
    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move v7, v6

    .end local v6    # "posB":I
    .restart local v7    # "posB":I
    move v5, v4

    .end local v4    # "posA":I
    .restart local v5    # "posA":I
    goto :goto_2

    .line 1697
    :cond_7
    iget v10, v8, Lokio/Segment;->limit:I

    if-ne v5, v10, :cond_c

    .line 1698
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    .end local v8    # "sa":Lokio/Segment;
    if-nez v8, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1699
    .restart local v8    # "sa":Lokio/Segment;
    :cond_8
    iget v4, v8, Lokio/Segment;->pos:I

    .line 1702
    .end local v5    # "posA":I
    .restart local v4    # "posA":I
    :goto_3
    iget v10, v9, Lokio/Segment;->limit:I

    if-ne v7, v10, :cond_b

    .line 1703
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    .end local v9    # "sb":Lokio/Segment;
    if-nez v9, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1704
    .restart local v9    # "sb":Lokio/Segment;
    :cond_9
    iget v6, v9, Lokio/Segment;->pos:I

    .line 1706
    .end local v7    # "posB":I
    .restart local v6    # "posB":I
    :goto_4
    add-long/2addr v2, v0

    .line 1690
    goto :goto_1

    .line 1709
    .end local v0    # "count":J
    :cond_a
    const/4 v10, 0x1

    goto :goto_0

    .end local v6    # "posB":I
    .restart local v0    # "count":J
    .restart local v7    # "posB":I
    :cond_b
    move v6, v7

    .end local v7    # "posB":I
    .restart local v6    # "posB":I
    goto :goto_4

    .end local v4    # "posA":I
    .end local v6    # "posB":I
    .restart local v5    # "posA":I
    .restart local v7    # "posB":I
    :cond_c
    move v4, v5

    .end local v5    # "posA":I
    .restart local v4    # "posA":I
    goto :goto_3
.end method

.method public exhausted()Z
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1617
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 53
    return-object p0
.end method

.method public final getByte(J)B
    .locals 13
    .param p1, "pos"    # J
    .annotation build Lkotlin/jvm/JvmName;
        name = "getByte"
    .end annotation

    .prologue
    .line 286
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 287
    move-object v12, p0

    .line 2220
    .local v12, "this_$iv":Lokio/Buffer;
    iget-object v11, v12, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v11, :cond_1

    .line 2222
    .local v11, "s$iv":Lokio/Segment;
    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-gez v0, :cond_4

    .line 2224
    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v8

    .line 2225
    .local v8, "offset$iv":J
    :goto_0
    cmp-long v0, v8, p1

    if-lez v0, :cond_2

    .line 2226
    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    .end local v11    # "s$iv":Lokio/Segment;
    if-nez v11, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2227
    .restart local v11    # "s$iv":Lokio/Segment;
    :cond_0
    iget v0, v11, Lokio/Segment;->limit:I

    iget v1, v11, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v8, v0

    .line 2225
    goto :goto_0

    .line 2220
    .end local v8    # "offset$iv":J
    .end local v11    # "s$iv":Lokio/Segment;
    :cond_1
    const/4 v10, 0x0

    const-wide/16 v0, -0x1

    check-cast v10, Lokio/Segment;

    .line 288
    .local v10, "s":Lokio/Segment;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    iget-object v2, v10, Lokio/Segment;->data:[B

    iget v3, v10, Lokio/Segment;->pos:I

    int-to-long v4, v3

    add-long/2addr v4, p1

    sub-long v0, v4, v0

    long-to-int v0, v0

    aget-byte v0, v2, v0

    :goto_1
    return v0

    .line 2229
    .end local v10    # "s":Lokio/Segment;
    .restart local v8    # "offset$iv":J
    .restart local v11    # "s$iv":Lokio/Segment;
    :cond_2
    move-object v10, v11

    .line 288
    .restart local v10    # "s":Lokio/Segment;
    if-nez v10, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v0, v10, Lokio/Segment;->data:[B

    iget v1, v10, Lokio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    sub-long/2addr v2, v8

    long-to-int v1, v2

    aget-byte v0, v0, v1

    goto :goto_1

    .line 2232
    .end local v8    # "offset$iv":J
    .end local v10    # "s":Lokio/Segment;
    :cond_4
    const-wide/16 v8, 0x0

    .line 2233
    .restart local v8    # "offset$iv":J
    :goto_2
    iget v0, v11, Lokio/Segment;->limit:I

    iget v1, v11, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v6, v8, v0

    .line 2235
    .local v6, "nextOffset$iv":J
    cmp-long v0, v6, p1

    if-lez v0, :cond_6

    .line 2239
    move-object v10, v11

    .line 288
    .restart local v10    # "s":Lokio/Segment;
    if-nez v10, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v0, v10, Lokio/Segment;->data:[B

    iget v1, v10, Lokio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    sub-long/2addr v2, v8

    long-to-int v1, v2

    aget-byte v0, v0, v1

    goto :goto_1

    .line 2236
    .end local v10    # "s":Lokio/Segment;
    :cond_6
    iget-object v11, v11, Lokio/Segment;->next:Lokio/Segment;

    .end local v11    # "s$iv":Lokio/Segment;
    if-nez v11, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2237
    .restart local v11    # "s$iv":Lokio/Segment;
    :cond_7
    move-wide v8, v6

    .line 2233
    goto :goto_2
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1713
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_1

    .line 1714
    .local v3, "s":Lokio/Segment;
    const/4 v2, 0x1

    .line 1715
    .local v2, "result":I
    :cond_0
    iget v1, v3, Lokio/Segment;->pos:I

    .line 1717
    .local v1, "pos":I
    iget v0, v3, Lokio/Segment;->limit:I

    .line 1718
    .local v0, "limit":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1719
    mul-int/lit8 v4, v2, 0x1f

    iget-object v5, v3, Lokio/Segment;->data:[B

    aget-byte v5, v5, v1

    add-int v2, v4, v5

    .line 1720
    add-int/lit8 v1, v1, 0x1

    .line 1718
    goto :goto_0

    .line 1713
    .end local v0    # "limit":I
    .end local v1    # "pos":I
    .end local v2    # "result":I
    .end local v3    # "s":Lokio/Segment;
    :cond_1
    const/4 v2, 0x0

    .line 1724
    :goto_1
    return v2

    .line 1722
    .restart local v0    # "limit":I
    .restart local v1    # "pos":I
    .restart local v2    # "result":I
    .restart local v3    # "s":Lokio/Segment;
    :cond_2
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .end local v3    # "s":Lokio/Segment;
    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1723
    .restart local v3    # "s":Lokio/Segment;
    :cond_3
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1651
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1654
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1657
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B

    .prologue
    .line 1388
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .prologue
    .line 1422
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 20
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    .prologue
    .line 1425
    .line 1427
    const-wide/16 v16, 0x0

    cmp-long v15, v16, p2

    if-lez v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " fromIndex="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " toIndex="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p4

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    :cond_1
    cmp-long v15, p4, p2

    if-ltz v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    .line 1429
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v15, p4, v16

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 p4, v0

    .line 1430
    :cond_3
    cmp-long v15, p2, p4

    if-nez v15, :cond_4

    const-wide/16 v16, -0x1

    .line 1454
    :goto_1
    return-wide v16

    .line 1432
    :cond_4
    move-wide/from16 v4, p2

    .line 2276
    .local v4, "fromIndex$iv":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v14, :cond_6

    .line 2278
    .local v14, "s$iv":Lokio/Segment;
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v16

    sub-long v16, v16, v4

    cmp-long v15, v16, v4

    if-gez v15, :cond_d

    .line 2280
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v10

    .line 2281
    .local v10, "offset$iv":J
    :goto_2
    cmp-long v15, v10, v4

    if-lez v15, :cond_7

    .line 2282
    iget-object v14, v14, Lokio/Segment;->prev:Lokio/Segment;

    .end local v14    # "s$iv":Lokio/Segment;
    if-nez v14, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2283
    .restart local v14    # "s$iv":Lokio/Segment;
    :cond_5
    iget v15, v14, Lokio/Segment;->limit:I

    iget v0, v14, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    sub-long v10, v10, v16

    .line 2281
    goto :goto_2

    .line 2276
    .end local v10    # "offset$iv":J
    .end local v14    # "s$iv":Lokio/Segment;
    :cond_6
    const/4 v13, 0x0

    check-cast v13, Lokio/Segment;

    .line 1433
    .local v13, "s":Lokio/Segment;
    const-wide/16 v16, -0x1

    goto :goto_1

    .line 2285
    .end local v13    # "s":Lokio/Segment;
    .restart local v10    # "offset$iv":J
    .restart local v14    # "s$iv":Lokio/Segment;
    :cond_7
    move-object v13, v14

    .line 1433
    .restart local v13    # "s":Lokio/Segment;
    if-eqz v13, :cond_8

    .line 1434
    move-wide v8, v10

    .line 1437
    .local v8, "offset":J
    :goto_3
    cmp-long v15, v8, p4

    if-gez v15, :cond_c

    .line 1438
    iget-object v2, v13, Lokio/Segment;->data:[B

    .line 1439
    .local v2, "data":[B
    iget v15, v13, Lokio/Segment;->limit:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    iget v15, v13, Lokio/Segment;->pos:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v18, v18, p4

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v3, v0

    .line 1440
    .local v3, "limit":I
    iget v15, v13, Lokio/Segment;->pos:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, p2

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v12, v0

    .line 1441
    .local v12, "pos":I
    :goto_4
    if-ge v12, v3, :cond_a

    .line 1442
    aget-byte v15, v2, v12

    move/from16 v0, p1

    if-ne v15, v0, :cond_9

    .line 1443
    iget v15, v13, Lokio/Segment;->pos:I

    sub-int v15, v12, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, v8

    goto :goto_1

    .line 1433
    .end local v2    # "data":[B
    .end local v3    # "limit":I
    .end local v8    # "offset":J
    .end local v12    # "pos":I
    :cond_8
    const-wide/16 v16, -0x1

    goto :goto_1

    .line 1445
    .restart local v2    # "data":[B
    .restart local v3    # "limit":I
    .restart local v8    # "offset":J
    .restart local v12    # "pos":I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 1441
    goto :goto_4

    .line 1449
    :cond_a
    iget v15, v13, Lokio/Segment;->limit:I

    iget v0, v13, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 1450
    move-wide/from16 p2, v8

    .line 1451
    iget-object v13, v13, Lokio/Segment;->next:Lokio/Segment;

    .end local v13    # "s":Lokio/Segment;
    if-nez v13, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1437
    .restart local v13    # "s":Lokio/Segment;
    :cond_b
    goto :goto_3

    .line 1454
    .end local v2    # "data":[B
    .end local v3    # "limit":I
    .end local v12    # "pos":I
    :cond_c
    const-wide/16 v16, -0x1

    goto/16 :goto_1

    .line 2288
    .end local v8    # "offset":J
    .end local v10    # "offset$iv":J
    .end local v13    # "s":Lokio/Segment;
    :cond_d
    const-wide/16 v10, 0x0

    .line 2289
    .restart local v10    # "offset$iv":J
    :goto_5
    iget v15, v14, Lokio/Segment;->limit:I

    iget v0, v14, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v6, v10, v16

    .line 2291
    .local v6, "nextOffset$iv":J
    cmp-long v15, v6, v4

    if-lez v15, :cond_e

    .line 2295
    move-object v13, v14

    .line 1433
    .restart local v13    # "s":Lokio/Segment;
    if-eqz v13, :cond_10

    .line 1434
    move-wide v8, v10

    .line 1437
    .restart local v8    # "offset":J
    :goto_6
    cmp-long v15, v8, p4

    if-gez v15, :cond_14

    .line 1438
    iget-object v2, v13, Lokio/Segment;->data:[B

    .line 1439
    .restart local v2    # "data":[B
    iget v15, v13, Lokio/Segment;->limit:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    iget v15, v13, Lokio/Segment;->pos:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v18, v18, p4

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v3, v0

    .line 1440
    .restart local v3    # "limit":I
    iget v15, v13, Lokio/Segment;->pos:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, p2

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v12, v0

    .line 1441
    .restart local v12    # "pos":I
    :goto_7
    if-ge v12, v3, :cond_12

    .line 1442
    aget-byte v15, v2, v12

    move/from16 v0, p1

    if-ne v15, v0, :cond_11

    .line 1443
    iget v15, v13, Lokio/Segment;->pos:I

    sub-int v15, v12, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v16, v16, v8

    goto/16 :goto_1

    .line 2292
    .end local v2    # "data":[B
    .end local v3    # "limit":I
    .end local v8    # "offset":J
    .end local v12    # "pos":I
    .end local v13    # "s":Lokio/Segment;
    :cond_e
    iget-object v14, v14, Lokio/Segment;->next:Lokio/Segment;

    .end local v14    # "s$iv":Lokio/Segment;
    if-nez v14, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2293
    .restart local v14    # "s$iv":Lokio/Segment;
    :cond_f
    move-wide v10, v6

    .line 2289
    goto :goto_5

    .line 1433
    .restart local v13    # "s":Lokio/Segment;
    :cond_10
    const-wide/16 v16, -0x1

    goto/16 :goto_1

    .line 1445
    .restart local v2    # "data":[B
    .restart local v3    # "limit":I
    .restart local v8    # "offset":J
    .restart local v12    # "pos":I
    :cond_11
    add-int/lit8 v12, v12, 0x1

    .line 1441
    goto :goto_7

    .line 1449
    :cond_12
    iget v15, v13, Lokio/Segment;->limit:I

    iget v0, v13, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 1450
    move-wide/from16 p2, v8

    .line 1451
    iget-object v13, v13, Lokio/Segment;->next:Lokio/Segment;

    .end local v13    # "s":Lokio/Segment;
    if-nez v13, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1437
    .restart local v13    # "s":Lokio/Segment;
    :cond_13
    goto :goto_6

    .line 1454
    .end local v2    # "data":[B
    .end local v3    # "limit":I
    .end local v12    # "pos":I
    :cond_14
    const-wide/16 v16, -0x1

    goto/16 :goto_1
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1459
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 30
    .param p1, "bytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "bytes"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    const-string v4, "bytes is empty"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1465
    :cond_1
    const-wide/16 v26, 0x0

    cmp-long v2, p2, v26

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromIndex < 0: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1467
    :cond_3
    move-wide/from16 v12, p2

    .line 2296
    .local v12, "fromIndex$iv":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 2298
    .local v21, "s$iv":Lokio/Segment;
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v26

    sub-long v26, v26, v12

    cmp-long v2, v26, v12

    if-gez v2, :cond_c

    .line 2300
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v18

    .line 2301
    .local v18, "offset$iv":J
    :goto_2
    cmp-long v2, v18, v12

    if-lez v2, :cond_6

    .line 2302
    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v21, v0

    .end local v21    # "s$iv":Lokio/Segment;
    if-nez v21, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2303
    .restart local v21    # "s$iv":Lokio/Segment;
    :cond_4
    move-object/from16 v0, v21

    iget v2, v0, Lokio/Segment;->limit:I

    move-object/from16 v0, v21

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v26, v0

    sub-long v18, v18, v26

    .line 2301
    goto :goto_2

    .line 2296
    .end local v18    # "offset$iv":J
    .end local v21    # "s$iv":Lokio/Segment;
    :cond_5
    const/4 v3, 0x0

    check-cast v3, Lokio/Segment;

    .line 1468
    .local v3, "s":Lokio/Segment;
    const-wide/16 v26, -0x1

    .line 1493
    :goto_3
    return-wide v26

    .line 2305
    .end local v3    # "s":Lokio/Segment;
    .restart local v18    # "offset$iv":J
    .restart local v21    # "s$iv":Lokio/Segment;
    :cond_6
    move-object/from16 v3, v21

    .line 1468
    .restart local v3    # "s":Lokio/Segment;
    if-eqz v3, :cond_7

    .line 1469
    move-wide/from16 v16, v18

    .line 1473
    .local v16, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v5

    .line 1474
    .local v5, "targetByteArray":[B
    const/4 v2, 0x0

    aget-byte v10, v5, v2

    .line 1475
    .local v10, "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    .line 1476
    .local v7, "bytesSize":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v26, v0

    int-to-long v0, v7

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    const-wide/16 v28, 0x1

    add-long v22, v26, v28

    .line 1477
    .local v22, "resultLimit":J
    :goto_4
    cmp-long v2, v16, v22

    if-gez v2, :cond_b

    .line 1479
    iget-object v11, v3, Lokio/Segment;->data:[B

    .line 1480
    .local v11, "data":[B
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    add-long v26, v26, v22

    sub-long v8, v26, v16

    .line 2306
    .local v8, "b$iv":J
    int-to-long v0, v2

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    nop

    .line 1480
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v24, v0

    .line 1481
    .local v24, "segmentLimit":I
    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v0, v2

    move-wide/from16 v26, v0

    add-long v26, v26, p2

    sub-long v26, v26, v16

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v20, v0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 1482
    aget-byte v2, v11, v20

    if-ne v2, v10, :cond_8

    add-int/lit8 v4, v20, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lokio/Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1483
    iget v2, v3, Lokio/Segment;->pos:I

    sub-int v2, v20, v2

    int-to-long v0, v2

    move-wide/from16 v26, v0

    add-long v26, v26, v16

    goto :goto_3

    .line 1468
    .end local v5    # "targetByteArray":[B
    .end local v7    # "bytesSize":I
    .end local v8    # "b$iv":J
    .end local v10    # "b0":B
    .end local v11    # "data":[B
    .end local v16    # "offset":J
    .end local v22    # "resultLimit":J
    .end local v24    # "segmentLimit":I
    :cond_7
    const-wide/16 v26, -0x1

    goto :goto_3

    .line 1481
    .restart local v5    # "targetByteArray":[B
    .restart local v7    # "bytesSize":I
    .restart local v8    # "b$iv":J
    .restart local v10    # "b0":B
    .restart local v11    # "data":[B
    .restart local v16    # "offset":J
    .restart local v22    # "resultLimit":J
    .restart local v24    # "segmentLimit":I
    :cond_8
    add-int/lit8 v20, v20, 0x1

    .local v20, "pos":I
    goto :goto_5

    .line 1488
    .end local v20    # "pos":I
    :cond_9
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v26, v0

    add-long v16, v16, v26

    .line 1489
    move-wide/from16 p2, v16

    .line 1490
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .end local v3    # "s":Lokio/Segment;
    if-nez v3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1477
    .restart local v3    # "s":Lokio/Segment;
    :cond_a
    goto :goto_4

    .line 1493
    .end local v8    # "b$iv":J
    .end local v11    # "data":[B
    .end local v24    # "segmentLimit":I
    :cond_b
    const-wide/16 v26, -0x1

    goto/16 :goto_3

    .line 2307
    .end local v3    # "s":Lokio/Segment;
    .end local v5    # "targetByteArray":[B
    .end local v7    # "bytesSize":I
    .end local v10    # "b0":B
    .end local v16    # "offset":J
    .end local v18    # "offset$iv":J
    .end local v22    # "resultLimit":J
    :cond_c
    const-wide/16 v18, 0x0

    .line 2308
    .restart local v18    # "offset$iv":J
    :goto_6
    move-object/from16 v0, v21

    iget v2, v0, Lokio/Segment;->limit:I

    move-object/from16 v0, v21

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v26, v0

    add-long v14, v18, v26

    .line 2310
    .local v14, "nextOffset$iv":J
    cmp-long v2, v14, v12

    if-lez v2, :cond_d

    .line 2314
    move-object/from16 v3, v21

    .line 1468
    .restart local v3    # "s":Lokio/Segment;
    if-eqz v3, :cond_f

    .line 1469
    move-wide/from16 v16, v18

    .line 1473
    .restart local v16    # "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v5

    .line 1474
    .restart local v5    # "targetByteArray":[B
    const/4 v2, 0x0

    aget-byte v10, v5, v2

    .line 1475
    .restart local v10    # "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    .line 1476
    .restart local v7    # "bytesSize":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v26, v0

    int-to-long v0, v7

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    const-wide/16 v28, 0x1

    add-long v22, v26, v28

    .line 1477
    .restart local v22    # "resultLimit":J
    :goto_7
    cmp-long v2, v16, v22

    if-gez v2, :cond_13

    .line 1479
    iget-object v11, v3, Lokio/Segment;->data:[B

    .line 1480
    .restart local v11    # "data":[B
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    add-long v26, v26, v22

    sub-long v8, v26, v16

    .line 2315
    .restart local v8    # "b$iv":J
    int-to-long v0, v2

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    nop

    .line 1480
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v24, v0

    .line 1481
    .restart local v24    # "segmentLimit":I
    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v0, v2

    move-wide/from16 v26, v0

    add-long v26, v26, p2

    sub-long v26, v26, v16

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v20, v0

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 1482
    aget-byte v2, v11, v20

    if-ne v2, v10, :cond_10

    add-int/lit8 v4, v20, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lokio/Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1483
    iget v2, v3, Lokio/Segment;->pos:I

    sub-int v2, v20, v2

    int-to-long v0, v2

    move-wide/from16 v26, v0

    add-long v26, v26, v16

    goto/16 :goto_3

    .line 2311
    .end local v3    # "s":Lokio/Segment;
    .end local v5    # "targetByteArray":[B
    .end local v7    # "bytesSize":I
    .end local v8    # "b$iv":J
    .end local v10    # "b0":B
    .end local v11    # "data":[B
    .end local v16    # "offset":J
    .end local v22    # "resultLimit":J
    .end local v24    # "segmentLimit":I
    :cond_d
    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v21, v0

    .end local v21    # "s$iv":Lokio/Segment;
    if-nez v21, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2312
    .restart local v21    # "s$iv":Lokio/Segment;
    :cond_e
    move-wide/from16 v18, v14

    .line 2308
    goto/16 :goto_6

    .line 1468
    .restart local v3    # "s":Lokio/Segment;
    :cond_f
    const-wide/16 v26, -0x1

    goto/16 :goto_3

    .line 1481
    .restart local v5    # "targetByteArray":[B
    .restart local v7    # "bytesSize":I
    .restart local v8    # "b$iv":J
    .restart local v10    # "b0":B
    .restart local v11    # "data":[B
    .restart local v16    # "offset":J
    .restart local v22    # "resultLimit":J
    .restart local v24    # "segmentLimit":I
    :cond_10
    add-int/lit8 v20, v20, 0x1

    .restart local v20    # "pos":I
    goto :goto_8

    .line 1488
    .end local v20    # "pos":I
    :cond_11
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v26, v0

    add-long v16, v16, v26

    .line 1489
    move-wide/from16 p2, v16

    .line 1490
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .end local v3    # "s":Lokio/Segment;
    if-nez v3, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1477
    .restart local v3    # "s":Lokio/Segment;
    :cond_12
    goto :goto_7

    .line 1493
    .end local v8    # "b$iv":J
    .end local v11    # "data":[B
    .end local v24    # "segmentLimit":I
    :cond_13
    const-wide/16 v26, -0x1

    goto/16 :goto_3
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1497
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 24
    .param p1, "targetBytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fromIndex"    # J

    .prologue
    const-string v22, "targetBytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1501
    const-wide/16 v22, 0x0

    cmp-long v22, p2, v22

    if-ltz v22, :cond_0

    const/16 v22, 0x1

    :goto_0
    if-nez v22, :cond_1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "fromIndex < 0: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v22, Ljava/lang/Throwable;

    throw v22

    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 1503
    :cond_1
    move-wide/from16 v8, p2

    .line 2316
    .local v8, "fromIndex$iv":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2318
    .local v19, "s$iv":Lokio/Segment;
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v22

    sub-long v22, v22, v8

    cmp-long v22, v22, v8

    if-gez v22, :cond_10

    .line 2320
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v16

    .line 2321
    .local v16, "offset$iv":J
    :goto_1
    cmp-long v22, v16, v8

    if-lez v22, :cond_4

    .line 2322
    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v19, v0

    .end local v19    # "s$iv":Lokio/Segment;
    if-nez v19, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2323
    .restart local v19    # "s$iv":Lokio/Segment;
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v16, v16, v22

    .line 2321
    goto :goto_1

    .line 2316
    .end local v16    # "offset$iv":J
    .end local v19    # "s$iv":Lokio/Segment;
    :cond_3
    const/16 v18, 0x0

    check-cast v18, Lokio/Segment;

    .line 1504
    .local v18, "s":Lokio/Segment;
    const-wide/16 v22, -0x1

    .line 1551
    :goto_2
    return-wide v22

    .line 2325
    .end local v18    # "s":Lokio/Segment;
    .restart local v16    # "offset$iv":J
    .restart local v19    # "s$iv":Lokio/Segment;
    :cond_4
    move-object/from16 v18, v19

    .line 1504
    .restart local v18    # "s":Lokio/Segment;
    if-eqz v18, :cond_6

    .line 1505
    move-wide/from16 v14, v16

    .line 1510
    .local v14, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 1512
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 1513
    .local v5, "b0":B
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 1514
    .local v6, "b1":B
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-gez v22, :cond_f

    .line 1515
    move-object/from16 v0, v18

    iget-object v7, v0, Lokio/Segment;->data:[B

    .line 1516
    .local v7, "data":[B
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, p2

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    long-to-int v11, v0

    .line 1517
    .local v11, "pos":I
    move-object/from16 v0, v18

    iget v10, v0, Lokio/Segment;->limit:I

    .line 1518
    .local v10, "limit":I
    :goto_4
    if-ge v11, v10, :cond_8

    .line 1519
    aget-byte v4, v7, v11

    .line 1520
    .local v4, "b":I
    if-eq v4, v5, :cond_5

    if-ne v4, v6, :cond_7

    .line 1521
    :cond_5
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v14

    goto :goto_2

    .line 1504
    .end local v4    # "b":I
    .end local v5    # "b0":B
    .end local v6    # "b1":B
    .end local v7    # "data":[B
    .end local v10    # "limit":I
    .end local v11    # "pos":I
    .end local v14    # "offset":J
    :cond_6
    const-wide/16 v22, -0x1

    goto :goto_2

    .line 1523
    .restart local v4    # "b":I
    .restart local v5    # "b0":B
    .restart local v6    # "b1":B
    .restart local v7    # "data":[B
    .restart local v10    # "limit":I
    .restart local v11    # "pos":I
    .restart local v14    # "offset":J
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 1518
    goto :goto_4

    .line 1527
    .end local v4    # "b":I
    :cond_8
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 1528
    move-wide/from16 p2, v14

    .line 1529
    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v18, v0

    .end local v18    # "s":Lokio/Segment;
    if-nez v18, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1514
    .restart local v18    # "s":Lokio/Segment;
    :cond_9
    goto :goto_3

    .line 1533
    .end local v5    # "b0":B
    .end local v6    # "b1":B
    .end local v7    # "data":[B
    .end local v10    # "limit":I
    .end local v11    # "pos":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v21

    .line 1534
    .local v21, "targetByteArray":[B
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-gez v22, :cond_f

    .line 1535
    move-object/from16 v0, v18

    iget-object v7, v0, Lokio/Segment;->data:[B

    .line 1536
    .restart local v7    # "data":[B
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, p2

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    long-to-int v11, v0

    .line 1537
    .restart local v11    # "pos":I
    move-object/from16 v0, v18

    iget v10, v0, Lokio/Segment;->limit:I

    .line 1538
    .restart local v10    # "limit":I
    :goto_6
    if-ge v11, v10, :cond_d

    .line 1539
    aget-byte v4, v7, v11

    .line 1540
    .restart local v4    # "b":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    aget-byte v20, v21, v22

    .line 1541
    .local v20, "t":B
    move/from16 v0, v20

    if-ne v4, v0, :cond_b

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v14

    goto/16 :goto_2

    .line 1540
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 1543
    .end local v20    # "t":B
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 1538
    goto :goto_6

    .line 1547
    .end local v4    # "b":I
    :cond_d
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 1548
    move-wide/from16 p2, v14

    .line 1549
    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v18, v0

    .end local v18    # "s":Lokio/Segment;
    if-nez v18, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1534
    .restart local v18    # "s":Lokio/Segment;
    :cond_e
    goto :goto_5

    .line 1551
    .end local v7    # "data":[B
    .end local v10    # "limit":I
    .end local v11    # "pos":I
    .end local v21    # "targetByteArray":[B
    :cond_f
    const-wide/16 v22, -0x1

    goto/16 :goto_2

    .line 2328
    .end local v14    # "offset":J
    .end local v16    # "offset$iv":J
    .end local v18    # "s":Lokio/Segment;
    :cond_10
    const-wide/16 v16, 0x0

    .line 2329
    .restart local v16    # "offset$iv":J
    :goto_8
    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v12, v16, v22

    .line 2331
    .local v12, "nextOffset$iv":J
    cmp-long v22, v12, v8

    if-lez v22, :cond_12

    .line 2335
    move-object/from16 v18, v19

    .line 1504
    .restart local v18    # "s":Lokio/Segment;
    if-eqz v18, :cond_14

    .line 1505
    move-wide/from16 v14, v16

    .line 1510
    .restart local v14    # "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 1512
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 1513
    .restart local v5    # "b0":B
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 1514
    .restart local v6    # "b1":B
    :goto_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-gez v22, :cond_1d

    .line 1515
    move-object/from16 v0, v18

    iget-object v7, v0, Lokio/Segment;->data:[B

    .line 1516
    .restart local v7    # "data":[B
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, p2

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    long-to-int v11, v0

    .line 1517
    .restart local v11    # "pos":I
    move-object/from16 v0, v18

    iget v10, v0, Lokio/Segment;->limit:I

    .line 1518
    .restart local v10    # "limit":I
    :goto_a
    if-ge v11, v10, :cond_16

    .line 1519
    aget-byte v4, v7, v11

    .line 1520
    .restart local v4    # "b":I
    if-eq v4, v5, :cond_11

    if-ne v4, v6, :cond_15

    .line 1521
    :cond_11
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v14

    goto/16 :goto_2

    .line 2332
    .end local v4    # "b":I
    .end local v5    # "b0":B
    .end local v6    # "b1":B
    .end local v7    # "data":[B
    .end local v10    # "limit":I
    .end local v11    # "pos":I
    .end local v14    # "offset":J
    .end local v18    # "s":Lokio/Segment;
    :cond_12
    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v19, v0

    .end local v19    # "s$iv":Lokio/Segment;
    if-nez v19, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2333
    .restart local v19    # "s$iv":Lokio/Segment;
    :cond_13
    move-wide/from16 v16, v12

    .line 2329
    goto/16 :goto_8

    .line 1504
    .restart local v18    # "s":Lokio/Segment;
    :cond_14
    const-wide/16 v22, -0x1

    goto/16 :goto_2

    .line 1523
    .restart local v4    # "b":I
    .restart local v5    # "b0":B
    .restart local v6    # "b1":B
    .restart local v7    # "data":[B
    .restart local v10    # "limit":I
    .restart local v11    # "pos":I
    .restart local v14    # "offset":J
    :cond_15
    add-int/lit8 v11, v11, 0x1

    .line 1518
    goto :goto_a

    .line 1527
    .end local v4    # "b":I
    :cond_16
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 1528
    move-wide/from16 p2, v14

    .line 1529
    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v18, v0

    .end local v18    # "s":Lokio/Segment;
    if-nez v18, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1514
    .restart local v18    # "s":Lokio/Segment;
    :cond_17
    goto :goto_9

    .line 1533
    .end local v5    # "b0":B
    .end local v6    # "b1":B
    .end local v7    # "data":[B
    .end local v10    # "limit":I
    .end local v11    # "pos":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v21

    .line 1534
    .restart local v21    # "targetByteArray":[B
    :goto_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-gez v22, :cond_1d

    .line 1535
    move-object/from16 v0, v18

    iget-object v7, v0, Lokio/Segment;->data:[B

    .line 1536
    .restart local v7    # "data":[B
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, p2

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    long-to-int v11, v0

    .line 1537
    .restart local v11    # "pos":I
    move-object/from16 v0, v18

    iget v10, v0, Lokio/Segment;->limit:I

    .line 1538
    .restart local v10    # "limit":I
    :goto_c
    if-ge v11, v10, :cond_1b

    .line 1539
    aget-byte v4, v7, v11

    .line 1540
    .restart local v4    # "b":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_d
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a

    aget-byte v20, v21, v22

    .line 1541
    .restart local v20    # "t":B
    move/from16 v0, v20

    if-ne v4, v0, :cond_19

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v14

    goto/16 :goto_2

    .line 1540
    :cond_19
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 1543
    .end local v20    # "t":B
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    .line 1538
    goto :goto_c

    .line 1547
    .end local v4    # "b":I
    :cond_1b
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 1548
    move-wide/from16 p2, v14

    .line 1549
    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v18, v0

    .end local v18    # "s":Lokio/Segment;
    if-nez v18, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1534
    .restart local v18    # "s":Lokio/Segment;
    :cond_1c
    goto :goto_b

    .line 1551
    .end local v7    # "data":[B
    .end local v10    # "limit":I
    .end local v11    # "pos":I
    .end local v21    # "targetByteArray":[B
    :cond_1d
    const-wide/16 v22, -0x1

    goto/16 :goto_2
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lokio/Buffer$inputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1619
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1626
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lokio/Buffer$outputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lokio/PeekSource;

    check-cast p0, Lokio/BufferedSource;

    .end local p0    # "this":Lokio/Buffer;
    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    check-cast v0, Lokio/Source;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1558
    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    .prologue
    const/4 v1, 0x0

    const-string v2, "bytes"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1566
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    .line 1569
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1570
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 1573
    :goto_1
    if-ge v0, p5, :cond_2

    .line 1574
    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1573
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    goto :goto_1

    .line 1578
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "sink"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_1

    .line 856
    .local v0, "s":Lokio/Segment;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 857
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 859
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 860
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 862
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 863
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 864
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 867
    .end local v0    # "s":Lokio/Segment;
    .end local v1    # "toCopy":I
    :cond_0
    :goto_0
    return v1

    .line 854
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "sink"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 837
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v6, :cond_1

    .line 838
    .local v6, "s":Lokio/Segment;
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 839
    .local v7, "toCopy":I
    iget-object v0, v6, Lokio/Segment;->data:[B

    iget v1, v6, Lokio/Segment;->pos:I

    invoke-static {v0, v1, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 841
    iget v0, v6, Lokio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/Segment;->pos:I

    .line 842
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 844
    iget v0, v6, Lokio/Segment;->pos:I

    iget v1, v6, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 845
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 846
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 849
    .end local v6    # "s":Lokio/Segment;
    .end local v7    # "toCopy":I
    :cond_0
    :goto_0
    return v7

    .line 837
    :cond_1
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 4
    .param p1, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1381
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

    .line 1382
    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    .line 1385
    :goto_1
    return-wide v0

    .line 1383
    :cond_2
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1384
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    move-wide v0, p2

    .line 1385
    goto :goto_1
.end method

.method public readAll(Lokio/Sink;)J
    .locals 4
    .param p1, "sink"    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "sink"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 647
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 648
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 650
    :cond_0
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1}, Lokio/Buffer;->readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "already attached to a buffer"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1773
    :cond_1
    check-cast p0, Lokio/Buffer;

    .end local p0    # "this":Lokio/Buffer;
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1774
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1775
    return-object p1
.end method

.method public readByte()B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 263
    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 265
    :cond_0
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 266
    .local v5, "segment":Lokio/Segment;
    :cond_1
    iget v3, v5, Lokio/Segment;->pos:I

    .line 267
    .local v3, "pos":I
    iget v2, v5, Lokio/Segment;->limit:I

    .line 269
    .local v2, "limit":I
    iget-object v1, v5, Lokio/Segment;->data:[B

    .line 270
    .local v1, "data":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v0, v1, v3

    .line 271
    .local v0, "b":B
    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 273
    if-ne v4, v2, :cond_2

    .line 274
    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 275
    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 278
    :goto_0
    return v0

    .line 277
    :cond_2
    iput v4, v5, Lokio/Segment;->pos:I

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 810
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 814
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const v1, 0x7fffffff

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 815
    :cond_1
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 817
    :cond_2
    long-to-int v1, p1

    new-array v0, v1, [B

    .line 818
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lokio/Buffer;->readFully([B)V

    .line 819
    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 519
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 522
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    new-instance v20, Ljava/io/EOFException;

    invoke-direct/range {v20 .. v20}, Ljava/io/EOFException;-><init>()V

    check-cast v20, Ljava/lang/Throwable;

    throw v20

    .line 402
    :cond_0
    const-wide/16 v18, 0x0

    .line 403
    .local v18, "value":J
    const/16 v16, 0x0

    .line 404
    .local v16, "seen":I
    const/4 v10, 0x0

    .line 405
    .local v10, "negative":Z
    const/4 v8, 0x0

    .line 407
    .local v8, "done":Z
    const-wide v14, -0xcccccccccccccccL

    .line 408
    .local v14, "overflowZone":J
    const-wide/16 v12, -0x7

    .line 410
    .local v12, "overflowDigit":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 413
    .local v17, "segment":Lokio/Segment;
    :cond_2
    move-object/from16 v0, v17

    iget-object v6, v0, Lokio/Segment;->data:[B

    .line 414
    .local v6, "data":[B
    move-object/from16 v0, v17

    iget v11, v0, Lokio/Segment;->pos:I

    .line 415
    .local v11, "pos":I
    move-object/from16 v0, v17

    iget v9, v0, Lokio/Segment;->limit:I

    .line 417
    .local v9, "limit":I
    :goto_0
    if-ge v11, v9, :cond_9

    .line 418
    aget-byte v4, v6, v11

    .line 419
    .local v4, "b":B
    const/16 v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v4, v0, :cond_6

    const/16 v20, 0x39

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v4, v0, :cond_6

    .line 420
    const/16 v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    sub-int v7, v20, v4

    .line 423
    .local v7, "digit":I
    cmp-long v20, v18, v14

    if-ltz v20, :cond_3

    cmp-long v20, v18, v14

    if-nez v20, :cond_5

    int-to-long v0, v7

    move-wide/from16 v20, v0

    cmp-long v20, v20, v12

    if-gez v20, :cond_5

    .line 424
    :cond_3
    new-instance v20, Lokio/Buffer;

    invoke-direct/range {v20 .. v20}, Lokio/Buffer;-><init>()V

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 425
    .local v5, "buffer":Lokio/Buffer;
    if-nez v10, :cond_4

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    .line 426
    :cond_4
    new-instance v20, Ljava/lang/NumberFormatException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Number too large: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v20, Ljava/lang/Throwable;

    throw v20

    .line 428
    .end local v5    # "buffer":Lokio/Buffer;
    :cond_5
    const-wide/16 v20, 0xa

    mul-long v18, v18, v20

    .line 429
    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    .line 442
    .end local v7    # "digit":I
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 444
    add-int/lit8 v16, v16, 0x1

    .line 417
    goto :goto_0

    .line 430
    :cond_6
    const/16 v20, 0x2d

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    if-nez v16, :cond_7

    .line 431
    const/4 v10, 0x1

    .line 432
    const-wide/16 v20, 0x1

    sub-long v12, v12, v20

    goto :goto_1

    .line 434
    :cond_7
    if-nez v16, :cond_8

    .line 435
    new-instance v20, Ljava/lang/NumberFormatException;

    .line 436
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 435
    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v20, Ljava/lang/Throwable;

    throw v20

    .line 440
    :cond_8
    const/4 v8, 0x1

    .line 447
    .end local v4    # "b":B
    :cond_9
    if-ne v11, v9, :cond_b

    .line 448
    invoke-virtual/range {v17 .. v17}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 449
    invoke-static/range {v17 .. v17}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 452
    :goto_2
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 455
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer;->size:J

    .line 456
    if-eqz v10, :cond_c

    .end local v18    # "value":J
    :goto_3
    return-wide v18

    .line 451
    .restart local v18    # "value":J
    :cond_b
    move-object/from16 v0, v17

    iput v11, v0, Lokio/Segment;->pos:I

    goto :goto_2

    .line 456
    :cond_c
    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    goto :goto_3
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
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
    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 216
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-wide/16 v2, 0x0

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
    move v0, v1

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, p1, p2, p3, v1}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 224
    return-object p0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 2
    .param p1, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 638
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 639
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 641
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 642
    return-void
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "sink"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-string v2, "sink"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, "offset":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 828
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v0, v2}, Lokio/Buffer;->read([BII)I

    move-result v1

    .line 829
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 830
    :cond_0
    add-int/2addr v0, v1

    .line 827
    goto :goto_0

    .line 832
    .end local v1    # "read":I
    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 461
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_0

    new-instance v11, Ljava/io/EOFException;

    invoke-direct {v11}, Ljava/io/EOFException;-><init>()V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 463
    :cond_0
    const-wide/16 v12, 0x0

    .line 464
    .local v12, "value":J
    const/4 v9, 0x0

    .line 465
    .local v9, "seen":I
    const/4 v6, 0x0

    .line 467
    .local v6, "done":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v10, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 470
    .local v10, "segment":Lokio/Segment;
    :cond_2
    iget-object v4, v10, Lokio/Segment;->data:[B

    .line 471
    .local v4, "data":[B
    iget v8, v10, Lokio/Segment;->pos:I

    .line 472
    .local v8, "pos":I
    iget v7, v10, Lokio/Segment;->limit:I

    .line 474
    .local v7, "limit":I
    :goto_0
    if-ge v8, v7, :cond_7

    .line 475
    aget-byte v2, v4, v8

    .line 478
    .local v2, "b":B
    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v2, v11, :cond_3

    const/16 v11, 0x39

    int-to-byte v11, v11

    if-gt v2, v11, :cond_3

    .line 479
    const/16 v11, 0x30

    int-to-byte v11, v11

    sub-int v5, v2, v11

    .line 493
    .local v5, "digit":I
    :goto_1
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_9

    .line 497
    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    invoke-virtual {v11, v12, v13}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v3

    .line 498
    .local v3, "buffer":Lokio/Buffer;
    new-instance v11, Ljava/lang/NumberFormatException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Number too large: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 480
    .end local v3    # "buffer":Lokio/Buffer;
    .end local v5    # "digit":I
    :cond_3
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v2, v11, :cond_4

    const/16 v11, 0x66

    int-to-byte v11, v11

    if-gt v2, v11, :cond_4

    .line 481
    const/16 v11, 0x61

    int-to-byte v11, v11

    sub-int v11, v2, v11

    add-int/lit8 v5, v11, 0xa

    .restart local v5    # "digit":I
    goto :goto_1

    .line 482
    .end local v5    # "digit":I
    :cond_4
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v2, v11, :cond_5

    const/16 v11, 0x46

    int-to-byte v11, v11

    if-gt v2, v11, :cond_5

    .line 483
    const/16 v11, 0x41

    int-to-byte v11, v11

    sub-int v11, v2, v11

    add-int/lit8 v5, v11, 0xa

    .restart local v5    # "digit":I
    goto :goto_1

    .line 485
    .end local v5    # "digit":I
    :cond_5
    if-nez v9, :cond_6

    .line 486
    new-instance v11, Ljava/lang/NumberFormatException;

    .line 487
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 486
    invoke-direct {v11, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11

    .line 491
    :cond_6
    const/4 v6, 0x1

    .line 507
    .end local v2    # "b":B
    :cond_7
    if-ne v8, v7, :cond_a

    .line 508
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 509
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 512
    :goto_2
    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_1

    .line 515
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lokio/Buffer;->size:J

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lokio/Buffer;->size:J

    .line 516
    return-wide v12

    .line 501
    .restart local v2    # "b":B
    .restart local v5    # "digit":I
    :cond_9
    const/4 v11, 0x4

    shl-long/2addr v12, v11

    .line 502
    int-to-long v14, v5

    or-long/2addr v12, v14

    .line 503
    add-int/lit8 v8, v8, 0x1

    .line 504
    add-int/lit8 v9, v9, 0x1

    .line 474
    goto/16 :goto_0

    .line 511
    .end local v2    # "b":B
    .end local v5    # "digit":I
    :cond_a
    iput v8, v10, Lokio/Segment;->pos:I

    goto :goto_2
.end method

.method public readInt()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x4

    const/16 v10, 0xff

    .line 322
    iget-wide v8, p0, Lokio/Buffer;->size:J

    cmp-long v7, v8, v12

    if-gez v7, :cond_0

    new-instance v7, Ljava/io/EOFException;

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 324
    :cond_0
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 325
    .local v6, "segment":Lokio/Segment;
    :cond_1
    iget v4, v6, Lokio/Segment;->pos:I

    .line 326
    .local v4, "pos":I
    iget v2, v6, Lokio/Segment;->limit:I

    .line 329
    .local v2, "limit":I
    sub-int v7, v2, v4

    int-to-long v8, v7

    cmp-long v7, v8, v12

    if-gez v7, :cond_2

    .line 330
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v7

    const/16 v3, 0xff

    .line 2244
    .local v3, "other$iv":I
    and-int/2addr v7, v3

    .line 330
    shl-int/lit8 v7, v7, 0x18

    .line 331
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v8

    .line 2245
    and-int/2addr v8, v10

    .line 331
    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    .line 332
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v8

    .line 2246
    and-int/2addr v8, v10

    .line 332
    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    .line 333
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v8

    .line 2247
    and-int/2addr v8, v10

    .line 333
    or-int v1, v7, v8

    .line 348
    :goto_0
    return v1

    .line 336
    .end local v3    # "other$iv":I
    :cond_2
    iget-object v0, v6, Lokio/Segment;->data:[B

    .line 337
    .local v0, "data":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .local v5, "pos":I
    aget-byte v7, v0, v4

    const/16 v3, 0xff

    .line 2248
    .restart local v3    # "other$iv":I
    and-int/2addr v7, v3

    .line 337
    shl-int/lit8 v7, v7, 0x18

    .line 338
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aget-byte v8, v0, v5

    .line 2249
    and-int/2addr v8, v10

    .line 338
    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    .line 339
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    aget-byte v8, v0, v4

    .line 2250
    and-int/2addr v8, v10

    .line 339
    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    .line 340
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aget-byte v8, v0, v5

    .line 2251
    and-int/2addr v8, v10

    .line 340
    or-int v1, v7, v8

    .line 341
    .local v1, "i":I
    iget-wide v8, p0, Lokio/Buffer;->size:J

    sub-long/2addr v8, v12

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 343
    if-ne v4, v2, :cond_3

    .line 344
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 345
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 347
    :cond_3
    iput v4, v6, Lokio/Segment;->pos:I

    goto :goto_0
.end method

.method public readIntLe()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    const-wide/16 v14, 0x8

    cmp-long v9, v12, v14

    if-gez v9, :cond_0

    new-instance v9, Ljava/io/EOFException;

    invoke-direct {v9}, Ljava/io/EOFException;-><init>()V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 358
    .local v8, "segment":Lokio/Segment;
    :cond_1
    iget v6, v8, Lokio/Segment;->pos:I

    .line 359
    .local v6, "pos":I
    iget v3, v8, Lokio/Segment;->limit:I

    .line 362
    .local v3, "limit":I
    sub-int v9, v3, v6

    int-to-long v12, v9

    const-wide/16 v14, 0x8

    cmp-long v9, v12, v14

    if-gez v9, :cond_2

    .line 363
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v9

    const-wide v4, 0xffffffffL

    .line 2252
    .local v4, "other$iv":J
    int-to-long v12, v9

    and-long/2addr v12, v4

    .line 363
    const/16 v9, 0x20

    shl-long/2addr v12, v9

    .line 364
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v9

    const-wide v14, 0xffffffffL

    .line 2253
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 364
    or-long v10, v12, v14

    .line 383
    :goto_0
    return-wide v10

    .line 367
    .end local v4    # "other$iv":J
    :cond_2
    iget-object v2, v8, Lokio/Segment;->data:[B

    .line 368
    .local v2, "data":[B
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    aget-byte v9, v2, v6

    const-wide/16 v4, 0xff

    .line 2254
    .restart local v4    # "other$iv":J
    int-to-long v12, v9

    and-long/2addr v12, v4

    .line 368
    const/16 v9, 0x38

    shl-long/2addr v12, v9

    .line 369
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v9, v2, v7

    const-wide/16 v14, 0xff

    .line 2255
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 369
    const/16 v9, 0x30

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    .line 370
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v9, v2, v6

    const-wide/16 v14, 0xff

    .line 2256
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 370
    const/16 v9, 0x28

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    .line 371
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v9, v2, v7

    const-wide/16 v14, 0xff

    .line 2257
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 371
    const/16 v9, 0x20

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    .line 372
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v9, v2, v6

    const-wide/16 v14, 0xff

    .line 2258
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 372
    const/16 v9, 0x18

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    .line 373
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v9, v2, v7

    const-wide/16 v14, 0xff

    .line 2259
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 373
    const/16 v9, 0x10

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    .line 374
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v9, v2, v6

    const-wide/16 v14, 0xff

    .line 2260
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 374
    const/16 v9, 0x8

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    .line 375
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v9, v2, v7

    const-wide/16 v14, 0xff

    .line 2261
    int-to-long v0, v9

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    .line 375
    or-long v10, v12, v14

    .line 376
    .local v10, "v":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    const-wide/16 v14, 0x8

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lokio/Buffer;->size:J

    .line 378
    if-ne v6, v3, :cond_3

    .line 379
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 380
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto/16 :goto_0

    .line 382
    :cond_3
    iput v6, v8, Lokio/Segment;->pos:I

    goto/16 :goto_0
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x2

    const/16 v10, 0xff

    .line 294
    iget-wide v8, p0, Lokio/Buffer;->size:J

    cmp-long v7, v8, v12

    if-gez v7, :cond_0

    new-instance v7, Ljava/io/EOFException;

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 296
    :cond_0
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 297
    .local v6, "segment":Lokio/Segment;
    :cond_1
    iget v3, v6, Lokio/Segment;->pos:I

    .line 298
    .local v3, "pos":I
    iget v1, v6, Lokio/Segment;->limit:I

    .line 301
    .local v1, "limit":I
    sub-int v7, v1, v3

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 302
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v7

    const/16 v2, 0xff

    .line 2240
    .local v2, "other$iv":I
    and-int/2addr v7, v2

    .line 302
    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v8

    .line 2241
    and-int/2addr v8, v10

    .line 302
    or-int v5, v7, v8

    .line 303
    .local v5, "s":I
    int-to-short v7, v5

    .line 315
    :goto_0
    return v7

    .line 306
    .end local v2    # "other$iv":I
    .end local v5    # "s":I
    :cond_2
    iget-object v0, v6, Lokio/Segment;->data:[B

    .line 307
    .local v0, "data":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v7, v0, v3

    const/16 v2, 0xff

    .line 2242
    .restart local v2    # "other$iv":I
    and-int/2addr v7, v2

    .line 307
    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v8, v0, v4

    .line 2243
    and-int/2addr v8, v10

    .line 307
    or-int v5, v7, v8

    .line 308
    .restart local v5    # "s":I
    iget-wide v8, p0, Lokio/Buffer;->size:J

    sub-long/2addr v8, v12

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 310
    if-ne v3, v1, :cond_3

    .line 311
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 312
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 315
    :goto_1
    int-to-short v7, v5

    goto :goto_0

    .line 314
    :cond_3
    iput v3, v6, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public readShortLe()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const-string v2, "charset"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 663
    :cond_1
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 664
    :cond_2
    cmp-long v2, p1, v4

    if-nez v2, :cond_4

    const-string v0, ""

    .line 681
    :cond_3
    :goto_1
    return-object v0

    .line 666
    :cond_4
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 667
    .local v1, "s":Lokio/Segment;
    :cond_5
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v4, v1, Lokio/Segment;->limit:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 669
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 672
    :cond_6
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    long-to-int v4, p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 673
    .local v0, "result":Ljava/lang/String;
    iget v2, v1, Lokio/Segment;->pos:I

    long-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v1, Lokio/Segment;->pos:I

    .line 674
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 676
    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_3

    .line 677
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 678
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1}, Lokio/Buffer;->readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1762
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "already attached to a buffer"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1764
    :cond_1
    check-cast p0, Lokio/Buffer;

    .end local p0    # "this":Lokio/Buffer;
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1765
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1766
    return-object p1
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 653
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 656
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const v7, 0xfffd

    .line 735
    iget-wide v8, p0, Lokio/Buffer;->size:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    new-instance v7, Ljava/io/EOFException;

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 737
    :cond_0
    invoke-virtual {p0, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 738
    .local v1, "b0":B
    const/16 v6, 0x80

    .line 2265
    .local v6, "other$iv":I
    and-int v8, v1, v6

    if-nez v8, :cond_1

    .line 745
    const/16 v6, 0x7f

    .line 2266
    and-int v3, v1, v6

    .line 746
    .local v3, "codePoint":I
    const/4 v2, 0x1

    .line 747
    .local v2, "byteCount":I
    const/4 v5, 0x0

    .line 772
    .local v5, "min":I
    :goto_0
    iget-wide v8, p0, Lokio/Buffer;->size:J

    int-to-long v10, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 775
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lokio/Buffer;->size:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (to read code point prefixed 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 776
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 775
    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 749
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_1
    const/16 v6, 0xe0

    .line 2267
    and-int v8, v1, v6

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_2

    .line 751
    const/16 v6, 0x1f

    .line 2268
    and-int v3, v1, v6

    .line 752
    .restart local v3    # "codePoint":I
    const/4 v2, 0x2

    .line 753
    .restart local v2    # "byteCount":I
    const/16 v5, 0x80

    .restart local v5    # "min":I
    goto :goto_0

    .line 755
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_2
    const/16 v6, 0xf0

    .line 2269
    and-int v8, v1, v6

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_3

    .line 757
    const/16 v6, 0xf

    .line 2270
    and-int v3, v1, v6

    .line 758
    .restart local v3    # "codePoint":I
    const/4 v2, 0x3

    .line 759
    .restart local v2    # "byteCount":I
    const/16 v5, 0x800

    .restart local v5    # "min":I
    goto :goto_0

    .line 761
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_3
    const/16 v6, 0xf8

    .line 2271
    and-int v8, v1, v6

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_4

    .line 763
    const/4 v6, 0x7

    .line 2272
    and-int v3, v1, v6

    .line 764
    .restart local v3    # "codePoint":I
    const/4 v2, 0x4

    .line 765
    .restart local v2    # "byteCount":I
    const/high16 v5, 0x10000

    .restart local v5    # "min":I
    goto :goto_0

    .line 769
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_4
    const-wide/16 v8, 0x1

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 796
    :goto_1
    return v7

    .line 782
    .restart local v2    # "byteCount":I
    .restart local v3    # "codePoint":I
    .restart local v5    # "min":I
    :cond_5
    const/4 v4, 0x1

    :goto_2
    if-ge v4, v2, :cond_7

    .line 783
    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 784
    .local v0, "b":B
    const/16 v6, 0xc0

    .line 2273
    and-int v8, v0, v6

    const/16 v9, 0x80

    if-ne v8, v9, :cond_6

    .line 786
    shl-int/lit8 v3, v3, 0x6

    .line 787
    const/16 v8, 0x3f

    .line 2274
    and-int/2addr v8, v0

    .line 787
    or-int/2addr v3, v8

    .line 791
    add-int/lit8 v4, v4, 0x1

    .local v4, "i":I
    goto :goto_2

    .line 789
    .end local v4    # "i":I
    :cond_6
    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    goto :goto_1

    .line 794
    .end local v0    # "b":B
    :cond_7
    int-to-long v8, v2

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 796
    const v8, 0x10ffff

    if-le v3, v8, :cond_9

    move v3, v7

    .end local v3    # "codePoint":I
    :cond_8
    :goto_3
    move v7, v3

    goto :goto_1

    .line 800
    .restart local v3    # "codePoint":I
    :cond_9
    const v8, 0xdfff

    const v9, 0xd800

    if-le v9, v3, :cond_b

    .line 803
    :cond_a
    if-ge v3, v5, :cond_8

    move v3, v7

    .line 804
    goto :goto_3

    .line 800
    :cond_b
    if-lt v8, v3, :cond_a

    move v3, v7

    .line 801
    goto :goto_3
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 686
    const/16 v2, 0xa

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 688
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 690
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 691
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final readUtf8Line$jvm(J)Ljava/lang/String;
    .locals 7
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 717
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    sub-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_0

    .line 720
    sub-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    move-object v1, v0

    .line 717
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 726
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 727
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->skip(J)V

    move-object v1, v0

    .line 728
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 696
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 17
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 700
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limit < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 701
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    .line 702
    .local v6, "scanLength":J
    :goto_1
    const/16 v2, 0xa

    int-to-byte v3, v2

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v14

    .line 703
    .local v14, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object v2

    .line 707
    :goto_2
    return-object v2

    .line 701
    .end local v6    # "scanLength":J
    .end local v14    # "newline":J
    :cond_2
    const-wide/16 v2, 0x1

    add-long v6, p1, v2

    goto :goto_1

    .line 704
    .restart local v6    # "scanLength":J
    .restart local v14    # "newline":J
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    cmp-long v2, v6, v2

    if-gez v2, :cond_4

    .line 705
    const-wide/16 v2, 0x1

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_4

    .line 706
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    int-to-byte v3, v3

    if-ne v2, v3, :cond_4

    .line 707
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 709
    :cond_4
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    .line 710
    .local v9, "data":Lokio/Buffer;
    const-wide/16 v10, 0x0

    const/16 v2, 0x20

    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 2264
    int-to-long v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v8, p0

    .line 710
    invoke-virtual/range {v8 .. v13}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 711
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\n not found: limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 712
    move-wide/from16 v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2026

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public request(J)Z
    .locals 3
    .param p1, "byteCount"    # J

    .prologue
    .line 84
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public require(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 81
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public select(Lokio/Options;)I
    .locals 6
    .param p1, "options"    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const-string v3, "options"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, p1, v3, v4, v5}, Lokio/Buffer;->selectPrefix$jvm$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v0

    .line 526
    .local v0, "index":I
    if-ne v0, v2, :cond_0

    move v0, v2

    .line 531
    .end local v0    # "index":I
    :goto_0
    return v0

    .line 529
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$jvm()[Lokio/ByteString;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v1

    .line 530
    .local v1, "selectedSize":I
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    goto :goto_0
.end method

.method public final selectPrefix$jvm(Lokio/Options;Z)I
    .locals 23
    .param p1, "options"    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "selectTruncated"    # Z

    .prologue
    const-string v22, "options"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_2

    .line 549
    .local v4, "head":Lokio/Segment;
    move-object v12, v4

    .line 550
    .local v12, "s":Lokio/Segment;
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 551
    .local v3, "data":[B
    iget v8, v4, Lokio/Segment;->pos:I

    .line 552
    .local v8, "pos":I
    iget v5, v4, Lokio/Segment;->limit:I

    .line 554
    .local v5, "limit":I
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$jvm()[I

    move-result-object v18

    .line 555
    .local v18, "trie":[I
    const/16 v20, 0x0

    .line 557
    .local v20, "triePos":I
    const/4 v11, -0x1

    .line 559
    .local v11, "prefixIndex":I
    :goto_0
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "triePos":I
    .local v21, "triePos":I
    aget v15, v18, v20

    .line 563
    .local v15, "scanOrSelect":I
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "triePos":I
    .restart local v20    # "triePos":I
    aget v10, v18, v21

    .line 564
    .local v10, "possiblePrefixIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_0

    .line 565
    move v11, v10

    .line 568
    :cond_0
    if-nez v12, :cond_4

    .line 631
    :goto_1
    if-eqz p2, :cond_1

    const/4 v11, -0x2

    .line 632
    .end local v3    # "data":[B
    .end local v4    # "head":Lokio/Segment;
    .end local v5    # "limit":I
    .end local v8    # "pos":I
    .end local v10    # "possiblePrefixIndex":I
    .end local v11    # "prefixIndex":I
    .end local v12    # "s":Lokio/Segment;
    .end local v15    # "scanOrSelect":I
    .end local v18    # "trie":[I
    .end local v20    # "triePos":I
    :cond_1
    :goto_2
    return v11

    .line 547
    :cond_2
    if-eqz p2, :cond_3

    const/16 v22, -0x2

    :goto_3
    move/from16 v11, v22

    goto :goto_2

    :cond_3
    const/16 v22, -0x1

    goto :goto_3

    .line 572
    .restart local v3    # "data":[B
    .restart local v4    # "head":Lokio/Segment;
    .restart local v5    # "limit":I
    .restart local v8    # "pos":I
    .restart local v10    # "possiblePrefixIndex":I
    .restart local v11    # "prefixIndex":I
    .restart local v12    # "s":Lokio/Segment;
    .restart local v15    # "scanOrSelect":I
    .restart local v18    # "trie":[I
    .restart local v20    # "triePos":I
    :cond_4
    if-gez v15, :cond_c

    .line 574
    mul-int/lit8 v13, v15, -0x1

    .line 575
    .local v13, "scanByteCount":I
    add-int v19, v20, v13

    .line 576
    .local v19, "trieLimit":I
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .local v9, "pos":I
    aget-byte v22, v3, v8

    const/16 v7, 0xff

    .line 2262
    .local v7, "other$iv":I
    and-int v2, v22, v7

    .line 578
    .local v2, "byte":I
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "triePos":I
    .restart local v21    # "triePos":I
    aget v22, v18, v20

    move/from16 v0, v22

    if-ne v2, v0, :cond_1

    .line 579
    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/4 v14, 0x1

    .line 582
    .local v14, "scanComplete":Z
    :goto_5
    if-ne v9, v5, :cond_11

    .line 583
    if-nez v12, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    .end local v12    # "s":Lokio/Segment;
    if-nez v12, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 584
    .restart local v12    # "s":Lokio/Segment;
    :cond_6
    iget v8, v12, Lokio/Segment;->pos:I

    .line 585
    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    iget-object v3, v12, Lokio/Segment;->data:[B

    .line 586
    iget v5, v12, Lokio/Segment;->limit:I

    .line 587
    if-ne v12, v4, :cond_9

    .line 588
    if-nez v14, :cond_8

    move/from16 v20, v21

    .end local v21    # "triePos":I
    .restart local v20    # "triePos":I
    goto :goto_1

    .line 579
    .end local v8    # "pos":I
    .end local v14    # "scanComplete":Z
    .end local v20    # "triePos":I
    .restart local v9    # "pos":I
    .restart local v21    # "triePos":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 589
    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    .restart local v14    # "scanComplete":Z
    :cond_8
    const/4 v12, 0x0

    check-cast v12, Lokio/Segment;

    .line 593
    :cond_9
    :goto_6
    if-eqz v14, :cond_b

    .line 594
    aget v6, v18, v21

    .local v6, "nextStep":I
    move/from16 v20, v21

    .line 624
    .end local v13    # "scanByteCount":I
    .end local v14    # "scanComplete":Z
    .end local v19    # "trieLimit":I
    .end local v21    # "triePos":I
    .restart local v20    # "triePos":I
    :cond_a
    :goto_7
    if-ltz v6, :cond_f

    move v11, v6

    goto :goto_2

    .end local v6    # "nextStep":I
    .end local v20    # "triePos":I
    .restart local v13    # "scanByteCount":I
    .restart local v14    # "scanComplete":Z
    .restart local v19    # "trieLimit":I
    .restart local v21    # "triePos":I
    :cond_b
    move/from16 v20, v21

    .line 576
    .end local v21    # "triePos":I
    .restart local v20    # "triePos":I
    goto :goto_4

    .line 600
    .end local v2    # "byte":I
    .end local v7    # "other$iv":I
    .end local v13    # "scanByteCount":I
    .end local v14    # "scanComplete":Z
    .end local v19    # "trieLimit":I
    :cond_c
    move/from16 v16, v15

    .line 601
    .local v16, "selectChoiceCount":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    aget-byte v22, v3, v8

    const/16 v7, 0xff

    .line 2263
    .restart local v7    # "other$iv":I
    and-int v2, v22, v7

    .line 602
    .restart local v2    # "byte":I
    add-int v17, v20, v16

    .line 603
    .local v17, "selectLimit":I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 606
    aget v22, v18, v20

    move/from16 v0, v22

    if-ne v2, v0, :cond_e

    .line 607
    add-int v22, v20, v16

    aget v6, v18, v22

    .line 615
    .restart local v6    # "nextStep":I
    if-ne v9, v5, :cond_10

    .line 616
    iget-object v12, v12, Lokio/Segment;->next:Lokio/Segment;

    .end local v12    # "s":Lokio/Segment;
    if-nez v12, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 617
    .restart local v12    # "s":Lokio/Segment;
    :cond_d
    iget v8, v12, Lokio/Segment;->pos:I

    .line 618
    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    iget-object v3, v12, Lokio/Segment;->data:[B

    .line 619
    iget v5, v12, Lokio/Segment;->limit:I

    .line 620
    if-ne v12, v4, :cond_a

    .line 621
    const/4 v12, 0x0

    check-cast v12, Lokio/Segment;

    goto :goto_7

    .line 611
    .end local v6    # "nextStep":I
    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    :cond_e
    add-int/lit8 v20, v20, 0x1

    .line 603
    goto :goto_8

    .line 627
    .end local v9    # "pos":I
    .end local v16    # "selectChoiceCount":I
    .end local v17    # "selectLimit":I
    .restart local v6    # "nextStep":I
    .restart local v8    # "pos":I
    :cond_f
    neg-int v0, v6

    move/from16 v20, v0

    .line 560
    goto/16 :goto_0

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    .restart local v16    # "selectChoiceCount":I
    .restart local v17    # "selectLimit":I
    :cond_10
    move v8, v9

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_7

    .end local v6    # "nextStep":I
    .end local v8    # "pos":I
    .end local v16    # "selectChoiceCount":I
    .end local v17    # "selectLimit":I
    .end local v20    # "triePos":I
    .restart local v9    # "pos":I
    .restart local v13    # "scanByteCount":I
    .restart local v14    # "scanComplete":Z
    .restart local v19    # "trieLimit":I
    .restart local v21    # "triePos":I
    :cond_11
    move v8, v9

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_6
.end method

.method public final setSize$jvm(J)V
    .locals 1
    .param p1, "<set-?>"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1629
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1632
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1635
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .prologue
    .line 48
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 879
    .line 880
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    .line 881
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    .line 883
    .local v1, "head":Lokio/Segment;
    iget v3, v1, Lokio/Segment;->limit:I

    iget v4, v1, Lokio/Segment;->pos:I

    sub-int v0, v3, v4

    .line 2275
    .local v0, "b$iv":I
    int-to-long v4, v0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    nop

    .line 883
    long-to-int v2, v4

    .line 884
    .local v2, "toSkip":I
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 885
    int-to-long v4, v2

    sub-long/2addr p1, v4

    .line 886
    iget v3, v1, Lokio/Segment;->pos:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->pos:I

    .line 888
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_0

    .line 889
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 890
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 881
    .end local v0    # "b$iv":I
    .end local v1    # "head":Lokio/Segment;
    .end local v2    # "toSkip":I
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 893
    :cond_2
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1752
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1753
    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 1
    .param p1, "byteCount"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1758
    if-nez p1, :cond_0

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lokio/SegmentedByteString;->Companion:Lokio/SegmentedByteString$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/SegmentedByteString$Companion;->of(Lokio/Buffer;I)Lokio/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1623
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1731
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writableSegment$jvm(I)Lokio/Segment;
    .locals 4
    .param p1, "minimumCapacity"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v3, 0x2000

    const/4 v2, 0x1

    .line 1270
    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "unexpected capacity"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_2

    .line 1273
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    .line 1274
    .local v0, "result":Lokio/Segment;
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1275
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1276
    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1284
    .end local v0    # "result":Lokio/Segment;
    :goto_1
    return-object v0

    .line 1280
    :cond_2
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v1, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1281
    .local v1, "tail":Lokio/Segment;
    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget v2, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v3, :cond_5

    iget-boolean v2, v1, Lokio/Segment;->owner:Z

    if-nez v2, :cond_6

    .line 1282
    :cond_5
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    :cond_6
    move-object v0, v1

    .line 1284
    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "source"    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "source"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1085
    .local v0, "byteCount":I
    move v1, v0

    .line 1086
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 1087
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1089
    .local v2, "tail":Lokio/Segment;
    iget v4, v2, Lokio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1090
    .local v3, "toCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1092
    sub-int/2addr v1, v3

    .line 1093
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    goto :goto_0

    .line 1096
    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "toCopy":I
    :cond_0
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1097
    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 1
    .param p1, "byteString"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, p0}, Lokio/ByteString;->write$jvm(Lokio/Buffer;)V

    .line 897
    return-object p0
.end method

.method public write([B)Lokio/Buffer;
    .locals 2
    .param p1, "source"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 9
    .param p1, "source"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1067
    add-int v6, p2, p3

    .line 1068
    .local v6, "limit":I
    :goto_0
    if-ge p2, v6, :cond_0

    .line 1069
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v7

    .line 1071
    .local v7, "tail":Lokio/Segment;
    sub-int v0, v6, p2

    iget v1, v7, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1072
    .local v8, "toCopy":I
    iget-object v0, v7, Lokio/Segment;->data:[B

    iget v1, v7, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1074
    add-int/2addr p2, v8

    .line 1075
    iget v0, v7, Lokio/Segment;->limit:I

    add-int/2addr v0, v8

    iput v0, v7, Lokio/Segment;->limit:I

    goto :goto_0

    .line 1078
    .end local v7    # "tail":Lokio/Segment;
    .end local v8    # "toCopy":I
    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1079
    return-object p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 4
    .param p1, "source"    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "source"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 1115
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 1116
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 1117
    :cond_0
    sub-long/2addr p2, v0

    .line 1114
    goto :goto_0

    .line 1119
    .end local v0    # "read":J
    :cond_1
    check-cast p0, Lokio/BufferedSink;

    .end local p0    # "this":Lokio/Buffer;
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 12
    .param p1, "source"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1339
    check-cast v0, Lokio/Buffer;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "source == this"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    move v0, v10

    goto :goto_0

    .line 1340
    :cond_1
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1342
    :goto_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    .line 1344
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_b

    .line 1345
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v9, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1346
    .local v9, "tail":Lokio/Segment;
    :goto_2
    if-eqz v9, :cond_9

    iget-boolean v0, v9, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_9

    iget v0, v9, Lokio/Segment;->limit:I

    int-to-long v0, v0

    add-long v4, p2, v0

    iget-boolean v0, v9, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_8

    move v0, v10

    :goto_3
    int-to-long v0, v0

    sub-long v0, v4, v0

    const/16 v4, 0x2000

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_9

    .line 1349
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    long-to-int v1, p2

    invoke-virtual {v0, v9, v1}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1350
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1351
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1377
    .end local v9    # "tail":Lokio/Segment;
    :cond_6
    return-void

    .line 1345
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1346
    .restart local v9    # "tail":Lokio/Segment;
    :cond_8
    iget v0, v9, Lokio/Segment;->pos:I

    goto :goto_3

    .line 1356
    :cond_9
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1357
    .end local v9    # "tail":Lokio/Segment;
    :cond_b
    iget-object v8, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1362
    .local v8, "segmentToMove":Lokio/Segment;
    if-nez v8, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v6, v0

    .line 1363
    .local v6, "movedByteCount":J
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1364
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_d

    .line 1365
    iput-object v8, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1366
    iput-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 1367
    iget-object v0, v8, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 1372
    :goto_4
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, v6

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1374
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1375
    sub-long/2addr p2, v6

    .line 1342
    goto/16 :goto_1

    .line 1369
    :cond_d
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    iget-object v9, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1370
    .restart local v9    # "tail":Lokio/Segment;
    if-nez v9, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual {v9, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v9

    .line 1371
    invoke-virtual {v9}, Lokio/Segment;->compact()V

    goto :goto_4
.end method

.method public writeAll(Lokio/Source;)J
    .locals 6
    .param p1, "source"    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "source"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    const-wide/16 v2, 0x0

    .line 1103
    .local v2, "totalBytesRead":J
    :goto_0
    const/16 v4, 0x2000

    int-to-long v4, v4

    invoke-interface {p1, p0, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 1105
    .local v0, "readCount":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 1108
    return-wide v2

    .line 1106
    :cond_0
    add-long/2addr v2, v0

    .line 1103
    goto :goto_0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 6
    .param p1, "b"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1123
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 1124
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1125
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 1126
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 13
    .param p1, "v"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v7, 0xa

    const-wide/16 v10, 0x0

    .line 1177
    .line 1178
    cmp-long v6, p1, v10

    if-nez v6, :cond_0

    .line 1180
    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1239
    .end local p0    # "this":Lokio/Buffer;
    :goto_0
    return-object p0

    .line 1183
    .restart local p0    # "this":Lokio/Buffer;
    :cond_0
    const/4 v2, 0x0

    .line 1184
    .local v2, "negative":Z
    cmp-long v6, p1, v10

    if-gez v6, :cond_2

    .line 1185
    neg-long p1, p1

    .line 1186
    cmp-long v6, p1, v10

    if-gez v6, :cond_1

    .line 1187
    const-string v6, "-9223372036854775808"

    invoke-virtual {p0, v6}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    goto :goto_0

    .line 1189
    :cond_1
    const/4 v2, 0x1

    .line 1193
    :cond_2
    const-wide/32 v8, 0x5f5e100

    cmp-long v6, p1, v8

    if-gez v6, :cond_b

    .line 1195
    const-wide/16 v8, 0x2710

    cmp-long v6, p1, v8

    if-gez v6, :cond_7

    .line 1196
    const-wide/16 v8, 0x64

    cmp-long v6, p1, v8

    if-gez v6, :cond_5

    .line 1197
    const-wide/16 v8, 0xa

    cmp-long v6, p1, v8

    if-gez v6, :cond_4

    const/4 v6, 0x1

    move v5, v6

    .line 1221
    .local v5, "width":I
    :goto_1
    if-eqz v2, :cond_3

    .line 1222
    add-int/lit8 v5, v5, 0x1

    .line 1225
    :cond_3
    invoke-virtual {p0, v5}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v4

    .line 1226
    .local v4, "tail":Lokio/Segment;
    iget-object v0, v4, Lokio/Segment;->data:[B

    .line 1227
    .local v0, "data":[B
    iget v6, v4, Lokio/Segment;->limit:I

    add-int v3, v6, v5

    .line 1228
    .local v3, "pos":I
    :goto_2
    cmp-long v6, p1, v10

    if-eqz v6, :cond_16

    .line 1229
    int-to-long v8, v7

    rem-long v8, p1, v8

    long-to-int v1, v8

    .line 1230
    .local v1, "digit":I
    add-int/lit8 v3, v3, -0x1

    sget-object v6, Lokio/Buffer;->DIGITS:[B

    aget-byte v6, v6, v1

    aput-byte v6, v0, v3

    .line 1231
    int-to-long v8, v7

    div-long/2addr p1, v8

    .line 1228
    goto :goto_2

    .line 1198
    .end local v0    # "data":[B
    .end local v1    # "digit":I
    .end local v3    # "pos":I
    .end local v4    # "tail":Lokio/Segment;
    .end local v5    # "width":I
    :cond_4
    const/4 v6, 0x2

    move v5, v6

    .line 1197
    goto :goto_1

    .line 1199
    :cond_5
    const-wide/16 v8, 0x3e8

    cmp-long v6, p1, v8

    if-gez v6, :cond_6

    const/4 v6, 0x3

    :goto_3
    move v5, v6

    goto :goto_1

    .line 1200
    :cond_6
    const/4 v6, 0x4

    goto :goto_3

    .line 1201
    :cond_7
    const-wide/32 v8, 0xf4240

    cmp-long v6, p1, v8

    if-gez v6, :cond_9

    .line 1202
    const-wide/32 v8, 0x186a0

    cmp-long v6, p1, v8

    if-gez v6, :cond_8

    const/4 v6, 0x5

    :goto_4
    move v5, v6

    .line 1204
    goto :goto_1

    .line 1203
    :cond_8
    const/4 v6, 0x6

    .line 1202
    goto :goto_4

    .line 1204
    :cond_9
    const-wide/32 v8, 0x989680

    cmp-long v6, p1, v8

    if-gez v6, :cond_a

    const/4 v6, 0x7

    goto :goto_4

    .line 1205
    :cond_a
    const/16 v6, 0x8

    goto :goto_4

    .line 1206
    :cond_b
    const-wide v8, 0xe8d4a51000L

    cmp-long v6, p1, v8

    if-gez v6, :cond_f

    .line 1207
    const-wide v8, 0x2540be400L

    cmp-long v6, p1, v8

    if-gez v6, :cond_d

    .line 1208
    const-wide/32 v8, 0x3b9aca00

    cmp-long v6, p1, v8

    if-gez v6, :cond_c

    const/16 v6, 0x9

    move v5, v6

    goto :goto_1

    :cond_c
    move v5, v7

    goto :goto_1

    .line 1210
    :cond_d
    const-wide v8, 0x174876e800L

    cmp-long v6, p1, v8

    if-gez v6, :cond_e

    const/16 v6, 0xb

    :goto_5
    move v5, v6

    goto :goto_1

    .line 1211
    :cond_e
    const/16 v6, 0xc

    goto :goto_5

    .line 1212
    :cond_f
    const-wide v8, 0x38d7ea4c68000L

    cmp-long v6, p1, v8

    if-gez v6, :cond_12

    .line 1213
    const-wide v8, 0x9184e72a000L

    cmp-long v6, p1, v8

    if-gez v6, :cond_10

    const/16 v6, 0xd

    move v5, v6

    goto/16 :goto_1

    .line 1214
    :cond_10
    const-wide v8, 0x5af3107a4000L

    cmp-long v6, p1, v8

    if-gez v6, :cond_11

    const/16 v6, 0xe

    :goto_6
    move v5, v6

    goto/16 :goto_1

    .line 1215
    :cond_11
    const/16 v6, 0xf

    goto :goto_6

    .line 1216
    :cond_12
    const-wide v8, 0x16345785d8a0000L

    cmp-long v6, p1, v8

    if-gez v6, :cond_14

    .line 1217
    const-wide v8, 0x2386f26fc10000L

    cmp-long v6, p1, v8

    if-gez v6, :cond_13

    const/16 v6, 0x10

    move v5, v6

    goto/16 :goto_1

    .line 1218
    :cond_13
    const/16 v6, 0x11

    move v5, v6

    .line 1217
    goto/16 :goto_1

    .line 1219
    :cond_14
    const-wide v8, 0xde0b6b3a7640000L

    cmp-long v6, p1, v8

    if-gez v6, :cond_15

    const/16 v6, 0x12

    move v5, v6

    goto/16 :goto_1

    .line 1220
    :cond_15
    const/16 v6, 0x13

    move v5, v6

    goto/16 :goto_1

    .line 1233
    .restart local v0    # "data":[B
    .restart local v3    # "pos":I
    .restart local v4    # "tail":Lokio/Segment;
    .restart local v5    # "width":I
    :cond_16
    if-eqz v2, :cond_17

    .line 1234
    add-int/lit8 v3, v3, -0x1

    const/16 v6, 0x2d

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 1237
    :cond_17
    iget v6, v4, Lokio/Segment;->limit:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->limit:I

    .line 1238
    iget-wide v6, p0, Lokio/Buffer;->size:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    goto/16 :goto_0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1243
    .line 1244
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    .line 1246
    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1262
    .end local p0    # "this":Lokio/Buffer;
    :goto_0
    return-object p0

    .line 1249
    .restart local p0    # "this":Lokio/Buffer;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v5, 0x1

    .line 1251
    .local v4, "width":I
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1252
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1253
    .local v0, "data":[B
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    add-int/lit8 v1, v5, -0x1

    .line 1254
    .local v1, "pos":I
    iget v2, v3, Lokio/Segment;->limit:I

    .line 1255
    .local v2, "start":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 1256
    sget-object v5, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v0, v1

    .line 1257
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1258
    add-int/lit8 v1, v1, -0x1

    .line 1255
    goto :goto_1

    .line 1260
    :cond_1
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->limit:I

    .line 1261
    iget-wide v6, p0, Lokio/Buffer;->size:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    goto :goto_0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 8
    .param p1, "i"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1143
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1144
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1145
    .local v0, "data":[B
    iget v1, v3, Lokio/Segment;->limit:I

    .line 1146
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1147
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1148
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1149
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1150
    iput v1, v3, Lokio/Segment;->limit:I

    .line 1151
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1152
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "i"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1155
    invoke-static {p1}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 9
    .param p1, "v"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 1158
    invoke-virtual {p0, v8}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1159
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1160
    .local v0, "data":[B
    iget v1, v3, Lokio/Segment;->limit:I

    .line 1161
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1162
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1163
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1164
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1165
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1166
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1167
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1168
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1169
    iput v1, v3, Lokio/Segment;->limit:I

    .line 1170
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1171
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 3
    .param p1, "v"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1174
    invoke-static {p1, p2}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 8
    .param p1, "s"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1130
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1131
    .local v3, "tail":Lokio/Segment;
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1132
    .local v0, "data":[B
    iget v1, v3, Lokio/Segment;->limit:I

    .line 1133
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1134
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1135
    iput v1, v3, Lokio/Segment;->limit:I

    .line 1136
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 1137
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "s"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1140
    int-to-short v0, p1

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "string"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "charset"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    if-ltz p2, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    .line 1054
    :cond_1
    if-lt p3, p2, :cond_2

    move v3, v1

    :goto_1
    if-nez v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_2
    move v3, v2

    goto :goto_1

    .line 1055
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt p3, v3, :cond_4

    :goto_2
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1056
    :cond_5
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v1

    .line 1058
    :goto_3
    return-object v1

    .line 1057
    :cond_6
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_7

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-virtual {v1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    .local v0, "data":[B
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    goto :goto_3
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    .line 1045
    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lokio/Buffer;->writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 192
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 193
    .local v7, "s":Lokio/Segment;
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 194
    if-nez v7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int v6, v0, v1

    .line 2218
    .local v6, "b$iv":I
    int-to-long v0, v6

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    .line 194
    long-to-int v8, v0

    .line 195
    .local v8, "toCopy":I
    iget-object v0, v7, Lokio/Segment;->data:[B

    iget v1, v7, Lokio/Segment;->pos:I

    invoke-virtual {p1, v0, v1, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    iget v0, v7, Lokio/Segment;->pos:I

    add-int/2addr v0, v8

    iput v0, v7, Lokio/Segment;->pos:I

    .line 198
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v4, v8

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 199
    int-to-long v0, v8

    sub-long/2addr p2, v0

    .line 201
    iget v0, v7, Lokio/Segment;->pos:I

    iget v1, v7, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 202
    move-object v9, v7

    .line 203
    .local v9, "toRecycle":Lokio/Segment;
    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    .line 204
    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 205
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 209
    .end local v6    # "b$iv":I
    .end local v8    # "toCopy":I
    .end local v9    # "toRecycle":Lokio/Segment;
    :cond_2
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 16
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v12, "string"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    if-ltz p2, :cond_0

    const/4 v12, 0x1

    :goto_0
    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "beginIndex < 0: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 904
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "endIndex < beginIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " < "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 905
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p3

    if-gt v0, v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    if-nez v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "endIndex > string.length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 908
    :cond_5
    move/from16 v5, p2

    .local v5, "i":I
    move v6, v5

    .line 909
    .end local v5    # "i":I
    .local v6, "i":I
    :goto_3
    move/from16 v0, p3

    if-ge v6, v0, :cond_f

    .line 910
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 912
    .local v2, "c":I
    const/16 v12, 0x80

    if-ge v2, v12, :cond_8

    .line 914
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v11

    .line 915
    .local v11, "tail":Lokio/Segment;
    iget-object v4, v11, Lokio/Segment;->data:[B

    .line 916
    .local v4, "data":[B
    iget v12, v11, Lokio/Segment;->limit:I

    sub-int v10, v12, v6

    .line 917
    .local v10, "segmentOffset":I
    rsub-int v12, v10, 0x2000

    move/from16 v0, p3

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 920
    .local v8, "runLimit":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    add-int v12, v10, v6

    int-to-byte v13, v2

    aput-byte v13, v4, v12

    move v6, v5

    .line 924
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v8, :cond_6

    .line 925
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 926
    const/16 v12, 0x80

    if-lt v2, v12, :cond_7

    .line 930
    :cond_6
    add-int v12, v6, v10

    iget v13, v11, Lokio/Segment;->limit:I

    sub-int v9, v12, v13

    .line 931
    .local v9, "runSize":I
    iget v12, v11, Lokio/Segment;->limit:I

    add-int/2addr v12, v9

    iput v12, v11, Lokio/Segment;->limit:I

    .line 932
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    int-to-long v14, v9

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lokio/Buffer;->size:J

    move v5, v6

    .end local v4    # "data":[B
    .end local v6    # "i":I
    .end local v8    # "runLimit":I
    .end local v9    # "runSize":I
    .end local v10    # "segmentOffset":I
    .end local v11    # "tail":Lokio/Segment;
    .restart local v5    # "i":I
    :goto_5
    move v6, v5

    .line 985
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    .line 927
    .restart local v4    # "data":[B
    .restart local v8    # "runLimit":I
    .restart local v10    # "segmentOffset":I
    .restart local v11    # "tail":Lokio/Segment;
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    add-int v12, v10, v6

    int-to-byte v13, v2

    aput-byte v13, v4, v12

    move v6, v5

    .line 924
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    .line 935
    .end local v4    # "data":[B
    .end local v8    # "runLimit":I
    .end local v10    # "segmentOffset":I
    .end local v11    # "tail":Lokio/Segment;
    :cond_8
    const/16 v12, 0x800

    if-ge v2, v12, :cond_9

    .line 937
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v11

    .line 939
    .restart local v11    # "tail":Lokio/Segment;
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    shr-int/lit8 v14, v2, 0x6

    or-int/lit16 v14, v14, 0xc0

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 940
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x1

    and-int/lit8 v14, v2, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 942
    iget v12, v11, Lokio/Segment;->limit:I

    add-int/lit8 v12, v12, 0x2

    iput v12, v11, Lokio/Segment;->limit:I

    .line 943
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lokio/Buffer;->size:J

    .line 944
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_5

    .line 947
    .end local v5    # "i":I
    .end local v11    # "tail":Lokio/Segment;
    .restart local v6    # "i":I
    :cond_9
    const v12, 0xd800

    if-lt v2, v12, :cond_a

    const v12, 0xdfff

    if-le v2, v12, :cond_b

    .line 949
    :cond_a
    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v11

    .line 951
    .restart local v11    # "tail":Lokio/Segment;
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    shr-int/lit8 v14, v2, 0xc

    or-int/lit16 v14, v14, 0xe0

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 952
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v14, v2, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 953
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x2

    and-int/lit8 v14, v2, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 955
    iget v12, v11, Lokio/Segment;->limit:I

    add-int/lit8 v12, v12, 0x3

    iput v12, v11, Lokio/Segment;->limit:I

    .line 956
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    const-wide/16 v14, 0x3

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lokio/Buffer;->size:J

    .line 957
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_5

    .line 964
    .end local v5    # "i":I
    .end local v11    # "tail":Lokio/Segment;
    .restart local v6    # "i":I
    :cond_b
    add-int/lit8 v12, v6, 0x1

    move/from16 v0, p3

    if-ge v12, v0, :cond_d

    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 965
    .local v7, "low":I
    :goto_6
    const v12, 0xdbff

    if-gt v2, v12, :cond_c

    const v12, 0xdfff

    const v13, 0xdc00

    if-gt v13, v7, :cond_c

    if-ge v12, v7, :cond_e

    .line 966
    :cond_c
    const/16 v12, 0x3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 967
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_5

    .line 964
    .end local v5    # "i":I
    .end local v7    # "low":I
    .restart local v6    # "i":I
    :cond_d
    const/4 v7, 0x0

    goto :goto_6

    .line 972
    .restart local v7    # "low":I
    :cond_e
    const/high16 v12, 0x10000

    and-int/lit16 v13, v2, 0x3ff

    shl-int/lit8 v13, v13, 0xa

    and-int/lit16 v14, v7, 0x3ff

    or-int/2addr v13, v14

    add-int v3, v12, v13

    .line 975
    .local v3, "codePoint":I
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v11

    .line 977
    .restart local v11    # "tail":Lokio/Segment;
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    shr-int/lit8 v14, v3, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 978
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v14, v3, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 979
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x2

    shr-int/lit8 v14, v3, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 980
    iget-object v12, v11, Lokio/Segment;->data:[B

    iget v13, v11, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x3

    and-int/lit8 v14, v3, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 982
    iget v12, v11, Lokio/Segment;->limit:I

    add-int/lit8 v12, v12, 0x4

    iput v12, v11, Lokio/Segment;->limit:I

    .line 983
    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    const-wide/16 v14, 0x4

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lokio/Buffer;->size:J

    .line 984
    add-int/lit8 v5, v6, 0x2

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_5

    .line 990
    .end local v2    # "c":I
    .end local v3    # "codePoint":I
    .end local v5    # "i":I
    .end local v7    # "low":I
    .end local v11    # "tail":Lokio/Segment;
    .restart local v6    # "i":I
    :cond_f
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 6
    .param p1, "codePoint"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 994
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 997
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1039
    :goto_0
    return-object p0

    .line 999
    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    .line 1001
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 1003
    .local v0, "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1004
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1006
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lokio/Segment;->limit:I

    .line 1007
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto :goto_0

    .line 1009
    .end local v0    # "tail":Lokio/Segment;
    :cond_1
    const v1, 0xdfff

    const v2, 0xd800

    if-le v2, p1, :cond_3

    .line 1013
    :cond_2
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_4

    .line 1015
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 1017
    .restart local v0    # "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    shr-int/lit8 v3, p1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1018
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1019
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1021
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lokio/Segment;->limit:I

    .line 1022
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto :goto_0

    .line 1009
    .end local v0    # "tail":Lokio/Segment;
    :cond_3
    if-lt v1, p1, :cond_2

    .line 1011
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 1024
    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    .line 1026
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 1028
    .restart local v0    # "tail":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    shr-int/lit8 v3, p1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1029
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1030
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v2, v2, 0x2

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1031
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1033
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lokio/Segment;->limit:I

    .line 1034
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto/16 :goto_0

    .line 1037
    .end local v0    # "tail":Lokio/Segment;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected code point: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method
