.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,350:1\n8888#2:351\n9221#2,3:352\n8888#2:357\n9221#2,3:358\n37#3,2:355\n37#3,2:361\n*E\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n*L\n223#1:351\n223#1,3:352\n241#1:357\n241#1,3:358\n223#1,2:355\n241#1,2:361\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0019\u001a\u00020\u0000J\u0006\u0010\u001a\u001a\u00020\u0000J\u0006\u0010\u001b\u001a\u00020\u0006J\u001f\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n\u00a2\u0006\u0002\u0010\u001cJ\u001f\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001d0\t\"\u00020\u001d\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0003H\u0007J\u001f\u0010\u0016\u001a\u00020\u00002\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n\u00a2\u0006\u0002\u0010\u001cJ\u001f\u0010\u0016\u001a\u00020\u00002\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001f0\t\"\u00020\u001f\u00a2\u0006\u0002\u0010 R$\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012\"\u0004\u0008\u0015\u0010\u0004R$\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lokhttp3/ConnectionSpec$Builder;",
        "",
        "tls",
        "",
        "(Z)V",
        "connectionSpec",
        "Lokhttp3/ConnectionSpec;",
        "(Lokhttp3/ConnectionSpec;)V",
        "cipherSuites",
        "",
        "",
        "getCipherSuites$okhttp",
        "()[Ljava/lang/String;",
        "setCipherSuites$okhttp",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "supportsTlsExtensions",
        "getSupportsTlsExtensions$okhttp",
        "()Z",
        "setSupportsTlsExtensions$okhttp",
        "getTls$okhttp",
        "setTls$okhttp",
        "tlsVersions",
        "getTlsVersions$okhttp",
        "setTlsVersions$okhttp",
        "allEnabledCipherSuites",
        "allEnabledTlsVersions",
        "build",
        "([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;",
        "Lokhttp3/CipherSuite;",
        "([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;",
        "Lokhttp3/TlsVersion;",
        "([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;",
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
.field private cipherSuites:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
    .locals 1
    .param p1, "connectionSpec"    # Lokhttp3/ConnectionSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "connectionSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lokhttp3/ConnectionSpec;->isTls()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 213
    invoke-static {p1}, Lokhttp3/ConnectionSpec;->access$getCipherSuitesAsString$p(Lokhttp3/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 214
    invoke-static {p1}, Lokhttp3/ConnectionSpec;->access$getTlsVersionsAsString$p(Lokhttp3/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public final allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 218
    move-object v2, p0

    check-cast v2, Lokhttp3/ConnectionSpec$Builder;

    .local v2, "$this$apply":Lokhttp3/ConnectionSpec$Builder;
    const/4 v0, 0x0

    .line 219
    .local v0, "$i$a$-apply-ConnectionSpec$Builder$allEnabledCipherSuites$1":I
    iget-boolean v3, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "$i$a$-require-ConnectionSpec$Builder$allEnabledCipherSuites$1$1":I
    const-string v4, "no cipher suites for cleartext connections"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 220
    .end local v1    # "$i$a$-require-ConnectionSpec$Builder$allEnabledCipherSuites$1$1":I
    :cond_0
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 221
    nop

    .line 218
    check-cast p0, Lokhttp3/ConnectionSpec$Builder;

    .line 221
    .end local p0    # "this":Lokhttp3/ConnectionSpec$Builder;
    return-object p0
.end method

.method public final allEnabledTlsVersions()Lokhttp3/ConnectionSpec$Builder;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 236
    move-object v2, p0

    check-cast v2, Lokhttp3/ConnectionSpec$Builder;

    .local v2, "$this$apply":Lokhttp3/ConnectionSpec$Builder;
    const/4 v0, 0x0

    .line 237
    .local v0, "$i$a$-apply-ConnectionSpec$Builder$allEnabledTlsVersions$1":I
    iget-boolean v3, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "$i$a$-require-ConnectionSpec$Builder$allEnabledTlsVersions$1$1":I
    const-string v4, "no TLS versions for cleartext connections"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 238
    .end local v1    # "$i$a$-require-ConnectionSpec$Builder$allEnabledTlsVersions$1$1":I
    :cond_0
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 239
    nop

    .line 236
    check-cast p0, Lokhttp3/ConnectionSpec$Builder;

    .line 239
    .end local p0    # "this":Lokhttp3/ConnectionSpec$Builder;
    return-object p0
.end method

.method public final build()Lokhttp3/ConnectionSpec;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lokhttp3/ConnectionSpec;

    .line 264
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 265
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 266
    iget-object v3, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 267
    iget-object v4, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 263
    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/ConnectionSpec;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 268
    return-object v0
.end method

.method public final varargs cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 7
    .param p1, "cipherSuites"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "cipherSuites"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    .line 229
    check-cast v3, Lokhttp3/ConnectionSpec$Builder;

    .local v3, "$this$apply":Lokhttp3/ConnectionSpec$Builder;
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$a$-apply-ConnectionSpec$Builder$cipherSuites$2":I
    iget-boolean v6, v3, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v6, :cond_0

    const/4 v1, 0x0

    .local v1, "$i$a$-require-ConnectionSpec$Builder$cipherSuites$2$1":I
    const-string v5, "no cipher suites for cleartext connections"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 231
    .end local v1    # "$i$a$-require-ConnectionSpec$Builder$cipherSuites$2$1":I
    :cond_0
    array-length v6, p1

    if-nez v6, :cond_1

    move v6, v4

    :goto_0
    if-nez v6, :cond_2

    :goto_1
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .local v2, "$i$a$-require-ConnectionSpec$Builder$cipherSuites$2$2":I
    const-string v5, "At least one cipher suite is required"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .end local v2    # "$i$a$-require-ConnectionSpec$Builder$cipherSuites$2$2":I
    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 234
    nop

    .line 229
    check-cast p0, Lokhttp3/ConnectionSpec$Builder;

    .line 234
    .end local p0    # "this":Lokhttp3/ConnectionSpec$Builder;
    return-object p0
.end method

.method public final varargs cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
    .locals 17
    .param p1, "cipherSuites"    # [Lokhttp3/CipherSuite;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v14, "cipherSuites"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p0

    .line 223
    check-cast v7, Lokhttp3/ConnectionSpec$Builder;

    .local v7, "$this$apply":Lokhttp3/ConnectionSpec$Builder;
    const/4 v1, 0x0

    .line 224
    .local v1, "$i$a$-apply-ConnectionSpec$Builder$cipherSuites$1":I
    iget-boolean v14, v7, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v14, :cond_0

    const/4 v3, 0x0

    .local v3, "$i$a$-require-ConnectionSpec$Builder$cipherSuites$1$1":I
    const-string v15, "no cipher suites for cleartext connections"

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    .line 225
    .end local v3    # "$i$a$-require-ConnectionSpec$Builder$cipherSuites$1$1":I
    :cond_0
    move-object/from16 v8, p1

    .local v8, "$this$map$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 351
    .local v4, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    array-length v14, v8

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 352
    .local v5, "$i$f$mapTo":I
    array-length v15, v8

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_1

    aget-object v11, v8, v14

    .line 353
    .local v11, "item$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 225
    .local v2, "$i$a$-map-ConnectionSpec$Builder$cipherSuites$1$strings$1":I
    invoke-virtual {v11}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "$i$a$-map-ConnectionSpec$Builder$cipherSuites$1$strings$1":I
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    check-cast v10, Ljava/util/List;

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v10

    check-cast v9, Ljava/util/Collection;

    .line 225
    .local v9, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 355
    .local v6, "$i$f$toTypedArray":I
    move-object v13, v9

    .line 356
    .local v13, "thisCollection$iv":Ljava/util/Collection;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    new-instance v14, Lkotlin/TypeCastException;

    const-string v15, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v14, v15}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 225
    :cond_2
    check-cast v12, [Ljava/lang/String;

    .line 226
    .local v12, "strings":[Ljava/lang/String;
    array-length v14, v12

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v7, v14}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v14

    return-object v14
.end method

.method public final getCipherSuites$okhttp()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportsTlsExtensions$okhttp()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return v0
.end method

.method public final getTls$okhttp()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return v0
.end method

.method public final getTlsVersions$okhttp()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method public final setCipherSuites$okhttp([Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public final setSupportsTlsExtensions$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method public final setTls$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method

.method public final setTlsVersions$okhttp([Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 204
    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-void
.end method

.method public final supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;
    .locals 5
    .param p1, "supportsTlsExtensions"    # Z
    .annotation runtime Lkotlin/Deprecated;
        message = "since OkHttp 3.13 all TLS-connections are expected to support TLS extensions.\nIn a future release setting this to true will be unnecessary and setting it to false\nwill have no effect."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 258
    move-object v2, p0

    check-cast v2, Lokhttp3/ConnectionSpec$Builder;

    .local v2, "$this$apply":Lokhttp3/ConnectionSpec$Builder;
    const/4 v0, 0x0

    .line 259
    .local v0, "$i$a$-apply-ConnectionSpec$Builder$supportsTlsExtensions$1":I
    iget-boolean v3, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "$i$a$-require-ConnectionSpec$Builder$supportsTlsExtensions$1$1":I
    const-string v4, "no TLS extensions for cleartext connections"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 260
    .end local v1    # "$i$a$-require-ConnectionSpec$Builder$supportsTlsExtensions$1$1":I
    :cond_0
    iput-boolean p1, v2, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 261
    nop

    .line 258
    check-cast p0, Lokhttp3/ConnectionSpec$Builder;

    .line 261
    .end local p0    # "this":Lokhttp3/ConnectionSpec$Builder;
    return-object p0
.end method

.method public final varargs tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 7
    .param p1, "tlsVersions"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "tlsVersions"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    .line 248
    check-cast v3, Lokhttp3/ConnectionSpec$Builder;

    .local v3, "$this$apply":Lokhttp3/ConnectionSpec$Builder;
    const/4 v0, 0x0

    .line 249
    .local v0, "$i$a$-apply-ConnectionSpec$Builder$tlsVersions$2":I
    iget-boolean v6, v3, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v6, :cond_0

    const/4 v1, 0x0

    .local v1, "$i$a$-require-ConnectionSpec$Builder$tlsVersions$2$1":I
    const-string v5, "no TLS versions for cleartext connections"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 250
    .end local v1    # "$i$a$-require-ConnectionSpec$Builder$tlsVersions$2$1":I
    :cond_0
    array-length v6, p1

    if-nez v6, :cond_1

    move v6, v4

    :goto_0
    if-nez v6, :cond_2

    :goto_1
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .local v2, "$i$a$-require-ConnectionSpec$Builder$tlsVersions$2$2":I
    const-string v5, "At least one TLS version is required"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .end local v2    # "$i$a$-require-ConnectionSpec$Builder$tlsVersions$2$2":I
    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 253
    nop

    .line 248
    check-cast p0, Lokhttp3/ConnectionSpec$Builder;

    .line 253
    .end local p0    # "this":Lokhttp3/ConnectionSpec$Builder;
    return-object p0
.end method

.method public final varargs tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
    .locals 17
    .param p1, "tlsVersions"    # [Lokhttp3/TlsVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v14, "tlsVersions"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p0

    .line 241
    check-cast v7, Lokhttp3/ConnectionSpec$Builder;

    .local v7, "$this$apply":Lokhttp3/ConnectionSpec$Builder;
    const/4 v1, 0x0

    .line 242
    .local v1, "$i$a$-apply-ConnectionSpec$Builder$tlsVersions$1":I
    iget-boolean v14, v7, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v14, :cond_0

    const/4 v3, 0x0

    .local v3, "$i$a$-require-ConnectionSpec$Builder$tlsVersions$1$1":I
    const-string v15, "no TLS versions for cleartext connections"

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Throwable;

    throw v14

    .line 244
    .end local v3    # "$i$a$-require-ConnectionSpec$Builder$tlsVersions$1$1":I
    :cond_0
    move-object/from16 v8, p1

    .local v8, "$this$map$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 357
    .local v4, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    array-length v14, v8

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 358
    .local v5, "$i$f$mapTo":I
    array-length v15, v8

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_1

    aget-object v11, v8, v14

    .line 359
    .local v11, "item$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 244
    .local v2, "$i$a$-map-ConnectionSpec$Builder$tlsVersions$1$strings$1":I
    invoke-virtual {v11}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "$i$a$-map-ConnectionSpec$Builder$tlsVersions$1$strings$1":I
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    check-cast v10, Ljava/util/List;

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v10

    check-cast v9, Ljava/util/Collection;

    .line 244
    .local v9, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 361
    .local v6, "$i$f$toTypedArray":I
    move-object v13, v9

    .line 362
    .local v13, "thisCollection$iv":Ljava/util/Collection;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    new-instance v14, Lkotlin/TypeCastException;

    const-string v15, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v14, v15}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 244
    :cond_2
    check-cast v12, [Ljava/lang/String;

    .line 245
    .local v12, "strings":[Ljava/lang/String;
    array-length v14, v12

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v7, v14}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v14

    return-object v14
.end method
