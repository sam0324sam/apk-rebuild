.class Lcn/com/magnity/magnitymx/media/FragmentMedia$3;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/NetworkServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 271
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$3;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILjava/lang/String;II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "remainedNum"    # I

    .prologue
    .line 285
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 286
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 287
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 288
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 289
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$3;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$500(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method public onItemsAdded(IIIII)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "newNum"    # I
    .param p3, "oldNum"    # I
    .param p4, "sucNum"    # I
    .param p5, "failNum"    # I

    .prologue
    .line 296
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 297
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 298
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 299
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "newNum"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v2, "oldNum"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v2, "sucNum"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v2, "failNum"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 306
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$3;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$500(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method public onProgressUpdate(ILjava/lang/String;DDI)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "progress"    # D
    .param p5, "totalProgress"    # D
    .param p7, "remainedNum"    # I

    .prologue
    .line 274
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 275
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 276
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, p5

    double-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 277
    iput p7, v0, Landroid/os/Message;->arg2:I

    .line 278
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$3;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$500(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method
