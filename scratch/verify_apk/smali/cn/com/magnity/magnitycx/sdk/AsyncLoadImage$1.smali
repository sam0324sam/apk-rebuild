.class Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$1;
.super Landroid/os/Handler;
.source "AsyncLoadImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;-><init>(Ljava/lang/String;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$1;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$1;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$000(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$DelegateExecute;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$1;->this$0:Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;->access$000(Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$DelegateExecute;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitycx/sdk/AsyncLoadImage$DelegateExecute;->onExecuteFinished(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x12345678
        :pswitch_0
    .end packed-switch
.end method
