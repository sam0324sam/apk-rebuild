.class Lkotlin/collections/GroupingKt__GroupingJVMKt;
.super Ljava/lang/Object;
.source "GroupingJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupingJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n+ 2 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n142#2,2:53\n80#2,6:55\n1587#3,2:61\n*E\n*S KotlinDebug\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n*L\n22#1,2:53\n22#1,6:55\n48#1,2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0000\u001a0\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u0005H\u0007\u001aW\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\t\"\u0004\u0008\u0002\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u00072\u001e\u0010\n\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\u000c\u0012\u0004\u0012\u0002H\u00080\u000bH\u0081\u0008\u00a8\u0006\r"
    }
    d2 = {
        "eachCount",
        "",
        "K",
        "",
        "T",
        "Lkotlin/collections/Grouping;",
        "mapValuesInPlace",
        "",
        "R",
        "V",
        "f",
        "Lkotlin/Function1;",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xf
    }
    xi = 0x1
    xs = "kotlin/collections/GroupingKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eachCount(Lkotlin/collections/Grouping;)Ljava/util/Map;
    .locals 18
    .param p0, "$this$eachCount"    # Lkotlin/collections/Grouping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/collections/Grouping",
            "<TT;+TK;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v15, "$this$eachCount"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v12, Ljava/util/Map;

    .local v12, "destination$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 53
    .local v7, "$i$f$foldTo":I
    move-object/from16 v9, p0

    .local v9, "$this$aggregateTo$iv$iv":Lkotlin/collections/Grouping;
    const/4 v6, 0x0

    .line 55
    .local v6, "$i$f$aggregateTo":I
    invoke-interface {v9}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 56
    .local v13, "e$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v13}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 57
    .local v14, "key$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 58
    .local v11, "accumulator$iv$iv":Ljava/lang/Object;
    if-nez v11, :cond_0

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    :goto_1
    const/4 v1, 0x0

    .line 54
    .local v1, "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    if-eqz v15, :cond_1

    const/4 v3, 0x0

    .line 23
    .local v3, "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$1":I
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v8, v14

    .end local v3    # "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$1":I
    .end local v14    # "key$iv$iv":Ljava/lang/Object;
    .local v8, "key$iv$iv":Ljava/lang/Object;
    :goto_2
    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .local v8, "$noName_0":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 24
    .local v4, "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$2":I
    .local v10, "$this$apply":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v2, 0x0

    .local v2, "$i$a$-apply-GroupingKt__GroupingJVMKt$eachCount$2$1":I
    iget v15, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    nop

    invoke-interface {v12, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v1    # "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    .end local v2    # "$i$a$-apply-GroupingKt__GroupingJVMKt$eachCount$2$1":I
    .end local v4    # "$i$a$-foldTo-GroupingKt__GroupingJVMKt$eachCount$2":I
    .end local v8    # "$noName_0":Ljava/lang/Object;
    .end local v10    # "$this$apply":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "key$iv$iv":Ljava/lang/Object;
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .restart local v1    # "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    :cond_1
    move-object v10, v11

    move-object v8, v14

    .line 23
    .end local v14    # "key$iv$iv":Ljava/lang/Object;
    .local v8, "key$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 54
    .end local v1    # "$i$a$-aggregateTo-GroupingKt__GroupingKt$foldTo$1$iv":I
    .end local v8    # "key$iv$iv":Ljava/lang/Object;
    .end local v11    # "accumulator$iv$iv":Ljava/lang/Object;
    .end local v13    # "e$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 25
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    if-nez v15, :cond_3

    new-instance v15, Lkotlin/TypeCastException;

    const-string v16, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct/range {v15 .. v16}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_3
    invoke-static {v15}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v17

    const/4 v5, 0x0

    .local v5, "$i$a$-mapValuesInPlace-GroupingKt__GroupingJVMKt$eachCount$3":I
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    iget v15, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v5    # "$i$a$-mapValuesInPlace-GroupingKt__GroupingJVMKt$eachCount$3":I
    :cond_4
    invoke-static {v12}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    return-object v15
.end method

.method private static final mapValuesInPlace(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 9
    .param p0, "$this$mapValuesInPlace"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;+TR;>;)",
            "Ljava/util/Map",
            "<TK;TR;>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$f$mapValuesInPlace":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 61
    .local v1, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "it":Ljava/util/Map$Entry;
    const/4 v0, 0x0

    .line 49
    .local v0, "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    if-nez v5, :cond_0

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMapEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    nop

    goto :goto_0

    .line 62
    .end local v0    # "$i$a$-forEach-GroupingKt__GroupingJVMKt$mapValuesInPlace$1":I
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 51
    if-nez p0, :cond_2

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, R>"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    return-object v6
.end method
