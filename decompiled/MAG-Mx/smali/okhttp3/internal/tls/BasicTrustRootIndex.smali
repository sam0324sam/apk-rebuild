.class public final Lokhttp3/internal/tls/BasicTrustRootIndex;
.super Ljava/lang/Object;
.source "BasicTrustRootIndex.kt"

# interfaces
.implements Lokhttp3/internal/tls/TrustRootIndex;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTrustRootIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTrustRootIndex.kt\nokhttp3/internal/tls/BasicTrustRootIndex\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,56:1\n240#2,2:57\n305#3,7:59\n*E\n*S KotlinDebug\n*F\n+ 1 BasicTrustRootIndex.kt\nokhttp3/internal/tls/BasicTrustRootIndex\n*L\n37#1,2:57\n28#1,7:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R \u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lokhttp3/internal/tls/BasicTrustRootIndex;",
        "Lokhttp3/internal/tls/TrustRootIndex;",
        "caCerts",
        "",
        "Ljava/security/cert/X509Certificate;",
        "([Ljava/security/cert/X509Certificate;)V",
        "subjectToCaCerts",
        "",
        "Ljavax/security/auth/x500/X500Principal;",
        "",
        "equals",
        "",
        "other",
        "",
        "findByIssuerAndSignature",
        "cert",
        "hashCode",
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


# instance fields
.field private final subjectToCaCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 10
    .param p1, "caCerts"    # [Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v7, "caCerts"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .line 27
    .local v5, "map":Ljava/util/Map;
    array-length v9, p1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v3, p1, v8

    .line 28
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-string v7, "caCert.subjectX500Principal"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v4, "key$iv":Ljavax/security/auth/x500/X500Principal;
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 60
    .local v6, "value$iv":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 28
    .local v0, "$i$a$-getOrPut-BasicTrustRootIndex$1":I
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    .line 62
    .local v2, "answer$iv":Ljava/util/Set;
    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    .line 60
    .end local v0    # "$i$a$-getOrPut-BasicTrustRootIndex$1":I
    .end local v2    # "answer$iv":Ljava/util/Set;
    :goto_1
    check-cast v7, Ljava/util/Set;

    .line 28
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 65
    goto :goto_1

    .line 30
    .end local v1    # "$i$f$getOrPut":I
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "key$iv":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "value$iv":Ljava/lang/Object;
    :cond_1
    iput-object v5, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object v0, p0

    check-cast v0, Lokhttp3/internal/tls/BasicTrustRootIndex;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Lokhttp3/internal/tls/BasicTrustRootIndex;

    if-eqz v0, :cond_1

    check-cast p1, Lokhttp3/internal/tls/BasicTrustRootIndex;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    iget-object v1, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 11
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v9, "cert"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 35
    .local v5, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v9, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-eqz v7, :cond_2

    .local v7, "subjectCaCerts":Ljava/util/Set;
    move-object v2, v7

    .line 37
    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/security/cert/X509Certificate;

    .local v6, "it":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 38
    .local v0, "$i$a$-firstOrNull-BasicTrustRootIndex$findByIssuerAndSignature$1":I
    nop

    .line 39
    :try_start_0
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v9, 0x1

    .line 42
    :goto_0
    if-eqz v9, :cond_0

    move-object v8, v4

    .line 58
    .end local v0    # "$i$a$-firstOrNull-BasicTrustRootIndex$findByIssuerAndSignature$1":I
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Ljava/security/cert/X509Certificate;
    :cond_1
    check-cast v8, Ljava/security/cert/X509Certificate;

    .end local v1    # "$i$f$firstOrNull":I
    .end local v2    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v7    # "subjectCaCerts":Ljava/util/Set;
    :cond_2
    return-object v8

    .line 41
    .restart local v0    # "$i$a$-firstOrNull-BasicTrustRootIndex$findByIssuerAndSignature$1":I
    .restart local v1    # "$i$f$firstOrNull":I
    .restart local v2    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .restart local v4    # "element$iv":Ljava/lang/Object;
    .restart local v6    # "it":Ljava/security/cert/X509Certificate;
    .restart local v7    # "subjectCaCerts":Ljava/util/Set;
    :catch_0
    move-exception v3

    .line 42
    .local v3, "_":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
