.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 76
    const-string v2, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 79
    const-string v2, "0123456789&\r\t,:#-.$/+%*=^"

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 89
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    .line 90
    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 91
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 92
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 93
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 94
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 18
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 524
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 525
    .local v7, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 526
    .local v5, "count":I
    const-wide/16 v12, 0x0

    .line 527
    .local v12, "value":J
    const/4 v8, 0x0

    .line 529
    .local v8, "end":Z
    sparse-switch p0, :sswitch_data_0

    .line 616
    :cond_0
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    return p3

    .line 534
    :sswitch_0
    const/4 v14, 0x6

    new-array v2, v14, [I

    .line 535
    .local v2, "byteCompactedCodewords":[I
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v11, p1, p3

    .local v11, "nextCode":I
    move/from16 p3, v4

    .line 536
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_0
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_2

    if-nez v8, :cond_2

    .line 537
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .local v6, "count":I
    aput v11, v2, v5

    .line 539
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 540
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v11, p1, p3

    .line 542
    sparse-switch v11, :sswitch_data_1

    .line 554
    rem-int/lit8 v14, v6, 0x5

    if-nez v14, :cond_7

    if-lez v6, :cond_7

    .line 557
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    const/4 v14, 0x6

    if-ge v10, v14, :cond_1

    .line 558
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 557
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 550
    .end local v10    # "j":I
    :sswitch_1
    add-int/lit8 p3, v4, -0x1

    .line 551
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    move v5, v6

    .line 552
    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_0

    .line 560
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v10    # "j":I
    :cond_1
    const-wide/16 v12, 0x0

    .line 561
    const/4 v5, 0x0

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_0

    .line 568
    .end local v10    # "j":I
    :cond_2
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_3

    const/16 v14, 0x384

    if-ge v11, v14, :cond_3

    .line 569
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .restart local v6    # "count":I
    aput v11, v2, v5

    move v5, v6

    .line 575
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_0

    .line 576
    aget v14, v2, v9

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 610
    .end local v2    # "byteCompactedCodewords":[I
    .end local v9    # "i":I
    .end local v11    # "nextCode":I
    .local v3, "code":I
    .restart local v10    # "j":I
    :cond_4
    const-wide/16 v12, 0x0

    .line 611
    const/4 v5, 0x0

    .line 584
    .end local v3    # "code":I
    .end local v10    # "j":I
    :cond_5
    :sswitch_2
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_0

    if-nez v8, :cond_0

    .line 585
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v3, p1, p3

    .line 586
    .restart local v3    # "code":I
    const/16 v14, 0x384

    if-ge v3, v14, :cond_6

    .line 587
    add-int/lit8 v5, v5, 0x1

    .line 589
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    move/from16 p3, v4

    .line 604
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_3
    rem-int/lit8 v14, v5, 0x5

    if-nez v14, :cond_5

    if-lez v5, :cond_5

    .line 607
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_4
    const/4 v14, 0x6

    if-ge v10, v14, :cond_4

    .line 608
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 607
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 591
    .end local v10    # "j":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_6
    sparse-switch v3, :sswitch_data_2

    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_3

    .line 599
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :sswitch_3
    add-int/lit8 p3, v4, -0x1

    .line 600
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    goto :goto_3

    .end local v3    # "code":I
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v2    # "byteCompactedCodewords":[I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v11    # "nextCode":I
    :cond_7
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto/16 :goto_0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x385 -> :sswitch_0
        0x39c -> :sswitch_2
    .end sparse-switch

    .line 542
    :sswitch_data_1
    .sparse-switch
        0x384 -> :sswitch_1
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch

    .line 591
    :sswitch_data_2
    .sparse-switch
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
        0x386 -> :sswitch_3
        0x39a -> :sswitch_3
        0x39b -> :sswitch_3
        0x39c -> :sswitch_3
        0x3a0 -> :sswitch_3
    .end sparse-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, p0

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v5, "result":Ljava/lang/StringBuilder;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 107
    .local v4, "encoding":Ljava/nio/charset/Charset;
    const/4 v1, 0x1

    .line 108
    .local v1, "codeIndex":I
    const/4 v7, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v0, p0, v7

    .line 109
    .local v0, "code":I
    new-instance v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 110
    .local v6, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    :goto_0
    const/4 v7, 0x0

    aget v7, p0, v7

    if-ge v1, v7, :cond_1

    .line 111
    sparse-switch v0, :sswitch_data_0

    .line 149
    add-int/lit8 v1, v1, -0x1

    .line 150
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 153
    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_0

    .line 154
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v0, p0, v1

    move v1, v2

    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 113
    :sswitch_0
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 114
    goto :goto_1

    .line 117
    :sswitch_1
    invoke-static {v0, p0, v4, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v1

    .line 118
    goto :goto_1

    .line 120
    :sswitch_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v7, p0, v1

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 121
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_1

    .line 123
    :sswitch_3
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 124
    goto :goto_1

    .line 126
    :sswitch_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v7, p0, v1

    .line 127
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v7

    .line 128
    invoke-virtual {v7}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    move v1, v2

    .line 129
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_1

    .line 132
    :sswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 133
    goto :goto_1

    .line 136
    :sswitch_6
    add-int/lit8 v1, v1, 0x1

    .line 137
    goto :goto_1

    .line 139
    :sswitch_7
    invoke-static {p0, v1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    .line 140
    goto :goto_1

    .line 144
    :sswitch_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 156
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 159
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 160
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 162
    :cond_2
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v8, v7, v8, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 163
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3, v6}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 164
    return-object v3

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_3
        0x391 -> :sswitch_2
        0x39a -> :sswitch_8
        0x39b -> :sswitch_8
        0x39c -> :sswitch_1
        0x39d -> :sswitch_6
        0x39e -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a0 -> :sswitch_7
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 711
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 712
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 713
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    .line 717
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 719
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 16
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 169
    add-int/lit8 v14, p1, 0x2

    const/4 v15, 0x0

    aget v15, p0, v15

    if-le v14, v15, :cond_0

    .line 171
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v14

    throw v14

    .line 173
    :cond_0
    const/4 v14, 0x2

    new-array v11, v14, [I

    .line 174
    .local v11, "segmentIndexArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v14, 0x2

    if-ge v7, v14, :cond_1

    .line 175
    aget v14, p0, p1

    aput v14, v11, v7

    .line 174
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v14, 0x2

    invoke-static {v11, v14}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v4, "fileId":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 184
    const/4 v9, -0x1

    .line 185
    .local v9, "optionalFieldsStart":I
    aget v14, p0, p1

    const/16 v15, 0x39b

    if-ne v14, v15, :cond_2

    .line 186
    add-int/lit8 v9, p1, 0x1

    .line 189
    :cond_2
    :goto_1
    const/4 v14, 0x0

    aget v14, p0, v14

    move/from16 v0, p1

    if-ge v0, v14, :cond_3

    .line 190
    aget v14, p0, p1

    packed-switch v14, :pswitch_data_0

    .line 238
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v14

    throw v14

    .line 192
    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    .line 193
    aget v14, p0, p1

    packed-switch v14, :pswitch_data_1

    .line 230
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v14

    throw v14

    .line 195
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v5, "fileName":Ljava/lang/StringBuilder;
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    .end local v5    # "fileName":Ljava/lang/StringBuilder;
    :pswitch_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v12, "sender":Ljava/lang/StringBuilder;
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 202
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v12    # "sender":Ljava/lang/StringBuilder;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v2, "addressee":Ljava/lang/StringBuilder;
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    .end local v2    # "addressee":Ljava/lang/StringBuilder;
    :pswitch_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v10, "segmentCount":Ljava/lang/StringBuilder;
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v10}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 212
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V

    goto :goto_1

    .line 215
    .end local v10    # "segmentCount":Ljava/lang/StringBuilder;
    :pswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v13, "timestamp":Ljava/lang/StringBuilder;
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v13}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 217
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V

    goto/16 :goto_1

    .line 220
    .end local v13    # "timestamp":Ljava/lang/StringBuilder;
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v3, "checksum":Ljava/lang/StringBuilder;
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V

    goto/16 :goto_1

    .line 225
    .end local v3    # "checksum":Ljava/lang/StringBuilder;
    :pswitch_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v6, "fileSize":Ljava/lang/StringBuilder;
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V

    goto/16 :goto_1

    .line 234
    .end local v6    # "fileSize":Ljava/lang/StringBuilder;
    :pswitch_8
    add-int/lit8 p1, p1, 0x1

    .line 235
    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    goto/16 :goto_1

    .line 243
    :cond_3
    const/4 v14, -0x1

    if-eq v9, v14, :cond_5

    .line 244
    sub-int v8, p1, v9

    .line 245
    .local v8, "optionalFieldsLength":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 247
    add-int/lit8 v8, v8, -0x1

    .line 249
    :cond_4
    add-int v14, v9, v8

    move-object/from16 v0, p0

    invoke-static {v0, v9, v14}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 252
    .end local v8    # "optionalFieldsLength":I
    :cond_5
    return p1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 193
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 9
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 337
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 338
    .local v3, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 339
    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 340
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_7

    .line 341
    aget v4, p0, v1

    .line 342
    .local v4, "subModeCh":I
    const/4 v0, 0x0

    .line 343
    .local v0, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 499
    :goto_1
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 504
    goto :goto_0

    .line 346
    :pswitch_0
    if-ge v4, v7, :cond_1

    .line 348
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto :goto_1

    .line 350
    :cond_1
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 352
    :sswitch_0
    const/16 v0, 0x20

    .line 353
    goto :goto_1

    .line 355
    :sswitch_1
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 356
    goto :goto_1

    .line 358
    :sswitch_2
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 359
    goto :goto_1

    .line 362
    :sswitch_3
    move-object v2, v3

    .line 363
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 364
    goto :goto_1

    .line 366
    :sswitch_4
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 369
    :sswitch_5
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 377
    :pswitch_1
    if-ge v4, v7, :cond_2

    .line 378
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    goto :goto_1

    .line 380
    :cond_2
    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    .line 382
    :sswitch_6
    const/16 v0, 0x20

    .line 383
    goto :goto_1

    .line 386
    :sswitch_7
    move-object v2, v3

    .line 387
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 388
    goto :goto_1

    .line 390
    :sswitch_8
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 391
    goto :goto_1

    .line 394
    :sswitch_9
    move-object v2, v3

    .line 395
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 396
    goto :goto_1

    .line 399
    :sswitch_a
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 402
    :sswitch_b
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 410
    :pswitch_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_3

    .line 411
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 413
    :cond_3
    sparse-switch v4, :sswitch_data_2

    goto :goto_1

    .line 415
    :sswitch_c
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 416
    goto :goto_1

    .line 418
    :sswitch_d
    const/16 v0, 0x20

    .line 419
    goto :goto_1

    .line 421
    :sswitch_e
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 422
    goto :goto_1

    .line 424
    :sswitch_f
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 425
    goto :goto_1

    .line 428
    :sswitch_10
    move-object v2, v3

    .line 429
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 430
    goto :goto_1

    .line 432
    :sswitch_11
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    :sswitch_12
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 443
    :pswitch_3
    if-ge v4, v8, :cond_4

    .line 444
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 446
    :cond_4
    sparse-switch v4, :sswitch_data_3

    goto :goto_1

    .line 448
    :sswitch_13
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 449
    goto :goto_1

    .line 451
    :sswitch_14
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 454
    :sswitch_15
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 462
    :pswitch_4
    move-object v3, v2

    .line 463
    if-ge v4, v7, :cond_5

    .line 464
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto/16 :goto_1

    .line 466
    :cond_5
    sparse-switch v4, :sswitch_data_4

    goto/16 :goto_1

    .line 468
    :sswitch_16
    const/16 v0, 0x20

    .line 469
    goto/16 :goto_1

    .line 471
    :sswitch_17
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 479
    :pswitch_5
    move-object v3, v2

    .line 480
    if-ge v4, v8, :cond_6

    .line 481
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    .line 483
    :cond_6
    sparse-switch v4, :sswitch_data_5

    goto/16 :goto_1

    .line 485
    :sswitch_18
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 486
    goto/16 :goto_1

    .line 490
    :sswitch_19
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 493
    :sswitch_1a
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 505
    .end local v0    # "ch":C
    .end local v4    # "subModeCh":I
    :cond_7
    return-void

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x1b -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
        0x384 -> :sswitch_5
        0x391 -> :sswitch_4
    .end sparse-switch

    .line 380
    :sswitch_data_1
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x384 -> :sswitch_b
        0x391 -> :sswitch_a
    .end sparse-switch

    .line 413
    :sswitch_data_2
    .sparse-switch
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0x1d -> :sswitch_10
        0x384 -> :sswitch_12
        0x391 -> :sswitch_11
    .end sparse-switch

    .line 446
    :sswitch_data_3
    .sparse-switch
        0x1d -> :sswitch_13
        0x384 -> :sswitch_15
        0x391 -> :sswitch_14
    .end sparse-switch

    .line 466
    :sswitch_data_4
    .sparse-switch
        0x1a -> :sswitch_16
        0x384 -> :sswitch_17
    .end sparse-switch

    .line 483
    :sswitch_data_5
    .sparse-switch
        0x1d -> :sswitch_18
        0x384 -> :sswitch_1a
        0x391 -> :sswitch_19
    .end sparse-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 7
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 629
    const/4 v2, 0x0

    .line 630
    .local v2, "count":I
    const/4 v3, 0x0

    .line 632
    .local v3, "end":Z
    const/16 v5, 0xf

    new-array v4, v5, [I

    .line 634
    .local v4, "numericCodewords":[I
    :cond_0
    :goto_0
    aget v5, p0, v6

    if-ge p1, v5, :cond_4

    if-nez v3, :cond_4

    .line 635
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v0, p0, p1

    .line 636
    .local v0, "code":I
    aget v5, p0, v6

    if-ne v1, v5, :cond_1

    .line 637
    const/4 v3, 0x1

    .line 639
    :cond_1
    const/16 v5, 0x384

    if-ge v0, v5, :cond_3

    .line 640
    aput v0, v4, v2

    .line 641
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 655
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :goto_1
    rem-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_2

    const/16 v5, 0x386

    if-eq v0, v5, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    if-lez v2, :cond_0

    .line 660
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const/4 v2, 0x0

    goto :goto_0

    .line 643
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_3
    sparse-switch v0, :sswitch_data_0

    move p1, v1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1

    .line 650
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :sswitch_0
    add-int/lit8 p1, v1, -0x1

    .line 651
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_1

    .line 664
    .end local v0    # "code":I
    :cond_4
    return p1

    .line 643
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_0
        0x39a -> :sswitch_0
        0x39b -> :sswitch_0
        0x39c -> :sswitch_0
        0x3a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 267
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v6, v7, [I

    .line 269
    .local v6, "textCompactionData":[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v0, v7, [I

    .line 271
    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 272
    .local v4, "index":I
    const/4 v3, 0x0

    .line 273
    .local v3, "end":Z
    :goto_0
    aget v7, p0, v9

    if-ge p1, v7, :cond_1

    if-nez v3, :cond_1

    .line 274
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v1, p0, p1

    .line 275
    .local v1, "code":I
    if-ge v1, v10, :cond_0

    .line 276
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    .line 277
    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 278
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 280
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_0
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 283
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v10, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move p1, v2

    .line 284
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 291
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 292
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 293
    goto :goto_0

    .line 301
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_2
    const/16 v7, 0x391

    aput v7, v6, v4

    .line 302
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 303
    aput v1, v0, v4

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "code":I
    :cond_1
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 310
    return p1

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
