.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheControl.kt\nokhttp3/CacheControl$Companion\n*L\n1#1,416:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/CacheControl$Companion;",
        "",
        "()V",
        "FORCE_CACHE",
        "Lokhttp3/CacheControl;",
        "FORCE_NETWORK",
        "parse",
        "headers",
        "Lokhttp3/Headers;",
        "indexOfElement",
        "",
        "",
        "characters",
        "startIndex",
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
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 258
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "$this$indexOfElement"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "characters"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    .prologue
    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, p3

    :goto_0
    if-ge v2, v3, :cond_1

    move-object v1, p2

    .line 408
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v1, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 412
    :goto_1
    return v1

    .line 407
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .local v0, "i":I
    move v2, v0

    goto :goto_0

    .line 412
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 406
    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 30
    .param p1, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "headers"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const/4 v6, 0x0

    .line 286
    .local v6, "noCache":Z
    const/4 v7, 0x0

    .line 287
    .local v7, "noStore":Z
    const/4 v8, -0x1

    .line 288
    .local v8, "maxAgeSeconds":I
    const/4 v9, -0x1

    .line 289
    .local v9, "sMaxAgeSeconds":I
    const/4 v10, 0x0

    .line 290
    .local v10, "isPrivate":Z
    const/4 v11, 0x0

    .line 291
    .local v11, "isPublic":Z
    const/4 v12, 0x0

    .line 292
    .local v12, "mustRevalidate":Z
    const/4 v13, -0x1

    .line 293
    .local v13, "maxStaleSeconds":I
    const/4 v14, -0x1

    .line 294
    .local v14, "minFreshSeconds":I
    const/4 v15, 0x0

    .line 295
    .local v15, "onlyIfCached":Z
    const/16 v16, 0x0

    .line 296
    .local v16, "noTransform":Z
    const/16 v17, 0x0

    .line 298
    .local v17, "immutable":Z
    const/16 v20, 0x1

    .line 299
    .local v20, "canUseHeaderValue":Z
    const/16 v18, 0x0

    check-cast v18, Ljava/lang/String;

    .line 301
    .local v18, "headerValue":Ljava/lang/String;
    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v19

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    .line 302
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v23

    .line 303
    .local v23, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v29

    .line 305
    .local v29, "value":Ljava/lang/String;
    nop

    .line 306
    const-string v2, "Cache-Control"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    if-eqz v18, :cond_0

    .line 309
    const/16 v20, 0x0

    .line 321
    :goto_1
    const/4 v4, 0x0

    .local v4, "pos":I
    move/from16 v25, v7

    .end local v7    # "noStore":Z
    .local v25, "noStore":Z
    move/from16 v24, v6

    .line 324
    .end local v6    # "noCache":Z
    .local v24, "noCache":Z
    :goto_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_15

    .line 325
    move/from16 v28, v4

    .local v28, "tokenStart":I
    move-object/from16 v2, p0

    .line 326
    check-cast v2, Lokhttp3/CacheControl$Companion;

    const-string v3, "=,;"

    move-object/from16 v0, v29

    invoke-direct {v2, v0, v3, v4}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 327
    if-nez v29, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    .end local v4    # "pos":I
    .end local v24    # "noCache":Z
    .end local v25    # "noStore":Z
    .end local v28    # "tokenStart":I
    .restart local v6    # "noCache":Z
    .restart local v7    # "noStore":Z
    :cond_0
    move-object/from16 v18, v29

    .line 312
    goto :goto_1

    .line 314
    :cond_1
    const-string v2, "Pragma"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 316
    const/16 v20, 0x0

    goto :goto_1

    .line 327
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v4    # "pos":I
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    .restart local v28    # "tokenStart":I
    :cond_2
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_3

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 328
    .local v21, "directive":Ljava/lang/String;
    const/16 v26, 0x0

    .line 330
    .local v26, "parameter":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v4, v2, :cond_4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_5

    .line 331
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 332
    const/16 v26, 0x0

    check-cast v26, Ljava/lang/String;

    .line 349
    :goto_3
    nop

    .line 353
    const-string v2, "no-cache"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 354
    const/4 v6, 0x1

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    :goto_4
    move/from16 v25, v7

    .end local v7    # "noStore":Z
    .restart local v25    # "noStore":Z
    move/from16 v24, v6

    .line 389
    .end local v6    # "noCache":Z
    .restart local v24    # "noCache":Z
    goto/16 :goto_2

    .line 334
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 335
    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v4

    .line 337
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_7

    .line 339
    add-int/lit8 v4, v4, 0x1

    .line 340
    move/from16 v27, v4

    .local v27, "parameterStart":I
    move-object/from16 v2, v29

    .line 341
    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x22

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    .line 342
    if-nez v29, :cond_6

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .end local v26    # "parameter":Ljava/lang/String;
    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .restart local v26    # "parameter":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 346
    .end local v27    # "parameterStart":I
    :cond_7
    move/from16 v27, v4

    .restart local v27    # "parameterStart":I
    move-object/from16 v2, p0

    .line 347
    check-cast v2, Lokhttp3/CacheControl$Companion;

    const-string v3, ",;"

    move-object/from16 v0, v29

    invoke-direct {v2, v0, v3, v4}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 348
    if-nez v29, :cond_8

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_9

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_3

    .line 356
    .end local v27    # "parameterStart":I
    :cond_a
    const-string v2, "no-store"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 357
    const/4 v7, 0x1

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 359
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_b
    const-string v2, "max-age"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 360
    const/4 v2, -0x1

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v8

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 362
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_c
    const-string v2, "s-maxage"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 363
    const/4 v2, -0x1

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v9

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 365
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_d
    const-string v2, "private"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 366
    const/4 v10, 0x1

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 368
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_e
    const-string v2, "public"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 369
    const/4 v11, 0x1

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 371
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_f
    const-string v2, "must-revalidate"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 372
    const/4 v12, 0x1

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 374
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_10
    const-string v2, "max-stale"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 375
    const v2, 0x7fffffff

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v13

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 377
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_11
    const-string v2, "min-fresh"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 378
    const/4 v2, -0x1

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v14

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 380
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_12
    const-string v2, "only-if-cached"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 381
    const/4 v15, 0x1

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 383
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_13
    const-string v2, "no-transform"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 384
    const/16 v16, 0x1

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .line 386
    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_14
    const-string v2, "immutable"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 387
    const/16 v17, 0x1

    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4

    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .end local v21    # "directive":Ljava/lang/String;
    .end local v26    # "parameter":Ljava/lang/String;
    .end local v28    # "tokenStart":I
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    :cond_15
    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .line 301
    .end local v4    # "pos":I
    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    :cond_16
    add-int/lit8 v22, v22, 0x1

    .local v22, "i":I
    goto/16 :goto_0

    .line 393
    .end local v22    # "i":I
    .end local v23    # "name":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_17
    if-nez v20, :cond_18

    .line 394
    const/16 v18, 0x0

    check-cast v18, Ljava/lang/String;

    .line 397
    :cond_18
    new-instance v5, Lokhttp3/CacheControl;

    .line 399
    const/16 v19, 0x0

    .line 397
    invoke-direct/range {v5 .. v19}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .end local v6    # "noCache":Z
    .end local v7    # "noStore":Z
    .restart local v4    # "pos":I
    .restart local v21    # "directive":Ljava/lang/String;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v24    # "noCache":Z
    .restart local v25    # "noStore":Z
    .restart local v26    # "parameter":Ljava/lang/String;
    .restart local v28    # "tokenStart":I
    .restart local v29    # "value":Ljava/lang/String;
    :cond_19
    move/from16 v7, v25

    .end local v25    # "noStore":Z
    .restart local v7    # "noStore":Z
    move/from16 v6, v24

    .end local v24    # "noCache":Z
    .restart local v6    # "noCache":Z
    goto/16 :goto_4
.end method
