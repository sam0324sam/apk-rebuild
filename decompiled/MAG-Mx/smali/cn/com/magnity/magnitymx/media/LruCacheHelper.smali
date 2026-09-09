.class public Lcn/com/magnity/magnitymx/media/LruCacheHelper;
.super Ljava/lang/Object;
.source "LruCacheHelper.java"


# static fields
.field private static final CACHE_SIZE:I = 0xc800

.field private static mInstance:Lcn/com/magnity/magnitymx/media/LruCacheHelper;


# instance fields
.field private mMemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 23
    .local v1, "maxMemory":I
    const v0, 0xc800

    .line 24
    .local v0, "cacheSize":I
    div-int/lit8 v2, v1, 0x8

    if-le v0, v2, :cond_0

    .line 25
    div-int/lit8 v0, v1, 0x8

    .line 28
    :cond_0
    new-instance v2, Lcn/com/magnity/magnitymx/media/LruCacheHelper$1;

    invoke-direct {v2, p0, v0}, Lcn/com/magnity/magnitymx/media/LruCacheHelper$1;-><init>(Lcn/com/magnity/magnitymx/media/LruCacheHelper;I)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->mMemCache:Landroid/util/LruCache;

    .line 34
    return-void
.end method

.method public static newInstance()Lcn/com/magnity/magnitymx/media/LruCacheHelper;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->mInstance:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/media/LruCacheHelper;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->mInstance:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    .line 18
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->mInstance:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->mMemCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->mMemCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
