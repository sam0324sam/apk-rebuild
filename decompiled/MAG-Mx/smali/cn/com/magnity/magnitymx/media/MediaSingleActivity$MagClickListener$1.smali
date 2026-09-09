.class Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener$1;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/server/MagHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;)V
    .locals 0
    .param p1, "this$1"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    .prologue
    .line 806
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(D)V
    .locals 3
    .param p1, "progress"    # D

    .prologue
    .line 810
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 811
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 812
    double-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 813
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    iget-object v1, v1, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 814
    return-void
.end method

.method public onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V
    .locals 3
    .param p1, "serverResponse"    # Lcn/com/magnity/magnitymx/server/ServerResponse;
    .param p2, "action"    # I

    .prologue
    .line 818
    move-object v1, p1

    check-cast v1, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    .line 819
    .local v1, "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 820
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 821
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 822
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    iget-object v2, v2, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 823
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    iget-object v2, v2, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 824
    return-void
.end method
