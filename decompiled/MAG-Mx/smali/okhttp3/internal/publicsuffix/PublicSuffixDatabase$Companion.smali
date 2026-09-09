.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicSuffixDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicSuffixDatabase.kt\nokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion\n*L\n1#1,330:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000cJ)\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;",
        "",
        "()V",
        "EXCEPTION_MARKER",
        "",
        "PREVAILING_RULE",
        "",
        "",
        "PUBLIC_SUFFIX_RESOURCE",
        "WILDCARD_LABEL",
        "",
        "instance",
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "get",
        "binarySearch",
        "labels",
        "",
        "labelIndex",
        "",
        "([B[[BI)Ljava/lang/String;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 227
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    .param p1, "$this$access_u24binarySearch"    # [B
    .param p2, "labels"    # [[B
    .param p3, "labelIndex"    # I

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final binarySearch([B[[BI)Ljava/lang/String;
    .locals 21
    .param p1, "$this$binarySearch"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "labels"    # [[B
    .param p3, "labelIndex"    # I

    .prologue
    .line 245
    const/4 v13, 0x0

    .line 246
    .local v13, "low":I
    move-object/from16 v0, p1

    array-length v10, v0

    .line 247
    .local v10, "high":I
    const/4 v14, 0x0

    check-cast v14, Ljava/lang/String;

    .line 248
    .local v14, "match":Ljava/lang/String;
    :goto_0
    if-ge v13, v10, :cond_b

    .line 249
    add-int v19, v13, v10

    div-int/lit8 v15, v19, 0x2

    .line 252
    .local v15, "mid":I
    :goto_1
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_0

    aget-byte v19, p1, v15

    const/16 v20, 0xa

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 253
    add-int/lit8 v15, v15, -0x1

    .line 252
    goto :goto_1

    .line 255
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 258
    const/4 v8, 0x1

    .line 259
    .local v8, "end":I
    :goto_2
    add-int v19, v15, v8

    aget-byte v19, p1, v19

    const/16 v20, 0xa

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 260
    add-int/lit8 v8, v8, 0x1

    .line 259
    goto :goto_2

    .line 262
    :cond_1
    add-int v19, v15, v8

    sub-int v18, v19, v15

    .line 266
    .local v18, "publicSuffixLength":I
    const/4 v5, 0x0

    .line 267
    .local v5, "compareResult":I
    move/from16 v7, p3

    .line 268
    .local v7, "currentLabelIndex":I
    const/4 v6, 0x0

    .line 269
    .local v6, "currentLabelByteIndex":I
    const/16 v16, 0x0

    .line 271
    .local v16, "publicSuffixByteIndex":I
    const/4 v9, 0x0

    .line 272
    .local v9, "expectDot":Z
    :cond_2
    :goto_3
    nop

    .line 273
    const/4 v3, 0x0

    .line 274
    .local v3, "byte0":I
    if-eqz v9, :cond_4

    .line 275
    const/16 v3, 0x2e

    .line 276
    const/4 v9, 0x0

    .line 279
    :goto_4
    add-int v19, v15, v16

    aget-byte v19, p1, v19

    const/16 v20, 0xff

    invoke-static/range {v19 .. v20}, Lokhttp3/internal/Util;->and(BI)I

    move-result v4

    .line 283
    .local v4, "byte1":I
    sub-int v5, v3, v4

    .line 284
    if-eqz v5, :cond_5

    .line 303
    :cond_3
    if-gez v5, :cond_6

    .line 304
    add-int/lit8 v10, v15, -0x1

    goto :goto_0

    .line 278
    .end local v4    # "byte1":I
    :cond_4
    aget-object v19, p2, v7

    aget-byte v19, v19, v6

    const/16 v20, 0xff

    invoke-static/range {v19 .. v20}, Lokhttp3/internal/Util;->and(BI)I

    move-result v3

    goto :goto_4

    .line 286
    .restart local v4    # "byte1":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 288
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 290
    aget-object v19, p2, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v6, :cond_2

    move-object/from16 v19, p2

    .line 293
    check-cast v19, [Ljava/lang/Object;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_3

    .line 296
    add-int/lit8 v7, v7, 0x1

    .line 297
    const/4 v6, -0x1

    .line 298
    const/4 v9, 0x1

    goto :goto_3

    .line 305
    :cond_6
    if-lez v5, :cond_7

    .line 306
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_0

    .line 309
    :cond_7
    sub-int v17, v18, v16

    .line 310
    .local v17, "publicSuffixBytesLeft":I
    aget-object v19, p2, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v12, v19, v6

    .line 311
    .local v12, "labelBytesLeft":I
    add-int/lit8 v11, v7, 0x1

    move-object/from16 v19, p2

    check-cast v19, [Ljava/lang/Object;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 312
    aget-object v20, p2, v11

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v12, v12, v20

    .line 311
    add-int/lit8 v11, v11, 0x1

    .local v11, "i":I
    goto :goto_5

    .line 315
    .end local v11    # "i":I
    :cond_8
    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 316
    add-int/lit8 v10, v15, -0x1

    goto/16 :goto_0

    .line 317
    :cond_9
    move/from16 v0, v17

    if-le v12, v0, :cond_a

    .line 318
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_0

    .line 321
    :cond_a
    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v20, "UTF_8"

    invoke-static/range {v19 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/String;

    .end local v14    # "match":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 326
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    .end local v6    # "currentLabelByteIndex":I
    .end local v7    # "currentLabelIndex":I
    .end local v8    # "end":I
    .end local v9    # "expectDot":Z
    .end local v12    # "labelBytesLeft":I
    .end local v15    # "mid":I
    .end local v16    # "publicSuffixByteIndex":I
    .end local v17    # "publicSuffixBytesLeft":I
    .end local v18    # "publicSuffixLength":I
    .restart local v14    # "match":Ljava/lang/String;
    :cond_b
    return-object v14
.end method


# virtual methods
.method public final get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    return-object v0
.end method
