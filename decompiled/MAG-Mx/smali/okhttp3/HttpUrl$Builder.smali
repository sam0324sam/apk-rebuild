.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n*L\n1#1,1874:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0017\u0018\u0000 V2\u00020\u0001:\u0001VB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0004J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0004J\u0018\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u00042\u0008\u0010(\u001a\u0004\u0018\u00010\u0004J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0004J\u0018\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u00042\u0008\u00101\u001a\u0004\u0018\u00010\u0004J\u0006\u00102\u001a\u000203J\u0008\u00104\u001a\u00020\u001bH\u0002J\u0010\u0010\u0003\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J\u000e\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0004J\u0010\u00106\u001a\u00020\u00002\u0008\u00106\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u00107\u001a\u00020\u00002\u0008\u00107\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0004J\u0010\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020\u0004H\u0002J\u0010\u0010:\u001a\u00020.2\u0006\u00109\u001a\u00020\u0004H\u0002J\u001f\u0010;\u001a\u00020\u00002\u0008\u0010<\u001a\u0004\u0018\u0001032\u0006\u00109\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0004J\u0008\u0010?\u001a\u00020@H\u0002J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ0\u0010A\u001a\u00020@2\u0006\u00109\u001a\u00020\u00042\u0006\u0010B\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020\u001b2\u0006\u0010D\u001a\u00020.2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010E\u001a\u00020\u00002\u0008\u0010E\u001a\u0004\u0018\u00010\u0004J\r\u0010F\u001a\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008GJ\u0010\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u0004H\u0002J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u0004J\u000e\u0010K\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0004J\u000e\u0010L\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u001bJ \u0010N\u001a\u00020@2\u0006\u00109\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020\u001bH\u0002J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0004J\u0016\u0010P\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u0004J\u0018\u0010Q\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u00042\u0008\u0010(\u001a\u0004\u0018\u00010\u0004J\u0016\u0010R\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u0004J\u0018\u0010S\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u00042\u0008\u00101\u001a\u0004\u0018\u00010\u0004J\u0008\u0010T\u001a\u00020\u0004H\u0016J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008R\u001a\u0010\u001a\u001a\u00020\u001bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0006\"\u0004\u0008\"\u0010\u0008\u00a8\u0006W"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Builder;",
        "",
        "()V",
        "encodedFragment",
        "",
        "getEncodedFragment$okhttp",
        "()Ljava/lang/String;",
        "setEncodedFragment$okhttp",
        "(Ljava/lang/String;)V",
        "encodedPassword",
        "getEncodedPassword$okhttp",
        "setEncodedPassword$okhttp",
        "encodedPathSegments",
        "",
        "getEncodedPathSegments$okhttp",
        "()Ljava/util/List;",
        "encodedQueryNamesAndValues",
        "getEncodedQueryNamesAndValues$okhttp",
        "setEncodedQueryNamesAndValues$okhttp",
        "(Ljava/util/List;)V",
        "encodedUsername",
        "getEncodedUsername$okhttp",
        "setEncodedUsername$okhttp",
        "host",
        "getHost$okhttp",
        "setHost$okhttp",
        "port",
        "",
        "getPort$okhttp",
        "()I",
        "setPort$okhttp",
        "(I)V",
        "scheme",
        "getScheme$okhttp",
        "setScheme$okhttp",
        "addEncodedPathSegment",
        "encodedPathSegment",
        "addEncodedPathSegments",
        "addEncodedQueryParameter",
        "encodedName",
        "encodedValue",
        "addPathSegment",
        "pathSegment",
        "addPathSegments",
        "pathSegments",
        "alreadyEncoded",
        "",
        "addQueryParameter",
        "name",
        "value",
        "build",
        "Lokhttp3/HttpUrl;",
        "effectivePort",
        "encodedPath",
        "encodedQuery",
        "fragment",
        "isDot",
        "input",
        "isDotDot",
        "parse",
        "base",
        "parse$okhttp",
        "password",
        "pop",
        "",
        "push",
        "pos",
        "limit",
        "addTrailingSlash",
        "query",
        "reencodeForUri",
        "reencodeForUri$okhttp",
        "removeAllCanonicalQueryParameters",
        "canonicalName",
        "removeAllEncodedQueryParameters",
        "removeAllQueryParameters",
        "removePathSegment",
        "index",
        "resolvePath",
        "startPos",
        "setEncodedPathSegment",
        "setEncodedQueryParameter",
        "setPathSegment",
        "setQueryParameter",
        "toString",
        "username",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/HttpUrl$Builder$Companion;

