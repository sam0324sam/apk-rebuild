.class Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;
.super Landroid/os/AsyncTask;
.source "MediaGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/MediaGridViewAdapter;
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

.field final synthetic this$0:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

.field private width_:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;II)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 168
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    iput p2, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->width_:I

    .line 170
    iput p3, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->height_:I

    .line 171
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 175
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->width_:I

    iget v3, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->height_:I

    invoke-static {v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/BitmapUtilities;->getBitmapThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->access$000(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;)Lcn/com/magnity/magnitycx/sdk/LruCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/com/magnity/magnitycx/sdk/LruCacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 181
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 p1, 0x0

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->access$100(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 194
    .local v0, "gridView":Landroid/widget/GridView;
    if-eqz v0, :cond_1

    .line 195
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 196
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 197
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->this$0:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->access$200(Lcn/com/magnity/magnitycx/MediaGridViewAdapter;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->name_:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter$AsyncLoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
