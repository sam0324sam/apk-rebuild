.class public final Lokhttp3/Headers$Companion;
.super Ljava/lang/Object;
.source "Headers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Companion\n*L\n1#1,441:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J%\u0010\t\u001a\u0004\u0018\u00010\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\u000cJ#\u0010\r\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J#\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J!\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007\u00a2\u0006\u0002\u0008\u0011J\u001d\u0010\u0014\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007\u00a2\u0006\u0002\u0008\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/Headers$Companion;",
        "",
        "()V",
        "checkName",
        "",
        "name",
        "",
        "checkValue",
        "value",
        "get",
        "namesAndValues",
        "",
        "([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "headersOf",
        "Lokhttp3/Headers;",
        "of",
        "([Ljava/lang/String;)Lokhttp3/Headers;",
        "-deprecated_of",
        "headers",
        "",
        "toHeaders",
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
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 346
    invoke-direct {p0}, Lokhttp3/Headers$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkName(Lokhttp3/Headers$Companion;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/Headers$Companion;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$checkValue(Lokhttp3/Headers$Companion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/Headers$Companion;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get(Lokhttp3/Headers$Companion;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lokhttp3/Headers$Companion;
    .param p1, "namesAndValues"    # [Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Companion;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final checkName(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 422
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    if-nez v4, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-Headers$Companion$checkName$1":I
    const-string v5, "name is empty"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .end local v0    # "$i$a$-require-Headers$Companion$checkName$1":I
    :cond_0
    move v4, v6

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v6

    :goto_1
    if-ge v3, v7, :cond_5

    .line 424
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 425
    .local v2, "c":C
    const/16 v4, 0x7e

    const/16 v8, 0x21

    if-le v8, v2, :cond_3

    :cond_2
    move v4, v6

    :goto_2
    if-nez v4, :cond_4

    const/4 v1, 0x0

    .line 426
    .local v1, "$i$a$-require-Headers$Companion$checkName$2":I
    const-string v4, "Unexpected char %#04x at %d in header name: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x2

    aput-object p1, v7, v5

    invoke-static {v4, v7}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 425
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .end local v1    # "$i$a$-require-Headers$Companion$checkName$2":I
    :cond_3
    if-lt v4, v2, :cond_2

    move v4, v5

    goto :goto_2

    .line 423
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .local v3, "i":I
    goto :goto_1

    .line 429
    .end local v2    # "c":C
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private final checkValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_4

    .line 433
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 434
    .local v1, "c":C
    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v3, 0x7e

    const/16 v7, 0x20

    if-le v7, v1, :cond_1

    :cond_0
    move v3, v4

    :goto_1
    if-nez v3, :cond_3

    const/4 v0, 0x0

    .line 435
    .local v0, "$i$a$-require-Headers$Companion$checkValue$1":I
    const-string v3, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    const/4 v4, 0x2

    aput-object p2, v6, v4

    const/4 v4, 0x3

    aput-object p1, v6, v4

    invoke-static {v3, v6}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 434
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v0    # "$i$a$-require-Headers$Companion$checkValue$1":I
    :cond_1
    if-lt v3, v1, :cond_0

    :cond_2
    move v3, v5

    goto :goto_1

    .line 432
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    goto :goto_0

    .line 438
    .end local v1    # "c":C
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private final get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "namesAndValues"    # [Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-ltz v1, :cond_1

    if-gt v0, v2, :cond_2

    .line 349
    :cond_0
    :goto_0
    aget-object v3, p1, v0

    const/4 v4, 0x1

    invoke-static {p2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    add-int/lit8 v0, v0, 0x1

    aget-object v0, p1, v0

    .line 353
    :goto_1
    return-object v0

    .line 348
    :cond_1
    if-ge v0, v2, :cond_0

    .line 353
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 348
    :cond_3
    if-eq v0, v2, :cond_2

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final -deprecated_of(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 1
    .param p1, "headers"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "function moved to extension"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "headers.toHeaders()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_of"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    check-cast p0, Lokhttp3/Headers$Companion;

    .end local p0    # "this":Lokhttp3/Headers$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final varargs -deprecated_of([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 1
    .param p1, "namesAndValues"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "function name changed"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "headersOf(*namesAndValues)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_of"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "namesAndValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    check-cast p0, Lokhttp3/Headers$Companion;

    .end local p0    # "this":Lokhttp3/Headers$Companion;
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lokhttp3/Headers$Companion;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final of(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 8
    .param p1, "$this$toHeaders"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "of"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v6, "$this$toHeaders"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    .line 398
    .local v3, "namesAndValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 399
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "k":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 400
    .local v4, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    .end local v1    # "k":Ljava/lang/String;
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "name":Ljava/lang/String;
    if-nez v4, :cond_1

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    check-cast v4, Ljava/lang/CharSequence;

    .end local v4    # "v":Ljava/lang/String;
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    move-object v6, p0

    .line 402
    check-cast v6, Lokhttp3/Headers$Companion;

    invoke-direct {v6, v2}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    move-object v6, p0

    .line 403
    check-cast v6, Lokhttp3/Headers$Companion;

    invoke-direct {v6, v5, v2}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    aput-object v2, v3, v0

    .line 405
    add-int/lit8 v6, v0, 0x1

    aput-object v5, v3, v6

    .line 406
    add-int/lit8 v0, v0, 0x2

    .line 399
    goto :goto_0

    .line 409
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    new-instance v6, Lokhttp3/Headers;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lokhttp3/Headers;-><init>([Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final varargs of([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 9
    .param p1, "namesAndValues"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "of"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v5, "namesAndValues"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    array-length v5, p1

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    if-nez v5, :cond_1

    const/4 v0, 0x0

    .local v0, "$i$a$-require-Headers$Companion$headersOf$1":I
    const-string v6, "Expected alternating header names and values"

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .end local v0    # "$i$a$-require-Headers$Companion$headersOf$1":I
    :cond_0
    move v5, v7

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "namesAndValues":[Ljava/lang/String;
    if-nez p1, :cond_2

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    check-cast p1, [Ljava/lang/String;

    .line 367
    .restart local p1    # "namesAndValues":[Ljava/lang/String;
    array-length v8, p1

    move v2, v7

    :goto_1
    if-ge v2, v8, :cond_6

    .line 368
    aget-object v5, p1, v2

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    if-nez v5, :cond_4

    const/4 v1, 0x0

    .local v1, "$i$a$-require-Headers$Companion$headersOf$2":I
    const-string v6, "Headers cannot be null"

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .end local v1    # "$i$a$-require-Headers$Companion$headersOf$2":I
    :cond_3
    move v5, v7

    goto :goto_2

    .line 369
    :cond_4
    aget-object v5, p1, v2

    if-nez v5, :cond_5

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v2

    .line 367
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    goto :goto_1

    .line 373
    .end local v2    # "i":I
    :cond_6
    array-length v5, p1

    invoke-static {v7, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Lkotlin/ranges/IntProgression;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-ltz v8, :cond_7

    if-gt v5, v7, :cond_8

    move v6, v5

    .line 374
    :goto_3
    aget-object v3, p1, v6

    .line 375
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v5, v6, 0x1

    aget-object v4, p1, v5

    .local v4, "value":Ljava/lang/String;
    move-object v5, p0

    .line 376
    check-cast v5, Lokhttp3/Headers$Companion;

    invoke-direct {v5, v3}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    move-object v5, p0

    .line 377
    check-cast v5, Lokhttp3/Headers$Companion;

    invoke-direct {v5, v4, v3}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    if-eq v6, v7, :cond_8

    add-int v5, v6, v8

    move v6, v5

    goto :goto_3

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    if-lt v5, v7, :cond_8

    move v6, v5

    goto :goto_3

    .line 380
    :cond_8
    new-instance v5, Lokhttp3/Headers;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lokhttp3/Headers;-><init>([Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method
