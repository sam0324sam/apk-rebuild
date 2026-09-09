.class public final Lokhttp3/HttpUrl$Companion;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Companion\n*L\n1#1,1874:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0008\u0018J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0007\u00a2\u0006\u0002\u0008\u0018J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0008\u0018J\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0008\u001cJa\u0010\u001d\u001a\u00020\u0004*\u00020\u00042\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00042\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020\"2\u0008\u0008\u0002\u0010$\u001a\u00020\"2\u0008\u0008\u0002\u0010%\u001a\u00020\"2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'H\u0000\u00a2\u0006\u0002\u0008(J\u001c\u0010)\u001a\u00020\"*\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012H\u0002J/\u0010*\u001a\u00020\u0004*\u00020\u00042\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00122\u0008\u0008\u0002\u0010$\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008+J&\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040,*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040,2\u0008\u0008\u0002\u0010$\u001a\u00020\"H\u0002J\u0011\u0010-\u001a\u00020\u0015*\u00020\u0004H\u0007\u00a2\u0006\u0002\u0008\u0014J\u0013\u0010.\u001a\u0004\u0018\u00010\u0015*\u00020\u0017H\u0007\u00a2\u0006\u0002\u0008\u0014J\u0013\u0010.\u001a\u0004\u0018\u00010\u0015*\u00020\u001aH\u0007\u00a2\u0006\u0002\u0008\u0014J\u0013\u0010.\u001a\u0004\u0018\u00010\u0015*\u00020\u0004H\u0007\u00a2\u0006\u0002\u0008\u001bJ#\u0010/\u001a\u000200*\u0008\u0012\u0004\u0012\u00020\u00040,2\n\u00101\u001a\u000602j\u0002`3H\u0000\u00a2\u0006\u0002\u00084J\u0019\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000406*\u00020\u0004H\u0000\u00a2\u0006\u0002\u00087J%\u00108\u001a\u000200*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040,2\n\u00101\u001a\u000602j\u0002`3H\u0000\u00a2\u0006\u0002\u00089JV\u0010:\u001a\u000200*\u00020;2\u0006\u0010<\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0002J,\u0010=\u001a\u000200*\u00020;2\u0006\u0010>\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Companion;",
        "",
        "()V",
        "FORM_ENCODE_SET",
        "",
        "FRAGMENT_ENCODE_SET",
        "FRAGMENT_ENCODE_SET_URI",
        "HEX_DIGITS",
        "",
        "PASSWORD_ENCODE_SET",
        "PATH_SEGMENT_ENCODE_SET",
        "PATH_SEGMENT_ENCODE_SET_URI",
        "QUERY_COMPONENT_ENCODE_SET",
        "QUERY_COMPONENT_ENCODE_SET_URI",
        "QUERY_COMPONENT_REENCODE_SET",
        "QUERY_ENCODE_SET",
        "USERNAME_ENCODE_SET",
        "defaultPort",
        "",
        "scheme",
        "get",
        "Lokhttp3/HttpUrl;",
        "uri",
        "Ljava/net/URI;",
        "-deprecated_get",
        "url",
        "Ljava/net/URL;",
        "parse",
        "-deprecated_parse",
        "canonicalize",
        "pos",
        "limit",
        "encodeSet",
        "alreadyEncoded",
        "",
        "strict",
        "plusIsSpace",
        "unicodeAllowed",
        "charset",
        "Ljava/nio/charset/Charset;",
        "canonicalize$okhttp",
        "isPercentEncoded",
        "percentDecode",
        "percentDecode$okhttp",
        "",
        "toHttpUrl",
        "toHttpUrlOrNull",
        "toPathString",
        "",
        "out",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "toPathString$okhttp",
        "toQueryNamesAndValues",
        "",
        "toQueryNamesAndValues$okhttp",
        "toQueryString",
        "toQueryString$okhttp",
        "writeCanonicalized",
        "Lokio/Buffer;",
        "input",
        "writePercentDecoded",
        "encoded",
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
    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 1552
    invoke-direct {p0}, Lokhttp3/HttpUrl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$percentDecode(Lokhttp3/HttpUrl$Companion;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lokhttp3/HttpUrl$Companion;
    .param p1, "$this$access_u24percentDecode"    # Ljava/util/List;
    .param p2, "plusIsSpace"    # Z

    .prologue
    .line 1552
    invoke-direct {p0, p1, p2}, Lokhttp3/HttpUrl$Companion;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 11

    .prologue
    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_6

    .line 1777
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v1, p10, 0x2

    if-eqz v1, :cond_5

    .line 1778
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    and-int/lit8 v1, p10, 0x8

    if-eqz v1, :cond_4

    .line 1780
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v1, p10, 0x10

    if-eqz v1, :cond_3

    .line 1781
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v1, p10, 0x20

    if-eqz v1, :cond_2

    .line 1782
    const/4 v8, 0x0

    :goto_4
    and-int/lit8 v1, p10, 0x40

    if-eqz v1, :cond_1

    .line 1783
    const/4 v9, 0x0

    :goto_5
    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    .line 1784
    const/4 v1, 0x0

    check-cast v1, Ljava/nio/charset/Charset;

    move-object v10, v1

    :goto_6
    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-virtual/range {v1 .. v10}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move-object/from16 v10, p9

    goto :goto_6

    :cond_1
    move/from16 v9, p8

    goto :goto_5

    :cond_2
    move/from16 v8, p7

    goto :goto_4

    :cond_3
    move/from16 v7, p6

    goto :goto_3

    :cond_4
    move/from16 v6, p5

    goto :goto_2

    :cond_5
    move v4, p3

    goto :goto_1

    :cond_6
    move v3, p2

    goto :goto_0
.end method

.method private final isPercentEncoded(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "$this$isPercentEncoded"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v2, -0x1

    .line 1750
    add-int/lit8 v0, p2, 0x2

    if-ge v0, p3, :cond_0

    .line 1751
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 1752
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1753
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 10
    .param p1, "$this$percentDecode"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "plusIsSpace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1741
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 1742
    .local v8, "size":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1743
    .local v7, "result":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1744
    .local v1, "i":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lokhttp3/HttpUrl$Companion;

    const/4 v5, 0x3

    move v3, v2

    move v4, p2

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v6

    goto :goto_1

    .line 1746
    .end local v1    # "i":Ljava/lang/String;
    :cond_1
    check-cast v7, Ljava/util/List;

    .end local v7    # "result":Ljava/util/ArrayList;
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v2, "Collections.unmodifiableList(result)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic percentDecode$default(Lokhttp3/HttpUrl$Companion;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 1740
    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lokhttp3/HttpUrl$Companion;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    move p2, v0

    .line 1692
    :cond_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 1693
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_2

    move p4, v0

    .line 1694
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final writeCanonicalized(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .locals 10
    .param p1, "$this$writeCanonicalized"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "encodeSet"    # Ljava/lang/String;
    .param p6, "alreadyEncoded"    # Z
    .param p7, "strict"    # Z
    .param p8, "plusIsSpace"    # Z
    .param p9, "unicodeAllowed"    # Z
    .param p10, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 1831
    const/4 v3, 0x0

    check-cast v3, Lokio/Buffer;

    .line 1832
    .local v3, "encodedCharBuffer":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1833
    .local v2, "codePoint":I
    move v4, p3

    .line 1834
    .local v4, "i":I
    :goto_0
    if-ge v4, p4, :cond_b

    .line 1835
    if-nez p2, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1836
    if-eqz p6, :cond_1

    const/16 v5, 0x9

    if-eq v2, v5, :cond_2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_2

    .line 1837
    const/16 v5, 0xc

    if-eq v2, v5, :cond_2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_2

    .line 1839
    :cond_1
    const/16 v5, 0x2b

    if-ne v2, v5, :cond_4

    if-eqz p8, :cond_4

    .line 1841
    if-eqz p6, :cond_3

    const-string v5, "+"

    :goto_1
    invoke-virtual {p1, v5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 1868
    :cond_2
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1834
    goto :goto_0

    .line 1841
    :cond_3
    const-string v5, "%2B"

    goto :goto_1

    .line 1842
    :cond_4
    const/16 v5, 0x20

    if-lt v2, v5, :cond_6

    const/16 v5, 0x7f

    if-eq v2, v5, :cond_6

    const/16 v5, 0x80

    if-lt v2, v5, :cond_5

    if-eqz p9, :cond_6

    :cond_5
    move-object v5, p5

    .line 1845
    check-cast v5, Ljava/lang/CharSequence;

    int-to-char v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1846
    const/16 v5, 0x25

    if-ne v2, v5, :cond_a

    if-eqz p6, :cond_6

    if-eqz p7, :cond_a

    move-object v5, p0

    .line 1847
    check-cast v5, Lokhttp3/HttpUrl$Companion;

    invoke-direct {v5, p2, v4, p4}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1849
    :cond_6
    if-nez v3, :cond_7

    .line 1850
    new-instance v3, Lokio/Buffer;

    .end local v3    # "encodedCharBuffer":Lokio/Buffer;
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 1853
    .restart local v3    # "encodedCharBuffer":Lokio/Buffer;
    :cond_7
    if-eqz p10, :cond_8

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p10

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1854
    :cond_8
    invoke-virtual {v3, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 1857
    :goto_3
    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1860
    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 1861
    .local v1, "b":I
    const/16 v5, 0x25

    invoke-virtual {p1, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1862
    invoke-static {}, Lokhttp3/HttpUrl;->access$getHEX_DIGITS$cp()[C

    move-result-object v5

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p1, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1863
    invoke-static {}, Lokhttp3/HttpUrl;->access$getHEX_DIGITS$cp()[C

    move-result-object v5

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p1, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_3

    .line 1856
    .end local v1    # "b":I
    :cond_9
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v4

    move-object/from16 v0, p10

    invoke-virtual {v3, p2, v4, v5, v0}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    goto :goto_3

    .line 1867
    :cond_a
    invoke-virtual {p1, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto/16 :goto_2

    .line 1871
    :cond_b
    return-void
.end method

.method private final writePercentDecoded(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "$this$writePercentDecoded"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "encoded"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "plusIsSpace"    # Z

    .prologue
    const/4 v5, -0x1

    .line 1717
    const/4 v0, 0x0

    .line 1718
    .local v0, "codePoint":I
    move v3, p3

    .line 1719
    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_3

    .line 1720
    if-nez p2, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1721
    const/16 v4, 0x25

    if-ne v0, v4, :cond_1

    add-int/lit8 v4, v3, 0x2

    if-ge v4, p4, :cond_1

    .line 1722
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v1

    .line 1723
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v2

    .line 1724
    .local v2, "d2":I
    if-eq v1, v5, :cond_2

    if-eq v2, v5, :cond_2

    .line 1725
    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1726
    add-int/lit8 v3, v3, 0x2

    .line 1727
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1728
    goto :goto_0

    .line 1730
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :cond_1
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    if-eqz p5, :cond_2

    .line 1731
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1732
    add-int/lit8 v3, v3, 0x1

    .line 1733
    goto :goto_0

    .line 1734
    :cond_2
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 1736
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1719
    goto :goto_0

    .line 1738
    :cond_3
    return-void
.end method


# virtual methods
.method public final -deprecated_get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to extension function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "url.toHttpUrl()"
            imports = {
                "okhttp3.HttpUrl.Companion.toHttpUrl"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_get"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1662
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .end local p0    # "this":Lokhttp3/HttpUrl$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_get(Ljava/net/URI;)Lokhttp3/HttpUrl;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to extension function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "uri.toHttpUrlOrNull()"
            imports = {
                "okhttp3.HttpUrl.Companion.toHttpUrlOrNull"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_get"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1689
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .end local p0    # "this":Lokhttp3/HttpUrl$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URI;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_get(Ljava/net/URL;)Lokhttp3/HttpUrl;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to extension function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "url.toHttpUrlOrNull()"
            imports = {
                "okhttp3.HttpUrl.Companion.toHttpUrlOrNull"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_get"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1680
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .end local p0    # "this":Lokhttp3/HttpUrl$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to extension function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "url.toHttpUrlOrNull()"
            imports = {
                "okhttp3.HttpUrl.Companion.toHttpUrlOrNull"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_parse"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1671
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .end local p0    # "this":Lokhttp3/HttpUrl$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final canonicalize$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 13
    .param p1, "$this$canonicalize"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "encodeSet"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "alreadyEncoded"    # Z
    .param p6, "strict"    # Z
    .param p7, "plusIsSpace"    # Z
    .param p8, "unicodeAllowed"    # Z
    .param p9, "charset"    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$this$canonicalize"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "encodeSet"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1786
    const/4 v12, 0x0

    .line 1787
    .local v12, "codePoint":I
    move v4, p2

    .line 1788
    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_4

    .line 1789
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 1790
    const/16 v1, 0x20

    if-lt v12, v1, :cond_2

    const/16 v1, 0x7f

    if-eq v12, v1, :cond_2

    const/16 v1, 0x80

    if-lt v12, v1, :cond_0

    if-eqz p8, :cond_2

    :cond_0
    move-object/from16 v1, p4

    .line 1793
    check-cast v1, Ljava/lang/CharSequence;

    int-to-char v3, v12

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v1, v3, v5, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1794
    const/16 v1, 0x25

    if-ne v12, v1, :cond_1

    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    move-object v1, p0

    check-cast v1, Lokhttp3/HttpUrl$Companion;

    .line 1795
    move/from16 v0, p3

    invoke-direct {v1, p1, v4, v0}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1796
    :cond_1
    const/16 v1, 0x2b

    if-ne v12, v1, :cond_3

    if-eqz p7, :cond_3

    .line 1798
    :cond_2
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 1799
    .local v2, "out":Lokio/Buffer;
    invoke-virtual {v2, p1, p2, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-object v1, p0

    .line 1800
    check-cast v1, Lokhttp3/HttpUrl$Companion;

    move-object v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lokhttp3/HttpUrl$Companion;->writeCanonicalized(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    .line 1811
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1817
    .end local v2    # "out":Lokio/Buffer;
    :goto_1
    return-object v1

    .line 1813
    :cond_3
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v4, v1

    .line 1788
    goto :goto_0

    .line 1817
    :cond_4
    invoke-virtual/range {p1 .. p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final defaultPort(Ljava/lang/String;)I
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .prologue
    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1573
    :cond_0
    const/4 v0, -0x1

    .line 1570
    :goto_0
    return v0

    :sswitch_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    const/16 v0, 0x50

    goto :goto_0

    .line 1570
    :sswitch_1
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    const/16 v0, 0x1bb

    goto :goto_0

    .line 1570
    :sswitch_data_0
    .sparse-switch
        0x310888 -> :sswitch_0
        0x5f008eb -> :sswitch_1
    .end sparse-switch
.end method

.method public final get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2
    .param p1, "$this$toHttpUrl"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "get"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$toHttpUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1630
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/net/URI;)Lokhttp3/HttpUrl;
    .locals 2
    .param p1, "$this$toHttpUrlOrNull"    # Ljava/net/URI;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "get"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "$this$toHttpUrlOrNull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .end local p0    # "this":Lokhttp3/HttpUrl$Companion;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/net/URL;)Lokhttp3/HttpUrl;
    .locals 2
    .param p1, "$this$toHttpUrlOrNull"    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "get"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "$this$toHttpUrlOrNull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1650
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .end local p0    # "this":Lokhttp3/HttpUrl$Companion;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2
    .param p1, "$this$toHttpUrlOrNull"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "parse"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "$this$toHttpUrlOrNull"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1638
    nop

    .line 1639
    :try_start_0
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .end local p0    # "this":Lokhttp3/HttpUrl$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1638
    :goto_0
    return-object v1

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, "_":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final percentDecode$okhttp(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 8
    .param p1, "$this$percentDecode"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "plusIsSpace"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$this$percentDecode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, p2

    .line 1696
    :goto_0
    if-ge v3, p3, :cond_2

    .line 1697
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1698
    .local v6, "c":C
    const/16 v0, 0x25

    if-eq v6, v0, :cond_0

    const/16 v0, 0x2b

    if-ne v6, v0, :cond_1

    if-eqz p4, :cond_1

    .line 1700
    :cond_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1701
    .local v1, "out":Lokio/Buffer;
    invoke-virtual {v1, p1, p2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-object v0, p0

    .line 1702
    check-cast v0, Lokhttp3/HttpUrl$Companion;

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Companion;->writePercentDecoded(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 1703
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1708
    .end local v1    # "out":Lokio/Buffer;
    .end local v6    # "c":C
    :goto_1
    return-object v0

    .line 1696
    .restart local v6    # "c":C
    :cond_1
    add-int/lit8 v7, v3, 0x1

    .local v7, "i":I
    move v3, v7

    goto :goto_0

    .line 1708
    .end local v6    # "c":C
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final toPathString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "$this$toPathString"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "out"    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v1, "$this$toPathString"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "out"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1579
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1580
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1581
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    goto :goto_0

    .line 1583
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final toQueryNamesAndValues$okhttp(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "$this$toQueryNamesAndValues"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x0

    const-string v0, "$this$toQueryNamesAndValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1605
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    .line 1606
    .local v8, "result":Ljava/util/List;
    const/4 v2, 0x0

    .line 1607
    .local v2, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v2, v0, :cond_3

    move-object v0, p1

    .line 1608
    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x26

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v6

    .line 1609
    .local v6, "ampersandOffset":I
    if-ne v6, v9, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    :cond_0
    move-object v0, p1

    .line 1611
    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x3d

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    .line 1612
    .local v7, "equalsOffset":I
    if-eq v7, v9, :cond_1

    if-le v7, v6, :cond_2

    .line 1613
    :cond_1
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    :goto_1
    add-int/lit8 v2, v6, 0x1

    .line 1607
    goto :goto_0

    .line 1616
    :cond_2
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1621
    .end local v6    # "ampersandOffset":I
    .end local v7    # "equalsOffset":I
    :cond_3
    return-object v8
.end method

.method public final toQueryString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "$this$toQueryString"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "out"    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v2, "$this$toQueryString"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "out"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntProgression;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-ltz v3, :cond_3

    if-gt v2, v4, :cond_4

    .line 1588
    :cond_0
    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1589
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1590
    .local v1, "value":Ljava/lang/String;
    if-lez v2, :cond_1

    const/16 v5, 0x26

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1591
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    if-eqz v1, :cond_2

    .line 1593
    const/16 v5, 0x3d

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1594
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    :cond_2
    if-eq v2, v4, :cond_4

    add-int/2addr v2, v3

    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    if-ge v2, v4, :cond_0

    .line 1597
    :cond_4
    return-void
.end method
