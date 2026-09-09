.class public final Lokhttp3/Handshake$Companion;
.super Ljava/lang/Object;
.source "Handshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandshake.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Handshake.kt\nokhttp3/Handshake$Companion\n*L\n1#1,191:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008\u0007J4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0007J\u0011\u0010\u0010\u001a\u00020\u0004*\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008\u0003J!\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r*\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000e\u0018\u00010\u0012H\u0002\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/Handshake$Companion;",
        "",
        "()V",
        "get",
        "Lokhttp3/Handshake;",
        "sslSession",
        "Ljavax/net/ssl/SSLSession;",
        "-deprecated_get",
        "tlsVersion",
        "Lokhttp3/TlsVersion;",
        "cipherSuite",
        "Lokhttp3/CipherSuite;",
        "peerCertificates",
        "",
        "Ljava/security/cert/Certificate;",
        "localCertificates",
        "handshake",
        "toImmutableList",
        "",
        "([Ljava/security/cert/Certificate;)Ljava/util/List;",
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
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 138
    invoke-direct {p0}, Lokhttp3/Handshake$Companion;-><init>()V

    return-void
.end method

.method private final toImmutableList([Ljava/security/cert/Certificate;)Ljava/util/List;
    .locals 1
    .param p1, "$this$toImmutableList"    # [Ljava/security/cert/Certificate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final -deprecated_get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    .locals 1
    .param p1, "sslSession"    # Ljavax/net/ssl/SSLSession;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to extension function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "sslSession.handshake()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_get"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "sslSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    check-cast p0, Lokhttp3/Handshake$Companion;

    .end local p0    # "this":Lokhttp3/Handshake$Companion;
    invoke-virtual {p0, p1}, Lokhttp3/Handshake$Companion;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    .locals 12
    .param p1, "$this$handshake"    # Ljavax/net/ssl/SSLSession;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "get"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v9, "$this$handshake"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .local v1, "$i$a$-checkNotNull-Handshake$Companion$handshake$cipherSuiteString$1":I
    const-string v10, "cipherSuite == null"

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    .line 144
    .end local v1    # "$i$a$-checkNotNull-Handshake$Companion$handshake$cipherSuiteString$1":I
    .local v5, "cipherSuiteString":Ljava/lang/String;
    :cond_0
    const-string v9, "SSL_NULL_WITH_NULL_NULL"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    new-instance v9, Ljava/io/IOException;

    const-string v10, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    .line 147
    :cond_1
    sget-object v9, Lokhttp3/CipherSuite;->Companion:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v9, v5}, Lokhttp3/CipherSuite$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v4

    .line 149
    .local v4, "cipherSuite":Lokhttp3/CipherSuite;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v2, 0x0

    .local v2, "$i$a$-checkNotNull-Handshake$Companion$handshake$tlsVersionString$1":I
    const-string v10, "tlsVersion == null"

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    .line 150
    .end local v2    # "$i$a$-checkNotNull-Handshake$Companion$handshake$tlsVersionString$1":I
    .local v8, "tlsVersionString":Ljava/lang/String;
    :cond_2
    const-string v9, "NONE"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/io/IOException;

    const-string v10, "tlsVersion == NONE"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    .line 151
    :cond_3
    sget-object v9, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    invoke-virtual {v9, v8}, Lokhttp3/TlsVersion$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v7

    .line 153
    .local v7, "tlsVersion":Lokhttp3/TlsVersion;
    nop

    .line 154
    :try_start_0
    move-object v0, p0

    check-cast v0, Lokhttp3/Handshake$Companion;

    move-object v9, v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v10

    invoke-direct {v9, v10}, Lokhttp3/Handshake$Companion;->toImmutableList([Ljava/security/cert/Certificate;)Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 159
    .local v6, "peerCertificatesCopy":Ljava/util/List;
    :goto_0
    new-instance v10, Lokhttp3/Handshake;

    .line 160
    check-cast p0, Lokhttp3/Handshake$Companion;

    .end local p0    # "this":Lokhttp3/Handshake$Companion;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v9

    invoke-direct {p0, v9}, Lokhttp3/Handshake$Companion;->toImmutableList([Ljava/security/cert/Certificate;)Ljava/util/List;

    move-result-object v11

    new-instance v9, Lokhttp3/Handshake$Companion$handshake$1;

    invoke-direct {v9, v6}, Lokhttp3/Handshake$Companion$handshake$1;-><init>(Ljava/util/List;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 159
    invoke-direct {v10, v7, v4, v11, v9}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-object v10

    .line 155
    .end local v6    # "peerCertificatesCopy":Ljava/util/List;
    .restart local p0    # "this":Lokhttp3/Handshake$Companion;
    :catch_0
    move-exception v3

    .line 156
    .local v3, "_":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method public final get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;
    .locals 4
    .param p1, "tlsVersion"    # Lokhttp3/TlsVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "cipherSuite"    # Lokhttp3/CipherSuite;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "peerCertificates"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "localCertificates"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lokhttp3/Handshake;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "tlsVersion"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cipherSuite"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "peerCertificates"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "localCertificates"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-static {p3}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, "peerCertificatesCopy":Ljava/util/List;
    new-instance v2, Lokhttp3/Handshake;

    invoke-static {p4}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 188
    new-instance v1, Lokhttp3/Handshake$Companion$get$1;

    invoke-direct {v1, v0}, Lokhttp3/Handshake$Companion$get$1;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 187
    invoke-direct {v2, p1, p2, v3, v1}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-object v2
.end method
