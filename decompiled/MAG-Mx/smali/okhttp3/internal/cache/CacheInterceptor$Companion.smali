.class public final Lokhttp3/internal/cache/CacheInterceptor$Companion;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheInterceptor$Companion;",
        "",
        "()V",
        "combine",
        "Lokhttp3/Headers;",
        "cachedHeaders",
        "networkHeaders",
        "isContentSpecificHeader",
        "",
        "fieldName",
        "",
        "isEndToEnd",
        "stripBody",
        "Lokhttp3/Response;",
        "response",
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
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 202
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$combine(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/cache/CacheInterceptor$Companion;
    .param p1, "cachedHeaders"    # Lokhttp3/Headers;
    .param p2, "networkHeaders"    # Lokhttp3/Headers;

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/cache/CacheInterceptor$Companion;
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private final combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 9
    .param p1, "cachedHeaders"    # Lokhttp3/Headers;
    .param p2, "networkHeaders"    # Lokhttp3/Headers;

    .prologue
    const/4 v5, 0x0

    .line 214
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 216
    .local v2, "result":Lokhttp3/Headers$Builder;
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v6

    move v1, v5

    :goto_0
    if-ge v1, v6, :cond_3

    .line 217
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Warning"

    const/4 v7, 0x1

    invoke-static {v4, v0, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v4, v5, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .local v1, "index":I
    goto :goto_0

    .end local v1    # "index":I
    :cond_1
    move-object v4, p0

    .line 223
    check-cast v4, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-direct {v4, v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, p0

    check-cast v4, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    .line 224
    invoke-direct {v4, v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    invoke-virtual {p2, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 226
    :cond_2
    invoke-virtual {v2, v0, v3}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 230
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result v6

    move v1, v5

    :goto_2
    if-ge v1, v6, :cond_5

    .line 231
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fieldName":Ljava/lang/String;
    move-object v4, p0

    .line 232
    check-cast v4, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-direct {v4, v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, p0

    check-cast v4, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-direct {v4, v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 233
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 230
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .restart local v1    # "index":I
    goto :goto_2

    .line 237
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_5
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v4

    return-object v4
.end method

.method private final isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 260
    const-string v1, "Content-Length"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const-string v1, "Content-Encoding"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string v1, "Content-Type"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isEndToEnd(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 245
    const-string v1, "Connection"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    const-string v1, "Keep-Alive"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    const-string v1, "Proxy-Authenticate"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string v1, "Proxy-Authorization"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, "TE"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const-string v1, "Trailers"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string v1, "Transfer-Encoding"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    const-string v1, "Upgrade"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 205
    .end local p1    # "response":Lokhttp3/Response;
    :cond_0
    return-object p1

    .restart local p1    # "response":Lokhttp3/Response;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
