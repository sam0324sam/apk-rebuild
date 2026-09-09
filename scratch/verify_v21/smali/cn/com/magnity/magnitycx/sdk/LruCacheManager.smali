.class public Lcn/com/magnity/magnitycx/sdk/LruCacheManager;
.super Ljava/lang/Object;
.source "LruCacheManager.java"


# static fields
.field private static final CACHE_SIZE:I = 0xa00000

.field private static instance_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;


# instance fields
.field private memCache_:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance()Lcn/com/magnity/magnitycx/sdk/LruCacheManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->instance_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->instance_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    .line 20
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->instance_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->init()V

    .line 23
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->instance_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v1, v2

    .line 28
    .local v1, "maxMemory":I
    const/high16 v0, 0xa00000

    .line 29
    .local v0, "cacheSize":I
    div-int/lit8 v2, v1, 0x8

    if-le v0, v2, :cond_0

    .line 30
    div-int/lit8 v0, v1, 0x8

    .line 33
    :cond_0
    new-instance v2, Lcn/com/magnity/magnitycx/sdk/LruCacheManager$1;

    invoke-direct {v2, p0, v0}, Lcn/com/magnity/magnitycx/sdk/LruCacheManager$1;-><init>(Lcn/com/magnity/magnitycx/sdk/LruCacheManager;I)V

    iput-object v2, p0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->memCache_:Landroid/support/v4/util/LruCache;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->memCache_:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->memCache_:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
