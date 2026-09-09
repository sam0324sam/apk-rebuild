.class final Lokhttp3/CertificatePinner$check$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CertificatePinner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Ljava/util/List",
        "<+",
        "Ljava/security/cert/X509Certificate;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner$check$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n1313#2:334\n1382#2,3:335\n*E\n*S KotlinDebug\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner$check$1\n*L\n143#1:334\n143#1,3:335\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Ljava/security/cert/X509Certificate;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $hostname:Ljava/lang/String;

.field final synthetic $peerCertificates:Ljava/util/List;

.field final synthetic this$0:Lokhttp3/CertificatePinner;


# direct methods
.method constructor <init>(Lokhttp3/CertificatePinner;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lokhttp3/CertificatePinner$check$1;->this$0:Lokhttp3/CertificatePinner;

    iput-object p2, p0, Lokhttp3/CertificatePinner$check$1;->$peerCertificates:Ljava/util/List;

    iput-object p3, p0, Lokhttp3/CertificatePinner$check$1;->$hostname:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lokhttp3/CertificatePinner$check$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 142
    iget-object v6, p0, Lokhttp3/CertificatePinner$check$1;->this$0:Lokhttp3/CertificatePinner;

    invoke-virtual {v6}, Lokhttp3/CertificatePinner;->getCertificateChainCleaner$okhttp()Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lokhttp3/CertificatePinner$check$1;->$peerCertificates:Ljava/util/List;

    iget-object v8, p0, Lokhttp3/CertificatePinner$check$1;->$hostname:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    check-cast v3, Ljava/lang/Iterable;

    .line 143
    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 334
    .local v1, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 335
    .local v2, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 336
    .local v5, "item$iv$iv":Ljava/lang/Object;
    check-cast v5, Ljava/security/cert/Certificate;

    .end local v5    # "item$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 143
    .local v0, "$i$a$-map-CertificatePinner$check$1$1":I
    if-nez v5, :cond_1

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    .end local v0    # "$i$a$-map-CertificatePinner$check$1$1":I
    .end local v1    # "$i$f$map":I
    .end local v2    # "$i$f$mapTo":I
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    :cond_0
    iget-object v3, p0, Lokhttp3/CertificatePinner$check$1;->$peerCertificates:Ljava/util/List;

    goto :goto_0

    .line 143
    .restart local v0    # "$i$a$-map-CertificatePinner$check$1$1":I
    .restart local v1    # "$i$f$map":I
    .restart local v2    # "$i$f$mapTo":I
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    :cond_1
    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    .end local v0    # "$i$a$-map-CertificatePinner$check$1$1":I
    :cond_2
    check-cast v4, Ljava/util/List;

    .line 143
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    return-object v4
.end method
