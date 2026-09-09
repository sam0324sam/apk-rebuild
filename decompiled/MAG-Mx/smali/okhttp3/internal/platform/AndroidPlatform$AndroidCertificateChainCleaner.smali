.class public final Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "AndroidPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidCertificateChainCleaner"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPlatform.kt\nokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,242:1\n37#2,2:243\n*E\n*S KotlinDebug\n*F\n+ 1 AndroidPlatform.kt\nokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner\n*L\n185#1,2:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "x509TrustManagerExtensions",
        "",
        "checkServerTrusted",
        "Ljava/lang/reflect/Method;",
        "(Ljava/lang/Object;Ljava/lang/reflect/Method;)V",
        "clean",
        "",
        "Ljava/security/cert/Certificate;",
        "chain",
        "hostname",
        "",
        "equals",
        "",
        "other",
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
.field private final checkServerTrusted:Ljava/lang/reflect/Method;

.field private final x509TrustManagerExtensions:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "x509TrustManagerExtensions"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "checkServerTrusted"    # Ljava/lang/reflect/Method;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "x509TrustManagerExtensions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkServerTrusted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "chain"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "hostname"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v7, "chain"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "hostname"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    nop

    .line 185
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$toTypedArray":I
    move-object v6, v2

    .line 244
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :catch_0
    move-exception v4

    .line 189
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 190
    .local v5, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    check-cast v4, Ljava/lang/Throwable;

    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 191
    check-cast v5, Ljava/lang/Throwable;

    .end local v5    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    throw v5

    .line 185
    .restart local v1    # "$i$f$toTypedArray":I
    .restart local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_0
    :try_start_1
    check-cast v3, [Ljava/security/cert/X509Certificate;

    .line 186
    .local v3, "certificates":[Ljava/security/cert/X509Certificate;
    iget-object v7, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    .line 187
    iget-object v8, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "RSA"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p2, v9, v10

    .line 186
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type kotlin.collections.List<java.security.cert.Certificate>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :catch_1
    move-exception v4

    .line 193
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 186
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "$i$f$toTypedArray":I
    .restart local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v3    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    :try_start_2
    check-cast v7, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 197
    instance-of v0, p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method
