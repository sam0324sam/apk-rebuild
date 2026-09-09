.class public Lcn/com/magnity/magnitycx/MediaGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;
    }
.end annotation


# static fields
.field private static final SAMPLESIZE:I = 0x2


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

.field private lruCacheManager_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

.field private mapSelStatus_:Ljava/util/Map;

.field private mapTask_:Ljava/util/Map;

.field private mode_:I


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
    .line 35
    .local p3, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->layoutInflater_:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->context_:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->gridView_:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object p3, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    .line 40
    iput-object p4, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapSelStatus_:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->getInstance()Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;)Lcn/com/magnity/magnitycx/sdk/LruCacheManager;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->gridView_:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    return-object v0
.end method

.method private loadCachedBitmapIfExist(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imgView"    # Landroid/widget/ImageView;
    .param p2, "logoView"    # Landroid/widget/ImageView;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    invoke-virtual {v1, p3}, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    :goto_0
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    invoke-static {p3}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :goto_1
    return-void

    .line 142
    :cond_0
    const v1, 0x7f03000b

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public cancelAllTasks()V
    .locals 4

    .prologue
    .line 153
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;

    .line 157
    .local v2, "task":Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;
    if-eqz v2, :cond_0

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->cancel(Z)Z

    goto :goto_0

    .line 161
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "task":Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 162
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 67
    if-nez p2, :cond_1

    .line 68
    iget-object v6, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->layoutInflater_:Landroid/view/LayoutInflater;

    const v7, 0x7f040049

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "rootView":Landroid/view/View;
    :goto_0
    iget-object v6, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "name":Ljava/lang/String;
    const v6, 0x7f0e0102

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    const v6, 0x7f0e0104

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    .local v1, "logoView":Landroid/widget/ImageView;
    invoke-direct {p0, v0, v1, v2}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->loadCachedBitmapIfExist(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 80
    const v6, 0x7f0e0103

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 81
    .local v5, "viewSelLogo":Landroid/widget/ImageView;
    iget v6, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mode_:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 82
    iget-object v6, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 84
    :cond_0
    const v6, 0x7f03001c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 90
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_2
    return-object v4

    .line 70
    .end local v0    # "imgView":Landroid/widget/ImageView;
    .end local v1    # "logoView":Landroid/widget/ImageView;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "viewSelLogo":Landroid/widget/ImageView;
    :cond_1
    move-object v4, p2

    .restart local v4    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 87
    .restart local v0    # "imgView":Landroid/widget/ImageView;
    .restart local v1    # "logoView":Landroid/widget/ImageView;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "viewSelLogo":Landroid/widget/ImageView;
    :cond_2
    const v6, 0x7f03001b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    const v6, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 92
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2
.end method

.method public loadBitmap(II)V
    .locals 13
    .param p1, "firstVisiblePos"    # I
    .param p2, "visibleCount"    # I

    .prologue
    .line 100
    iget-object v10, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->gridView_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 101
    .local v2, "gridView":Landroid/widget/GridView;
    if-nez v2, :cond_1

    .line 135
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v10, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 107
    .local v5, "iter":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 110
    .local v6, "name":Ljava/lang/String;
    iget-object v10, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 111
    .local v7, "pos":I
    if-ge v7, p1, :cond_2

    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 117
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "pos":I
    :cond_3
    move v3, p1

    .local v3, "i":I
    :goto_1
    add-int v10, p1, p2

    if-ge v3, v10, :cond_0

    .line 118
    iget-object v10, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    .restart local v6    # "name":Ljava/lang/String;
    iget-object v10, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->lruCacheManager_:Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    invoke-virtual {v10, v6}, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v2, v6}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 122
    .local v4, "imageView":Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    :cond_5
    iget-object v10, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;

    .line 127
    .local v9, "task":Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;
    if-nez v9, :cond_4

    .line 128
    invoke-virtual {v2}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v8

    .line 129
    .local v8, "size":I
    new-instance v9, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;

    .end local v9    # "task":Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;
    invoke-direct {v9, p0, v8, v8}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;-><init>(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;II)V

    .line 130
    .restart local v9    # "task":Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;
    iget-object v10, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mapTask_:Ljava/util/Map;

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v10, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v11}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 61
    iput p1, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->mode_:I

    .line 62
    return-void
.end method
