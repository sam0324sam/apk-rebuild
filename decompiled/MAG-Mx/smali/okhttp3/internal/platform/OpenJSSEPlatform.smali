.class public final Lokhttp3/internal/platform/OpenJSSEPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "OpenJSSEPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenJSSEPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenJSSEPlatform.kt\nokhttp3/internal/platform/OpenJSSEPlatform\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,101:1\n37#2,2:102\n*E\n*S KotlinDebug\n*F\n+ 1 OpenJSSEPlatform.kt\nokhttp3/internal/platform/OpenJSSEPlatform\n*L\n68#1,2:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokhttp3/internal/platform/OpenJSSEPlatform;",
        "Lokhttp3/internal/platform/Platform;",
        "()V",
        "provider",
        "Ljava/security/Provider;",
        "configureTlsExtensions",
        "",
        "sslSocket",
        "Ljavax/net/ssl/SSLSocket;",
        "hostname",
        "",
        "protocols",
        "",
        "Lokhttp3/Protocol;",
        "getSelectedProtocol",
        "newSSLContext",
        "Ljavax/net/ssl/SSLContext;",
        "platformTrustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "trustManager",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
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
.field public static final Companion:Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;

.field private static final isSupported:Z


# instance fields
.field private final provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v1, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lokhttp3/internal/platform/OpenJSSEPlatform;->Companion:Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;

    .line 89
    nop

    .line 91
    :try_start_0
    const-string v1, "org.openjsse.net.ssl.OpenJSSE"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v1, 0x1

    .line 89
    .local v0, "_":Ljava/lang/ClassNotFoundException;
    :goto_0
    sput-boolean v1, Lokhttp3/internal/platform/OpenJSSEPlatform;->isSupported:Z

    return-void

    .line 94
    .end local v0    # "_":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 95
    .restart local v0    # "_":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 34
    new-instance v0, Lorg/openjsse/net/ssl/OpenJSSE;

    invoke-direct {v0}, Lorg/openjsse/net/ssl/OpenJSSE;-><init>()V

    check-cast v0, Ljava/security/Provider;

    iput-object v0, p0, Lokhttp3/internal/platform/OpenJSSEPlatform;->provider:Ljava/security/Provider;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/internal/platform/OpenJSSEPlatform;-><init>()V

    return-void
.end method

.method public static final synthetic access$isSupported$cp()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lokhttp3/internal/platform/OpenJSSEPlatform;->isSupported:Z

    return v0
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "hostname"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "protocols"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v4, "sslSocket"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "protocols"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    instance-of v4, p1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 63
    check-cast v4, Lorg/openjsse/javax/net/ssl/SSLSocket;

    invoke-virtual {v4}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 65
    .local v2, "sslParameters":Ljavax/net/ssl/SSLParameters;
    instance-of v4, v2, Lorg/openjsse/javax/net/ssl/SSLParameters;

    if-eqz v4, :cond_1

    .line 67
    sget-object v4, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v4, p3}, Lokhttp3/internal/platform/Platform$Companion;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .local v1, "names":Ljava/util/List;
    move-object v4, v2

    .line 68
    check-cast v4, Lorg/openjsse/javax/net/ssl/SSLParameters;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 103
    .local v0, "$i$f$toTypedArray":I
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 70
    check-cast p1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .end local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {p1, v2}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 74
    .end local v0    # "$i$f$toTypedArray":I
    .end local v1    # "names":Ljava/util/List;
    .end local v2    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    :goto_0
    return-void

    .line 73
    .restart local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "sslSocket"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    instance-of v1, p1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    .line 79
    check-cast p1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .end local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .local v0, "protocol":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 81
    :goto_0
    const/4 v0, 0x0

    .line 78
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 81
    .restart local v0    # "protocol":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    .end local v0    # "protocol":Ljava/lang/String;
    .restart local p1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public newSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 40
    const-string v0, "TLSv1.3"

    iget-object v1, p0, Lokhttp3/internal/platform/OpenJSSEPlatform;->provider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const-string v1, "SSLContext.getInstance(\"TLSv1.3\", provider)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public platformTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lokhttp3/internal/platform/OpenJSSEPlatform;->provider:Ljava/security/Provider;

    invoke-static {v3, v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 45
    .local v1, "factory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 46
    const-string v3, "factory"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 47
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_0
    array-length v3, v2

    if-ne v3, v4, :cond_1

    aget-object v3, v2, v5

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$a$-check-OpenJSSEPlatform$platformTrustManager$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected default trust managers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.util.Arrays.toString(this)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    .line 47
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v0    # "$i$a$-check-OpenJSSEPlatform$platformTrustManager$1":I
    :cond_1
    move v3, v5

    goto :goto_0

    .line 50
    :cond_2
    aget-object v3, v2, v5

    if-nez v3, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    return-object v3
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 55
    const-string v1, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported with OpenJSSE"

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
