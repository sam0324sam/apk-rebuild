.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheControl.kt\nokhttp3/CacheControl$Builder\n*L\n1#1,416:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0003\u001a\u00020\u0000J\u0016\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\t\u001a\u00020\u0000J\u0006\u0010\n\u001a\u00020\u0000J\u0006\u0010\u000b\u001a\u00020\u0000J\u0006\u0010\u000c\u001a\u00020\u0000J\u000c\u0010\u0014\u001a\u00020\u0006*\u00020\u0015H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokhttp3/CacheControl$Builder;",
        "",
        "()V",
        "immutable",
        "",
        "maxAgeSeconds",
        "",
        "maxStaleSeconds",
        "minFreshSeconds",
        "noCache",
        "noStore",
        "noTransform",
        "onlyIfCached",
        "build",
        "Lokhttp3/CacheControl;",
        "maxAge",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "maxStale",
        "minFresh",
        "clampToInt",
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
.field private immutable:Z

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private noStore:Z

.field private noTransform:Z

.field private onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 172
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 173
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method

.method private final clampToInt(J)I
    .locals 5
    .param p1, "$this$clampToInt"    # J

    .prologue
    const v0, 0x7fffffff

    .line 246
    nop

    .line 247
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 246
    :goto_0
    return v0

    .line 248
    :cond_0
    long-to-int v0, p1

    goto :goto_0
.end method


# virtual methods
.method public final build()Lokhttp3/CacheControl;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 253
    new-instance v0, Lokhttp3/CacheControl;

    iget-boolean v1, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    iget-boolean v2, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    iget v3, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    const/4 v4, -0x1

    iget v8, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 254
    iget v9, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iget-boolean v10, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iget-boolean v11, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iget-boolean v12, p0, Lokhttp3/CacheControl$Builder;->immutable:Z

    move v6, v5

    move v7, v5

    move-object v14, v13

    .line 253
    invoke-direct/range {v0 .. v14}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final immutable()Lokhttp3/CacheControl$Builder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 241
    move-object v1, p0

    check-cast v1, Lokhttp3/CacheControl$Builder;

    .local v1, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 242
    .local v0, "$i$a$-apply-CacheControl$Builder$immutable$1":I
    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->immutable:Z

    .line 243
    nop

    .line 241
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 243
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method

.method public final maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 8
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "timeUnit"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 195
    check-cast v2, Lokhttp3/CacheControl$Builder;

    .local v2, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 196
    .local v0, "$i$a$-apply-CacheControl$Builder$maxAge$1":I
    if-ltz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "$i$a$-require-CacheControl$Builder$maxAge$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxAge < 0: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v1    # "$i$a$-require-CacheControl$Builder$maxAge$1$1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 197
    :cond_1
    int-to-long v6, p1

    invoke-virtual {p2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 198
    .local v4, "maxAgeSecondsLong":J
    invoke-direct {v2, v4, v5}, Lokhttp3/CacheControl$Builder;->clampToInt(J)I

    move-result v3

    iput v3, v2, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 199
    nop

    nop

    .line 195
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 199
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method

.method public final maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 8
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "timeUnit"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 208
    check-cast v2, Lokhttp3/CacheControl$Builder;

    .local v2, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-apply-CacheControl$Builder$maxStale$1":I
    if-ltz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "$i$a$-require-CacheControl$Builder$maxStale$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxStale < 0: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v1    # "$i$a$-require-CacheControl$Builder$maxStale$1$1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 210
    :cond_1
    int-to-long v6, p1

    invoke-virtual {p2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 211
    .local v4, "maxStaleSecondsLong":J
    invoke-direct {v2, v4, v5}, Lokhttp3/CacheControl$Builder;->clampToInt(J)I

    move-result v3

    iput v3, v2, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 212
    nop

    nop

    .line 208
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 212
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method

.method public final minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 8
    .param p1, "minFresh"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "timeUnit"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 222
    check-cast v2, Lokhttp3/CacheControl$Builder;

    .local v2, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 223
    .local v0, "$i$a$-apply-CacheControl$Builder$minFresh$1":I
    if-ltz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "$i$a$-require-CacheControl$Builder$minFresh$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minFresh < 0: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v1    # "$i$a$-require-CacheControl$Builder$minFresh$1$1":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 224
    :cond_1
    int-to-long v6, p1

    invoke-virtual {p2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 225
    .local v4, "minFreshSecondsLong":J
    invoke-direct {v2, v4, v5}, Lokhttp3/CacheControl$Builder;->clampToInt(J)I

    move-result v3

    iput v3, v2, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 226
    nop

    nop

    .line 222
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 226
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method

.method public final noCache()Lokhttp3/CacheControl$Builder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 179
    move-object v1, p0

    check-cast v1, Lokhttp3/CacheControl$Builder;

    .local v1, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 180
    .local v0, "$i$a$-apply-CacheControl$Builder$noCache$1":I
    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->noCache:Z

    .line 181
    nop

    .line 179
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 181
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method

.method public final noStore()Lokhttp3/CacheControl$Builder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 184
    move-object v1, p0

    check-cast v1, Lokhttp3/CacheControl$Builder;

    .local v1, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 185
    .local v0, "$i$a$-apply-CacheControl$Builder$noStore$1":I
    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->noStore:Z

    .line 186
    nop

    .line 184
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 186
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method

.method public final noTransform()Lokhttp3/CacheControl$Builder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 237
    move-object v1, p0

    check-cast v1, Lokhttp3/CacheControl$Builder;

    .local v1, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 238
    .local v0, "$i$a$-apply-CacheControl$Builder$noTransform$1":I
    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    .line 239
    nop

    .line 237
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 239
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method

.method public final onlyIfCached()Lokhttp3/CacheControl$Builder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 232
    move-object v1, p0

    check-cast v1, Lokhttp3/CacheControl$Builder;

    .local v1, "$this$apply":Lokhttp3/CacheControl$Builder;
    const/4 v0, 0x0

    .line 233
    .local v0, "$i$a$-apply-CacheControl$Builder$onlyIfCached$1":I
    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    .line 234
    nop

    .line 232
    check-cast p0, Lokhttp3/CacheControl$Builder;

    .line 234
    .end local p0    # "this":Lokhttp3/CacheControl$Builder;
    return-object p0
.end method
