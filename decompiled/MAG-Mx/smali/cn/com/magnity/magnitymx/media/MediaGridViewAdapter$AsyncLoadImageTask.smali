.class Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;
.super Landroid/os/AsyncTask;
.source "MediaGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private height_:I

.field private name_:Ljava/lang/String;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

.field private width_:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;II)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 298
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 299
    iput p2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->width_:I

    .line 300
    iput p3, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->height_:I

    .line 301
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 305
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    .line 307
    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$200(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->width_:I

    iget v3, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->height_:I

    .line 306
    invoke-static {v1, v2, v3}, Lcn/com/magnity/magnitymx/media/BitmapUtilities;->getBitmapThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$300(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Lcn/com/magnity/magnitymx/media/LruCacheHelper;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/com/magnity/magnitymx/media/LruCacheHelper;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 311
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const/4 p1, 0x0

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$100(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 324
    .local v0, "gridView":Landroid/widget/GridView;
    if-eqz v0, :cond_1

    .line 325
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 326
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$400(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncLoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
