.class public Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;
.super Ljava/lang/Object;
.source "LruQueryCacheHelper.java"


# static fields
.field private static final CACHE_SIZE:I = 0xc800

.field private static mInstance:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;


# instance fields
.field private mMemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0xc800

    .line 20
    .local v0, "cacheSize":I
    new-instance v1, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper$1;

    invoke-direct {v1, p0, v0}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper$1;-><init>(Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;I)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->mMemCache:Landroid/util/LruCache;

    .line 26
    return-void
.end method

.method public static newInstance()Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->mInstance:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->mInstance:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    .line 15
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->mInstance:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->mMemCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->mMemCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
