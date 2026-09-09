.class public final Lokhttp3/internal/HostnamesKt;
.super Ljava/lang/Object;
.source "hostnames.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nhostnames.kt\nKotlin\n*S Kotlin\n*F\n+ 1 hostnames.kt\nokhttp3/internal/HostnamesKt\n*L\n1#1,233:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a\u000c\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\u000c\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "decodeIpv4Suffix",
        "",
        "input",
        "",
        "pos",
        "",
        "limit",
        "address",
        "",
        "addressOffset",
        "decodeIpv6",
        "Ljava/net/InetAddress;",
        "inet6AddressToAscii",
        "containsInvalidHostnameAsciiCodes",
        "toCanonicalHost",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private static final containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 9
    .param p0, "$this$containsInvalidHostnameAsciiCodes"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move v6, v2

    :goto_0
    if-ge v6, v8, :cond_1

    .line 66
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 70
    .local v1, "c":C
    const/16 v0, 0x1f

    if-le v1, v0, :cond_0

    const/16 v0, 0x7f

    if-lt v1, v0, :cond_2

    :cond_0
    move v2, v7

    .line 80
    .end local v1    # "c":C
    :cond_1
    :goto_1
    return v2

    .line 76
    .restart local v1    # "c":C
    :cond_2
    const-string v0, " #%/:?@[\\]"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    move v2, v7

    .line 77
    goto :goto_1

    .line 65
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .local v6, "i":I
    goto :goto_0
.end method

.method private static final decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 159
    move v0, p4

    .line 161
    .local v0, "b":I
    move v5, p1

    .local v5, "i":I
    move v1, v0

    .line 162
    .end local v0    # "b":I
    .local v1, "b":I
    :goto_0
    if-ge v5, p2, :cond_6

    .line 163
    array-length v8, p3

    if-ne v1, v8, :cond_1

    .line 190
    :cond_0
    :goto_1
    return v7

    .line 166
    :cond_1
    if-eq v1, p4, :cond_2

    .line 167
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_0

    .line 168
    add-int/lit8 v5, v5, 0x1

    .line 172
    :cond_2
    const/4 v6, 0x0

    .line 173
    .local v6, "value":I
    move v4, v5

    .line 174
    .local v4, "groupOffset":I
    :goto_2
    if-ge v5, p2, :cond_3

    .line 175
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 176
    .local v2, "c":C
    const/16 v8, 0x30

    if-lt v2, v8, :cond_3

    const/16 v8, 0x39

    if-le v2, v8, :cond_4

    .line 182
    .end local v2    # "c":C
    :cond_3
    sub-int v3, v5, v4

    .line 183
    .local v3, "groupLength":I
    if-eqz v3, :cond_0

    .line 186
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v8, v6

    aput-byte v8, p3, v1

    move v1, v0

    .line 162
    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_0

    .line 177
    .end local v3    # "groupLength":I
    .restart local v2    # "c":C
    :cond_4
    if-nez v6, :cond_5

    if-ne v4, v5, :cond_0

    .line 178
    :cond_5
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v2

    add-int/lit8 v6, v8, -0x30

    .line 179
    const/16 v8, 0xff

    if-gt v6, v8, :cond_0

    .line 180
    add-int/lit8 v5, v5, 0x1

    .line 174
    goto :goto_2

    .line 190
    .end local v2    # "c":C
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_6
    add-int/lit8 v8, p4, 0x4

    if-ne v1, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1
.end method

