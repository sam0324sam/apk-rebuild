.class Lcn/com/magnity/magnitymx/live/LivePresenter$2;
.super Ljava/lang/Object;
.source "LivePresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/LivePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;

    .prologue
    .line 261
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 264
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 266
    :pswitch_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->triggrtStitching()Z

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$500(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 274
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$500(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;

    move-result-object v3

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;->onStitchingStopped()V

    .line 276
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    move-result-object v3

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->hideWaitingDialog()V

    goto :goto_0

    .line 281
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 283
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    move-result-object v3

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->updateBrowseBtnImage(Ljava/lang/String;)V

    .line 285
    :cond_2
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3, v6}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$702(Lcn/com/magnity/magnitymx/live/LivePresenter;Z)Z

    goto :goto_0

    .line 288
    .end local v1    # "pathName":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 291
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 292
    .local v0, "error":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 293
    .local v2, "percent":I
    if-nez v0, :cond_3

    .line 294
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    move-result-object v3

    invoke-interface {v3, v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->onPrepareProgressChanged(I)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$2;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$600(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IView;

    move-result-object v3

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IView;->hidePrepareProgressBar()V

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
