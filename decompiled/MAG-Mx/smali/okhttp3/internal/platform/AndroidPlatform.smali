.class public final Lokhttp3/internal/platform/AndroidPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "AndroidPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;,
        Lokhttp3/internal/platform/AndroidPlatform$CustomTrustRootIndex;,
        Lokhttp3/internal/platform/AndroidPlatform$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPlatform.kt\nokhttp3/internal/platform/AndroidPlatform\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n673#2:243\n746#2,2:244\n*E\n*S KotlinDebug\n*F\n+ 1 AndroidPlatform.kt\nokhttp3/internal/platform/AndroidPlatform\n*L\n47#1:243\n47#1,2:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 22\u00020\u0001:\u0003123B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J$\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J(\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0006H\u0016J \u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0012\u0010$\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010%\u001a\u0004\u0018\u00010\u000f2\u0006\u0010&\u001a\u00020\u000bH\u0016J\u0010\u0010\'\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\"\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020\u000b2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u001a\u0010-\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010/\u001a\u000200H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lokhttp3/internal/platform/AndroidPlatform;",
        "Lokhttp3/internal/platform/Platform;",
        "()V",
        "closeGuard",
        "Lokhttp3/internal/platform/android/CloseGuard;",
        "socketAdapters",
        "",
        "Lokhttp3/internal/platform/android/SocketAdapter;",
        "api23IsCleartextTrafficPermitted",
        "",
        "hostname",
        "",
        "networkPolicyClass",
        "Ljava/lang/Class;",
        "networkSecurityPolicy",
        "",
        "api24IsCleartextTrafficPermitted",
        "buildCertificateChainCleaner",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "trustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "buildTrustRootIndex",
        "Lokhttp3/internal/tls/TrustRootIndex;",
        "configureTlsExtensions",
        "",
        "sslSocket",
        "Ljavax/net/ssl/SSLSocket;",
        "protocols",
        "Lokhttp3/Protocol;",
        "connectSocket",
        "socket",
        "Ljava/net/Socket;",
        "address",
        "Ljava/net/InetSocketAddress;",
        "connectTimeout",
        "",
        "getSelectedProtocol",
        "getStackTraceForCloseable",
        "closer",
        "isCleartextTrafficPermitted",
        "log",
        "level",
        "message",
        "t",
        "",
        "logCloseableLeak",
        "stackTrace",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "AndroidCertificateChainCleaner",
        "Companion",
        "CustomTrustRootIndex",
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
.field public static final Companion:Lokhttp3/internal/platform/AndroidPlatform$Companion;

.field private static final isSupported:Z


# instance fields
.field private final closeGuard:Lokhttp3/internal/platform/android/CloseGuard;

