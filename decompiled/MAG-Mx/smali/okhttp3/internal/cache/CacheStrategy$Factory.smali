.class public final Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheStrategy.kt\nokhttp3/internal/cache/CacheStrategy$Factory\n*L\n1#1,332:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0017\u001a\u00020\u0003H\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\u001b\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheStrategy$Factory;",
        "",
        "nowMillis",
        "",
        "request",
        "Lokhttp3/Request;",
        "cacheResponse",
        "Lokhttp3/Response;",
        "(JLokhttp3/Request;Lokhttp3/Response;)V",
        "ageSeconds",
        "",
        "etag",
        "",
        "expires",
        "Ljava/util/Date;",
        "lastModified",
        "lastModifiedString",
        "receivedResponseMillis",
        "getRequest$okhttp",
        "()Lokhttp3/Request;",
        "sentRequestMillis",
        "servedDate",
        "servedDateString",
        "cacheResponseAge",
        "compute",
        "Lokhttp3/internal/cache/CacheStrategy;",
        "computeCandidate",
        "computeFreshnessLifetime",
        "hasConditions",
        "",
        "isFreshnessLifetimeHeuristic",
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
.field private ageSeconds:I

.field private final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field private final nowMillis:J

.field private receivedResponseMillis:J

.field private final request:Lokhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "cacheResponse"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v4, "request"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iput-object p3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 87
    iput v7, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 98
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-eqz v4, :cond_5

    .line 99
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 100
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 101
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 102
    .local v1, "headers":Lokhttp3/Headers;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_5

    .line 103
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "value":Ljava/lang/String;
    nop

    .line 106
    const-string v5, "Date"

    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-static {v3}, Lokhttp3/internal/http/DatesKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 108
    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_1
    const-string v5, "Expires"

    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    invoke-static {v3}, Lokhttp3/internal/http/DatesKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 113
    :cond_2
    const-string v5, "Last-Modified"

    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    invoke-static {v3}, Lokhttp3/internal/http/DatesKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 115
    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_3
    const-string v5, "ETag"

    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 120
    :cond_4
    const-string v5, "Age"

    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-static {v3, v7}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 126
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lokhttp3/Headers;
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private final cacheResponseAge()J
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    .line 261
    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 262
    .local v8, "servedDate":Ljava/util/Date;
    if-eqz v8, :cond_0

    .line 263
    iget-wide v10, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 268
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v9, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 269
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v10, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 274
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v10, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v12, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v10, v12

    .line 275
    .local v6, "responseDuration":J
    iget-wide v10, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iget-wide v12, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v10, v12

    .line 276
    .local v4, "residentDuration":J
    add-long v10, v2, v6

    add-long/2addr v10, v4

    return-wide v10

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 271
    goto :goto_0
.end method

.method private final computeCandidate()Lokhttp3/internal/cache/CacheStrategy;
    .locals 24

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 144
    new-instance v19, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 224
    :goto_0
    return-object v19

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v19

    if-nez v19, :cond_1

    .line 149
    new-instance v19, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_0

    .line 155
    :cond_1
    sget-object v19, Lokhttp3/internal/cache/CacheStrategy;->Companion:Lokhttp3/internal/cache/CacheStrategy$Companion;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy$Companion;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 156
    new-instance v19, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_0

    .line 159
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v9

    .line 160
    .local v9, "requestCaching":Lokhttp3/CacheControl;
    invoke-virtual {v9}, Lokhttp3/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 161
    :cond_3
    new-instance v19, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_0

    .line 164
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v18

    .line 166
    .local v18, "responseCaching":Lokhttp3/CacheControl;
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v2

    .line 167
    .local v2, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v10

    .line 169
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 170
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 173
    :cond_5
    const-wide/16 v14, 0x0

    .line 174
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 175
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 178
    :cond_6
    const-wide/16 v12, 0x0

    .line 179
    .local v12, "maxStaleMillis":J
    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 180
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 183
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_a

    add-long v20, v2, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_a

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    .line 185
    .local v4, "builder":Lokhttp3/Response$Builder;
    add-long v20, v2, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_8

    .line 186
    const-string v19, "Warning"

    const-string v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 188
    :cond_8
    const-wide/32 v16, 0x5265c00

    .line 189
    .local v16, "oneDayMillis":J
    cmp-long v19, v2, v16

    if-lez v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 190
    const-string v19, "Warning"

    const-string v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 192
    :cond_9
    new-instance v19, Lokhttp3/internal/cache/CacheStrategy;

    const/16 v20, 0x0

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto/16 :goto_0

    .line 197
    .end local v4    # "builder":Lokhttp3/Response$Builder;
    .end local v16    # "oneDayMillis":J
    :cond_a
    const/4 v5, 0x0

    .line 198
    .local v5, "conditionName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 199
    .local v6, "conditionValue":Ljava/lang/String;
    nop

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 201
    const-string v5, "If-None-Match"

    .line 202
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    .line 216
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v8

    .line 219
    .local v8, "conditionalRequestHeaders":Lokhttp3/Headers$Builder;
    if-nez v6, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {v8, v5, v6}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v19

    .line 222
    invoke-virtual {v8}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v19

    .line 223
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 224
    .local v7, "conditionalRequest":Lokhttp3/Request;
    new-instance v19, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto/16 :goto_0

    .line 205
    .end local v7    # "conditionalRequest":Lokhttp3/Request;
    .end local v8    # "conditionalRequestHeaders":Lokhttp3/Headers$Builder;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 206
    const-string v5, "If-Modified-Since"

    .line 207
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 210
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 211
    const-string v5, "If-Modified-Since"

    .line 212
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_1

    .line 215
    :cond_e
    new-instance v19, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto/16 :goto_0
.end method

.method private final computeFreshnessLifetime()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 232
    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-nez v8, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v8}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    .line 233
    .local v3, "responseCaching":Lokhttp3/CacheControl;
    invoke-virtual {v3}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 234
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 253
    :cond_1
    :goto_0
    return-wide v6

    .line 237
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    .line 238
    .local v2, "expires":Ljava/util/Date;
    if-eqz v2, :cond_5

    .line 239
    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 240
    .local v4, "servedMillis":J
    :goto_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 241
    .local v0, "delta":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_4

    .end local v0    # "delta":J
    :goto_2
    move-wide v6, v0

    goto :goto_0

    .line 239
    .end local v4    # "servedMillis":J
    :cond_3
    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_4
    move-wide v0, v6

    .line 241
    goto :goto_2

    .line 244
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v8}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 248
    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 249
    .restart local v4    # "servedMillis":J
    :goto_3
    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-nez v8, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 250
    .restart local v0    # "delta":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    const/16 v6, 0xa

    int-to-long v6, v6

    div-long v6, v0, v6

    goto :goto_0

    .line 248
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_7
    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private final hasConditions(Lokhttp3/Request;)Z
    .locals 1
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 285
    const-string v0, "If-Modified-Since"

    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final compute()Lokhttp3/internal/cache/CacheStrategy;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeCandidate()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    .line 133
    .local v0, "candidate":Lokhttp3/internal/cache/CacheStrategy;
    invoke-virtual {v0}, Lokhttp3/internal/cache/CacheStrategy;->getNetworkRequest()Lokhttp3/Request;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    .end local v0    # "candidate":Lokhttp3/internal/cache/CacheStrategy;
    invoke-direct {v0, v2, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 137
    :cond_0
    return-object v0
.end method

.method public final getRequest$okhttp()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    return-object v0
.end method