.field public static final INVALID_HOST:Ljava/lang/String; = "Invalid URL host"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private encodedFragment:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private encodedPassword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private encodedUsername:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private port:I

.field private scheme:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/HttpUrl$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/HttpUrl$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/HttpUrl$Builder;->Companion:Lokhttp3/HttpUrl$Builder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 915
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 921
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    return-void
.end method

.method private final addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "pathSegments"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z

    .prologue
    .line 998
    move-object v0, p0

    check-cast v0, Lokhttp3/HttpUrl$Builder;

    .local v0, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v6, 0x0

    .line 999
    .local v6, "$i$a$-apply-HttpUrl$Builder$addPathSegments$1":I
    const/4 v2, 0x0

    .line 1000
    .local v2, "offset":I
    :cond_0
    const-string v1, "/\\"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v1, v2, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 1002
    .local v3, "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_1

    const/4 v4, 0x1

    .local v4, "addTrailingSlash":Z
    :goto_0
    move-object v1, p1

    move v5, p2

    .line 1003
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1004
    add-int/lit8 v2, v3, 0x1

    .line 1005
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v2, v1, :cond_0

    .line 1006
    nop

    nop

    .line 998
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1006
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0

    .line 1002
    .end local v4    # "addTrailingSlash":Z
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final effectivePort()I
    .locals 2

    .prologue
    .line 973
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private final isDot(Ljava/lang/String;)Z
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1448
    const-string v1, "."

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%2e"

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isDotDot(Ljava/lang/String;)Z
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1452
    const-string v1, ".."

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1453
    const-string v1, "%2e."

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1454
    const-string v1, ".%2e"

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1455
    const-string v1, "%2e%2e"

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final pop()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1469
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1472
    .local v0, "removed":Ljava/lang/String;
    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "removed":Ljava/lang/String;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 1473
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1476
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 1472
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 1475
    :cond_2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private final push(Ljava/lang/String;IIZZ)V
    .locals 13
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .prologue
    .line 1424
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1427
    const-string v4, " \"<>^`{}|/\\?#"

    .line 1428
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf0

    const/4 v11, 0x0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    .line 1424
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1430
    .local v12, "segment":Ljava/lang/String;
    invoke-direct {p0, v12}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    invoke-direct {p0, v12}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1434
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->pop()V

    goto :goto_0

    .line 1437
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 1438
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1441
    :goto_2
    if-eqz p4, :cond_0

    .line 1443
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1437
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1440
    :cond_4
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private final removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 5
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 1111
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    move-result v3

    if-ltz v3, :cond_6

    if-gt v0, v2, :cond_5

    move v1, v0

    .line 1112
    :goto_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1113
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1114
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1115
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1116
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1121
    :cond_5
    return-void

    .line 1111
    :cond_6
    if-lt v0, v2, :cond_5

    move v1, v0

    goto :goto_0

    :cond_7
    if-eq v1, v2, :cond_5

    add-int v0, v1, v3

    move v1, v0

    goto :goto_0
.end method

