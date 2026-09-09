.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;,
        Lokhttp3/OkHttpClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,975:1\n1792#2,3:976\n*E\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n*L\n214#1,3:976\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u0000 p2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002opB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\r\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008LJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007\u00a2\u0006\u0002\u0008MJ\r\u0010\u000e\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008NJ\r\u0010\u0014\u001a\u00020\u0015H\u0007\u00a2\u0006\u0002\u0008OJ\r\u0010\u0017\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008PJ\r\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u0008QJ\u0013\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0007\u00a2\u0006\u0002\u0008RJ\r\u0010\u001f\u001a\u00020 H\u0007\u00a2\u0006\u0002\u0008SJ\r\u0010\"\u001a\u00020#H\u0007\u00a2\u0006\u0002\u0008TJ\r\u0010%\u001a\u00020&H\u0007\u00a2\u0006\u0002\u0008UJ\r\u0010(\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0008VJ\r\u0010+\u001a\u00020,H\u0007\u00a2\u0006\u0002\u0008WJ\r\u0010.\u001a\u00020,H\u0007\u00a2\u0006\u0002\u0008XJ\r\u0010/\u001a\u000200H\u0007\u00a2\u0006\u0002\u0008YJ\u0013\u00102\u001a\u0008\u0012\u0004\u0012\u0002030\u001cH\u0007\u00a2\u0006\u0002\u0008ZJ\u0013\u00104\u001a\u0008\u0012\u0004\u0012\u0002030\u001cH\u0007\u00a2\u0006\u0002\u0008[J\u0008\u0010\\\u001a\u00020\u0006H\u0016J\u0010\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020`H\u0016J\u0018\u0010a\u001a\u00020b2\u0006\u0010_\u001a\u00020`2\u0006\u0010c\u001a\u00020dH\u0016J\r\u00105\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008eJ\u0013\u00106\u001a\u0008\u0012\u0004\u0012\u0002070\u001cH\u0007\u00a2\u0006\u0002\u0008fJ\u000f\u00108\u001a\u0004\u0018\u000109H\u0007\u00a2\u0006\u0002\u0008gJ\r\u0010;\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008hJ\r\u0010<\u001a\u00020=H\u0007\u00a2\u0006\u0002\u0008iJ\r\u0010?\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008jJ\r\u0010@\u001a\u00020,H\u0007\u00a2\u0006\u0002\u0008kJ\r\u0010A\u001a\u00020BH\u0007\u00a2\u0006\u0002\u0008lJ\r\u0010D\u001a\u00020EH\u0007\u00a2\u0006\u0002\u0008mJ\r\u0010H\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008nR\u0013\u0010\u0008\u001a\u00020\t8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\rR\u0013\u0010\u000e\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u00128G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013R\u0013\u0010\u0014\u001a\u00020\u00158G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0013\u0010\u0018\u001a\u00020\u00198G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u001aR\u0019\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001eR\u0013\u0010\u001f\u001a\u00020 8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010!R\u0013\u0010\"\u001a\u00020#8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010$R\u0013\u0010%\u001a\u00020&8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\'R\u0013\u0010(\u001a\u00020)8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010*R\u0013\u0010+\u001a\u00020,8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010-R\u0013\u0010.\u001a\u00020,8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010-R\u0013\u0010/\u001a\u0002008G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00101R\u0019\u00102\u001a\u0008\u0012\u0004\u0012\u0002030\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001eR\u0019\u00104\u001a\u0008\u0012\u0004\u0012\u0002030\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001eR\u0013\u00105\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010\u0010R\u0019\u00106\u001a\u0008\u0012\u0004\u0012\u0002070\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u001eR\u0015\u00108\u001a\u0004\u0018\u0001098G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010:R\u0013\u0010;\u001a\u00020\t8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\nR\u0013\u0010<\u001a\u00020=8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010>R\u0013\u0010?\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010\u0010R\u0013\u0010@\u001a\u00020,8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010-R\u0013\u0010A\u001a\u00020B8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010CR\u0011\u0010D\u001a\u00020E8G\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010FR\u0010\u0010G\u001a\u0004\u0018\u00010EX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010H\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010\u0010R\u0015\u0010I\u001a\u0004\u0018\u00010J8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010K\u00a8\u0006q"
    }
    d2 = {
        "Lokhttp3/OkHttpClient;",
        "",
        "Lokhttp3/Call$Factory;",
        "Lokhttp3/WebSocket$Factory;",
        "()V",
        "builder",
        "Lokhttp3/OkHttpClient$Builder;",
        "(Lokhttp3/OkHttpClient$Builder;)V",
        "authenticator",
        "Lokhttp3/Authenticator;",
        "()Lokhttp3/Authenticator;",
        "cache",
        "Lokhttp3/Cache;",
        "()Lokhttp3/Cache;",
        "callTimeoutMillis",
        "",
        "()I",
        "certificateChainCleaner",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "()Lokhttp3/internal/tls/CertificateChainCleaner;",
        "certificatePinner",
        "Lokhttp3/CertificatePinner;",
        "()Lokhttp3/CertificatePinner;",
        "connectTimeoutMillis",
        "connectionPool",
        "Lokhttp3/ConnectionPool;",
        "()Lokhttp3/ConnectionPool;",
        "connectionSpecs",
        "",
        "Lokhttp3/ConnectionSpec;",
        "()Ljava/util/List;",
        "cookieJar",
        "Lokhttp3/CookieJar;",
        "()Lokhttp3/CookieJar;",
        "dispatcher",
        "Lokhttp3/Dispatcher;",
        "()Lokhttp3/Dispatcher;",
        "dns",
        "Lokhttp3/Dns;",
        "()Lokhttp3/Dns;",
        "eventListenerFactory",
        "Lokhttp3/EventListener$Factory;",
        "()Lokhttp3/EventListener$Factory;",
        "followRedirects",
        "",
        "()Z",
        "followSslRedirects",
        "hostnameVerifier",
        "Ljavax/net/ssl/HostnameVerifier;",
        "()Ljavax/net/ssl/HostnameVerifier;",
        "interceptors",
        "Lokhttp3/Interceptor;",
        "networkInterceptors",
        "pingIntervalMillis",
        "protocols",
        "Lokhttp3/Protocol;",
        "proxy",
        "Ljava/net/Proxy;",
        "()Ljava/net/Proxy;",
        "proxyAuthenticator",
        "proxySelector",
        "Ljava/net/ProxySelector;",
        "()Ljava/net/ProxySelector;",
        "readTimeoutMillis",
        "retryOnConnectionFailure",
        "socketFactory",
        "Ljavax/net/SocketFactory;",
        "()Ljavax/net/SocketFactory;",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "sslSocketFactoryOrNull",
        "writeTimeoutMillis",
        "x509TrustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "()Ljavax/net/ssl/X509TrustManager;",
        "-deprecated_authenticator",
        "-deprecated_cache",
        "-deprecated_callTimeoutMillis",
        "-deprecated_certificatePinner",
        "-deprecated_connectTimeoutMillis",
        "-deprecated_connectionPool",
        "-deprecated_connectionSpecs",
        "-deprecated_cookieJar",
        "-deprecated_dispatcher",
        "-deprecated_dns",
        "-deprecated_eventListenerFactory",
        "-deprecated_followRedirects",
        "-deprecated_followSslRedirects",
        "-deprecated_hostnameVerifier",
        "-deprecated_interceptors",
        "-deprecated_networkInterceptors",
        "newBuilder",
        "newCall",
        "Lokhttp3/Call;",
        "request",
        "Lokhttp3/Request;",
        "newWebSocket",
        "Lokhttp3/WebSocket;",
        "listener",
        "Lokhttp3/WebSocketListener;",
        "-deprecated_pingIntervalMillis",
        "-deprecated_protocols",
        "-deprecated_proxy",
        "-deprecated_proxyAuthenticator",
        "-deprecated_proxySelector",
        "-deprecated_readTimeoutMillis",
        "-deprecated_retryOnConnectionFailure",
        "-deprecated_socketFactory",
        "-deprecated_sslSocketFactory",
        "-deprecated_writeTimeoutMillis",
        "Builder",
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
.field public static final Companion:Lokhttp3/OkHttpClient$Companion;

.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final authenticator:Lokhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cache:Lokhttp3/Cache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callTimeoutMillis:I

.field private final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final certificatePinner:Lokhttp3/CertificatePinner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connectTimeoutMillis:I

.field private final connectionPool:Lokhttp3/ConnectionPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cookieJar:Lokhttp3/CookieJar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatcher:Lokhttp3/Dispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dns:Lokhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventListenerFactory:Lokhttp3/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final followRedirects:Z

.field private final followSslRedirects:Z

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pingIntervalMillis:I

.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final proxy:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final proxyAuthenticator:Lokhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final proxySelector:Ljava/net/ProxySelector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readTimeoutMillis:I

.field private final retryOnConnectionFailure:Z

.field private final socketFactory:Ljavax/net/SocketFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

.field private final writeTimeoutMillis:I

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lokhttp3/OkHttpClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/OkHttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;

    .line 959
    new-array v0, v4, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v1, v0, v3

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 961
    new-array v0, v4, [Lokhttp3/ConnectionSpec;

    .line 962
    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    .line 961
    invoke-static {v0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 12
    .param p1, "builder"    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "builder"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getDispatcher$okhttp()Lokhttp3/Dispatcher;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 125
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getConnectionPool$okhttp()Lokhttp3/ConnectionPool;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    .line 133
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getInterceptors$okhttp()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 141
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getNetworkInterceptors$okhttp()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 144
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getEventListenerFactory$okhttp()Lokhttp3/EventListener$Factory;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 147
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getRetryOnConnectionFailure$okhttp()Z

    move-result v7

    iput-boolean v7, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 149
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getAuthenticator$okhttp()Lokhttp3/Authenticator;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    .line 151
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getFollowRedirects$okhttp()Z

    move-result v7

    iput-boolean v7, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 153
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getFollowSslRedirects$okhttp()Z

    move-result v7

    iput-boolean v7, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 155
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getCookieJar$okhttp()Lokhttp3/CookieJar;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    .line 157
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getCache$okhttp()Lokhttp3/Cache;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    .line 159
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getDns$okhttp()Lokhttp3/Dns;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    .line 161
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getProxy$okhttp()Ljava/net/Proxy;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 166
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getProxy$okhttp()Ljava/net/Proxy;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v7, Lokhttp3/internal/proxy/NullProxySelector;

    invoke-direct {v7}, Lokhttp3/internal/proxy/NullProxySelector;-><init>()V

    check-cast v7, Ljava/net/ProxySelector;

    .line 164
    :cond_0
    :goto_0
    iput-object v7, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 171
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getProxyAuthenticator$okhttp()Lokhttp3/Authenticator;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 173
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getSocketFactory$okhttp()Ljavax/net/SocketFactory;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 183
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getConnectionSpecs$okhttp()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 185
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getProtocols$okhttp()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 187
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getHostnameVerifier$okhttp()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 197
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getCallTimeout$okhttp()I

    move-result v7

    iput v7, p0, Lokhttp3/OkHttpClient;->callTimeoutMillis:I

    .line 200
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getConnectTimeout$okhttp()I

    move-result v7

    iput v7, p0, Lokhttp3/OkHttpClient;->connectTimeoutMillis:I

    .line 203
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getReadTimeout$okhttp()I

    move-result v7

    iput v7, p0, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    .line 206
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getWriteTimeout$okhttp()I

    move-result v7

    iput v7, p0, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    .line 209
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getPingInterval$okhttp()I

    move-result v7

    iput v7, p0, Lokhttp3/OkHttpClient;->pingIntervalMillis:I

    .line 214
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getSslSocketFactoryOrNull$okhttp()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v4, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 976
    .local v3, "$i$f$none":I
    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    .line 978
    :goto_1
    if-eqz v7, :cond_8

    .line 215
    .end local v3    # "$i$f$none":I
    .end local v4    # "$this$none$iv":Ljava/lang/Iterable;
    :cond_1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getSslSocketFactoryOrNull$okhttp()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 216
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getCertificateChainCleaner$okhttp()Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 217
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getX509TrustManagerOrNull$okhttp()Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 223
    :goto_2
    iget-object v7, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v7, :cond_2

    .line 226
    sget-object v7, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v7}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    iget-object v10, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v7, v10}, Lokhttp3/internal/platform/Platform;->configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 229
    :cond_2
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getCertificatePinner$okhttp()Lokhttp3/CertificatePinner;

    move-result-object v7

    .line 230
    iget-object v10, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v7, v10}, Lokhttp3/CertificatePinner;->withCertificateChainCleaner$okhttp(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 232
    iget-object v7, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    if-nez v7, :cond_b

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 167
    :cond_3
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->getProxySelector$okhttp()Ljava/net/ProxySelector;

    move-result-object v7

    if-eqz v7, :cond_4

    :goto_3
    if-nez v7, :cond_0

    new-instance v7, Lokhttp3/internal/proxy/NullProxySelector;

    invoke-direct {v7}, Lokhttp3/internal/proxy/NullProxySelector;-><init>()V

    check-cast v7, Ljava/net/ProxySelector;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v7

    goto :goto_3

    .line 977
    .restart local v3    # "$i$f$none":I
    .restart local v4    # "$this$none$iv":Ljava/lang/Iterable;
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lokhttp3/ConnectionSpec;

    .local v6, "it":Lokhttp3/ConnectionSpec;
    const/4 v2, 0x0

    .line 214
    .local v2, "$i$a$-none-OkHttpClient$1":I
    invoke-virtual {v6}, Lokhttp3/ConnectionSpec;->isTls()Z

    move-result v10

    if-eqz v10, :cond_6

    move v7, v9

    goto :goto_1

    .end local v2    # "$i$a$-none-OkHttpClient$1":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lokhttp3/ConnectionSpec;
    :cond_7
    move v7, v8

    .line 978
    goto :goto_1

    .line 219
    :cond_8
    sget-object v7, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v7}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/internal/platform/Platform;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 220
    sget-object v7, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v7}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v7

    iget-object v10, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v7, v10}, Lokhttp3/internal/platform/Platform;->configureTrustManager(Ljavax/net/ssl/X509TrustManager;)V

    .line 221
    sget-object v7, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;

    iget-object v10, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v10, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-static {v7, v10}, Lokhttp3/OkHttpClient$Companion;->access$newSslSocketFactory(Lokhttp3/OkHttpClient$Companion;Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 222
    sget-object v7, Lokhttp3/internal/tls/CertificateChainCleaner;->Companion:Lokhttp3/internal/tls/CertificateChainCleaner$Companion;

    iget-object v10, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v10, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v7, v10}, Lokhttp3/internal/tls/CertificateChainCleaner$Companion;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto/16 :goto_2

    .line 232
    .end local v3    # "$i$f$none":I
    .end local v4    # "$this$none$iv":Ljava/lang/Iterable;
    :cond_b
    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v8

    :goto_4
    if-nez v7, :cond_d

    const/4 v0, 0x0

    .line 233
    .local v0, "$i$a$-check-OkHttpClient$2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Null interceptor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 232
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .end local v0    # "$i$a$-check-OkHttpClient$2":I
    :cond_c
    move v7, v9

    goto :goto_4

    .line 235
    :cond_d
    iget-object v7, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    if-nez v7, :cond_e

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    move v7, v8

    :goto_5
    if-nez v7, :cond_10

    const/4 v1, 0x0

    .line 236
    .local v1, "$i$a$-check-OkHttpClient$3":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Null network interceptor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 235
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .end local v1    # "$i$a$-check-OkHttpClient$3":I
    :cond_f
    move v7, v9

    goto :goto_5

    .line 238
    :cond_10
    return-void
