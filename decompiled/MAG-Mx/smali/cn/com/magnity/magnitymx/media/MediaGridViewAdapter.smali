.class public Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;,
        Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;
    }
.end annotation


# static fields
.field private static final SAMPLESIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaGridViewAdapter"


# instance fields
.field private context_:Landroid/content/Context;

.field private fileNames_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gridView_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater_:Landroid/view/LayoutInflater;

.field private lruCacheManager_:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

.field private lruQueryCacheManager:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

.field private mapSelStatus_:Ljava/util/Map;

.field private mapTask_:Ljava/util/Map;

.field private mode_:I

.field private queryTask:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Landroid/widget/GridView;
    .param p4, "mapSelStatus"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/GridView;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->layoutInflater_:Landroid/view/LayoutInflater;

    .line 42
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->context_:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->gridView_:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object p3, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    .line 45
    iput-object p4, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapSelStatus_:Ljava/util/Map;

    .line 46
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    invoke-static {}, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->newInstance()Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->queryTask:Ljava/util/Map;

    .line 49
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruQueryCacheManager:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    invoke-static {}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->newInstance()Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruQueryCacheManager:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruQueryCacheManager:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->gridView_:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->context_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Lcn/com/magnity/magnitymx/media/LruCacheHelper;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    return-object v0
.end method

.method private loadCachedBitmapIfExist(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imgView"    # Landroid/widget/ImageView;
    .param p2, "logoView"    # Landroid/widget/ImageView;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    invoke-virtual {v1, p3}, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    :goto_0
    invoke-static {p3}, Lcn/com/magnity/magnitymx/media/MediaUtils;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 266
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :goto_1
    return-void

    .line 262
    :cond_0
    const v1, 0x7f0c0004

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 268
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private loadQueryCacheIfExist(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView1"    # Landroid/widget/ImageView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 241
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruQueryCacheManager:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    invoke-virtual {v1, p2}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruQueryCacheManager:Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    invoke-virtual {v1, p2}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 243
    .local v0, "isUploaded":Z
    if-eqz v0, :cond_0

    .line 245
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    .end local v0    # "isUploaded":Z
    :goto_0
    return-void

    .line 248
    .restart local v0    # "isUploaded":Z
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 251
    .end local v0    # "isUploaded":Z
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAllTasks()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 273
    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 274
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;

    .line 277
    .local v3, "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;
    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v3, v5}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->cancel(Z)Z

    goto :goto_0

    .line 281
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 283
    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->queryTask:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 284
    .local v2, "iter2":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;

    .line 287
    .local v3, "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;
    if-eqz v3, :cond_2

    .line 288
    invoke-virtual {v3, v5}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->cancel(Z)Z

    goto :goto_1

    .line 291
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;
    :cond_3
    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->queryTask:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 292
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 74
    if-nez p2, :cond_1

    .line 75
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->layoutInflater_:Landroid/view/LayoutInflater;

    const v8, 0x7f0a0058

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, "rootView":Landroid/view/View;
    :goto_0
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "name":Ljava/lang/String;
    const v7, 0x7f0800c0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 84
    const v7, 0x7f0800ae

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 85
    .local v1, "logoView":Landroid/widget/ImageView;
    invoke-direct {p0, v0, v1, v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->loadCachedBitmapIfExist(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 87
    const v7, 0x7f0800ab

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 88
    .local v5, "viewSelLogo":Landroid/widget/ImageView;
    iget v7, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mode_:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 89
    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 90
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 91
    :cond_0
    const v7, 0x7f0700ac

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 97
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_2
    const v7, 0x7f0800ac

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 105
    .local v6, "viewUploadLogo":Landroid/widget/ImageView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_photo_uploaded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 108
    return-object v4

    .line 77
    .end local v0    # "imgView":Landroid/widget/ImageView;
    .end local v1    # "logoView":Landroid/widget/ImageView;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "viewSelLogo":Landroid/widget/ImageView;
    .end local v6    # "viewUploadLogo":Landroid/widget/ImageView;
    :cond_1
    move-object v4, p2

    .restart local v4    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 94
    .restart local v0    # "imgView":Landroid/widget/ImageView;
    .restart local v1    # "logoView":Landroid/widget/ImageView;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "viewSelLogo":Landroid/widget/ImageView;
    :cond_2
    const v7, 0x7f070061

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 99
    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2
.end method

.method public loadBitmap(II)V
    .locals 16
    .param p1, "firstVisiblePos"    # I
    .param p2, "visibleCount"    # I

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->gridView_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 113
    .local v3, "gridView":Landroid/widget/GridView;
    if-nez v3, :cond_1

    .line 192
    :cond_0
    return-void

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 119
    .local v6, "iter":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 122
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 123
    .local v8, "pos":I
    move/from16 v0, p1

    if-ge v8, v0, :cond_2

    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 129
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "pos":I
    :cond_3
    move/from16 v4, p1

    .local v4, "i":I
    :goto_1
    add-int v13, p1, p2

    if-ge v4, v13, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 131
    .restart local v7    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    invoke-virtual {v13, v7}, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {v3, v7}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 134
    .local v5, "imageView":Landroid/widget/ImageView;
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 135
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    .end local v5    # "imageView":Landroid/widget/ImageView;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;

    .line 139
    .local v10, "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;
    if-nez v10, :cond_4

    .line 140
    invoke-virtual {v3}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v9

    .line 141
    .local v9, "size":I
    new-instance v10, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;

    .end local v10    # "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;
    move-object/from16 v0, p0

    invoke-direct {v10, v0, v9, v9}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;-><init>(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;II)V

    .line 142
    .restart local v10    # "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v13, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v13, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-virtual {v10, v13, v14}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 161
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "size":I
    .end local v10    # "task":Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getmMagSQLiteUtils()Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v12

    .line 162
    .local v12, "utils":Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
    move/from16 v4, p1

    :goto_3
    add-int v13, p1, p2

    if-ge v4, v13, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 164
    .restart local v7    # "name":Ljava/lang/String;
    invoke-virtual {v12, v7}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v11

    .line 165
    .local v11, "uploadStatus":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_photo_uploaded"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 166
    .restart local v5    # "imageView":Landroid/widget/ImageView;
    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    .line 167
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 169
    :cond_7
    const/4 v13, 0x4

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 68
    iput p1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->mode_:I

    .line 69
    return-void
.end method
