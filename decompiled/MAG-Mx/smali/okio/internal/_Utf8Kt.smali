.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "-Utf8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 -Util.kt\nokio/-Util\n*L\n1#1,56:1\n253#2,16:57\n270#2:74\n390#2,9:75\n124#2:84\n399#2,18:86\n272#2:104\n274#2:106\n431#2,4:107\n124#2:111\n437#2,10:113\n124#2:123\n447#2,5:125\n124#2:130\n452#2,22:132\n276#2:154\n278#2:156\n489#2,3:157\n279#2,12:160\n492#2:172\n124#2:173\n495#2,2:175\n124#2:177\n499#2,10:179\n124#2:189\n509#2,5:191\n124#2:196\n514#2,5:198\n124#2:203\n519#2,26:205\n295#2,6:231\n135#2,64:237\n57#3:73\n63#3:85\n57#3:105\n63#3:112\n63#3:124\n63#3:131\n57#3:155\n63#3:174\n63#3:178\n63#3:190\n63#3:197\n63#3:204\n*E\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n30#1,16:57\n30#1:74\n30#1,9:75\n30#1:84\n30#1,18:86\n30#1:104\n30#1:106\n30#1,4:107\n30#1:111\n30#1,10:113\n30#1:123\n30#1,5:125\n30#1:130\n30#1,22:132\n30#1:154\n30#1:156\n30#1,3:157\n30#1,12:160\n30#1:172\n30#1:173\n30#1,2:175\n30#1:177\n30#1,10:179\n30#1:189\n30#1,5:191\n30#1:196\n30#1,5:198\n30#1:203\n30#1,26:205\n30#1,6:231\n46#1,64:237\n30#1:73\n30#1:85\n30#1:105\n30#1:112\n30#1:124\n30#1:131\n30#1:155\n30#1:174\n30#1:178\n30#1:190\n30#1:197\n30#1:204\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "commonAsUtf8ToByteArray",
        "",
        "",
        "commonToUtf8String",
        "jvm"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .locals 15
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const v14, 0xdfff

    const/16 v13, 0x80

    const-string v11, "$receiver"

    invoke-static {p0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    new-array v1, v11, [B

    .line 42
    .local v1, "bytes":[B
    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    :goto_0
    if-ge v9, v11, :cond_8

    .line 43
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 44
    .local v0, "b0":C
    if-lt v0, v13, :cond_7

    .line 46
    .local v9, "size":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 237
    .local v5, "endIndex$iv":I
    move v7, v9

    .local v7, "index$iv":I
    move v10, v9

    .line 238
    .end local v9    # "size":I
    .local v10, "size":I
    :goto_1
    if-ge v7, v5, :cond_6

    .line 239
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 241
    .local v3, "c$iv":C
    if-ge v3, v13, :cond_0

    .line 244
    int-to-byte v2, v3

    .line 47
    .local v2, "c":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    .line 245
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    .end local v7    # "index$iv":I
    .local v8, "index$iv":I
    move v10, v9

    .line 248
    .end local v9    # "size":I
    .restart local v10    # "size":I
    :goto_2
    if-ge v8, v5, :cond_9

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ge v11, v13, :cond_9

    .line 249
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index$iv":I
    .restart local v7    # "index$iv":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v2, v11

    .line 47
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    move v8, v7

    .end local v7    # "index$iv":I
    .restart local v8    # "index$iv":I
    move v10, v9

    .line 248
    .end local v9    # "size":I
    .restart local v10    # "size":I
    goto :goto_2

    .line 253
    .end local v2    # "c":B
    .end local v8    # "index$iv":I
    .restart local v7    # "index$iv":I
    :cond_0
    const/16 v11, 0x800

    if-ge v3, v11, :cond_1

    .line 256
    shr-int/lit8 v11, v3, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v2, v11

    .line 47
    .restart local v2    # "c":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    .line 257
    and-int/lit8 v11, v3, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v2, v11

    .line 47
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "size":I
    .restart local v10    # "size":I
    aput-byte v2, v1, v9

    .line 48
    nop

    .line 259
    add-int/lit8 v7, v7, 0x1

    move v9, v10

    .end local v10    # "size":I
    .restart local v9    # "size":I
    :goto_3
    move v10, v9

    .line 296
    .end local v9    # "size":I
    .restart local v10    # "size":I
    goto :goto_1

    .line 262
    .end local v2    # "c":B
    :cond_1
    const v11, 0xd800

    if-gt v11, v3, :cond_2

    if-ge v14, v3, :cond_3

    .line 265
    :cond_2
    shr-int/lit8 v11, v3, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v2, v11

    .line 47
    .restart local v2    # "c":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    .line 266
    shr-int/lit8 v11, v3, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v2, v11

    .line 47
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "size":I
    .restart local v10    # "size":I
    aput-byte v2, v1, v9

    .line 48
    nop

    .line 267
    and-int/lit8 v11, v3, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v2, v11

    .line 47
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    .line 269
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 276
    .end local v2    # "c":B
    .end local v9    # "size":I
    .restart local v10    # "size":I
    :cond_3
    const v11, 0xdbff

    if-gt v3, v11, :cond_4

    .line 277
    add-int/lit8 v11, v7, 0x1

    if-le v5, v11, :cond_4

    const v11, 0xdc00

    .line 278
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v11, v12, :cond_4

    if-ge v14, v12, :cond_5

    .line 279
    :cond_4
    const/16 v2, 0x3f

    .line 47
    .restart local v2    # "c":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    .line 280
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 285
    .end local v2    # "c":B
    .end local v9    # "size":I
    .restart local v10    # "size":I
    :cond_5
    shl-int/lit8 v11, v3, 0xa

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/2addr v11, v12

    .line 286
    const v12, -0x35fdc00

    .line 285
    add-int v4, v11, v12

    .line 290
    .local v4, "codePoint$iv":I
    shr-int/lit8 v11, v4, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v2, v11

    .line 47
    .restart local v2    # "c":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    .line 291
    shr-int/lit8 v11, v4, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v2, v11

    .line 47
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "size":I
    .restart local v10    # "size":I
    aput-byte v2, v1, v9

    .line 48
    nop

    .line 292
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v2, v11

    .line 47
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput-byte v2, v1, v10

    .line 48
    nop

    .line 293
    and-int/lit8 v11, v4, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v2, v11

    .line 47
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "size":I
    .restart local v10    # "size":I
    aput-byte v2, v1, v9

    .line 48
    nop

    .line 295
    add-int/lit8 v7, v7, 0x2

    move v9, v10

    .end local v10    # "size":I
    .restart local v9    # "size":I
    goto/16 :goto_3

    .line 300
    .end local v2    # "c":B
    .end local v3    # "c$iv":C
    .end local v4    # "codePoint$iv":I
    .end local v9    # "size":I
    .restart local v10    # "size":I
    :cond_6
    nop

    .line 49
    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    const-string v12, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .end local v0    # "b0":C
    .end local v5    # "endIndex$iv":I
    .end local v7    # "index$iv":I
    .end local v10    # "size":I
    :goto_4
    return-object v11

    .line 51
    .restart local v0    # "b0":C
    :cond_7
    int-to-byte v12, v0

    aput-byte v12, v1, v9

    .line 42
    add-int/lit8 v6, v9, 0x1

    .local v6, "index":I
    move v9, v6

    goto/16 :goto_0

    .line 54
    .end local v0    # "b0":C
    .end local v6    # "index":I
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    const-string v12, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .restart local v0    # "b0":C
    .restart local v2    # "c":B
    .restart local v3    # "c$iv":C
    .restart local v5    # "endIndex$iv":I
    .restart local v8    # "index$iv":I
    .restart local v10    # "size":I
    :cond_9
    move v7, v8

    .end local v8    # "index$iv":I
    .restart local v7    # "index$iv":I
    move v9, v10

    .end local v10    # "size":I
    .restart local v9    # "size":I
    goto/16 :goto_3
.end method

.method public static final commonToUtf8String([B)Ljava/lang/String;
    .locals 23
    .param p0, "$receiver"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v21, "$receiver"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v10, v0, [C

    .line 29
    .local v10, "chars":[C
    const/16 v17, 0x0

    .line 30
    .local v17, "length":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    array-length v13, v0

    .local v13, "endIndex$iv":I
    .local v14, "index$iv":I
    move/from16 v18, v17

    .line 58
    .end local v17    # "length":I
    .local v18, "length":I
    :goto_0
    if-ge v14, v13, :cond_2c

    .line 59
    aget-byte v3, p0, v14

    .line 60
    .local v3, "b0$iv":B
    if-ltz v3, :cond_0

    .line 63
    int-to-char v9, v3

    .line 31
    .local v9, "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 64
    add-int/lit8 v14, v14, 0x1

    move v15, v14

    .end local v14    # "index$iv":I
    .local v15, "index$iv":I
    move/from16 v18, v17

    .line 68
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :goto_1
    if-ge v15, v13, :cond_2d

    aget-byte v21, p0, v15

    if-ltz v21, :cond_2d

    .line 69
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index$iv":I
    .restart local v14    # "index$iv":I
    aget-byte v21, p0, v15

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    move v15, v14

    .end local v14    # "index$iv":I
    .restart local v15    # "index$iv":I
    move/from16 v18, v17

    .line 68
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto :goto_1

    .line 72
    .end local v9    # "c":C
    .end local v15    # "index$iv":I
    .restart local v14    # "index$iv":I
    :cond_0
    const/16 v19, 0x5

    .line 73
    .local v19, "other$iv$iv":I
    shr-int v21, v3, v19

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 75
    add-int/lit8 v21, v14, 0x1

    move/from16 v0, v21

    if-gt v13, v0, :cond_1

    .line 76
    const v16, 0xfffd

    .line 74
    .local v16, "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    nop

    .line 78
    const/16 v21, 0x1

    .line 74
    :goto_2
    add-int v14, v14, v21

    .end local v16    # "it$iv":I
    .end local v19    # "other$iv$iv":I
    :goto_3
    move/from16 v18, v17

    .line 234
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto :goto_0

    .line 81
    .end local v9    # "c":C
    .restart local v19    # "other$iv$iv":I
    :cond_1
    aget-byte v4, p0, v14

    .line 82
    .local v4, "b0$iv$iv":B
    add-int/lit8 v21, v14, 0x1

    aget-byte v5, p0, v21

    .line 83
    .local v5, "b1$iv$iv":B
    nop

    .line 84
    const/16 v20, 0xc0

    .line 85
    .local v20, "other$iv$iv$iv$iv":I
    and-int v21, v5, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/16 v21, 0x1

    :goto_4
    if-nez v21, :cond_3

    .line 86
    const v16, 0xfffd

    .line 74
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    nop

    .line 87
    const/16 v21, 0x1

    goto :goto_2

    .line 85
    .end local v9    # "c":C
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_2
    const/16 v21, 0x0

    goto :goto_4

    .line 92
    :cond_3
    xor-int/lit16 v0, v5, 0xf80

    move/from16 v21, v0

    .line 93
    shl-int/lit8 v22, v4, 0x6

    xor-int v12, v21, v22

    .line 95
    .local v12, "codePoint$iv$iv":I
    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v12, v0, :cond_4

    .line 97
    const v16, 0xfffd

    .line 74
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 102
    :goto_5
    const/16 v21, 0x2

    goto :goto_2

    .line 100
    .end local v9    # "c":C
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_4
    move/from16 v16, v12

    .line 74
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    nop

    goto :goto_5

    .line 104
    .end local v4    # "b0$iv$iv":B
    .end local v5    # "b1$iv$iv":B
    .end local v9    # "c":C
    .end local v12    # "codePoint$iv$iv":I
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .end local v20    # "other$iv$iv$iv$iv":I
    .restart local v18    # "length":I
    :cond_5
    const/16 v19, 0x4

    .line 105
    shr-int v21, v3, v19

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 107
    add-int/lit8 v21, v14, 0x2

    move/from16 v0, v21

    if-gt v13, v0, :cond_9

    .line 109
    const v16, 0xfffd

    .line 106
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    nop

    .line 110
    add-int/lit8 v21, v14, 0x1

    move/from16 v0, v21

    if-le v13, v0, :cond_6

    add-int/lit8 v21, v14, 0x1

    aget-byte v8, p0, v21

    .line 111
    .local v8, "byte$iv$iv$iv":B
    const/16 v20, 0xc0

    .line 112
    .restart local v20    # "other$iv$iv$iv$iv":I
    and-int v21, v8, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v21, 0x1

    :goto_6
    if-nez v21, :cond_8

    .line 113
    .end local v8    # "byte$iv$iv$iv":B
    .end local v20    # "other$iv$iv$iv$iv":I
    :cond_6
    const/16 v21, 0x1

    .line 106
    :goto_7
    add-int v14, v14, v21

    goto/16 :goto_3

    .line 112
    .restart local v8    # "byte$iv$iv$iv":B
    .restart local v20    # "other$iv$iv$iv$iv":I
    :cond_7
    const/16 v21, 0x0

    goto :goto_6

    .line 116
    :cond_8
    const/16 v21, 0x2

    goto :goto_7

    .line 120
    .end local v8    # "byte$iv$iv$iv":B
    .end local v9    # "c":C
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .end local v20    # "other$iv$iv$iv$iv":I
    .restart local v18    # "length":I
    :cond_9
    aget-byte v4, p0, v14

    .line 121
    .restart local v4    # "b0$iv$iv":B
    add-int/lit8 v21, v14, 0x1

    aget-byte v5, p0, v21

    .line 122
    .restart local v5    # "b1$iv$iv":B
    nop

    .line 123
    const/16 v20, 0xc0

    .line 124
    .restart local v20    # "other$iv$iv$iv$iv":I
    and-int v21, v5, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_8
    if-nez v21, :cond_b

    .line 125
    const v16, 0xfffd

    .line 106
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    nop

    .line 126
    const/16 v21, 0x1

    goto :goto_7

    .line 124
    .end local v9    # "c":C
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_8

    .line 128
    :cond_b
    add-int/lit8 v21, v14, 0x2

    aget-byte v6, p0, v21

    .line 129
    .local v6, "b2$iv$iv":B
    nop

    .line 130
    const/16 v20, 0xc0

    .line 131
    and-int v21, v6, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const/16 v21, 0x1

    :goto_9
    if-nez v21, :cond_d

    .line 132
    const v16, 0xfffd

    .line 106
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    nop

    .line 133
    const/16 v21, 0x2

    goto :goto_7

    .line 131
    .end local v9    # "c":C
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_c
    const/16 v21, 0x0

    goto :goto_9

    .line 136
    :cond_d
    const v21, -0x1e080

    .line 138
    xor-int v21, v21, v6

    .line 139
    shl-int/lit8 v22, v5, 0x6

    xor-int v21, v21, v22

    .line 140
    shl-int/lit8 v22, v4, 0xc

    xor-int v12, v21, v22

    .line 142
    .restart local v12    # "codePoint$iv$iv":I
    const/16 v21, 0x800

    move/from16 v0, v21

    if-ge v12, v0, :cond_e

    .line 144
    const v16, 0xfffd

    .line 106
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 152
    :goto_a
    const/16 v21, 0x3

    goto :goto_7

    .line 146
    .end local v9    # "c":C
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_e
    const v21, 0xdfff

    const v22, 0xd800

    move/from16 v0, v22

    if-le v0, v12, :cond_10

    .line 150
    :cond_f
    move/from16 v16, v12

    .line 106
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    nop

    goto :goto_a

    .line 146
    .end local v9    # "c":C
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_10
    move/from16 v0, v21

    if-lt v0, v12, :cond_f

    .line 147
    const v16, 0xfffd

    .line 106
    .restart local v16    # "it$iv":I
    move/from16 v0, v16

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_a

    .line 154
    .end local v4    # "b0$iv$iv":B
    .end local v5    # "b1$iv$iv":B
    .end local v6    # "b2$iv$iv":B
    .end local v9    # "c":C
    .end local v12    # "codePoint$iv$iv":I
    .end local v16    # "it$iv":I
    .end local v17    # "length":I
    .end local v20    # "other$iv$iv$iv$iv":I
    .restart local v18    # "length":I
    :cond_11
    const/16 v19, 0x3

    .line 155
    shr-int v21, v3, v19

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2b

    .line 157
    add-int/lit8 v21, v14, 0x3

    move/from16 v0, v21

    if-gt v13, v0, :cond_19

    .line 159
    const v11, 0xfffd

    .line 160
    .local v11, "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_13

    .line 165
    const v21, 0xd7ff

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    const v21, 0xdffd

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 170
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :goto_b
    nop

    .line 172
    add-int/lit8 v21, v14, 0x1

    move/from16 v0, v21

    if-le v13, v0, :cond_12

    add-int/lit8 v21, v14, 0x1

    aget-byte v8, p0, v21

    .line 173
    .restart local v8    # "byte$iv$iv$iv":B
    const/16 v20, 0xc0

    .line 174
    .restart local v20    # "other$iv$iv$iv$iv":I
    and-int v21, v8, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    const/16 v21, 0x1

    :goto_c
    if-nez v21, :cond_15

    .line 175
    .end local v8    # "byte$iv$iv$iv":B
    .end local v20    # "other$iv$iv$iv$iv":I
    :cond_12
    const/16 v21, 0x1

    .line 156
    :goto_d
    add-int v14, v14, v21

    goto/16 :goto_3

    .line 169
    .end local v9    # "c":C
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_13
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_b

    .line 174
    .restart local v8    # "byte$iv$iv$iv":B
    .restart local v20    # "other$iv$iv$iv$iv":I
    :cond_14
    const/16 v21, 0x0

    goto :goto_c

    .line 176
    :cond_15
    add-int/lit8 v21, v14, 0x2

    move/from16 v0, v21

    if-le v13, v0, :cond_16

    add-int/lit8 v21, v14, 0x2

    aget-byte v8, p0, v21

    .line 177
    const/16 v20, 0xc0

    .line 178
    and-int v21, v8, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    const/16 v21, 0x1

    :goto_e
    if-nez v21, :cond_18

    .line 179
    :cond_16
    const/16 v21, 0x2

    goto :goto_d

    .line 178
    :cond_17
    const/16 v21, 0x0

    goto :goto_e

    .line 182
    :cond_18
    const/16 v21, 0x3

    goto :goto_d

    .line 186
    .end local v8    # "byte$iv$iv$iv":B
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .end local v20    # "other$iv$iv$iv$iv":I
    .restart local v18    # "length":I
    :cond_19
    aget-byte v4, p0, v14

    .line 187
    .restart local v4    # "b0$iv$iv":B
    add-int/lit8 v21, v14, 0x1

    aget-byte v5, p0, v21

    .line 188
    .restart local v5    # "b1$iv$iv":B
    nop

    .line 189
    const/16 v20, 0xc0

    .line 190
    .restart local v20    # "other$iv$iv$iv$iv":I
    and-int v21, v5, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    const/16 v21, 0x1

    :goto_f
    if-nez v21, :cond_1c

    .line 191
    const v11, 0xfffd

    .line 160
    .restart local v11    # "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_1b

    .line 165
    const v21, 0xd7ff

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    const v21, 0xdffd

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 170
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :goto_10
    nop

    .line 192
    const/16 v21, 0x1

    goto :goto_d

    .line 190
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_1a
    const/16 v21, 0x0

    goto :goto_f

    .line 169
    .restart local v11    # "codePoint$iv":I
    :cond_1b
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_10

    .line 194
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_1c
    add-int/lit8 v21, v14, 0x2

    aget-byte v6, p0, v21

    .line 195
    .restart local v6    # "b2$iv$iv":B
    nop

    .line 196
    const/16 v20, 0xc0

    .line 197
    and-int v21, v6, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    const/16 v21, 0x1

    :goto_11
    if-nez v21, :cond_1f

    .line 198
    const v11, 0xfffd

    .line 160
    .restart local v11    # "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_1e

    .line 165
    const v21, 0xd7ff

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    const v21, 0xdffd

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 170
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :goto_12
    nop

    .line 199
    const/16 v21, 0x2

    goto/16 :goto_d

    .line 197
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_1d
    const/16 v21, 0x0

    goto :goto_11

    .line 169
    .restart local v11    # "codePoint$iv":I
    :cond_1e
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_12

    .line 201
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_1f
    add-int/lit8 v21, v14, 0x3

    aget-byte v7, p0, v21

    .line 202
    .local v7, "b3$iv$iv":B
    nop

    .line 203
    const/16 v20, 0xc0

    .line 204
    and-int v21, v7, v20

    const/16 v22, 0x80

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    const/16 v21, 0x1

    :goto_13
    if-nez v21, :cond_22

    .line 205
    const v11, 0xfffd

    .line 160
    .restart local v11    # "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_21

    .line 165
    const v21, 0xd7ff

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    const v21, 0xdffd

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 170
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :goto_14
    nop

    .line 206
    const/16 v21, 0x3

    goto/16 :goto_d

    .line 204
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_20
    const/16 v21, 0x0

    goto :goto_13

    .line 169
    .restart local v11    # "codePoint$iv":I
    :cond_21
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_14

    .line 209
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_22
    const v21, 0x381f80

    .line 211
    xor-int v21, v21, v7

    .line 212
    shl-int/lit8 v22, v6, 0x6

    xor-int v21, v21, v22

    .line 213
    shl-int/lit8 v22, v5, 0xc

    xor-int v21, v21, v22

    .line 214
    shl-int/lit8 v22, v4, 0x12

    xor-int v12, v21, v22

    .line 216
    .restart local v12    # "codePoint$iv$iv":I
    const v21, 0x10ffff

    move/from16 v0, v21

    if-le v12, v0, :cond_24

    .line 218
    const v11, 0xfffd

    .line 160
    .restart local v11    # "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_23

    .line 165
    const v21, 0xd7ff

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    const v21, 0xdffd

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 229
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :goto_15
    const/16 v21, 0x4

    goto/16 :goto_d

    .line 169
    .end local v9    # "c":C
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_23
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_15

    .line 220
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_24
    const v21, 0xdfff

    const v22, 0xd800

    move/from16 v0, v22

    if-le v0, v12, :cond_26

    .line 223
    :cond_25
    const/high16 v21, 0x10000

    move/from16 v0, v21

    if-ge v12, v0, :cond_29

    .line 224
    const v11, 0xfffd

    .line 160
    .restart local v11    # "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_28

    .line 165
    const v21, 0xd7ff

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    const v21, 0xdffd

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 32
    .end local v18    # "length":I
    .restart local v17    # "length":I
    goto :goto_15

    .line 220
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_26
    move/from16 v0, v21

    if-lt v0, v12, :cond_25

    .line 221
    const v11, 0xfffd

    .line 160
    .restart local v11    # "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_27

    .line 165
    const v21, 0xd7ff

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    const v21, 0xdffd

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 32
    .end local v18    # "length":I
    .restart local v17    # "length":I
    goto :goto_15

    .line 169
    .end local v9    # "c":C
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_27
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_15

    .line 169
    .end local v9    # "c":C
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_28
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_15

    .line 227
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_29
    move v11, v12

    .line 160
    .restart local v11    # "codePoint$iv":I
    const v21, 0xfffd

    move/from16 v0, v21

    if-eq v11, v0, :cond_2a

    .line 165
    ushr-int/lit8 v21, v11, 0xa

    const v22, 0xd7c0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 167
    and-int/lit16 v0, v11, 0x3ff

    move/from16 v21, v0

    const v22, 0xdc00

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-char v9, v0

    .line 31
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "length":I
    .restart local v18    # "length":I
    aput-char v9, v10, v17

    move/from16 v17, v18

    .line 170
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :goto_16
    nop

    goto/16 :goto_15

    .line 169
    .end local v9    # "c":C
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_2a
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    goto :goto_16

    .line 231
    .end local v4    # "b0$iv$iv":B
    .end local v5    # "b1$iv$iv":B
    .end local v6    # "b2$iv$iv":B
    .end local v7    # "b3$iv$iv":B
    .end local v9    # "c":C
    .end local v11    # "codePoint$iv":I
    .end local v12    # "codePoint$iv$iv":I
    .end local v17    # "length":I
    .end local v20    # "other$iv$iv$iv$iv":I
    .restart local v18    # "length":I
    :cond_2b
    const v9, 0xfffd

    .line 31
    .restart local v9    # "c":C
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    aput-char v9, v10, v18

    .line 32
    nop

    .line 232
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 236
    .end local v3    # "b0$iv":B
    .end local v9    # "c":C
    .end local v17    # "length":I
    .end local v19    # "other$iv$iv":I
    .restart local v18    # "length":I
    :cond_2c
    nop

    .line 34
    const/16 v21, 0x0

    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v22

    .end local v14    # "index$iv":I
    .restart local v3    # "b0$iv":B
    .restart local v9    # "c":C
    .restart local v15    # "index$iv":I
    :cond_2d
    move v14, v15

    .end local v15    # "index$iv":I
    .restart local v14    # "index$iv":I
    move/from16 v17, v18

    .end local v18    # "length":I
    .restart local v17    # "length":I
    goto/16 :goto_3
.end method
