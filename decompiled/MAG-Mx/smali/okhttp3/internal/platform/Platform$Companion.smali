.class public final Lokhttp3/internal/platform/Platform$Companion;
.super Ljava/lang/Object;
.source "Platform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.kt\nokhttp3/internal/platform/Platform$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,259:1\n673#2:260\n746#2,2:261\n1313#2:263\n1382#2,3:264\n*E\n*S KotlinDebug\n*F\n+ 1 Platform.kt\nokhttp3/internal/platform/Platform$Companion\n*L\n195#1:260\n195#1,2:261\n195#1:263\n195#1,3:264\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0010J\u0014\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0010J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0008\u0010\u0017\u001a\u00020\u000eH\u0007J\u0010\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008R\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokhttp3/internal/platform/Platform$Companion;",
        "",
        "()V",
        "INFO",
        "",
        "WARN",
        "isConscryptPreferred",
        "",
        "()Z",
        "isOpenJSSEPreferred",
        "logger",
        "Ljava/util/logging/Logger;",
        "kotlin.jvm.PlatformType",
        "platform",
        "Lokhttp3/internal/platform/Platform;",
        "alpnProtocolNames",
        "",
        "",
        "protocols",
        "Lokhttp3/Protocol;",
        "concatLengthPrefixed",
        "",
        "findPlatform",
        "get",
        "resetForTests",
        "",
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
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 179
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$findPlatform(Lokhttp3/internal/platform/Platform$Companion;)Lokhttp3/internal/platform/Platform;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/platform/Platform$Companion;

    .prologue
    .line 179
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform$Companion;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    return-object v0
.end method

.method private final findPlatform()Lokhttp3/internal/platform/Platform;
    .locals 6

    .prologue
    .line 211
    sget-object v5, Lokhttp3/internal/platform/AndroidPlatform;->Companion:Lokhttp3/internal/platform/AndroidPlatform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/AndroidPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    .line 213
    .local v0, "android":Lokhttp3/internal/platform/Platform;
    if-eqz v0, :cond_0

    .line 242
    .end local v0    # "android":Lokhttp3/internal/platform/Platform;
    .end local p0    # "this":Lokhttp3/internal/platform/Platform$Companion;
    .local v2, "jdk9":Lokhttp3/internal/platform/Jdk9Platform;
    :goto_0
    return-object v0

    .end local v2    # "jdk9":Lokhttp3/internal/platform/Jdk9Platform;
    .restart local v0    # "android":Lokhttp3/internal/platform/Platform;
    .restart local p0    # "this":Lokhttp3/internal/platform/Platform$Companion;
    :cond_0
    move-object v5, p0

    .line 217
    check-cast v5, Lokhttp3/internal/platform/Platform$Companion;

    invoke-direct {v5}, Lokhttp3/internal/platform/Platform$Companion;->isConscryptPreferred()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 218
    sget-object v5, Lokhttp3/internal/platform/ConscryptPlatform;->Companion:Lokhttp3/internal/platform/ConscryptPlatform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/ConscryptPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;

    move-result-object v1

    .line 220
    .local v1, "conscrypt":Lokhttp3/internal/platform/ConscryptPlatform;
    if-eqz v1, :cond_1

    .line 221
    check-cast v1, Lokhttp3/internal/platform/Platform;

    .end local v1    # "conscrypt":Lokhttp3/internal/platform/ConscryptPlatform;
    move-object v0, v1

    goto :goto_0

    .line 225
    :cond_1
    check-cast p0, Lokhttp3/internal/platform/Platform$Companion;

    .end local p0    # "this":Lokhttp3/internal/platform/Platform$Companion;
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform$Companion;->isOpenJSSEPreferred()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    sget-object v5, Lokhttp3/internal/platform/OpenJSSEPlatform;->Companion:Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/OpenJSSEPlatform;

    move-result-object v4

    .line 228
    .local v4, "openJSSE":Lokhttp3/internal/platform/OpenJSSEPlatform;
    if-eqz v4, :cond_2

    .line 229
    check-cast v4, Lokhttp3/internal/platform/Platform;

    .end local v4    # "openJSSE":Lokhttp3/internal/platform/OpenJSSEPlatform;
    move-object v0, v4

    goto :goto_0

    .line 233
    :cond_2
    sget-object v5, Lokhttp3/internal/platform/Jdk9Platform;->Companion:Lokhttp3/internal/platform/Jdk9Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Jdk9Platform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;

    move-result-object v2

    .line 235
    .restart local v2    # "jdk9":Lokhttp3/internal/platform/Jdk9Platform;
    if-eqz v2, :cond_3

    .line 236
    check-cast v2, Lokhttp3/internal/platform/Platform;

    .end local v2    # "jdk9":Lokhttp3/internal/platform/Jdk9Platform;
    move-object v0, v2

    goto :goto_0

    .line 240
    .restart local v2    # "jdk9":Lokhttp3/internal/platform/Jdk9Platform;
    :cond_3
    sget-object v5, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->Companion:Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    .line 242
    .local v3, "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    if-eqz v3, :cond_4

    .end local v3    # "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    :goto_1
    move-object v0, v3

    goto :goto_0

    .restart local v3    # "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    :cond_4
    new-instance v3, Lokhttp3/internal/platform/Platform;

    .end local v3    # "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    invoke-direct {v3}, Lokhttp3/internal/platform/Platform;-><init>()V

    goto :goto_1
