.class public final Lkotlin/UIntArrayKt;
.super Ljava/lang/Object;
.source "UIntArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArrayKt\n*L\n1#1,83:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001f\u0010\u0008\u001a\u00020\u00012\n\u0010\t\u001a\u00020\u0001\"\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "UIntArray",
        "Lkotlin/UIntArray;",
        "size",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lkotlin/UInt;",
        "(ILkotlin/jvm/functions/Function1;)[I",
        "uintArrayOf",
        "elements",
        "uintArrayOf--ajY-9A",
        "([I)[I",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private static final UIntArray(ILkotlin/jvm/functions/Function1;)[I
    .locals 5
    .param p0, "size"    # I
    .param p1, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Integer;",
            "Lkotlin/UInt;",
            ">;)[I"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$f$UIntArray":I
    new-array v4, p0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    const/4 v0, 0x0

    .local v0, "$i$a$-<init>-UIntArrayKt$UIntArray$1":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/UInt;

    invoke-virtual {v2}, Lkotlin/UInt;->unbox-impl()I

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .end local v0    # "$i$a$-<init>-UIntArrayKt$UIntArray$1":I
    :cond_0
    invoke-static {v4}, Lkotlin/UIntArray;->constructor-impl([I)[I

    move-result-object v2

    return-object v2
.end method

.method private static final varargs uintArrayOf--ajY-9A([I)[I
    .locals 1
    .param p0, "elements"    # [I
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 82
    .local v0, "$i$f$uintArrayOf--ajY-9A":I
    return-object p0
.end method