.field private final socketAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/platform/android/SocketAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lokhttp3/internal/platform/AndroidPlatform$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lokhttp3/internal/platform/AndroidPlatform$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lokhttp3/internal/platform/AndroidPlatform;->Companion:Lokhttp3/internal/platform/AndroidPlatform$Companion;

    .line 227
    nop

    .line 229
    :try_start_0
    const-string v4, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 232
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    move v4, v2

    :goto_0
    if-nez v4, :cond_0

    const/4 v0, 0x0

    .local v0, "$i$a$-check-AndroidPlatform$Companion$isSupported$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected Android API level 21+ but was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :catch_0
    move-exception v1

    .local v1, "_":Ljava/lang/ClassNotFoundException;
    move v2, v3

    .line 227
    :cond_0
    sput-boolean v2, Lokhttp3/internal/platform/AndroidPlatform;->isSupported:Z

    return-void

    .end local v0    # "$i$a$-check-AndroidPlatform$Companion$isSupported$1":I
    .end local v1    # "_":Ljava/lang/ClassNotFoundException;
    :cond_1
    move v4, v3

    .line 232
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 42
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 43
    const/4 v6, 0x3

    new-array v7, v6, [Lokhttp3/internal/platform/android/SocketAdapter;

    .line 44
    const/4 v6, 0x0

    sget-object v8, Lokhttp3/internal/platform/android/StandardAndroidSocketAdapter;->Companion:Lokhttp3/internal/platform/android/StandardAndroidSocketAdapter$Companion;

    invoke-static {v8, v10, v9, v10}, Lokhttp3/internal/platform/android/StandardAndroidSocketAdapter$Companion;->buildIfSupported$default(Lokhttp3/internal/platform/android/StandardAndroidSocketAdapter$Companion;Ljava/lang/String;ILjava/lang/Object;)Lokhttp3/internal/platform/android/SocketAdapter;

    move-result-object v8

    aput-object v8, v7, v6

    .line 45
    sget-object v6, Lokhttp3/internal/platform/android/ConscryptSocketAdapter;->INSTANCE:Lokhttp3/internal/platform/android/ConscryptSocketAdapter;

    invoke-virtual {v6}, Lokhttp3/internal/platform/android/ConscryptSocketAdapter;->buildIfSupported()Lokhttp3/internal/platform/android/SocketAdapter;

    move-result-object v6

    aput-object v6, v7, v9

    .line 46
    const/4 v8, 0x2

    new-instance v6, Lokhttp3/internal/platform/android/DeferredSocketAdapter;

    const-string v9, "com.google.android.gms.org.conscrypt"

    invoke-direct {v6, v9}, Lokhttp3/internal/platform/android/DeferredSocketAdapter;-><init>(Ljava/lang/String;)V

    check-cast v6, Lokhttp3/internal/platform/android/SocketAdapter;

    aput-object v6, v7, v8

    .line 43
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 47
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 244
    .local v2, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lokhttp3/internal/platform/android/SocketAdapter;

    .local v5, "it":Lokhttp3/internal/platform/android/SocketAdapter;
    const/4 v0, 0x0

    .line 47
    .local v0, "$i$a$-filter-AndroidPlatform$socketAdapters$1":I
    invoke-interface {v5}, Lokhttp3/internal/platform/android/SocketAdapter;->isSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v0    # "$i$a$-filter-AndroidPlatform$socketAdapters$1":I
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    .end local v5    # "it":Lokhttp3/internal/platform/android/SocketAdapter;
    :cond_1
    check-cast v3, Ljava/util/List;

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    iput-object v3, p0, Lokhttp3/internal/platform/AndroidPlatform;->socketAdapters:Ljava/util/List;

    .line 49
    sget-object v6, Lokhttp3/internal/platform/android/CloseGuard;->Companion:Lokhttp3/internal/platform/android/CloseGuard$Companion;

    invoke-virtual {v6}, Lokhttp3/internal/platform/android/CloseGuard$Companion;->get()Lokhttp3/internal/platform/android/CloseGuard;

    move-result-object v6

    iput-object v6, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/android/CloseGuard;

    return-void
.end method

.method public static final synthetic access$isSupported$cp()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lokhttp3/internal/platform/AndroidPlatform;->isSupported:Z

    return v0
.end method

.method private final api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "networkPolicyClass"    # Ljava/lang/Class;
    .param p3, "networkSecurityPolicy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 139
    nop

    .line 141
    :try_start_0
    const-string v2, "isCleartextTrafficPermitted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    .local v1, "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "_":Ljava/lang/NoSuchMethodException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v2

    .line 145
    .end local v0    # "_":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v2

    .line 142
    .restart local v1    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method private final api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "networkPolicyClass"    # Ljava/lang/Class;
    .param p3, "networkSecurityPolicy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 126
    nop

    .line 128
    :try_start_0
    const-string v2, "isCleartextTrafficPermitted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    .local v1, "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "_":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/platform/AndroidPlatform;->api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    .line 132
    .end local v0    # "_":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v2

    .line 129
    .restart local v1    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 9
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v5, "trustManager"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    nop

    .line 149
    :try_start_0
    const-string v5, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 150
    .local v4, "extensionsClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/X509TrustManager;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 151
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 153
    .local v3, "extensions":Ljava/lang/Object;
    const-string v5, "checkServerTrusted"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [Ljava/security/cert/X509Certificate;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 154
    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 152
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    .local v1, "checkServerTrusted":Ljava/lang/reflect/Method;
    new-instance v5, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    const-string v6, "extensions"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "checkServerTrusted"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3, v1}, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    check-cast v5, Lokhttp3/internal/tls/CertificateChainCleaner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "checkServerTrusted":Ljava/lang/reflect/Method;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "extensions":Ljava/lang/Object;
    .end local v4    # "extensionsClass":Ljava/lang/Class;
    :goto_0
    return-object v5

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "_":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v5

    goto :goto_0
.end method

.method public buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 7
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "trustManager"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    nop

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 164
    const-string v3, "findTrustAnchorByIssuerAndSignature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v4, v5

    .line 163
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 165
    .local v1, "method":Ljava/lang/reflect/Method;
    const-string v2, "method"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 166
    new-instance v2, Lokhttp3/internal/platform/AndroidPlatform$CustomTrustRootIndex;

    invoke-direct {v2, p1, v1}, Lokhttp3/internal/platform/AndroidPlatform$CustomTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V

    check-cast v2, Lokhttp3/internal/tls/TrustRootIndex;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v2

    goto :goto_0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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
    const-string v2, "sslSocket"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "protocols"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->socketAdapters:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lokhttp3/internal/platform/android/SocketAdapter;

    .local v1, "it":Lokhttp3/internal/platform/android/SocketAdapter;
    const/4 v0, 0x0

    .local v0, "$i$a$-find-AndroidPlatform$configureTlsExtensions$1":I
    invoke-interface {v1, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->matchesSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "$i$a$-find-AndroidPlatform$configureTlsExtensions$1":I
    .end local v1    # "it":Lokhttp3/internal/platform/android/SocketAdapter;
    :goto_0
    check-cast v2, Lokhttp3/internal/platform/android/SocketAdapter;

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v2, p1, p2, p3}, Lokhttp3/internal/platform/android/SocketAdapter;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 82
    :cond_1
    return-void

    .line 80
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "address"    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "socket"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "address"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    nop

    .line 58
    :try_start_0
    check-cast p2, Ljava/net/SocketAddress;

    .end local p2    # "address":Ljava/net/InetSocketAddress;
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/ClassCastException;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    .line 63
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/ClassCastException;
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 65
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/ClassCastException;
    throw v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v2, "sslSocket"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->socketAdapters:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lokhttp3/internal/platform/android/SocketAdapter;

    .local v1, "it":Lokhttp3/internal/platform/android/SocketAdapter;
    const/4 v0, 0x0

    .local v0, "$i$a$-find-AndroidPlatform$getSelectedProtocol$1":I
    invoke-interface {v1, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->matchesSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "$i$a$-find-AndroidPlatform$getSelectedProtocol$1":I
    .end local v1    # "it":Lokhttp3/internal/platform/android/SocketAdapter;
    :goto_0
    check-cast v2, Lokhttp3/internal/platform/android/SocketAdapter;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "closer"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "closer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/android/CloseGuard;

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/android/CloseGuard;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "hostname"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v5, "hostname"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    nop

    .line 104
    :try_start_0
    const-string v5, "android.security.NetworkSecurityPolicy"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 105
    .local v3, "networkPolicyClass":Ljava/lang/Class;
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 106
    .local v2, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    .local v4, "networkSecurityPolicy":Ljava/lang/Object;
    const-string v5, "networkPolicyClass"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "networkSecurityPolicy"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3, v4}, Lokhttp3/internal/platform/AndroidPlatform;->api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v5

    .line 103
    .end local v2    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "networkPolicyClass":Ljava/lang/Class;
    .end local v4    # "networkSecurityPolicy":Ljava/lang/Object;
    :goto_0
    return v5

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "_":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 110
    .end local v0    # "_":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "_":Ljava/lang/NoSuchMethodException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 112
    .end local v0    # "_":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "unable to determine cleartext support"

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    invoke-direct {v5, v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 114
    :catch_3
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "unable to determine cleartext support"

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {v5, v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 116
    :catch_4
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "unable to determine cleartext support"

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {v5, v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "t"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p1, p2, p3}, Lokhttp3/internal/platform/android/UtilKt;->androidLog(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "stackTrace"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/android/CloseGuard;

    invoke-virtual {v1, p2}, Lokhttp3/internal/platform/android/CloseGuard;->warnIfOpen(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    .local v0, "reported":Z
    if-nez v0, :cond_0

    .line 98
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lokhttp3/internal/platform/AndroidPlatform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 6
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v2, "sslSocketFactory"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->socketAdapters:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lokhttp3/internal/platform/android/SocketAdapter;

    .local v1, "it":Lokhttp3/internal/platform/android/SocketAdapter;
    const/4 v0, 0x0

    .local v0, "$i$a$-find-AndroidPlatform$trustManager$1":I
    invoke-interface {v1, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->matchesSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "$i$a$-find-AndroidPlatform$trustManager$1":I
    .end local v1    # "it":Lokhttp3/internal/platform/android/SocketAdapter;
    :goto_0
    check-cast v2, Lokhttp3/internal/platform/android/SocketAdapter;

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v2, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    move-object v2, v3

    .line 71
    goto :goto_0
.end method
