.class public final Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n1#1,82:1\n57#1,23:83\n57#1,23:106\n*E\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n19#1,23:83\n31#1,23:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\u0007\u00a2\u0006\u0004\u0008\t\u0010\u000c\u001a~\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0014\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00112(\u0010\u0012\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0013H\u0082\u0008\u00a2\u0006\u0002\u0010\u0014\"\u0018\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "EMPTY",
        "",
        "",
        "[Ljava/lang/Object;",
        "MAX_SIZE",
        "",
        "collectionToArray",
        "collection",
        "",
        "toArray",
        "(Ljava/util/Collection;)[Ljava/lang/Object;",
        "a",
        "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;",
        "toArrayImpl",
        "empty",
        "Lkotlin/Function0;",
        "alloc",
        "Lkotlin/Function1;",
        "trim",
        "Lkotlin/Function2;",
        "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "CollectionToArray"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final MAX_SIZE:I = 0x7ffffffd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 13
    .param p0, "collection"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "toArray"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v12, "collection"

    invoke-static {p0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v3, 0x0

    .line 83
    .local v3, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v11

    .line 84
    .local v11, "size$iv":I
    if-nez v11, :cond_1

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    sget-object v9, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    .line 24
    .end local v0    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    :cond_0
    :goto_0
    return-object v9

    .line 85
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 86
    .local v6, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v0, 0x0

    .line 21
    .restart local v0    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    sget-object v9, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    goto :goto_0

    .line 87
    .end local v0    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    :cond_2
    move v10, v11

    .local v10, "size":I
    const/4 v1, 0x0

    .line 22
    .local v1, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$2":I
    new-array v9, v10, [Ljava/lang/Object;

    .line 88
    .local v9, "result$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 90
    .local v4, "i$iv":I
    :goto_1
    nop

    .line 91
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i$iv":I
    .local v5, "i$iv":I
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v9, v4

    .line 92
    array-length v12, v9

    if-lt v5, v12, :cond_6

    .line 93
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 97
    mul-int/lit8 v12, v5, 0x3

    add-int/lit8 v12, v12, 0x1

    ushr-int/lit8 v7, v12, 0x1

    .line 98
    .local v7, "newSize$iv":I
    if-gt v7, v5, :cond_4

    .line 99
    const v12, 0x7ffffffd

    if-lt v5, v12, :cond_3

    new-instance v12, Ljava/lang/OutOfMemoryError;

    invoke-direct {v12}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    .line 100
    :cond_3
    const v7, 0x7ffffffd

    .line 102
    :cond_4
    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "result$iv":[Ljava/lang/Object;
    const-string v12, "Arrays.copyOf(result, newSize)"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v7    # "newSize$iv":I
    .restart local v9    # "result$iv":[Ljava/lang/Object;
    :cond_5
    move v4, v5

    .line 105
    .end local v5    # "i$iv":I
    .restart local v4    # "i$iv":I
    goto :goto_1

    .line 104
    .end local v4    # "i$iv":I
    .restart local v5    # "i$iv":I
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    move-object v8, v9

    .local v8, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 23
    .local v2, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$3":I
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "result$iv":[Ljava/lang/Object;
    const-string v12, "Arrays.copyOf(result, size)"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14
    .param p0, "collection"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "a"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "toArray"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v12, "collection"

    invoke-static {p0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    if-nez p1, :cond_0

    new-instance v12, Ljava/lang/NullPointerException;

    invoke-direct {v12}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v11

    .line 107
    .local v11, "size$iv":I
    if-nez v11, :cond_2

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    array-length v12, p1

    if-lez v12, :cond_1

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, p1, v12

    .line 128
    .end local v0    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    .end local p1    # "a":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p1

    .line 108
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 109
    .local v6, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v0, 0x0

    .line 34
    .restart local v0    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    array-length v12, p1

    if-lez v12, :cond_1

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, p1, v12

    goto :goto_0

    .line 110
    .end local v0    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    :cond_3
    move v10, v11

    .local v10, "size":I
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$5":I
    array-length v12, p1

    if-gt v10, v12, :cond_4

    move-object v9, p1

    .line 111
    .local v9, "result$iv":[Ljava/lang/Object;
    :goto_1
    const/4 v4, 0x0

    .line 113
    .local v4, "i$iv":I
    :goto_2
    nop

    .line 114
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i$iv":I
    .local v5, "i$iv":I
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v9, v4

    .line 115
    array-length v12, v9

    if-lt v5, v12, :cond_a

    .line 116
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    move-object p1, v9

    goto :goto_0

    .line 38
    .end local v5    # "i$iv":I
    .end local v9    # "result$iv":[Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    new-instance v12, Lkotlin/TypeCastException;

    const-string v13, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v12, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_5
    check-cast v12, [Ljava/lang/Object;

    move-object v9, v12

    goto :goto_1

    .line 120
    .restart local v5    # "i$iv":I
    .restart local v9    # "result$iv":[Ljava/lang/Object;
    :cond_6
    mul-int/lit8 v12, v5, 0x3

    add-int/lit8 v12, v12, 0x1

    ushr-int/lit8 v7, v12, 0x1

    .line 121
    .local v7, "newSize$iv":I
    if-gt v7, v5, :cond_8

    .line 122
    const v12, 0x7ffffffd

    if-lt v5, v12, :cond_7

    new-instance v12, Ljava/lang/OutOfMemoryError;

    invoke-direct {v12}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    .line 123
    :cond_7
    const v7, 0x7ffffffd

    .line 125
    :cond_8
    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "result$iv":[Ljava/lang/Object;
    const-string v12, "Arrays.copyOf(result, newSize)"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v7    # "newSize$iv":I
    .restart local v9    # "result$iv":[Ljava/lang/Object;
    :cond_9
    move v4, v5

    .line 128
    .end local v5    # "i$iv":I
    .restart local v4    # "i$iv":I
    goto :goto_2

    .line 127
    .end local v4    # "i$iv":I
    .restart local v5    # "i$iv":I
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    move-object v8, v9

    .local v8, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$6":I
    if-ne v8, p1, :cond_b

    .line 43
    const/4 v12, 0x0

    aput-object v12, p1, v5

    goto :goto_0

    .line 46
    :cond_b
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    const-string v12, "Arrays.copyOf(result, size)"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static final toArrayImpl(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;
    .locals 8
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "empty"    # Lkotlin/jvm/functions/Function0;
    .param p2, "alloc"    # Lkotlin/jvm/functions/Function1;
    .param p3, "trim"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lkotlin/jvm/functions/Function0",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2",
            "<-[",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    .line 58
    .local v6, "size":I
    if-nez v6, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 78
    :goto_0
    return-object v7

    .line 59
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 60
    .local v3, "iter":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 62
    .local v5, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 64
    .local v1, "i":I
    :goto_1
    nop

    .line 65
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v1

    .line 66
    array-length v7, v5

    if-lt v2, v7, :cond_6

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v5

    goto :goto_0

    .line 71
    :cond_2
    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x1

    ushr-int/lit8 v4, v7, 0x1

    .line 72
    .local v4, "newSize":I
    if-gt v4, v2, :cond_4

    .line 73
    const v7, 0x7ffffffd

    if-lt v2, v7, :cond_3

    new-instance v7, Ljava/lang/OutOfMemoryError;

    invoke-direct {v7}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 74
    :cond_3
    const v4, 0x7ffffffd

    .line 76
    :cond_4
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":[Ljava/lang/Object;
    const-string v7, "Arrays.copyOf(result, newSize)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v4    # "newSize":I
    .restart local v5    # "result":[Ljava/lang/Object;
    :cond_5
    move v1, v2

    .line 79
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 78
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    goto :goto_0
.end method