.end method

.method private final isConscryptPreferred()Z
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Security.getProviders()[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "preferredProvider":Ljava/lang/String;
    const-string v1, "Conscrypt"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private final isOpenJSSEPreferred()Z
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Security.getProviders()[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "preferredProvider":Ljava/lang/String;
    const-string v1, "OpenJSSE"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static synthetic resetForTests$default(Lokhttp3/internal/platform/Platform$Companion;Lokhttp3/internal/platform/Platform;ILjava/lang/Object;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform$Companion;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/Platform$Companion;->resetForTests(Lokhttp3/internal/platform/Platform;)V

    return-void
.end method


# virtual methods
.method public final alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p1, "protocols"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v12, "protocols"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    .line 195
    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 260
    .local v2, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 261
    .local v3, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lokhttp3/Protocol;

    .local v10, "it":Lokhttp3/Protocol;
    const/4 v0, 0x0

    .line 195
    .local v0, "$i$a$-filter-Platform$Companion$alpnProtocolNames$1":I
    sget-object v12, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-eq v10, v12, :cond_1

    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_0

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 262
    .end local v0    # "$i$a$-filter-Platform$Companion$alpnProtocolNames$1":I
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "it":Lokhttp3/Protocol;
    :cond_2
    check-cast v8, Ljava/util/List;

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v8

    check-cast v7, Ljava/lang/Iterable;

    .line 195
    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 263
    .local v4, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .restart local v8    # "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 264
    .local v5, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 265
    .local v11, "item$iv$iv":Ljava/lang/Object;
    check-cast v11, Lokhttp3/Protocol;

    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 195
    .local v1, "$i$a$-map-Platform$Companion$alpnProtocolNames$2":I
    invoke-virtual {v11}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    .end local v1    # "$i$a$-map-Platform$Companion$alpnProtocolNames$2":I
    :cond_3
    check-cast v8, Ljava/util/List;

    .line 195
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    return-object v8
.end method

.method public final concatLengthPrefixed(Ljava/util/List;)[B
    .locals 4
    .param p1, "protocols"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "protocols"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 251
    .local v1, "result":Lokio/Buffer;
    check-cast p0, Lokhttp3/internal/platform/Platform$Companion;

    .end local p0    # "this":Lokhttp3/internal/platform/Platform$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/Platform$Companion;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, "protocol":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 253
    invoke-virtual {v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_0

    .line 255
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public final get()Lokhttp3/internal/platform/Platform;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lokhttp3/internal/platform/Platform;->access$getPlatform$cp()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    return-object v0
.end method

.method public final resetForTests(Lokhttp3/internal/platform/Platform;)V
    .locals 1
    .param p1, "platform"    # Lokhttp3/internal/platform/Platform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lokhttp3/internal/platform/Platform;->access$setPlatform$cp(Lokhttp3/internal/platform/Platform;)V

    .line 192
    return-void
.end method
