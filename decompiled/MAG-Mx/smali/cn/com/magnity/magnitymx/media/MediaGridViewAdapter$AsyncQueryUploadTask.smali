.class Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;
.super Landroid/os/AsyncTask;
.source "MediaGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncQueryUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

.field private utils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;)V
    .locals 0
    .param p2, "utils"    # Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    .prologue
    .line 198
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 199
    iput-object p2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->utils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    .line 200
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    aget-object v1, p1, v3

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->name:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->utils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v0

    .line 206
    .local v0, "uploadStatus":I
    if-eqz v0, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 207
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$000(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->put(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 211
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 208
    :cond_2
    if-ne v0, v4, :cond_1

    .line 209
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$000(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/media/LruQueryCacheHelper;->put(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 218
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$100(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 219
    .local v0, "gridView":Landroid/widget/GridView;
    if-eqz v0, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_photo_uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 221
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->notifyDataSetChanged()V

    .line 237
    return-void

    .line 227
    .end local v0    # "gridView":Landroid/widget/GridView;
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->this$0:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->access$100(Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 228
    .restart local v0    # "gridView":Landroid/widget/GridView;
    if-eqz v0, :cond_0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_photo_uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 230
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter$AsyncQueryUploadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