.method private static final decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 85
    const/16 v1, 0x10

    new-array v7, v1, [B

    .line 86
    .local v7, "address":[B
    const/4 v8, 0x0

    .line 87
    .local v8, "b":I
    const/4 v10, -0x1

    .line 88
    .local v10, "compress":I
    const/4 v12, -0x1

    .line 90
    .local v12, "groupOffset":I
    move/from16 v3, p1

    .line 91
    .local v3, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v3, v0, :cond_2

    .line 92
    array-length v1, v7

    if-ne v8, v1, :cond_0

    const/4 v1, 0x0

    .line 148
    :goto_1
    return-object v1

    .line 95
    :cond_0
    add-int/lit8 v1, v3, 0x2

    move/from16 v0, p2

    if-gt v1, v0, :cond_3

    const-string v2, "::"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const/4 v1, -0x1

    if-eq v10, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x2

    .line 99
    add-int/lit8 v8, v8, 0x2

    .line 100
    move v10, v8

    .line 101
    move/from16 v0, p2

    if-ne v3, v0, :cond_4

    .line 142
    :cond_2
    :goto_2
    array-length v1, v7

    if-eq v8, v1, :cond_d

    .line 143
    const/4 v1, -0x1

    if-ne v10, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_1

    .line 102
    :cond_3
    if-eqz v8, :cond_4

    .line 104
    const-string v2, ":"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 113
    :cond_4
    const/4 v14, 0x0

    .line 118
    .local v14, "value":I
    move v12, v3

    .line 119
    :goto_3
    move/from16 v0, p2

    if-ge v3, v0, :cond_5

    .line 120
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v13

    .line 121
    .local v13, "hexDigit":I
    const/4 v1, -0x1

    if-ne v13, v1, :cond_a

    .line 125
    .end local v13    # "hexDigit":I
    :cond_5
    sub-int v11, v3, v12

    .line 126
    .local v11, "groupLength":I
    if-eqz v11, :cond_6

    const/4 v1, 0x4

    if-le v11, v1, :cond_b

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 106
    .end local v11    # "groupLength":I
    .end local v14    # "value":I
    :cond_7
    const-string v2, "."

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 108
    add-int/lit8 v1, v8, -0x2

    move/from16 v0, p2

    invoke-static {p0, v12, v0, v7, v1}, Lokhttp3/internal/HostnamesKt;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_1

    .line 109
    :cond_8
    add-int/lit8 v8, v8, 0x2

    .line 110
    goto :goto_2

    .line 112
    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    .line 122
    .restart local v13    # "hexDigit":I
    .restart local v14    # "value":I
    :cond_a
    shl-int/lit8 v1, v14, 0x4

    add-int v14, v1, v13

    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_3

    .line 129
    .end local v13    # "hexDigit":I
    .restart local v11    # "groupLength":I
    :cond_b
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "b":I
    .local v9, "b":I
    ushr-int/lit8 v1, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    .line 130
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "b":I
    .restart local v8    # "b":I
    and-int/lit16 v1, v14, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v9

    goto/16 :goto_0

    .line 144
    .end local v11    # "groupLength":I
    .end local v14    # "value":I
    :cond_c
    array-length v1, v7

    sub-int v2, v8, v10

    sub-int/2addr v1, v2

    sub-int v2, v8, v10

    invoke-static {v7, v10, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    array-length v1, v7

    sub-int/2addr v1, v8

    add-int/2addr v1, v10

    const/4 v2, 0x0

    int-to-byte v2, v2

    invoke-static {v7, v10, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 148
    :cond_d
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private static final inet6AddressToAscii([B)Ljava/lang/String;
    .locals 13
    .param p0, "address"    # [B

    .prologue
    const/16 v12, 0xff

    const/16 v11, 0x10

    const/16 v10, 0x3a

    .line 198
    const/4 v6, -0x1

    .line 199
    .local v6, "longestRunOffset":I
    const/4 v5, 0x0

    .line 200
    .local v5, "longestRunLength":I
    const/4 v0, 0x0

    .line 201
    .local v0, "$i$a$-run-HostnamesKt$inet6AddressToAscii$1":I
    const/4 v4, 0x0

    .line 202
    .local v4, "i":I
    :goto_0
    array-length v8, p0

    if-ge v4, v8, :cond_2

    .line 203
    move v2, v4

    .line 204
    .local v2, "currentRunOffset":I
    :goto_1
    if-ge v4, v11, :cond_0

    aget-byte v8, p0, v4

    if-nez v8, :cond_0

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    if-nez v8, :cond_0

    .line 205
    add-int/lit8 v4, v4, 0x2

    .line 204
    goto :goto_1

    .line 207
    :cond_0
    sub-int v1, v4, v2

    .line 208
    .local v1, "currentRunLength":I
    if-le v1, v5, :cond_1

    const/4 v8, 0x4

    if-lt v1, v8, :cond_1

    .line 209
    move v6, v2

    .line 210
    move v5, v1

    .line 212
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 202
    goto :goto_0

    .line 214
    .end local v1    # "currentRunLength":I
    .end local v2    # "currentRunOffset":I
    :cond_2
    nop

    nop

    .line 200
    nop

    .line 217
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 218
    .local v7, "result":Lokio/Buffer;
    const/4 v4, 0x0

    .line 219
    :cond_3
    :goto_2
    array-length v8, p0

    if-ge v4, v8, :cond_6

    .line 220
    if-ne v4, v6, :cond_4

    .line 221
    invoke-virtual {v7, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 222
    add-int/2addr v4, v5

    .line 223
    if-ne v4, v11, :cond_3

    invoke-virtual {v7, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 225
    :cond_4
    if-lez v4, :cond_5

    invoke-virtual {v7, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 226
    :cond_5
    aget-byte v8, p0, v4

    invoke-static {v8, v12}, Lokhttp3/internal/Util;->and(BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    invoke-static {v9, v12}, Lokhttp3/internal/Util;->and(BI)I

    move-result v9

    or-int v3, v8, v9

    .line 227
    .local v3, "group":I
    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 228
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 231
    .end local v3    # "group":I
    :cond_6
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static final toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "$this$toCanonicalHost"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x0

    const-string v6, "$this$toCanonicalHost"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v3, p0

    .local v3, "host":Ljava/lang/String;
    move-object v6, v3

    .line 36
    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, ":"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v10, v11, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 38
    const-string v6, "["

    invoke-static {v3, v6, v10, v11, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "]"

    invoke-static {v3, v6, v10, v11, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v9, v6}, Lokhttp3/internal/HostnamesKt;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v4

    .line 38
    :goto_0
    if-eqz v4, :cond_0

    .line 43
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 44
    .local v2, "address":[B
    array-length v6, v2

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    const-string v6, "address"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lokhttp3/internal/HostnamesKt;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v8

    .line 60
    .end local v2    # "address":[B
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    :goto_1
    return-object v8

    .line 41
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v10, v6}, Lokhttp3/internal/HostnamesKt;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v4

    goto :goto_0

    .line 45
    .restart local v2    # "address":[B
    .restart local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_2
    array-length v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 46
    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid IPv6 address: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 49
    .end local v2    # "address":[B
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_4
    nop

    .line 50
    :try_start_0
    invoke-static {v3}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "IDN.toASCII(host)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Locale.US"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_5

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "_":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 50
    .end local v1    # "_":Ljava/lang/IllegalArgumentException;
    :cond_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .local v5, "result":Ljava/lang/String;
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    move v6, v9

    :goto_2
    if-nez v6, :cond_0

    .line 54
    invoke-static {v5}, Lokhttp3/internal/HostnamesKt;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    move-object v5, v8

    .end local v5    # "result":Ljava/lang/String;
    :cond_6
    move-object v8, v5

    goto :goto_1

    .restart local v5    # "result":Ljava/lang/String;
    :cond_7
    move v6, v10

    .line 51
    goto :goto_2
.end method