.method private final resolvePath(Ljava/lang/String;II)V
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 1388
    move v7, p2

    .line 1390
    .local v7, "pos":I
    if-ne v7, p3, :cond_1

    .line 1414
    :cond_0
    return-void

    .line 1394
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1395
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_2

    const/16 v0, 0x5c

    if-ne v6, v0, :cond_4

    .line 1397
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1398
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    add-int/lit8 v7, v7, 0x1

    .line 1403
    :goto_0
    move v2, v7

    .line 1407
    .local v2, "i":I
    :cond_3
    :goto_1
    if-ge v2, p3, :cond_0

    .line 1408
    const-string v0, "/\\"

    invoke-static {p1, v0, v2, p3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 1409
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_5

    move v4, v5

    .local v4, "segmentHasTrailingSlash":Z
    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 1410
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1411
    move v2, v3

    .line 1412
    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1402
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_4
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v8, ""

    invoke-interface {v0, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1409
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "encodedPathSegment"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v1, "encodedPathSegment"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 986
    check-cast v0, Lokhttp3/HttpUrl$Builder;

    .local v0, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v6, 0x0

    .line 987
    .local v6, "$i$a$-apply-HttpUrl$Builder$addEncodedPathSegment$1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 988
    const/4 v5, 0x1

    move-object v1, p1

    move v4, v2

    .line 987
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 989
    nop

    .line 986
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 989
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1
    .param p1, "encodedPathSegments"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "encodedPathSegments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 16
    .param p1, "encodedName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "encodedName"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, p0

    .line 1068
    check-cast v14, Lokhttp3/HttpUrl$Builder;

    .local v14, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v13, 0x0

    .line 1069
    .local v13, "$i$a$-apply-HttpUrl$Builder$addEncodedQueryParameter$1":I
    iget-object v1, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1070
    :cond_0
    iget-object v15, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v15, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1071
    const-string v5, " \"\'<>#&="

    .line 1072
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1073
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const/4 v12, 0x0

    move-object/from16 v2, p1

    .line 1070
    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    iget-object v15, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v15, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1076
    const-string v5, " \"\'<>#&="

    .line 1077
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1078
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const/4 v12, 0x0

    move-object/from16 v2, p2

    .line 1075
    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    nop

    .line 1068
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1080
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0

    .line 1075
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "pathSegment"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v1, "pathSegment"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 976
    check-cast v0, Lokhttp3/HttpUrl$Builder;

    .local v0, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v6, 0x0

    .line 977
    .local v6, "$i$a$-apply-HttpUrl$Builder$addPathSegment$1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 978
    nop

    .line 976
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 978
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1
    .param p1, "pathSegments"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "pathSegments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "name"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, p0

    .line 1055
    check-cast v14, Lokhttp3/HttpUrl$Builder;

    .local v14, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v13, 0x0

    .line 1056
    .local v13, "$i$a$-apply-HttpUrl$Builder$addQueryParameter$1":I
    iget-object v1, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1057
    :cond_0
    iget-object v15, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v15, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1058
    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1059
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xdb

    const/4 v12, 0x0

    move-object/from16 v2, p1

    .line 1057
    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v15, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v15, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1062
    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1063
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xdb

    const/4 v12, 0x0

    move-object/from16 v2, p2

    .line 1061
    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    nop

    .line 1055
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1065
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0

    .line 1061
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final build()Lokhttp3/HttpUrl;
    .locals 18
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1170
    new-instance v11, Lokhttp3/HttpUrl;

    .line 1172
    move-object/from16 v0, p0

    iget-object v12, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1173
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1174
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1175
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 1176
    invoke-direct/range {p0 .. p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v16

    .line 1177
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lokhttp3/HttpUrl$Companion;->percentDecode$default(Lokhttp3/HttpUrl$Companion;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_2

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1172
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "scheme == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1175
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1178
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lokhttp3/HttpUrl$Companion;->access$percentDecode(Lokhttp3/HttpUrl$Companion;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 1179
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1180
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    .line 1171
    invoke-direct/range {v1 .. v10}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 1178
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1179
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public final encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "encodedFragment"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1130
    move-object v13, p0

    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 1131
    .local v12, "$i$a$-apply-HttpUrl$Builder$encodedFragment$1":I
    if-eqz p1, :cond_0

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1132
    const-string v4, ""

    .line 1134
    const/16 v10, 0xb3

    move-object v1, p1

    move v3, v2

    move v6, v2

    move v7, v2

    move v8, v5

    move-object v11, v9

    .line 1131
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_0
    iput-object v9, v13, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1136
    nop

    .line 1130
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1136
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "encodedPassword"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v0, "encodedPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, p0

    .line 950
    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 951
    .local v12, "$i$a$-apply-HttpUrl$Builder$encodedPassword$1":I
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 952
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    .line 953
    const/4 v5, 0x1

    const/16 v10, 0xf3

    move-object v1, p1

    move v3, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move-object v11, v9

    .line 951
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 955
    nop

    .line 950
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 955
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "encodedPath"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v3, "encodedPath"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 1034
    check-cast v2, Lokhttp3/HttpUrl$Builder;

    .local v2, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v0, 0x0

    .line 1035
    .local v0, "$i$a$-apply-HttpUrl$Builder$encodedPath$1":I
    const-string v3, "/"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "$i$a$-require-HttpUrl$Builder$encodedPath$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected encodedPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 1036
    .end local v1    # "$i$a$-require-HttpUrl$Builder$encodedPath$1$1":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, p1, v6, v3}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1037
    nop

    .line 1034
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1037
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "encodedQuery"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1046
    move-object v13, p0

    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 1047
    .local v12, "$i$a$-apply-HttpUrl$Builder$encodedQuery$1":I
    if-eqz p1, :cond_0

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1048
    const-string v4, " \"\'<>#"

    .line 1050
    const/16 v10, 0xd3

    move-object v1, p1

    move v3, v2

    move v6, v2

    move v7, v5

    move v8, v2

    move-object v11, v9

    .line 1047
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1051
    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl$Companion;->toQueryNamesAndValues$okhttp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    :cond_0
    iput-object v9, v13, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1052
    nop

    .line 1046
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1052
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "encodedUsername"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v0, "encodedUsername"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, p0

    .line 939
    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 940
    .local v12, "$i$a$-apply-HttpUrl$Builder$encodedUsername$1":I
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 941
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    .line 942
    const/4 v5, 0x1

    const/16 v10, 0xf3

    move-object v1, p1

    move v3, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move-object v11, v9

    .line 940
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 944
    nop

    .line 939
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 944
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "fragment"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1123
    move-object v13, p0

    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 1124
    .local v12, "$i$a$-apply-HttpUrl$Builder$fragment$1":I
    if-eqz p1, :cond_0

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1125
    const-string v4, ""

    .line 1126
    const/4 v8, 0x1

    const/16 v10, 0xbb

    move-object v1, p1

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move-object v11, v9

    .line 1124
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_0
    iput-object v9, v13, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1128
    nop

    .line 1123
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1128
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final getEncodedFragment$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedPassword$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodedPathSegments$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    return-object v0
.end method

.method public final getEncodedQueryNamesAndValues$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    return-object v0
.end method

.method public final getEncodedUsername$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final getHost$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort$okhttp()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    return v0
.end method

.method public final getScheme$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 911
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public final host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p0

    .line 961
    check-cast v8, Lokhttp3/HttpUrl$Builder;

    .local v8, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v7, 0x0

    .line 962
    .local v7, "$i$a$-apply-HttpUrl$Builder$host$1":I
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 964
    .local v9, "encoded":Ljava/lang/String;
    iput-object v9, v8, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 965
    nop

    nop

    .line 961
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 965
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0

    .line 962
    .end local v9    # "encoded":Ljava/lang/String;
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 38
    .param p1, "base"    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "input"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v7, v8}, Lokhttp3/internal/Util;->indexOfFirstNonAsciiWhitespace$default(Ljava/lang/String;IIILjava/lang/Object;)I

    move-result v5

    .line 1237
    .local v5, "pos":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v3, v4, v7}, Lokhttp3/internal/Util;->indexOfLastNonAsciiWhitespace$default(Ljava/lang/String;IIILjava/lang/Object;)I

    move-result v34

    .line 1240
    .local v34, "limit":I
    sget-object v3, Lokhttp3/HttpUrl$Builder;->Companion:Lokhttp3/HttpUrl$Builder$Companion;

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-static {v3, v0, v5, v1}, Lokhttp3/HttpUrl$Builder$Companion;->access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I

    move-result v36

    .line 1241
    .local v36, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    move/from16 v0, v36

    if-eq v0, v3, :cond_3

    .line 1242
    nop

    .line 1243
    const-string v3, "https:"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1244
    const-string v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1245
    const-string v3, "https:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    .line 1259
    :goto_0
    const/16 v33, 0x0

    .line 1263
    .local v33, "hasUsername":Z
    const/16 v32, 0x0

    .line 1264
    .local v32, "hasPassword":Z
    sget-object v3, Lokhttp3/HttpUrl$Builder;->Companion:Lokhttp3/HttpUrl$Builder$Companion;

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-static {v3, v0, v5, v1}, Lokhttp3/HttpUrl$Builder$Companion;->access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I

    move-result v37

    .line 1265
    .local v37, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v37

    if-ge v0, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_12

    .line 1275
    :cond_0
    add-int v5, v5, v37

    .line 1276
    :goto_1
    nop

    .line 1277
    const-string v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-static {v0, v3, v5, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v31

    .line 1278
    .local v31, "componentDelimiterOffset":I
    move/from16 v0, v31

    move/from16 v1, v34

    if-eq v0, v1, :cond_5

    .line 1279
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 1283
    .local v29, "c":I
    :goto_2
    sparse-switch v29, :sswitch_data_0

    goto :goto_1

    .line 1322
    :sswitch_0
    sget-object v3, Lokhttp3/HttpUrl$Builder;->Companion:Lokhttp3/HttpUrl$Builder$Companion;

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-static {v3, v0, v5, v1}, Lokhttp3/HttpUrl$Builder$Companion;->access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I

    move-result v10

    .line 1323
    .local v10, "portColonOffset":I
    add-int/lit8 v3, v10, 0x1

    move/from16 v0, v31

    if-ge v3, v0, :cond_a

    .line 1324
    sget-object v7, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v8, p2

    move v9, v5

    invoke-static/range {v7 .. v13}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1325
    sget-object v3, Lokhttp3/HttpUrl$Builder;->Companion:Lokhttp3/HttpUrl$Builder$Companion;

    add-int/lit8 v4, v10, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-static {v3, v0, v4, v1}, Lokhttp3/HttpUrl$Builder$Companion;->access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1326
    move-object/from16 v0, p0

    iget v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_c

    const/16 v27, 0x0

    .line 1327
    .local v27, "$i$a$-require-HttpUrl$Builder$parse$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URL port: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v10, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1328
    nop

    .line 1326
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 1247
    .end local v10    # "portColonOffset":I
    .end local v27    # "$i$a$-require-HttpUrl$Builder$parse$1":I
    .end local v29    # "c":I
    .end local v31    # "componentDelimiterOffset":I
    .end local v32    # "hasPassword":Z
    .end local v33    # "hasUsername":Z
    .end local v37    # "slashCount":I
    :cond_1
    const-string v3, "http:"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1248
    const-string v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1249
    const-string v3, "http:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_0

    .line 1251
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1252
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1251
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 1254
    :cond_3
    if-eqz p1, :cond_4

    .line 1255
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 1257
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1258
    const-string v4, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    .line 1257
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 1281
    .restart local v31    # "componentDelimiterOffset":I
    .restart local v32    # "hasPassword":Z
    .restart local v33    # "hasUsername":Z
    .restart local v37    # "slashCount":I
    :cond_5
    const/16 v29, -0x1

    goto/16 :goto_2

    .line 1286
    .restart local v29    # "c":I
    :sswitch_1
    if-nez v32, :cond_8

    .line 1287
    const/16 v3, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-static {v0, v3, v5, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v6

    .line 1288
    .local v6, "passwordColonOffset":I
    sget-object v3, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1291
    const-string v7, " \"\':;<=>@[]^`{}|/\\?#"

    .line 1292
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xf0

    const/4 v14, 0x0

    move-object/from16 v4, p2

    .line 1288
    invoke-static/range {v3 .. v14}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 1294
    .local v30, "canonicalUsername":Ljava/lang/String;
    if-eqz v33, :cond_6

    .line 1295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1294
    .end local v30    # "canonicalUsername":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1299
    move/from16 v0, v31

    if-eq v6, v0, :cond_7

    .line 1300
    const/16 v32, 0x1

    .line 1301
    sget-object v7, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1302
    add-int/lit8 v9, v6, 0x1

    .line 1304
    const-string v11, " \"\':;<=>@[]^`{}|/\\?#"

    .line 1305
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf0

    const/16 v18, 0x0

    move-object/from16 v8, p2

    move/from16 v10, v31

    .line 1301
    invoke-static/range {v7 .. v18}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1308
    :cond_7
    const/16 v33, 0x1

    .line 1316
    .end local v6    # "passwordColonOffset":I
    :goto_4
    add-int/lit8 v5, v31, 0x1

    goto/16 :goto_1

    .line 1310
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1313
    const-string v11, " \"\':;<=>@[]^`{}|/\\?#"

    .line 1314
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf0

    const/16 v18, 0x0

    move-object/from16 v8, p2

    move v9, v5

    move/from16 v10, v31

    .line 1310
    invoke-static/range {v7 .. v18}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_4

    .line 1326
    .restart local v10    # "portColonOffset":I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1331
    :cond_a
    sget-object v7, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v8, p2

    move v9, v5

    invoke-static/range {v7 .. v13}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1332
    sget-object v3, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v4, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Companion;->defaultPort(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1333
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_e

    const/16 v28, 0x0

    .line 1335
    .local v28, "$i$a$-require-HttpUrl$Builder$parse$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URL host: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    .line 1334
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 1333
    .end local v28    # "$i$a$-require-HttpUrl$Builder$parse$2":I
    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 1337
    :cond_e
    move/from16 v5, v31

    .line 1353
    .end local v10    # "portColonOffset":I
    .end local v29    # "c":I
    .end local v31    # "componentDelimiterOffset":I
    :cond_f
    :goto_6
    const-string v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-static {v0, v3, v5, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v35

    .line 1357
    .local v35, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-direct {v0, v1, v5, v2}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1358
    move/from16 v5, v35

    .line 1361
    move/from16 v0, v34

    if-ge v5, v0, :cond_10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_10

    .line 1362
    const/16 v3, 0x23

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-static {v0, v3, v5, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v14

    .line 1363
    .local v14, "queryDelimiterOffset":I
    sget-object v3, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    sget-object v11, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1364
    add-int/lit8 v13, v5, 0x1

    .line 1366
    const-string v15, " \"\'<>#"

    .line 1367
    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1368
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xd0

    const/16 v22, 0x0

    move-object/from16 v12, p2

    .line 1363
    invoke-static/range {v11 .. v22}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1369
    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Companion;->toQueryNamesAndValues$okhttp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1370
    move v5, v14

    .line 1374
    .end local v14    # "queryDelimiterOffset":I
    :cond_10
    move/from16 v0, v34

    if-ge v5, v0, :cond_11

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_11

    .line 1375
    sget-object v15, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1376
    add-int/lit8 v17, v5, 0x1

    .line 1378
    const-string v19, ""

    .line 1379
    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1380
    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0xb0

    const/16 v26, 0x0

    move-object/from16 v16, p2

    move/from16 v18, v34

    .line 1375
    invoke-static/range {v15 .. v26}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1384
    :cond_11
    return-object p0

    .line 1344
    .end local v35    # "pathDelimiterOffset":I
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1345
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1346
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1347
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->port()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1349
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1350
    move/from16 v0, v34

    if-eq v5, v0, :cond_13

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_f

    .line 1351
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto/16 :goto_6

    .line 1283
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public final password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "password"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, p0

    .line 946
    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 947
    .local v12, "$i$a$-apply-HttpUrl$Builder$password$1":I
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v10, 0xfb

    move-object v1, p1

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move-object v11, v9

    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 948
    nop

    .line 946
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 948
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final port(I)Lokhttp3/HttpUrl$Builder;
    .locals 5
    .param p1, "port"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 967
    move-object v2, p0

    check-cast v2, Lokhttp3/HttpUrl$Builder;

    .local v2, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v0, 0x0

    .line 968
    .local v0, "$i$a$-apply-HttpUrl$Builder$port$1":I
    const v4, 0xffff

    if-le v3, p1, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    const/4 v1, 0x0

    .local v1, "$i$a$-require-HttpUrl$Builder$port$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v1    # "$i$a$-require-HttpUrl$Builder$port$1$1":I
    :cond_1
    if-lt v4, p1, :cond_0

    goto :goto_0

    .line 969
    :cond_2
    iput p1, v2, Lokhttp3/HttpUrl$Builder;->port:I

    .line 970
    nop

    .line 967
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 970
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1039
    move-object v13, p0

    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 1040
    .local v12, "$i$a$-apply-HttpUrl$Builder$query$1":I
    if-eqz p1, :cond_0

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1041
    const-string v4, " \"\'<>#"

    .line 1042
    const/4 v7, 0x1

    const/16 v10, 0xdb

    move-object v1, p1

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move-object v11, v9

    .line 1040
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1043
    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl$Companion;->toQueryNamesAndValues$okhttp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    :cond_0
    iput-object v9, v13, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1044
    nop

    .line 1039
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1044
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final reencodeForUri$okhttp()Lokhttp3/HttpUrl$Builder;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1142
    move-object/from16 v15, p0

    check-cast v15, Lokhttp3/HttpUrl$Builder;

    .local v15, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v14, 0x0

    .line 1143
    .local v14, "$i$a$-apply-HttpUrl$Builder$reencodeForUri$1":I
    const/16 v17, 0x0

    iget-object v2, v15, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1144
    iget-object v0, v15, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object/from16 v19, v0

    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v3, v15, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1145
    const-string v6, "[]"

    .line 1146
    const/4 v7, 0x1

    .line 1147
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe3

    const/4 v13, 0x0

    .line 1144
    invoke-static/range {v2 .. v13}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1143
    add-int/lit8 v17, v17, 0x1

    .local v17, "i":I
    goto :goto_0

    .line 1150
    .end local v17    # "i":I
    :cond_0
    iget-object v0, v15, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1151
    .local v16, "encodedQueryNamesAndValues":Ljava/util/List;
    if-eqz v16, :cond_2

    .line 1152
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1153
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1154
    const-string v6, "\\^`{|}"

    .line 1155
    const/4 v7, 0x1

    .line 1156
    const/4 v8, 0x1

    .line 1157
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc3

    const/4 v13, 0x0

    .line 1153
    invoke-static/range {v2 .. v13}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1152
    add-int/lit8 v17, v17, 0x1

    .restart local v17    # "i":I
    goto :goto_1

    .line 1153
    .end local v17    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 1161
    :cond_2
    iget-object v3, v15, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1162
    const-string v6, " \"#<>\\^`{|}"

    .line 1163
    const/4 v7, 0x1

    .line 1164
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1165
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xa3

    const/4 v13, 0x0

    .line 1161
    invoke-static/range {v2 .. v13}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v15, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1167
    nop

    nop

    .line 1142
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1167
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0

    .line 1161
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public final removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "encodedName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v0, "encodedName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, p0

    .line 1101
    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 1102
    .local v12, "$i$a$-apply-HttpUrl$Builder$removeAllEncodedQueryParameters$1":I
    iget-object v0, v13, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1108
    .end local v13    # "$this$apply":Lokhttp3/HttpUrl$Builder;
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :goto_0
    return-object v13

    .line 1103
    .restart local v13    # "$this$apply":Lokhttp3/HttpUrl$Builder;
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 1104
    const-string v4, " \"\'<>#&="

    .line 1106
    const/16 v10, 0xd3

    move-object v1, p1

    move v3, v2

    move v6, v2

    move v7, v5

    move v8, v2

    move-object v11, v9

    .line 1103
    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1108
    nop

    .line 1101
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    move-object v13, p0

    .line 1108
    goto :goto_0
.end method

.method public final removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "name"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, p0

    .line 1092
    check-cast v14, Lokhttp3/HttpUrl$Builder;

    .local v14, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v13, 0x0

    .line 1093
    .local v13, "$i$a$-apply-HttpUrl$Builder$removeAllQueryParameters$1":I
    iget-object v1, v14, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1099
    .end local v14    # "$this$apply":Lokhttp3/HttpUrl$Builder;
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :goto_0
    return-object v14

    .line 1094
    .restart local v14    # "$this$apply":Lokhttp3/HttpUrl$Builder;
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_0
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1095
    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1096
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xdb

    const/4 v12, 0x0

    move-object/from16 v2, p1

    .line 1094
    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1098
    .local v15, "nameToRemove":Ljava/lang/String;
    invoke-direct {v14, v15}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1099
    nop

    nop

    .line 1092
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    move-object/from16 v14, p0

    .line 1099
    goto :goto_0
.end method

.method public final removePathSegment(I)Lokhttp3/HttpUrl$Builder;
    .locals 4
    .param p1, "index"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1027
    move-object v1, p0

    check-cast v1, Lokhttp3/HttpUrl$Builder;

    .local v1, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v0, 0x0

    .line 1028
    .local v0, "$i$a$-apply-HttpUrl$Builder$removePathSegment$1":I
    iget-object v2, v1, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1029
    iget-object v2, v1, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, v1, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_0
    nop

    .line 1027
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1032
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 5
    .param p1, "scheme"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v2, "scheme"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 927
    check-cast v1, Lokhttp3/HttpUrl$Builder;

    .local v1, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v0, 0x0

    .line 928
    .local v0, "$i$a$-apply-HttpUrl$Builder$scheme$1":I
    nop

    .line 929
    const-string v2, "http"

    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http"

    iput-object v2, v1, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 933
    :goto_0
    nop

    .line 927
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 933
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0

    .line 930
    .restart local p0    # "this":Lokhttp3/HttpUrl$Builder;
    :cond_0
    const-string v2, "https"

    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "https"

    iput-object v2, v1, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 931
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final setEncodedFragment$okhttp(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 918
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-void
.end method

.method public final setEncodedPassword$okhttp(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    return-void
.end method

.method public final setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 18
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "encodedPathSegment"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, p0

    .line 1016
    check-cast v16, Lokhttp3/HttpUrl$Builder;

    .local v16, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v14, 0x0

    .line 1017
    .local v14, "$i$a$-apply-HttpUrl$Builder$setEncodedPathSegment$1":I
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1018
    const-string v6, " \"<>^`{}|/\\?#"

    .line 1019
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf3

    const/4 v13, 0x0

    move-object/from16 v3, p2

    .line 1017
    invoke-static/range {v2 .. v13}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1021
    .local v17, "canonicalPathSegment":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1022
    invoke-direct/range {v16 .. v17}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct/range {v16 .. v17}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    const/4 v15, 0x0

    .line 1023
    .local v15, "$i$a$-require-HttpUrl$Builder$setEncodedPathSegment$1$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1022
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .end local v15    # "$i$a$-require-HttpUrl$Builder$setEncodedPathSegment$1$1":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1025
    :cond_1
    nop

    nop

    .line 1016
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1025
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final setEncodedQueryNamesAndValues$okhttp(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 917
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    return-void
.end method

.method public final setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "encodedName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 1087
    check-cast v1, Lokhttp3/HttpUrl$Builder;

    .local v1, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v0, 0x0

    .line 1088
    .local v0, "$i$a$-apply-HttpUrl$Builder$setEncodedQueryParameter$1":I
    invoke-virtual {v1, p1}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1089
    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1090
    nop

    .line 1087
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1090
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final setEncodedUsername$okhttp(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    return-void
.end method

.method public final setHost$okhttp(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 914
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    return-void
.end method

.method public final setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 18
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "pathSegment"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, p0

    .line 1008
    check-cast v16, Lokhttp3/HttpUrl$Builder;

    .local v16, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v14, 0x0

    .line 1009
    .local v14, "$i$a$-apply-HttpUrl$Builder$setPathSegment$1":I
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, " \"<>^`{}|/\\?#"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfb

    const/4 v13, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v13}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1010
    .local v17, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct/range {v16 .. v17}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct/range {v16 .. v17}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    const/4 v15, 0x0

    .line 1011
    .local v15, "$i$a$-require-HttpUrl$Builder$setPathSegment$1$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .end local v15    # "$i$a$-require-HttpUrl$Builder$setPathSegment$1$1":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1013
    :cond_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1014
    nop

    nop

    .line 1008
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1014
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final setPort$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 915
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    return-void
.end method

.method public final setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 1082
    check-cast v1, Lokhttp3/HttpUrl$Builder;

    .local v1, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v0, 0x0

    .line 1083
    .local v0, "$i$a$-apply-HttpUrl$Builder$setQueryParameter$1":I
    invoke-virtual {v1, p1}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1084
    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1085
    nop

    .line 1082
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 1085
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method

.method public final setScheme$okhttp(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 911
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v7, 0x3a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "$this$buildString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1186
    .local v0, "$i$a$-buildString-HttpUrl$Builder$toString$1":I
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 1187
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    const-string v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :goto_0
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_d

    move v3, v4

    :goto_1
    if-nez v3, :cond_0

    .line 1193
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_e

    move v3, v4

    :goto_2
    if-eqz v3, :cond_2

    .line 1194
    :cond_0
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_f

    move v3, v4

    :goto_3
    if-eqz v3, :cond_1

    .line 1196
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1197
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    :cond_2
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1203
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v7, v5, v4, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1205
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1206
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1210
    :cond_4
    :goto_4
    iget v3, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 1214
    :cond_5
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v2

    .line 1215
    .local v2, "effectivePort":I
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-object v3, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v4, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Companion;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 1216
    :cond_7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    .end local v2    # "effectivePort":I
    :cond_8
    sget-object v3, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {v3, v4, v1}, Lokhttp3/HttpUrl$Companion;->toPathString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 1223
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v3, :cond_a

    .line 1224
    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1225
    sget-object v3, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v4, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v3, v4, v1}, Lokhttp3/HttpUrl$Companion;->toQueryString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 1228
    :cond_a
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1229
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1230
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    :cond_b
    nop

    .line 1185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 1190
    :cond_c
    const-string v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    move v3, v5

    .line 1191
    goto/16 :goto_1

    :cond_e
    move v3, v5

    .line 1193
    goto/16 :goto_2

    :cond_f
    move v3, v5

    .line 1195
    goto/16 :goto_3

    .line 1209
    :cond_10
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public final username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 14
    .param p1, "username"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, p0

    .line 935
    check-cast v13, Lokhttp3/HttpUrl$Builder;

    .local v13, "$this$apply":Lokhttp3/HttpUrl$Builder;
    const/4 v12, 0x0

    .line 936
    .local v12, "$i$a$-apply-HttpUrl$Builder$username$1":I
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v10, 0xfb

    move-object v1, p1

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move-object v11, v9

    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 937
    nop

    .line 935
    check-cast p0, Lokhttp3/HttpUrl$Builder;

    .line 937
    .end local p0    # "this":Lokhttp3/HttpUrl$Builder;
    return-object p0
.end method
