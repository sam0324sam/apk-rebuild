.class Lkotlin/text/StringsKt__IndentKt;
.super Ljava/lang/Object;
.source "Indent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,121:1\n111#1,9:122\n118#1:131\n113#1,4:145\n111#1,9:164\n118#1:173\n113#1,4:187\n1333#2,11:132\n1596#2,2:143\n1598#2:155\n1344#2:156\n673#2:157\n746#2,2:158\n1313#2:160\n1382#2,3:161\n1333#2,11:174\n1596#2,2:185\n1598#2:191\n1344#2:192\n1333#2,11:199\n1596#2,3:210\n1344#2:213\n114#3,6:149\n114#3,6:193\n*E\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n37#1,9:122\n37#1:131\n37#1,4:145\n76#1,9:164\n76#1:173\n76#1,4:187\n37#1,11:132\n37#1,2:143\n37#1:155\n37#1:156\n72#1:157\n72#1,2:158\n73#1:160\n73#1,3:161\n76#1,11:174\n76#1,2:185\n76#1:191\n76#1:192\n112#1,11:199\n112#1,3:210\n112#1:213\n37#1,6:149\n99#1,6:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    nop

    move-object v0, p0

    .line 102
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 101
    :goto_1
    return-object v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_1
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .locals 11
    .param p0, "$this$indentWidth"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 99
    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 193
    .local v2, "$i$f$indexOfFirst":I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move v6, v9

    :goto_0
    if-ge v6, v10, :cond_3

    .line 194
    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .local v5, "it":C
    const/4 v0, 0x0

    .line 99
    .local v0, "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    invoke-static {v5}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_2

    move v5, v6

    .end local v0    # "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    .local v5, "it":I
    :goto_2
    const/4 v1, 0x0

    .local v1, "$i$a$-let-StringsKt__IndentKt$indentWidth$2":I
    if-ne v5, v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .end local v5    # "it":I
    :cond_0
    return v5

    .end local v1    # "$i$a$-let-StringsKt__IndentKt$indentWidth$2":I
    .restart local v0    # "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    .local v5, "it":C
    :cond_1
    move v8, v9

    goto :goto_1

    .line 193
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .local v4, "index$iv":I
    move v6, v4

    goto :goto_0

    .end local v0    # "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    .end local v4    # "index$iv":I
    .end local v5    # "it":C
    :cond_3
    move v5, v7

    .line 198
    goto :goto_2
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "$this$prependIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "indent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "$this$prependIndent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    check-cast p0, Ljava/lang/CharSequence;

    .end local p0    # "$this$prependIndent":Ljava/lang/String;
    invoke-static {p0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 86
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;

    invoke-direct {v0, p1}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 97
    const-string v1, "\n"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/16 v7, 0x3e

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 84
    const-string p1, "    "

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final reindent$StringsKt__IndentKt(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 29
    .param p0, "$this$reindent"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "resultSizeEstimate"    # I
    .param p2, "indentAddFunction"    # Lkotlin/jvm/functions/Function1;
    .param p3, "indentCutFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v18, 0x0

    .line 111
    .local v18, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v28

    .local v28, "lastIndex":I
    move-object/from16 v20, p0

    .line 112
    check-cast v20, Ljava/lang/Iterable;

    .local v20, "$this$mapIndexedNotNull$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 199
    .local v16, "$i$f$mapIndexedNotNull":I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    check-cast v21, Ljava/util/Collection;

    .local v21, "destination$iv$iv":Ljava/util/Collection;
    const/16 v17, 0x0

    .line 209
    .local v17, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v19, v20

    .local v19, "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 210
    .local v15, "$i$f$forEachIndexed":I
    const/16 v24, 0x0

    .line 211
    .local v24, "index$iv$iv$iv":I
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .local v27, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "index$iv$iv$iv":I
    .local v25, "index$iv$iv$iv":I
    if-gez v24, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move/from16 v23, v24

    .local v23, "index$iv$iv":I
    const/4 v12, 0x0

    .line 209
    .local v12, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    check-cast v27, Ljava/lang/String;

    .end local v27    # "item$iv$iv$iv":Ljava/lang/Object;
    move/from16 v22, v23

    .local v22, "index":I
    const/4 v14, 0x0

    .line 113
    .local v14, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    if-eqz v22, :cond_1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    :cond_1
    move-object/from16 v2, v27

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    const/16 v26, 0x0

    .line 113
    :goto_1
    if-eqz v26, :cond_2

    .local v26, "it$iv$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 209
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    .end local v26    # "it$iv$iv":Ljava/lang/String;
    :cond_2
    nop

    move/from16 v24, v25

    .end local v25    # "index$iv$iv$iv":I
    .restart local v24    # "index$iv$iv$iv":I
    goto :goto_0

    .line 211
    .end local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    .end local v14    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    .end local v22    # "index":I
    .end local v23    # "index$iv$iv":I
    .end local v24    # "index$iv$iv$iv":I
    .restart local v25    # "index$iv$iv$iv":I
    .restart local v27    # "item$iv$iv$iv":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Index overflow has happened."

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 116
    .end local v27    # "item$iv$iv$iv":Ljava/lang/Object;
    .restart local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    .restart local v14    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    .restart local v22    # "index":I
    .restart local v23    # "index$iv$iv":I
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v26, v2

    goto :goto_1

    :cond_5
    move-object/from16 v26, v27

    goto :goto_1

    .line 212
    .end local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    .end local v14    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    .end local v22    # "index":I
    .end local v23    # "index$iv$iv":I
    .end local v25    # "index$iv$iv$iv":I
    .restart local v24    # "index$iv$iv$iv":I
    :cond_6
    nop

    .line 213
    check-cast v21, Ljava/util/List;

    .end local v21    # "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v2, v21

    check-cast v2, Ljava/lang/Iterable;

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast v3, Ljava/lang/Appendable;

    const-string v4, "\n"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 46
    .param p0, "$this$replaceIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "newIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "$this$replaceIndent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newIndent"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 69
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v43

    .local v43, "lines":Ljava/util/List;
    move-object/from16 v26, v43

    .line 71
    check-cast v26, Ljava/lang/Iterable;

    .line 72
    .local v26, "$this$filter$iv":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 157
    .local v18, "$i$f$filter":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    check-cast v30, Ljava/util/Collection;

    .local v30, "destination$iv$iv":Ljava/util/Collection;
    const/16 v19, 0x0

    .line 158
    .local v19, "$i$f$filterTo":I
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .local v32, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v45, v32

    check-cast v45, Ljava/lang/String;

    .local v45, "p1":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "$i$a$-unknown-StringsKt__IndentKt$replaceIndent$minCommonIndent$1":I
    check-cast v45, Ljava/lang/CharSequence;

    .line 72
    .end local v45    # "p1":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 159
    .end local v16    # "$i$a$-unknown-StringsKt__IndentKt$replaceIndent$minCommonIndent$1":I
    .end local v32    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    check-cast v30, Ljava/util/List;

    .end local v30    # "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v28, v30

    check-cast v28, Ljava/lang/Iterable;

    .line 73
    .local v28, "$this$map$iv":Ljava/lang/Iterable;
    const/16 v21, 0x0

    .line 160
    .local v21, "$i$f$map":I
    new-instance v30, Ljava/util/ArrayList;

    const/16 v2, 0xa

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v30, Ljava/util/Collection;

    .restart local v30    # "destination$iv$iv":Ljava/util/Collection;
    const/16 v24, 0x0

    .line 161
    .local v24, "$i$f$mapTo":I
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    .line 162
    .local v39, "item$iv$iv":Ljava/lang/Object;
    check-cast v39, Ljava/lang/String;

    .end local v39    # "item$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 73
    .local v17, "$i$a$-unknown-StringsKt__IndentKt$replaceIndent$minCommonIndent$2":I
    invoke-static/range {v39 .. v39}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    .end local v17    # "$i$a$-unknown-StringsKt__IndentKt$replaceIndent$minCommonIndent$2":I
    :cond_3
    check-cast v30, Ljava/util/List;

    .end local v30    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v30, Ljava/lang/Iterable;

    .line 74
    invoke-static/range {v30 .. v30}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .line 76
    .local v44, "minCommonIndent":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v4, v2, v3

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v33

    .local v33, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    const/16 v25, 0x0

    .line 164
    .local v25, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static/range {v43 .. v43}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v41

    .local v41, "lastIndex$iv":I
    move-object/from16 v29, v43

    .line 165
    check-cast v29, Ljava/lang/Iterable;

    .local v29, "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    const/16 v22, 0x0

    .line 174
    .local v22, "$i$f$mapIndexedNotNull":I
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    check-cast v31, Ljava/util/Collection;

    .local v31, "destination$iv$iv$iv":Ljava/util/Collection;
    const/16 v23, 0x0

    .line 184
    .local v23, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v27, v29

    .local v27, "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 185
    .local v20, "$i$f$forEachIndexed":I
    const/16 v36, 0x0

    .line 186
    .local v36, "index$iv$iv$iv$iv":I
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    .local v40, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v37, v36, 0x1

    .end local v36    # "index$iv$iv$iv$iv":I
    .local v37, "index$iv$iv$iv$iv":I
    if-gez v36, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    move/from16 v35, v36

    .local v35, "index$iv$iv$iv":I
    const/4 v12, 0x0

    .local v12, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    move-object/from16 v42, v40

    .line 184
    check-cast v42, Ljava/lang/String;

    move/from16 v34, v35

    .local v34, "index$iv":I
    const/4 v14, 0x0

    .line 187
    .local v14, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    if-eqz v34, :cond_5

    move/from16 v0, v34

    move/from16 v1, v41

    if-ne v0, v1, :cond_8

    :cond_5
    move-object/from16 v2, v42

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 188
    const/16 v38, 0x0

    .line 187
    :goto_5
    if-eqz v38, :cond_6

    .local v38, "it$iv$iv$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 184
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    .end local v38    # "it$iv$iv$iv":Ljava/lang/String;
    :cond_6
    nop

    move/from16 v36, v37

    .end local v37    # "index$iv$iv$iv$iv":I
    .restart local v36    # "index$iv$iv$iv$iv":I
    goto :goto_4

    .line 74
    .end local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    .end local v14    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .end local v20    # "$i$f$forEachIndexed":I
    .end local v22    # "$i$f$mapIndexedNotNull":I
    .end local v23    # "$i$f$mapIndexedNotNullTo":I
    .end local v25    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v27    # "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v29    # "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    .end local v31    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v33    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "index$iv":I
    .end local v35    # "index$iv$iv$iv":I
    .end local v36    # "index$iv$iv$iv$iv":I
    .end local v40    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v41    # "lastIndex$iv":I
    .end local v44    # "minCommonIndent":I
    :cond_7
    const/16 v44, 0x0

    goto :goto_3

    .line 190
    .restart local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    .restart local v14    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .restart local v20    # "$i$f$forEachIndexed":I
    .restart local v22    # "$i$f$mapIndexedNotNull":I
    .restart local v23    # "$i$f$mapIndexedNotNullTo":I
    .restart local v25    # "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v27    # "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    .restart local v29    # "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    .restart local v31    # "destination$iv$iv$iv":Ljava/util/Collection;
    .restart local v33    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "index$iv":I
    .restart local v35    # "index$iv$iv$iv":I
    .restart local v37    # "index$iv$iv$iv$iv":I
    .restart local v40    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v41    # "lastIndex$iv":I
    .local v42, "line":Ljava/lang/String;
    .restart local v44    # "minCommonIndent":I
    :cond_8
    const/4 v15, 0x0

    .line 76
    .local v15, "$i$a$-reindent-StringsKt__IndentKt$replaceIndent$1":I
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v38, v2

    goto :goto_5

    :cond_9
    move-object/from16 v38, v42

    .line 190
    goto :goto_5

    .line 191
    .end local v12    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    .end local v14    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .end local v15    # "$i$a$-reindent-StringsKt__IndentKt$replaceIndent$1":I
    .end local v34    # "index$iv":I
    .end local v35    # "index$iv$iv$iv":I
    .end local v37    # "index$iv$iv$iv$iv":I
    .end local v40    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v42    # "line":Ljava/lang/String;
    .restart local v36    # "index$iv$iv$iv$iv":I
    :cond_a
    nop

    .line 192
    check-cast v31, Ljava/util/List;

    .end local v31    # "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v2, v31

    check-cast v2, Ljava/lang/Iterable;

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast v3, Ljava/lang/Appendable;

    const-string v4, "\n"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 68
    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 40
    .param p0, "$this$replaceIndentByMargin"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "newIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "marginPrefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "$this$replaceIndentByMargin"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newIndent"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "marginPrefix"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 34
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/16 v20, 0x0

    .local v20, "$i$a$-require-StringsKt__IndentKt$replaceIndentByMargin$1":I
    const-string v5, "marginPrefix must be non-blank string."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v20    # "$i$a$-require-StringsKt__IndentKt$replaceIndentByMargin$1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    .line 35
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v39

    .line 37
    .local v39, "lines":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    add-int v8, v3, v5

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v30

    .local v30, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    const/16 v25, 0x0

    .line 122
    .local v25, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static/range {v39 .. v39}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v38

    .local v38, "lastIndex$iv":I
    move-object/from16 v28, v39

    .line 123
    check-cast v28, Ljava/lang/Iterable;

    .local v28, "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    const/16 v23, 0x0

    .line 132
    .local v23, "$i$f$mapIndexedNotNull":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    check-cast v29, Ljava/util/Collection;

    .local v29, "destination$iv$iv$iv":Ljava/util/Collection;
    const/16 v24, 0x0

    .line 142
    .local v24, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v26, v28

    .local v26, "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v21, 0x0

    .line 143
    .local v21, "$i$f$forEachIndexed":I
    const/16 v33, 0x0

    .line 144
    .local v33, "index$iv$iv$iv$iv":I
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    .local v37, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v34, v33, 0x1

    .end local v33    # "index$iv$iv$iv$iv":I
    .local v34, "index$iv$iv$iv$iv":I
    if-gez v33, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move/from16 v32, v33

    .local v32, "index$iv$iv$iv":I
    const/4 v15, 0x0

    .local v15, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    move-object/from16 v2, v37

    .line 142
    check-cast v2, Ljava/lang/String;

    move/from16 v31, v32

    .local v31, "index$iv":I
    const/16 v18, 0x0

    .line 145
    .local v18, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    if-eqz v31, :cond_3

    move/from16 v0, v31

    move/from16 v1, v38

    if-ne v0, v1, :cond_5

    :cond_3
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 146
    const/16 v36, 0x0

    .line 145
    :goto_2
    if-eqz v36, :cond_4

    .local v36, "it$iv$iv$iv":Ljava/lang/String;
    const/16 v17, 0x0

    .line 142
    .local v17, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v17    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    .end local v36    # "it$iv$iv$iv":Ljava/lang/String;
    :cond_4
    nop

    move/from16 v33, v34

    .end local v34    # "index$iv$iv$iv$iv":I
    .restart local v33    # "index$iv$iv$iv$iv":I
    goto :goto_1

    .line 148
    .end local v33    # "index$iv$iv$iv$iv":I
    .local v2, "line":Ljava/lang/String;
    .restart local v34    # "index$iv$iv$iv$iv":I
    :cond_5
    const/16 v19, 0x0

    .local v19, "$i$a$-reindent-StringsKt__IndentKt$replaceIndentByMargin$2":I
    move-object/from16 v27, v2

    .line 38
    check-cast v27, Ljava/lang/CharSequence;

    .local v27, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    .line 149
    .local v22, "$i$f$indexOfFirst":I
    const/4 v4, 0x0

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_3
    if-ge v4, v5, :cond_8

    .line 150
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v35

    .local v35, "it":C
    const/16 v16, 0x0

    .line 38
    .local v16, "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    invoke-static/range {v35 .. v35}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_7

    .line 40
    .end local v16    # "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    .end local v35    # "it":C
    .local v4, "firstNonWhitespaceIndex":I
    :goto_5
    nop

    .line 41
    const/4 v3, -0x1

    if-ne v4, v3, :cond_9

    const/4 v3, 0x0

    .line 40
    :goto_6
    nop

    if-eqz v3, :cond_c

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v36, v3

    goto :goto_2

    .line 38
    .end local v4    # "firstNonWhitespaceIndex":I
    .restart local v16    # "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    .restart local v35    # "it":C
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 149
    :cond_7
    add-int/lit8 v31, v4, 0x1

    move/from16 v4, v31

    goto :goto_3

    .line 154
    .end local v16    # "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    .end local v35    # "it":C
    :cond_8
    const/4 v4, -0x1

    goto :goto_5

    .line 42
    .restart local v4    # "firstNonWhitespaceIndex":I
    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    if-nez v2, :cond_a

    new-instance v3, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 43
    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v36, v2

    .line 148
    goto :goto_2

    .line 155
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "firstNonWhitespaceIndex":I
    .end local v15    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    .end local v18    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .end local v19    # "$i$a$-reindent-StringsKt__IndentKt$replaceIndentByMargin$2":I
    .end local v22    # "$i$f$indexOfFirst":I
    .end local v27    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v31    # "index$iv":I
    .end local v32    # "index$iv$iv$iv":I
    .end local v34    # "index$iv$iv$iv$iv":I
    .end local v37    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v33    # "index$iv$iv$iv$iv":I
    :cond_d
    nop

    .line 156
    check-cast v29, Ljava/util/List;

    .end local v29    # "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v5, v29

    check-cast v5, Ljava/lang/Iterable;

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast v6, Ljava/lang/Appendable;

    const-string v7, "\n"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7c

    const/4 v14, 0x0

    invoke-static/range {v5 .. v14}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public static synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 33
    const-string p1, ""

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-string p2, "|"

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$trimIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$trimIndent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$trimMargin"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "marginPrefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$trimMargin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 25
    const-string p1, "|"

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