.end method

.method public static final synthetic access$getDEFAULT_CONNECTION_SPECS$cp()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_PROTOCOLS$cp()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSslSocketFactoryOrNull$p(Lokhttp3/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .param p0, "$this"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public final -deprecated_authenticator()Lokhttp3/Authenticator;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "authenticator"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_authenticator"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final -deprecated_cache()Lokhttp3/Cache;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "cache"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_cache"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    return-object v0
.end method

.method public final -deprecated_callTimeoutMillis()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "callTimeoutMillis"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_callTimeoutMillis"
    .end annotation

    .prologue
    .line 406
    iget v0, p0, Lokhttp3/OkHttpClient;->callTimeoutMillis:I

    return v0
.end method

.method public final -deprecated_certificatePinner()Lokhttp3/CertificatePinner;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "certificatePinner"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_certificatePinner"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public final -deprecated_connectTimeoutMillis()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "connectTimeoutMillis"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_connectTimeoutMillis"
    .end annotation

    .prologue
    .line 413
    iget v0, p0, Lokhttp3/OkHttpClient;->connectTimeoutMillis:I

    return v0
.end method

.method public final -deprecated_connectionPool()Lokhttp3/ConnectionPool;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "connectionPool"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_connectionPool"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public final -deprecated_connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "connectionSpecs"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_connectionSpecs"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_cookieJar()Lokhttp3/CookieJar;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "cookieJar"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_cookieJar"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public final -deprecated_dispatcher()Lokhttp3/Dispatcher;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dispatcher"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_dispatcher"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public final -deprecated_dns()Lokhttp3/Dns;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dns"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_dns"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public final -deprecated_eventListenerFactory()Lokhttp3/EventListener$Factory;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "eventListenerFactory"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_eventListenerFactory"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public final -deprecated_followRedirects()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "followRedirects"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_followRedirects"
    .end annotation

    .prologue
    .line 308
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public final -deprecated_followSslRedirects()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "followSslRedirects"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_followSslRedirects"
    .end annotation

    .prologue
    .line 315
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public final -deprecated_hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hostnameVerifier"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_hostnameVerifier"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final -deprecated_interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "interceptors"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_interceptors"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "networkInterceptors"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_networkInterceptors"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_pingIntervalMillis()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "pingIntervalMillis"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_pingIntervalMillis"
    .end annotation

    .prologue
    .line 434
    iget v0, p0, Lokhttp3/OkHttpClient;->pingIntervalMillis:I

    return v0
.end method

.method public final -deprecated_protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "protocols"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_protocols"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "proxy"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_proxy"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final -deprecated_proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "proxyAuthenticator"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_proxyAuthenticator"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final -deprecated_proxySelector()Ljava/net/ProxySelector;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "proxySelector"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_proxySelector"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final -deprecated_readTimeoutMillis()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "readTimeoutMillis"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_readTimeoutMillis"
    .end annotation

    .prologue
    .line 420
    iget v0, p0, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    return v0
.end method

.method public final -deprecated_retryOnConnectionFailure()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "retryOnConnectionFailure"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_retryOnConnectionFailure"
    .end annotation

    .prologue
    .line 294
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public final -deprecated_socketFactory()Ljavax/net/SocketFactory;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "socketFactory"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_socketFactory"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final -deprecated_sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "sslSocketFactory"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_sslSocketFactory"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_writeTimeoutMillis()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "writeTimeoutMillis"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_writeTimeoutMillis"
    .end annotation

    .prologue
    .line 427
    iget v0, p0, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    return v0
.end method

.method public final authenticator()Lokhttp3/Authenticator;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "authenticator"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final cache()Lokhttp3/Cache;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "cache"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    return-object v0
.end method

.method public final callTimeoutMillis()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "callTimeoutMillis"
    .end annotation

    .prologue
    .line 197
    iget v0, p0, Lokhttp3/OkHttpClient;->callTimeoutMillis:I

    return v0
.end method

.method public final certificateChainCleaner()Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "certificateChainCleaner"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-object v0
.end method

.method public final certificatePinner()Lokhttp3/CertificatePinner;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "certificatePinner"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 119
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final connectTimeoutMillis()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "connectTimeoutMillis"
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Lokhttp3/OkHttpClient;->connectTimeoutMillis:I

    return v0
.end method

.method public final connectionPool()Lokhttp3/ConnectionPool;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "connectionPool"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public final connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "connectionSpecs"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public final cookieJar()Lokhttp3/CookieJar;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "cookieJar"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public final dispatcher()Lokhttp3/Dispatcher;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "dispatcher"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public final dns()Lokhttp3/Dns;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "dns"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public final eventListenerFactory()Lokhttp3/EventListener$Factory;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "eventListenerFactory"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public final followRedirects()Z
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "followRedirects"
    .end annotation

    .prologue
    .line 151
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public final followSslRedirects()Z
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "followSslRedirects"
    .end annotation

    .prologue
    .line 153
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public final hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "hostnameVerifier"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "interceptors"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "networkInterceptors"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 252
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient$Builder;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lokhttp3/RealCall;->Companion:Lokhttp3/RealCall$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lokhttp3/RealCall$Companion;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    return-object v0
.end method

.method public newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;
    .locals 6
    .param p1, "request"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lokhttp3/WebSocketListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "request"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lokhttp3/internal/ws/RealWebSocket;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v1, p0, Lokhttp3/OkHttpClient;->pingIntervalMillis:I

    int-to-long v4, v1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;J)V

    .line 248
    .local v0, "webSocket":Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual {v0, p0}, Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V

    .line 249
    check-cast v0, Lokhttp3/WebSocket;

    .end local v0    # "webSocket":Lokhttp3/internal/ws/RealWebSocket;
    return-object v0
.end method

.method public final pingIntervalMillis()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "pingIntervalMillis"
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Lokhttp3/OkHttpClient;->pingIntervalMillis:I

    return v0
.end method

.method public final protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "protocols"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public final proxy()Ljava/net/Proxy;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "proxy"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "proxyAuthenticator"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final proxySelector()Ljava/net/ProxySelector;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "proxySelector"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final readTimeoutMillis()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "readTimeoutMillis"
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    return v0
.end method

.method public final retryOnConnectionFailure()Z
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "retryOnConnectionFailure"
    .end annotation

    .prologue
    .line 146
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public final socketFactory()Ljavax/net/SocketFactory;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "socketFactory"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "sslSocketFactory"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final writeTimeoutMillis()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "writeTimeoutMillis"
    .end annotation

    .prologue
    .line 206
    iget v0, p0, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    return v0
.end method

.method public final x509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "x509TrustManager"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
