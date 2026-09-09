.class Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;
.super Ljava/lang/Object;
.source "FragmentMainBottom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentMainBottom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentMainBottom;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentMainBottom;Lcn/com/magnity/magnitycx/FragmentMainBottom$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentMainBottom$1;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMainBottom;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4, v7}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->setNewSelection(I)V

    goto :goto_0

    .line 401
    :pswitch_2
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4, v8}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->setNewSelection(I)V

    goto :goto_0

    .line 404
    :pswitch_3
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/MainActivity;->getFragmentMainCenter()Lcn/com/magnity/magnitycx/FragmentMainCenter;

    move-result-object v1

    .line 405
    .local v1, "fragmentMainCenter":Lcn/com/magnity/magnitycx/FragmentMainCenter;
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$300(Lcn/com/magnity/magnitycx/FragmentMainBottom;)I

    move-result v4

    if-nez v4, :cond_1

    .line 406
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "PHOTO"

    const-string v6, "\u62cd\u7167"

    invoke-static {v4, v5, v6}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->capturePhoto()Z

    goto :goto_0

    .line 409
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->stopRecording()V

    .line 411
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v4, v8}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$400(Lcn/com/magnity/magnitycx/FragmentMainBottom;Z)V

    .line 412
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v4, v7}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$500(Lcn/com/magnity/magnitycx/FragmentMainBottom;Z)V

    .line 413
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$600(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f030032

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 414
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->startRecording()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "VIDEO"

    const-string v6, "\u5f55\u50cf"

    invoke-static {v4, v5, v6}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v4, v7}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$400(Lcn/com/magnity/magnitycx/FragmentMainBottom;Z)V

    .line 419
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v4, v8}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$500(Lcn/com/magnity/magnitycx/FragmentMainBottom;Z)V

    .line 420
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$600(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f030033

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 421
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 427
    .end local v1    # "fragmentMainCenter":Lcn/com/magnity/magnitycx/FragmentMainCenter;
    :pswitch_4
    new-instance v2, Lcn/com/magnity/magnitycx/DialogFragmentPalette;

    invoke-direct {v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;-><init>()V

    .line 428
    .local v2, "fragmentPalette":Lcn/com/magnity/magnitycx/DialogFragmentPalette;
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "COLOR_PALETTE"

    const-string v6, "\u8c03\u8272\u677f"

    invoke-static {v4, v5, v6}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "FragmentPalette"

    invoke-virtual {v2, v4, v5}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    .end local v2    # "fragmentPalette":Lcn/com/magnity/magnitycx/DialogFragmentPalette;
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->updateFileList(Ljava/util/ArrayList;)V

    .line 434
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 437
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "mediaWindowFlag"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v4, "mediaIndex"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const-string v4, "mediaNameList"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 441
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v4, v3}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x7f0e00ba
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
