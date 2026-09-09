.class Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;
.super Landroid/os/Handler;
.source "MediaSingleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaSingleHandler"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/com/magnity/magnitymx/media/MediaSingleActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p2, "activity"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 119
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 123
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 125
    :pswitch_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$002(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 126
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 127
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "content":Ljava/lang/String;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 132
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 133
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 136
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    .line 137
    .local v1, "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    const v4, 0x150200

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v1, v4, v5}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/server/MagHttpResponse;II)V

    .line 138
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 141
    .end local v1    # "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :pswitch_3
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 148
    :pswitch_4
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 151
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    const v5, 0x7f0e011a

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 154
    :pswitch_5
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 157
    :cond_2
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    const v5, 0x7f0e0119

    invoke-virtual {v4, v5}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
