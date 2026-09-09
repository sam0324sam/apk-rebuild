.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 2 Interceptor.kt\nokhttp3/Interceptor$Companion\n*L\n1#1,975:1\n42#2,3:976\n42#2,3:979\n*E\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n*L\n526#1,3:976\n541#1,3:979\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J<\u0010\u0092\u0001\u001a\u00020\u00002*\u0008\u0004\u0010\u0093\u0001\u001a#\u0012\u0017\u0012\u00150\u0095\u0001\u00a2\u0006\u000f\u0008\u0096\u0001\u0012\n\u0008\u0097\u0001\u0012\u0005\u0008\u0008(\u0098\u0001\u0012\u0005\u0012\u00030\u0099\u00010\u0094\u0001H\u0087\u0008\u00a2\u0006\u0003\u0008\u009a\u0001J\u0010\u0010\u0092\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020]J<\u0010\u009c\u0001\u001a\u00020\u00002*\u0008\u0004\u0010\u0093\u0001\u001a#\u0012\u0017\u0012\u00150\u0095\u0001\u00a2\u0006\u000f\u0008\u0096\u0001\u0012\n\u0008\u0097\u0001\u0012\u0005\u0008\u0008(\u0098\u0001\u0012\u0005\u0012\u00030\u0099\u00010\u0094\u0001H\u0087\u0008\u00a2\u0006\u0003\u0008\u009d\u0001J\u0010\u0010\u009c\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020]J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0007\u0010\u009e\u0001\u001a\u00020\u0003J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0012\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u0001H\u0007J\u001a\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010$\u001a\u00020\u00002\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u0001H\u0007J\u001a\u0010$\u001a\u00020\u00002\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020(J\u0014\u0010-\u001a\u00020\u00002\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.J\u000e\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u000205J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020AJ\u0011\u0010\u00a5\u0001\u001a\u00020\u00002\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020GJ\u000e\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020MJ\u000f\u0010R\u001a\u00020\u00002\u0007\u0010\u00a7\u0001\u001a\u00020MJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020VJ\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020]0\\J\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020]0\\J\u0012\u0010a\u001a\u00020\u00002\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u0001H\u0007J\u001a\u0010a\u001a\u00020\u00002\u0008\u0010\u00a8\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001J\u0014\u0010d\u001a\u00020\u00002\u000c\u0010d\u001a\u0008\u0012\u0004\u0012\u00020e0.J\u0010\u0010h\u001a\u00020\u00002\u0008\u0010h\u001a\u0004\u0018\u00010iJ\u000e\u0010n\u001a\u00020\u00002\u0006\u0010n\u001a\u00020\u0007J\u000e\u0010q\u001a\u00020\u00002\u0006\u0010q\u001a\u00020rJ\u0012\u0010w\u001a\u00020\u00002\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u0001H\u0007J\u001a\u0010w\u001a\u00020\u00002\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001J\u000e\u0010z\u001a\u00020\u00002\u0006\u0010z\u001a\u00020MJ\u000e\u0010}\u001a\u00020\u00002\u0006\u0010}\u001a\u00020~J\u0013\u0010\u00a9\u0001\u001a\u00020\u00002\u0008\u0010\u00a9\u0001\u001a\u00030\u0084\u0001H\u0007J\u001b\u0010\u00a9\u0001\u001a\u00020\u00002\u0008\u0010\u00a9\u0001\u001a\u00030\u0084\u00012\u0008\u0010\u00aa\u0001\u001a\u00030\u008d\u0001J\u0013\u0010\u0089\u0001\u001a\u00020\u00002\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u0001H\u0007J\u001b\u0010\u0089\u0001\u001a\u00020\u00002\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R\u001a\u0010\'\u001a\u00020(X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R \u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u000205X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010:\u001a\u00020;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001a\u0010@\u001a\u00020AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001a\u0010F\u001a\u00020GX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001a\u0010L\u001a\u00020MX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001a\u0010R\u001a\u00020MX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010O\"\u0004\u0008T\u0010QR\u001a\u0010U\u001a\u00020VX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001a\u0010[\u001a\u0008\u0012\u0004\u0012\u00020]0\\X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u00101R\u001a\u0010_\u001a\u0008\u0012\u0004\u0012\u00020]0\\X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u00101R\u001a\u0010a\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u0015\"\u0004\u0008c\u0010\u0017R \u0010d\u001a\u0008\u0012\u0004\u0012\u00020e0.X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u00101\"\u0004\u0008g\u00103R\u001c\u0010h\u001a\u0004\u0018\u00010iX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u001a\u0010n\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010\t\"\u0004\u0008p\u0010\u000bR\u001c\u0010q\u001a\u0004\u0018\u00010rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR\u001a\u0010w\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010\u0015\"\u0004\u0008y\u0010\u0017R\u001a\u0010z\u001a\u00020MX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010O\"\u0004\u0008|\u0010QR\u001d\u0010}\u001a\u00020~X\u0080\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\"\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001d\u0010\u0089\u0001\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008a\u0001\u0010\u0015\"\u0005\u0008\u008b\u0001\u0010\u0017R\"\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\"\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u00a8\u0006\u00ab\u0001"
    }
    d2 = {
        "Lokhttp3/OkHttpClient$Builder;",
        "",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "(Lokhttp3/OkHttpClient;)V",
        "()V",
        "authenticator",
        "Lokhttp3/Authenticator;",
        "getAuthenticator$okhttp",
        "()Lokhttp3/Authenticator;",
        "setAuthenticator$okhttp",
        "(Lokhttp3/Authenticator;)V",
        "cache",
        "Lokhttp3/Cache;",
        "getCache$okhttp",
        "()Lokhttp3/Cache;",
        "setCache$okhttp",
        "(Lokhttp3/Cache;)V",
        "callTimeout",
        "",
        "getCallTimeout$okhttp",
        "()I",
        "setCallTimeout$okhttp",
        "(I)V",
        "certificateChainCleaner",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "getCertificateChainCleaner$okhttp",
        "()Lokhttp3/internal/tls/CertificateChainCleaner;",
        "setCertificateChainCleaner$okhttp",
        "(Lokhttp3/internal/tls/CertificateChainCleaner;)V",
        "certificatePinner",
        "Lokhttp3/CertificatePinner;",
        "getCertificatePinner$okhttp",
        "()Lokhttp3/CertificatePinner;",
        "setCertificatePinner$okhttp",
        "(Lokhttp3/CertificatePinner;)V",
        "connectTimeout",
        "getConnectTimeout$okhttp",
        "setConnectTimeout$okhttp",
        "connectionPool",
        "Lokhttp3/ConnectionPool;",
        "getConnectionPool$okhttp",
        "()Lokhttp3/ConnectionPool;",
        "setConnectionPool$okhttp",
        "(Lokhttp3/ConnectionPool;)V",
        "connectionSpecs",
        "",
        "Lokhttp3/ConnectionSpec;",
        "getConnectionSpecs$okhttp",
        "()Ljava/util/List;",
        "setConnectionSpecs$okhttp",
        "(Ljava/util/List;)V",
        "cookieJar",
        "Lokhttp3/CookieJar;",
        "getCookieJar$okhttp",
        "()Lokhttp3/CookieJar;",
        "setCookieJar$okhttp",
        "(Lokhttp3/CookieJar;)V",
        "dispatcher",
        "Lokhttp3/Dispatcher;",
        "getDispatcher$okhttp",
        "()Lokhttp3/Dispatcher;",
        "setDispatcher$okhttp",
        "(Lokhttp3/Dispatcher;)V",
        "dns",
        "Lokhttp3/Dns;",
        "getDns$okhttp",
        "()Lokhttp3/Dns;",
        "setDns$okhttp",
        "(Lokhttp3/Dns;)V",
        "eventListenerFactory",
        "Lokhttp3/EventListener$Factory;",
        "getEventListenerFactory$okhttp",
        "()Lokhttp3/EventListener$Factory;",
        "setEventListenerFactory$okhttp",
        "(Lokhttp3/EventListener$Factory;)V",
        "followRedirects",
        "",
        "getFollowRedirects$okhttp",
        "()Z",
        "setFollowRedirects$okhttp",
        "(Z)V",
        "followSslRedirects",
        "getFollowSslRedirects$okhttp",
        "setFollowSslRedirects$okhttp",
        "hostnameVerifier",
        "Ljavax/net/ssl/HostnameVerifier;",
        "getHostnameVerifier$okhttp",
        "()Ljavax/net/ssl/HostnameVerifier;",
        "setHostnameVerifier$okhttp",
        "(Ljavax/net/ssl/HostnameVerifier;)V",
        "interceptors",
        "",
        "Lokhttp3/Interceptor;",
        "getInterceptors$okhttp",
        "networkInterceptors",
        "getNetworkInterceptors$okhttp",
        "pingInterval",
        "getPingInterval$okhttp",
        "setPingInterval$okhttp",
        "protocols",
        "Lokhttp3/Protocol;",
        "getProtocols$okhttp",
        "setProtocols$okhttp",
        "proxy",
        "Ljava/net/Proxy;",
        "getProxy$okhttp",
        "()Ljava/net/Proxy;",
        "setProxy$okhttp",
        "(Ljava/net/Proxy;)V",
        "proxyAuthenticator",
        "getProxyAuthenticator$okhttp",
        "setProxyAuthenticator$okhttp",
        "proxySelector",
        "Ljava/net/ProxySelector;",
        "getProxySelector$okhttp",
        "()Ljava/net/ProxySelector;",
        "setProxySelector$okhttp",
        "(Ljava/net/ProxySelector;)V",
        "readTimeout",
        "getReadTimeout$okhttp",
        "setReadTimeout$okhttp",
        "retryOnConnectionFailure",
        "getRetryOnConnectionFailure$okhttp",
        "setRetryOnConnectionFailure$okhttp",
        "socketFactory",
        "Ljavax/net/SocketFactory;",
        "getSocketFactory$okhttp",
        "()Ljavax/net/SocketFactory;",
        "setSocketFactory$okhttp",
        "(Ljavax/net/SocketFactory;)V",
        "sslSocketFactoryOrNull",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getSslSocketFactoryOrNull$okhttp",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "setSslSocketFactoryOrNull$okhttp",
        "(Ljavax/net/ssl/SSLSocketFactory;)V",
        "writeTimeout",
        "getWriteTimeout$okhttp",
        "setWriteTimeout$okhttp",
        "x509TrustManagerOrNull",
        "Ljavax/net/ssl/X509TrustManager;",
        "getX509TrustManagerOrNull$okhttp",
        "()Ljavax/net/ssl/X509TrustManager;",
        "setX509TrustManagerOrNull$okhttp",
        "(Ljavax/net/ssl/X509TrustManager;)V",
        "addInterceptor",
        "block",
        "Lkotlin/Function1;",
        "Lokhttp3/Interceptor$Chain;",
        "Lkotlin/ParameterName;",
        "name",
        "chain",
        "Lokhttp3/Response;",
        "-addInterceptor",
        "interceptor",
        "addNetworkInterceptor",
        "-addNetworkInterceptor",
        "build",
        "duration",
        "Ljava/time/Duration;",
        "timeout",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "eventListener",
        "Lokhttp3/EventListener;",
        "followProtocolRedirects",
        "interval",
        "sslSocketFactory",
        "trustManager",
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
.field private authenticator:Lokhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cache:Lokhttp3/Cache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callTimeout:I

.field private certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private certificatePinner:Lokhttp3/CertificatePinner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectTimeout:I

.field private connectionPool:Lokhttp3/ConnectionPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectionSpecs:Ljava/util/List;
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

.field private cookieJar:Lokhttp3/CookieJar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dispatcher:Lokhttp3/Dispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dns:Lokhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private eventListenerFactory:Lokhttp3/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
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

.field private pingInterval:I

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private proxyAuthenticator:Lokhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private proxySelector:Ljava/net/ProxySelector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private socketFactory:Ljavax/net/SocketFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private writeTimeout:I

.field private x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 438
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 441
    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    invoke-static {v0}, Lokhttp3/internal/Util;->asFactory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 442
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 443
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 444
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 445
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 446
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 448
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 451
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 452
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 455
    sget-object v0, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Companion;->getDEFAULT_CONNECTION_SPECS$okhttp()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 456
    sget-object v0, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Companion;->getDEFAULT_PROTOCOLS$okhttp()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 457
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    check-cast v0, Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 458
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 461
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 462
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 463
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 467
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 468
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 469
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 470
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 471
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 472
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 473
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 474
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 475
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 476
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 477
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 478
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 479
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 480
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 481
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 482
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 483
    invoke-static {p1}, Lokhttp3/OkHttpClient;->access$getSslSocketFactoryOrNull$p(Lokhttp3/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 484
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->x509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 485
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 486
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 487
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 488
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 489
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->certificateChainCleaner()Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 490
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 491
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 492
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 493
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 494
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method


# virtual methods
.method public final -addInterceptor(Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lokhttp3/Interceptor$Chain;",
            "Lokhttp3/Response;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-addInterceptor"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$-addInterceptor":I
    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    sget-object v2, Lokhttp3/Interceptor;->Companion:Lokhttp3/Interceptor$Companion;

    const/4 v1, 0x0

    .line 976
    .local v1, "$i$f$invoke":I
    new-instance v2, Lokhttp3/OkHttpClient$Builder$addInterceptor$$inlined$invoke$1;

    invoke-direct {v2, p1}, Lokhttp3/OkHttpClient$Builder$addInterceptor$$inlined$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lokhttp3/Interceptor;

    .line 526
    invoke-virtual {p0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    return-object v2
.end method

.method public final -addNetworkInterceptor(Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lokhttp3/Interceptor$Chain;",
            "Lokhttp3/Response;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-addNetworkInterceptor"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "$i$f$-addNetworkInterceptor":I
    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    sget-object v2, Lokhttp3/Interceptor;->Companion:Lokhttp3/Interceptor$Companion;

    const/4 v1, 0x0

    .line 979
    .local v1, "$i$f$invoke":I
    new-instance v2, Lokhttp3/OkHttpClient$Builder$addNetworkInterceptor$$inlined$invoke$1;

    invoke-direct {v2, p1}, Lokhttp3/OkHttpClient$Builder$addNetworkInterceptor$$inlined$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lokhttp3/Interceptor;

    .line 541
    invoke-virtual {p0, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    return-object v2
.end method

.method public final addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "interceptor"    # Lokhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "interceptor"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 520
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 521
    .local v0, "$i$a$-apply-OkHttpClient$Builder$addInterceptor$1":I
    iget-object v2, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 522
    nop

    .line 520
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 522
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "interceptor"    # Lokhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "interceptor"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 535
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 536
    .local v0, "$i$a$-apply-OkHttpClient$Builder$addNetworkInterceptor$1":I
    iget-object v2, v1, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 537
    nop

    .line 535
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 537
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "authenticator"    # Lokhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "authenticator"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 591
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 592
    .local v0, "$i$a$-apply-OkHttpClient$Builder$authenticator$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 593
    nop

    .line 591
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 593
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final build()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 955
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public final cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cache"    # Lokhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 621
    move-object v1, p0

    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 622
    .local v0, "$i$a$-apply-OkHttpClient$Builder$cache$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 623
    nop

    .line 621
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 623
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "unit"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 822
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 823
    .local v0, "$i$a$-apply-OkHttpClient$Builder$callTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 824
    nop

    .line 822
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 824
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final callTimeout(Ljava/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 6
    .param p1, "duration"    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "duration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 837
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 838
    .local v0, "$i$a$-apply-OkHttpClient$Builder$callTimeout$2":I
    const-string v2, "timeout"

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 839
    nop

    .line 837
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 839
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "certificatePinner"    # Lokhttp3/CertificatePinner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "certificatePinner"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 808
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 809
    .local v0, "$i$a$-apply-OkHttpClient$Builder$certificatePinner$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 810
    nop

    .line 808
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 810
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "unit"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 848
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 849
    .local v0, "$i$a$-apply-OkHttpClient$Builder$connectTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 850
    nop

    .line 848
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 850
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final connectTimeout(Ljava/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 6
    .param p1, "duration"    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "duration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 860
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 861
    .local v0, "$i$a$-apply-OkHttpClient$Builder$connectTimeout$2":I
    const-string v2, "timeout"

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 862
    nop

    .line 860
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 862
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "connectionPool"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 509
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 510
    .local v0, "$i$a$-apply-OkHttpClient$Builder$connectionPool$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 511
    nop

    .line 509
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 511
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "connectionSpecs"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "connectionSpecs"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 732
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 733
    .local v0, "$i$a$-apply-OkHttpClient$Builder$connectionSpecs$1":I
    invoke-static {p1}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 734
    nop

    .line 732
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 734
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "cookieJar"    # Lokhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "cookieJar"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 616
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 617
    .local v0, "$i$a$-apply-OkHttpClient$Builder$cookieJar$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 618
    nop

    .line 616
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 618
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "dispatcher"    # Lokhttp3/Dispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "dispatcher"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 500
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 501
    .local v0, "$i$a$-apply-OkHttpClient$Builder$dispatcher$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 502
    nop

    .line 500
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 502
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "dns"    # Lokhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "dns"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 630
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 631
    .local v0, "$i$a$-apply-OkHttpClient$Builder$dns$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 632
    nop

    .line 630
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 632
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "eventListener"    # Lokhttp3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "eventListener"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 549
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 550
    .local v0, "$i$a$-apply-OkHttpClient$Builder$eventListener$1":I
    invoke-static {p1}, Lokhttp3/internal/Util;->asFactory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 551
    nop

    .line 549
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 551
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "eventListenerFactory"    # Lokhttp3/EventListener$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "eventListenerFactory"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 559
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 560
    .local v0, "$i$a$-apply-OkHttpClient$Builder$eventListenerFactory$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 561
    nop

    .line 559
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 561
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final followRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "followRedirects"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 596
    move-object v1, p0

    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 597
    .local v0, "$i$a$-apply-OkHttpClient$Builder$followRedirects$1":I
    iput-boolean p1, v1, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 598
    nop

    .line 596
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 598
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "followProtocolRedirects"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 606
    move-object v1, p0

    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 607
    .local v0, "$i$a$-apply-OkHttpClient$Builder$followSslRedirects$1":I
    iput-boolean p1, v1, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 608
    nop

    .line 606
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 608
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final getAuthenticator$okhttp()Lokhttp3/Authenticator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final getCache$okhttp()Lokhttp3/Cache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    return-object v0
.end method

.method public final getCallTimeout$okhttp()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    return v0
.end method

.method public final getCertificateChainCleaner$okhttp()Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-object v0
.end method

.method public final getCertificatePinner$okhttp()Lokhttp3/CertificatePinner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public final getConnectTimeout$okhttp()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    return v0
.end method

.method public final getConnectionPool$okhttp()Lokhttp3/ConnectionPool;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public final getConnectionSpecs$okhttp()Ljava/util/List;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public final getCookieJar$okhttp()Lokhttp3/CookieJar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public final getDispatcher$okhttp()Lokhttp3/Dispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public final getDns$okhttp()Lokhttp3/Dns;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public final getEventListenerFactory$okhttp()Lokhttp3/EventListener$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public final getFollowRedirects$okhttp()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    return v0
.end method

.method public final getFollowSslRedirects$okhttp()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return v0
.end method

.method public final getHostnameVerifier$okhttp()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getInterceptors$okhttp()Ljava/util/List;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getNetworkInterceptors$okhttp()Ljava/util/List;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getPingInterval$okhttp()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return v0
.end method

.method public final getProtocols$okhttp()Ljava/util/List;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public final getProxy$okhttp()Ljava/net/Proxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getProxyAuthenticator$okhttp()Lokhttp3/Authenticator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final getProxySelector$okhttp()Ljava/net/ProxySelector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final getReadTimeout$okhttp()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    return v0
.end method

.method public final getRetryOnConnectionFailure$okhttp()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return v0
.end method

.method public final getSocketFactory$okhttp()Ljavax/net/SocketFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final getSslSocketFactoryOrNull$okhttp()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final getWriteTimeout$okhttp()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    return v0
.end method

.method public final getX509TrustManagerOrNull$okhttp()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "hostnameVerifier"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 799
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 800
    .local v0, "$i$a$-apply-OkHttpClient$Builder$hostnameVerifier$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 801
    nop

    .line 799
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 801
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "unit"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 933
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 934
    .local v0, "$i$a$-apply-OkHttpClient$Builder$pingInterval$1":I
    const-string v2, "interval"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 935
    nop

    .line 933
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 935
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final pingInterval(Ljava/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 6
    .param p1, "duration"    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "duration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 951
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 952
    .local v0, "$i$a$-apply-OkHttpClient$Builder$pingInterval$2":I
    const-string v2, "timeout"

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 953
    nop

    .line 951
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 953
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 10
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
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "protocols"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    .line 767
    check-cast v5, Lokhttp3/OkHttpClient$Builder;

    .local v5, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .local v0, "$i$a$-apply-OkHttpClient$Builder$protocols$1":I
    move-object v7, p1

    .line 769
    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 772
    .local v6, "protocolsCopy":Ljava/util/List;
    sget-object v7, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v7, v8

    :goto_0
    if-nez v7, :cond_2

    const/4 v1, 0x0

    .line 773
    .local v1, "$i$a$-require-OkHttpClient$Builder$protocols$1$1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 772
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .end local v1    # "$i$a$-require-OkHttpClient$Builder$protocols$1$1":I
    :cond_1
    move v7, v9

    goto :goto_0

    .line 775
    :cond_2
    sget-object v7, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v8, :cond_4

    :cond_3
    move v7, v8

    :goto_1
    if-nez v7, :cond_5

    const/4 v2, 0x0

    .line 776
    .local v2, "$i$a$-require-OkHttpClient$Builder$protocols$1$2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 775
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .end local v2    # "$i$a$-require-OkHttpClient$Builder$protocols$1$2":I
    :cond_4
    move v7, v9

    goto :goto_1

    .line 778
    :cond_5
    sget-object v7, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v8

    :goto_2
    if-nez v7, :cond_7

    const/4 v3, 0x0

    .line 779
    .local v3, "$i$a$-require-OkHttpClient$Builder$protocols$1$3":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "protocols must not contain http/1.0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 778
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .end local v3    # "$i$a$-require-OkHttpClient$Builder$protocols$1$3":I
    :cond_6
    move v7, v9

    goto :goto_2

    .line 781
    :cond_7
    if-nez v6, :cond_8

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Protocol?>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_3
    if-nez v7, :cond_a

    const/4 v4, 0x0

    .line 782
    .local v4, "$i$a$-require-OkHttpClient$Builder$protocols$1$4":I
    const-string v8, "protocols must not contain null"

    .line 781
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .end local v4    # "$i$a$-require-OkHttpClient$Builder$protocols$1$4":I
    :cond_9
    move v7, v9

    goto :goto_3

    .line 786
    :cond_a
    sget-object v7, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 790
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const-string v8, "Collections.unmodifiableList(protocols)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v5, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 791
    nop

    nop

    .line 767
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 791
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 639
    move-object v1, p0

    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 640
    .local v0, "$i$a$-apply-OkHttpClient$Builder$proxy$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 641
    nop

    .line 639
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 641
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "proxyAuthenticator"    # Lokhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "proxyAuthenticator"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 660
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 661
    .local v0, "$i$a$-apply-OkHttpClient$Builder$proxyAuthenticator$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 662
    nop

    .line 660
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 662
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "proxySelector"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 650
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 651
    .local v0, "$i$a$-apply-OkHttpClient$Builder$proxySelector$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 652
    nop

    .line 650
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 652
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "unit"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 874
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 875
    .local v0, "$i$a$-apply-OkHttpClient$Builder$readTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 876
    nop

    .line 874
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 876
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final readTimeout(Ljava/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 6
    .param p1, "duration"    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "duration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 889
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 890
    .local v0, "$i$a$-apply-OkHttpClient$Builder$readTimeout$2":I
    const-string v2, "timeout"

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 891
    nop

    .line 889
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 891
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "retryOnConnectionFailure"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 581
    move-object v1, p0

    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 582
    .local v0, "$i$a$-apply-OkHttpClient$Builder$retryOnConnectionFailure$1":I
    iput-boolean p1, v1, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 583
    nop

    .line 581
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 583
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final setAuthenticator$okhttp(Lokhttp3/Authenticator;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    return-void
.end method

.method public final setCache$okhttp(Lokhttp3/Cache;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 447
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    return-void
.end method

.method public final setCallTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 460
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    return-void
.end method

.method public final setCertificateChainCleaner$okhttp(Lokhttp3/internal/tls/CertificateChainCleaner;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/internal/tls/CertificateChainCleaner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 459
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-void
.end method

.method public final setCertificatePinner$okhttp(Lokhttp3/CertificatePinner;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/CertificatePinner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    return-void
.end method

.method public final setConnectTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 461
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-void
.end method

.method public final setConnectionPool$okhttp(Lokhttp3/ConnectionPool;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/ConnectionPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    return-void
.end method

.method public final setConnectionSpecs$okhttp(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-void
.end method

.method public final setCookieJar$okhttp(Lokhttp3/CookieJar;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    return-void
.end method

.method public final setDispatcher$okhttp(Lokhttp3/Dispatcher;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Dispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    return-void
.end method

.method public final setDns$okhttp(Lokhttp3/Dns;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    return-void
.end method

.method public final setEventListenerFactory$okhttp(Lokhttp3/EventListener$Factory;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/EventListener$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-void
.end method

.method public final setFollowRedirects$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    return-void
.end method

.method public final setFollowSslRedirects$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 445
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return-void
.end method

.method public final setHostnameVerifier$okhttp(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "<set-?>"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public final setPingInterval$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 464
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method public final setProtocols$okhttp(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-void
.end method

.method public final setProxy$okhttp(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 449
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public final setProxyAuthenticator$okhttp(Lokhttp3/Authenticator;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-void
.end method

.method public final setProxySelector$okhttp(Ljava/net/ProxySelector;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/net/ProxySelector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 450
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-void
.end method

.method public final setReadTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 462
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    return-void
.end method

.method public final setRetryOnConnectionFailure$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return-void
.end method

.method public final setSocketFactory$okhttp(Ljavax/net/SocketFactory;)V
    .locals 1
    .param p1, "<set-?>"    # Ljavax/net/SocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-void
.end method

.method public final setSslSocketFactoryOrNull$okhttp(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "<set-?>"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 453
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public final setWriteTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 463
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-void
.end method

.method public final setX509TrustManagerOrNull$okhttp(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .param p1, "<set-?>"    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 454
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public final socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "socketFactory"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 671
    check-cast v2, Lokhttp3/OkHttpClient$Builder;

    .local v2, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 672
    .local v0, "$i$a$-apply-OkHttpClient$Builder$socketFactory$1":I
    instance-of v3, p1, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "$i$a$-require-OkHttpClient$Builder$socketFactory$1$1":I
    const-string v4, "socketFactory instanceof SSLSocketFactory"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v1    # "$i$a$-require-OkHttpClient$Builder$socketFactory$1$1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 673
    :cond_1
    iput-object p1, v2, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 674
    nop

    .line 671
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 674
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use the sslSocketFactory overload that accepts a X509TrustManager."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "sslSocketFactory"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 689
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 690
    .local v0, "$i$a$-apply-OkHttpClient$Builder$sslSocketFactory$1":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 691
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v2, p1}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 692
    nop

    .line 689
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 692
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "sslSocketFactory"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "trustManager"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 726
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 727
    .local v0, "$i$a$-apply-OkHttpClient$Builder$sslSocketFactory$2":I
    iput-object p1, v1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 728
    sget-object v2, Lokhttp3/internal/tls/CertificateChainCleaner;->Companion:Lokhttp3/internal/tls/CertificateChainCleaner$Companion;

    invoke-virtual {v2, p2}, Lokhttp3/internal/tls/CertificateChainCleaner$Companion;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 729
    iput-object p2, v1, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 730
    nop

    .line 726
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 730
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "unit"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 902
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 903
    .local v0, "$i$a$-apply-OkHttpClient$Builder$writeTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 904
    nop

    .line 902
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 904
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method

.method public final writeTimeout(Ljava/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 6
    .param p1, "duration"    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "duration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 916
    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    .local v1, "$this$apply":Lokhttp3/OkHttpClient$Builder;
    const/4 v0, 0x0

    .line 917
    .local v0, "$i$a$-apply-OkHttpClient$Builder$writeTimeout$2":I
    const-string v2, "timeout"

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 918
    nop

    .line 916
    check-cast p0, Lokhttp3/OkHttpClient$Builder;

    .line 918
    .end local p0    # "this":Lokhttp3/OkHttpClient$Builder;
    return-object p0
.end method
