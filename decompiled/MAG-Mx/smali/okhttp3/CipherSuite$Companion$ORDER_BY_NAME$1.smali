.class public final Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;
.super Ljava/lang/Object;
.source "CipherSuite.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCipherSuite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSuite.kt\nokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1\n*L\n1#1,461:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "okhttp3/CipherSuite$Companion$ORDER_BY_NAME$1",
        "Ljava/util/Comparator;",
        "",
        "Lkotlin/Comparator;",
        "compare",
        "",
        "a",
        "b",
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "a"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "b"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const-string v8, "a"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "b"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x4

    .line 65
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 66
    .local v5, "limit":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 68
    .local v0, "charA":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 69
    .local v1, "charB":C
    if-eq v0, v1, :cond_2

    if-ge v0, v1, :cond_1

    .line 75
    .end local v0    # "charA":C
    .end local v1    # "charB":C
    :cond_0
    :goto_1
    return v6

    .restart local v0    # "charA":C
    .restart local v1    # "charB":C
    :cond_1
    move v6, v7

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 72
    .end local v0    # "charA":C
    .end local v1    # "charB":C
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 73
    .local v3, "lengthA":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 74
    .local v4, "lengthB":I
    if-eq v3, v4, :cond_4

    if-lt v3, v4, :cond_0

    move v6, v7

    goto :goto_1

    .line 75
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
