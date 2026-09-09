.class Lcn/com/magnity/magnitymx/live/LivePresenter$3;
.super Landroid/os/Handler;
.source "LivePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/live/LivePresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/LivePresenter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/live/LivePresenter;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 361
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 367
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 368
    .local v10, "force":Z
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$800(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->lock()V

    .line 369
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$800(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    move-result-object v0

    invoke-interface {v0, v10}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->stopStitching(Z)V

    .line 370
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$800(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->unlock()V

    .line 371
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$902(Lcn/com/magnity/magnitymx/live/LivePresenter;Z)Z

    .line 372
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 375
    .end local v10    # "force":Z
    :pswitch_1
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 376
    .local v12, "msg2":Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v12, Landroid/os/Message;->what:I

    .line 377
    const/4 v0, 0x0

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 380
    .local v8, "bundle":Landroid/os/Bundle;
    if-nez v8, :cond_1

    .line 381
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0e0044

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 387
    :cond_1
    const-string v0, "pathName"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, "pathName":Ljava/lang/String;
    const-string v0, "irData"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 389
    .local v1, "irbuf":[B
    const-string v0, "ddtData"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 390
    .local v2, "ddtbuf":[B
    const-string v0, "roiData"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcn/com/magnity/magnitymx/ROICompat;

    move-object v4, v0

    check-cast v4, [Lcn/com/magnity/magnitymx/ROICompat;

    .line 392
    .local v4, "rois":[Lcn/com/magnity/magnitymx/ROICompat;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$1000(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;->capturePicture()[B

    move-result-object v3

    .line 393
    .local v3, "visible":[B
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$800(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v7}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->saveMDT([B[B[B[Lcn/com/magnity/magnitymx/ROICompat;[B[BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0e0044

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$1100(Lcn/com/magnity/magnitymx/live/LivePresenter;)V

    .line 401
    if-nez v3, :cond_3

    .line 402
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0e0045

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    :goto_1
    iput-object v7, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$400(Lcn/com/magnity/magnitymx/live/LivePresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$800(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;->getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v0

    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v13

    .line 411
    .local v13, "sn_str":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v9, "file":Ljava/io/File;
    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/ParseUtils;->calcMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 415
    .local v11, "md5_str":Ljava/lang/String;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LivePresenter$3;->this$0:Lcn/com/magnity/magnitymx/live/LivePresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->access$1200(Lcn/com/magnity/magnitymx/live/LivePresenter;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v13, v5, v11, v6}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 405
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "md5_str":Ljava/lang/String;
    .end local v13    # "sn_str":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0e0046

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
