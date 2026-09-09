.class Lcn/com/magnity/magnitymx/media/MediaActivity$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/MediaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/MediaActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x1

    .line 163
    if-ne p1, v2, :cond_0

    .line 164
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    new-instance v1, Lcn/com/magnity/magnitymx/media/MediaActivity$1$2;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/media/MediaActivity$1$2;-><init>(Lcn/com/magnity/magnitymx/media/MediaActivity$1;)V

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$102(Lcn/com/magnity/magnitymx/media/MediaActivity;Z)Z

    .line 174
    return-void
.end method

.method public onFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    new-instance v1, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;-><init>(Lcn/com/magnity/magnitymx/media/MediaActivity$1;)V

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$102(Lcn/com/magnity/magnitymx/media/MediaActivity;Z)Z

    .line 158
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$002(Lcn/com/magnity/magnitymx/media/MediaActivity;Z)Z

    .line 159
    return-void
.end method

.method public onProgress(II)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "total"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$002(Lcn/com/magnity/magnitymx/media/MediaActivity;Z)Z

    .line 138
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$102(Lcn/com/magnity/magnitymx/media/MediaActivity;Z)Z

    .line 140
    return-void
.end method
