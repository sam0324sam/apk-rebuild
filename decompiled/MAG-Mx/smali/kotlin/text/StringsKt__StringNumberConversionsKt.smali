.class Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "StringNumberConversions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "numberFormatError",
        "",
        "input",
        "",
        "toByteOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Byte;",
        "radix",
        "",
        "(Ljava/lang/String;I)Ljava/lang/Byte;",
        "toIntOrNull",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "(Ljava/lang/String;I)Ljava/lang/Integer;",
        "toLongOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "(Ljava/lang/String;I)Ljava/lang/Long;",
        "toShortOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Short;",
        "(Ljava/lang/String;I)Ljava/lang/Short;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;-><init>()V

    return-void
.end method

.method public static final numberFormatError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number format: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1
    .param p0, "$this$toByteOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "$this$toByteOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;
    .locals 3
    .param p0, "$this$toByteOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "$this$toByteOrNull"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    .local v0, "int":I
    const/16 v2, -0x80

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    .line 29
    .end local v0    # "int":I
    :cond_0
    :goto_0
    return-object v1

    .restart local v0    # "int":I
    :cond_1
    int-to-byte v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0
.end method

.method public static final toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "$this$toIntOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "$this$toIntOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 12
    .param p0, "$this$toIntOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v10, "$this$toIntOrNull"

    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 70
    .local v4, "length":I
    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v9

    .line 72
    :cond_1
    const/4 v8, 0x0

    .line 73
    .local v8, "start":I
    const/4 v3, 0x0

    .line 74
    .local v3, "isNegative":Z
    const/4 v5, 0x0

    .line 76
    .local v5, "limit":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 77
    .local v1, "firstChar":C
    const/16 v10, 0x30

    if-ge v1, v10, :cond_3

    .line 78
    const/4 v10, 0x1

    if-eq v4, v10, :cond_0

    .line 80
    const/4 v8, 0x1

    .line 82
    const/16 v10, 0x2d

    if-ne v1, v10, :cond_2

    .line 83
    const/4 v3, 0x1

    .line 84
    const/high16 v5, -0x80000000

    .line 94
    :goto_1
    div-int v6, v5, p1

    .line 98
    .local v6, "limitBeforeMul":I
    const/4 v7, 0x0

    .line 99
    .local v7, "result":I
    add-int/lit8 v10, v4, -0x1

    if-gt v8, v10, :cond_4

    .line 100
    .end local v8    # "start":I
    :goto_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v0

    .line 102
    .local v0, "digit":I
    if-ltz v0, :cond_0

    .line 103
    if-lt v7, v6, :cond_0

    .line 105
    mul-int/2addr v7, p1

    .line 107
    add-int v11, v5, v0

    if-lt v7, v11, :cond_0

    .line 109
    sub-int/2addr v7, v0

    .line 99
    if-eq v8, v10, :cond_4

    add-int/lit8 v2, v8, 0x1

    .local v2, "i":I
    move v8, v2

    goto :goto_2

    .line 85
    .end local v0    # "digit":I
    .end local v2    # "i":I
    .end local v6    # "limitBeforeMul":I
    .end local v7    # "result":I
    .restart local v8    # "start":I
    :cond_2
    const/16 v10, 0x2b

    if-ne v1, v10, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 87
    const v5, -0x7fffffff

    goto :goto_1

    .line 91
    :cond_3
    const/4 v8, 0x0

    .line 92
    const/4 v3, 0x0

    .line 93
    const v5, -0x7fffffff

    goto :goto_1

    .line 112
    .end local v8    # "start":I
    .restart local v6    # "limitBeforeMul":I
    .restart local v7    # "result":I
    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    :cond_5
    neg-int v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0
.end method

.method public static final toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "$this$toLongOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "$this$toLongOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 18
    .param p0, "$this$toLongOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v14, "$this$toLongOrNull"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 132
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 133
    .local v6, "length":I
    if-nez v6, :cond_0

    const/4 v14, 0x0

    .line 175
    :goto_0
    return-object v14

    .line 135
    :cond_0
    const/4 v7, 0x0

    .line 136
    .local v7, "start":I
    const/4 v5, 0x0

    .line 137
    .local v5, "isNegative":Z
    const-wide/16 v8, 0x0

    .line 139
    .local v8, "limit":J
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 140
    .local v3, "firstChar":C
    const/16 v14, 0x30

    if-ge v3, v14, :cond_4

    .line 141
    const/4 v14, 0x1

    if-ne v6, v14, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    .line 143
    :cond_1
    const/4 v7, 0x1

    .line 145
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_2

    .line 146
    const/4 v5, 0x1

    .line 147
    const-wide/high16 v8, -0x8000000000000000L

    .line 157
    :goto_1
    move/from16 v0, p1

    int-to-long v14, v0

    div-long v10, v8, v14

    .line 161
    .local v10, "limitBeforeMul":J
    const-wide/16 v12, 0x0

    .line 162
    .local v12, "result":J
    add-int/lit8 v14, v6, -0x1

    if-gt v7, v14, :cond_8

    .line 163
    .end local v7    # "start":I
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v0, p1

    invoke-static {v15, v0}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v2

    .line 165
    .local v2, "digit":I
    if-gez v2, :cond_5

    const/4 v14, 0x0

    goto :goto_0

    .line 148
    .end local v2    # "digit":I
    .end local v10    # "limitBeforeMul":J
    .end local v12    # "result":J
    .restart local v7    # "start":I
    :cond_2
    const/16 v14, 0x2b

    if-ne v3, v14, :cond_3

    .line 149
    const/4 v5, 0x0

    .line 150
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 152
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 154
    :cond_4
    const/4 v7, 0x0

    .line 155
    const/4 v5, 0x0

    .line 156
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 166
    .end local v7    # "start":I
    .restart local v2    # "digit":I
    .restart local v10    # "limitBeforeMul":J
    .restart local v12    # "result":J
    :cond_5
    cmp-long v15, v12, v10

    if-gez v15, :cond_6

    const/4 v14, 0x0

    goto :goto_0

    .line 168
    :cond_6
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v12, v12, v16

    .line 170
    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v16, v16, v8

    cmp-long v15, v12, v16

    if-gez v15, :cond_7

    const/4 v14, 0x0

    goto :goto_0

    .line 172
    :cond_7
    int-to-long v0, v2

    move-wide/from16 v16, v0

    sub-long v12, v12, v16

    .line 162
    if-eq v7, v14, :cond_8

    add-int/lit8 v4, v7, 0x1

    .local v4, "i":I
    move v7, v4

    goto :goto_2

    .line 175
    .end local v2    # "digit":I
    .end local v4    # "i":I
    :cond_8
    if-eqz v5, :cond_9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_0

    :cond_9
    neg-long v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_0
.end method

.method public static final toShortOrNull(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .param p0, "$this$toShortOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "$this$toShortOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static final toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;
    .locals 3
    .param p0, "$this$toShortOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "$this$toShortOrNull"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    .local v0, "int":I
    const/16 v2, -0x8000

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_1

    .line 49
    .end local v0    # "int":I
    :cond_0
    :goto_0
    return-object v1

    .restart local v0    # "int":I
    :cond_1
    int-to-short v1, v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0
.end method
