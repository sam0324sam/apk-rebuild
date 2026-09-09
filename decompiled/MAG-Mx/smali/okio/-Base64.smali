.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source "-Base64.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0000\u001a\u0016\u0010\u0008\u001a\u00020\u0007*\u00020\u00012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0001H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "BASE64",
        "",
        "getBASE64",
        "()[B",
        "BASE64_URL_SAFE",
        "getBASE64_URL_SAFE",
        "decodeBase64ToArray",
        "",
        "encodeBase64",
        "map",
        "jvm"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-Base64"
.end annotation


# static fields
.field private static final BASE64:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BASE64_URL_SAFE:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64:[B

    .line 28
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .locals 18
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v13, "$receiver"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 33
    .local v6, "limit":I
    :goto_0
    if-lez v6, :cond_0

    .line 34
    add-int/lit8 v13, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 35
    .local v3, "c":C
    const/16 v13, 0x3d

    if-eq v3, v13, :cond_5

    const/16 v13, 0xa

    if-eq v3, v13, :cond_5

    const/16 v13, 0xd

    if-eq v3, v13, :cond_5

    const/16 v13, 0x20

    if-eq v3, v13, :cond_5

    const/16 v13, 0x9

    if-eq v3, v13, :cond_5

    .line 42
    .end local v3    # "c":C
    :cond_0
    int-to-long v14, v6

    const-wide/16 v16, 0x6

    mul-long v14, v14, v16

    const-wide/16 v16, 0x8

    div-long v14, v14, v16

    long-to-int v13, v14

    new-array v7, v13, [B

    .line 43
    .local v7, "out":[B
    const/4 v8, 0x0

    .line 44
    .local v8, "outCount":I
    const/4 v4, 0x0

    .line 46
    .local v4, "inCount":I
    const/4 v12, 0x0

    .line 47
    .local v12, "word":I
    const/4 v10, 0x0

    move v9, v8

    .end local v8    # "outCount":I
    .local v9, "outCount":I
    :goto_1
    if-ge v10, v6, :cond_f

    .line 48
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 50
    .restart local v3    # "c":C
    const/16 v13, 0x5a

    const/16 v14, 0x41

    if-le v14, v3, :cond_6

    .line 56
    :cond_1
    const/16 v13, 0x7a

    const/16 v14, 0x61

    if-le v14, v3, :cond_7

    .line 61
    :cond_2
    const/16 v13, 0x39

    const/16 v14, 0x30

    if-le v14, v3, :cond_8

    .line 66
    :cond_3
    const/16 v13, 0x2b

    if-eq v3, v13, :cond_4

    const/16 v13, 0x2d

    if-ne v3, v13, :cond_9

    .line 67
    :cond_4
    const/16 v2, 0x3e

    .line 74
    .local v2, "bits":I
    :goto_2
    shl-int/lit8 v13, v12, 0x6

    or-int v12, v13, v2

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    rem-int/lit8 v13, v4, 0x4

    if-nez v13, :cond_10

    .line 82
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 83
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    shr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    .line 84
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    int-to-byte v13, v12

    aput-byte v13, v7, v9

    .line 47
    .end local v2    # "bits":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .local v10, "pos":I
    move v9, v8

    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    goto :goto_1

    .line 38
    .end local v4    # "inCount":I
    .end local v7    # "out":[B
    .end local v9    # "outCount":I
    .end local v10    # "pos":I
    .end local v12    # "word":I
    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 33
    goto :goto_0

    .line 50
    .restart local v4    # "inCount":I
    .restart local v7    # "out":[B
    .restart local v9    # "outCount":I
    .restart local v12    # "word":I
    :cond_6
    if-lt v13, v3, :cond_1

    .line 55
    add-int/lit8 v2, v3, -0x41

    .restart local v2    # "bits":I
    goto :goto_2

    .line 56
    .end local v2    # "bits":I
    :cond_7
    if-lt v13, v3, :cond_2

    .line 60
    add-int/lit8 v2, v3, -0x47

    .restart local v2    # "bits":I
    goto :goto_2

    .line 61
    .end local v2    # "bits":I
    :cond_8
    if-lt v13, v3, :cond_3

    .line 65
    add-int/lit8 v2, v3, 0x4

    .restart local v2    # "bits":I
    goto :goto_2

    .line 68
    .end local v2    # "bits":I
    :cond_9
    const/16 v13, 0x2f

    if-eq v3, v13, :cond_a

    const/16 v13, 0x5f

    if-ne v3, v13, :cond_b

    .line 69
    :cond_a
    const/16 v2, 0x3f

    .restart local v2    # "bits":I
    goto :goto_2

    .line 70
    .end local v2    # "bits":I
    :cond_b
    const/16 v13, 0xa

    if-eq v3, v13, :cond_c

    const/16 v13, 0xd

    if-eq v3, v13, :cond_c

    const/16 v13, 0x20

    if-eq v3, v13, :cond_c

    const/16 v13, 0x9

    if-ne v3, v13, :cond_d

    :cond_c
    move v8, v9

    .line 71
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_3

    .line 73
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    :cond_d
    const/4 v7, 0x0

    move v8, v9

    .line 113
    .end local v3    # "c":C
    .end local v7    # "out":[B
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    :cond_e
    :goto_4
    return-object v7

    .line 88
    .end local v8    # "outCount":I
    .restart local v7    # "out":[B
    .restart local v9    # "outCount":I
    :cond_f
    rem-int/lit8 v5, v4, 0x4

    .line 89
    .local v5, "lastWordChars":I
    packed-switch v5, :pswitch_data_0

    :goto_5
    move v8, v9

    .line 105
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    :goto_6
    array-length v13, v7

    if-eq v8, v13, :cond_e

    .line 111
    new-array v11, v8, [B

    .line 112
    .local v11, "prefix":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v13, v11, v14, v8}, Lokio/-Platform;->arraycopy([BI[BII)V

    move-object v7, v11

    .line 113
    goto :goto_4

    .line 92
    .end local v8    # "outCount":I
    .end local v11    # "prefix":[B
    .restart local v9    # "outCount":I
    :pswitch_0
    const/4 v7, 0x0

    move v8, v9

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_4

    .line 96
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    :pswitch_1
    shl-int/lit8 v12, v12, 0xc

    .line 97
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    goto :goto_6

    .line 101
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    :pswitch_2
    shl-int/lit8 v12, v12, 0x6

    .line 102
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 103
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    shr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    goto :goto_5

    .end local v5    # "lastWordChars":I
    .restart local v2    # "bits":I
    .restart local v3    # "c":C
    :cond_10
    move v8, v9

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_3

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .locals 13
    .param p0, "$receiver"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "map"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v12, 0x3d

    const-string v10, "$receiver"

    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "map"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    array-length v10, p0

    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v8, v10, 0x4

    .line 118
    .local v8, "length":I
    new-array v9, v8, [B

    .line 119
    .local v9, "out":[B
    const/4 v6, 0x0

    .line 120
    .local v6, "index":I
    array-length v10, p0

    array-length v11, p0

    rem-int/lit8 v11, v11, 0x3

    sub-int v3, v10, v11

    .line 121
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    move v7, v6

    .line 122
    .end local v6    # "index":I
    .local v7, "index":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 123
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v0, p0, v5

    .line 124
    .local v0, "b0":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-byte v1, p0, v4

    .line 125
    .local v1, "b1":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v2, p0, v5

    .line 126
    .local v2, "b2":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    and-int/lit16 v10, v0, 0xff

    shr-int/lit8 v10, v10, 0x2

    aget-byte v10, p1, v10

    aput-byte v10, v9, v7

    .line 127
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    and-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x4

    and-int/lit16 v11, v1, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    aget-byte v10, p1, v10

    aput-byte v10, v9, v6

    .line 128
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    and-int/lit8 v10, v1, 0xf

    shl-int/lit8 v10, v10, 0x2

    and-int/lit16 v11, v2, 0xff

    shr-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    aget-byte v10, p1, v10

    aput-byte v10, v9, v7

    .line 129
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    and-int/lit8 v10, v2, 0x3f

    aget-byte v10, p1, v10

    aput-byte v10, v9, v6

    move v5, v4

    .line 122
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 131
    .end local v0    # "b0":I
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    :cond_0
    array-length v10, p0

    sub-int/2addr v10, v3

    packed-switch v10, :pswitch_data_0

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v6, v7

    .line 147
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :goto_1
    invoke-static {v9}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 133
    .end local v4    # "i":I
    .end local v6    # "index":I
    .restart local v5    # "i":I
    .restart local v7    # "index":I
    :pswitch_0
    aget-byte v0, p0, v5

    .line 134
    .restart local v0    # "b0":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    and-int/lit16 v10, v0, 0xff

    shr-int/lit8 v10, v10, 0x2

    aget-byte v10, p1, v10

    aput-byte v10, v9, v7

    .line 135
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    and-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x4

    aget-byte v10, p1, v10

    aput-byte v10, v9, v6

    .line 136
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    int-to-byte v10, v12

    aput-byte v10, v9, v7

    .line 137
    int-to-byte v10, v12

    aput-byte v10, v9, v6

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 140
    .end local v0    # "b0":I
    .end local v4    # "i":I
    .end local v6    # "index":I
    .restart local v5    # "i":I
    .restart local v7    # "index":I
    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v0, p0, v5

    .line 141
    .restart local v0    # "b0":I
    aget-byte v1, p0, v4

    .line 142
    .restart local v1    # "b1":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    and-int/lit16 v10, v0, 0xff

    shr-int/lit8 v10, v10, 0x2

    aget-byte v10, p1, v10

    aput-byte v10, v9, v7

    .line 143
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    and-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x4

    and-int/lit16 v11, v1, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    aget-byte v10, p1, v10

    aput-byte v10, v9, v6

    .line 144
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    and-int/lit8 v10, v1, 0xf

    shl-int/lit8 v10, v10, 0x2

    aget-byte v10, p1, v10

    aput-byte v10, v9, v7

    .line 145
    int-to-byte v10, v12

    aput-byte v10, v9, v6

    goto :goto_1

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static bridge synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 116
    sget-object p1, Lokio/-Base64;->BASE64:[B

    :cond_0
    invoke-static {p0, p1}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBASE64()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lokio/-Base64;->BASE64:[B

    return-object v0
.end method

.method public static final getBASE64_URL_SAFE()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-object v0
.end method
