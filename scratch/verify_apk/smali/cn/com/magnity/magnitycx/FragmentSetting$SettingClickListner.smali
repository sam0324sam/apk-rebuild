.class Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentSetting;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentSetting;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentSetting;Lcn/com/magnity/magnitycx/FragmentSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentSetting;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentSetting$1;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;-><init>(Lcn/com/magnity/magnitycx/FragmentSetting;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 516
    :sswitch_0
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->visWndSize:I

    packed-switch v0, :pswitch_data_0

    .line 523
    :pswitch_0
    const/4 v3, 0x1

    .line 524
    .local v3, "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VISWND_MIDDLE"

    const-string v2, "\u53ef\u89c1\u5149\u5c3a\u5bf8\u4e2d"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_1
    const v0, 0x7f080086

    const v1, 0x7f0e00d5

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitycx/DialogOption;->newInstance(II[IILcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;I)Lcn/com/magnity/magnitycx/DialogOption;

    move-result-object v12

    .line 535
    .local v12, "dlg":Landroid/support/v4/app/DialogFragment;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialogOptionVisible"

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v3    # "index":I
    .end local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    :pswitch_1
    const/4 v3, 0x0

    .line 519
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VISWND_SMALL"

    const-string v2, "\u53ef\u89c1\u5149\u5c3a\u5bf8\u5c0f"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 527
    .end local v3    # "index":I
    :pswitch_2
    const/4 v3, 0x2

    .line 528
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VISWND_LARGE"

    const-string v2, "\u53ef\u89c1\u5149\u5c3a\u5bf8\u5927"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 538
    .end local v3    # "index":I
    :sswitch_1
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    packed-switch v0, :pswitch_data_1

    .line 545
    :pswitch_3
    const/4 v3, 0x1

    .line 546
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TRACE_MAX"

    const-string v2, "\u76ee\u6807\u6700\u9ad8\u6e29"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_2
    const v0, 0x7f080070

    const v1, 0x7f0e00d9

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitycx/DialogOption;->newInstance(II[IILcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;I)Lcn/com/magnity/magnitycx/DialogOption;

    move-result-object v12

    .line 561
    .restart local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialogOptionMaxMinTrace"

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    .end local v3    # "index":I
    .end local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    :pswitch_4
    const/4 v3, 0x0

    .line 541
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TRACE_NONE"

    const-string v2, "\u76ee\u6807\u65e0"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 549
    .end local v3    # "index":I
    :pswitch_5
    const/4 v3, 0x2

    .line 550
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TRACE_MIN"

    const-string v2, "\u76ee\u6807\u6700\u4f4e\u6e29"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 553
    .end local v3    # "index":I
    :pswitch_6
    const/4 v3, 0x3

    .line 554
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TRACE_MAXMIN"

    const-string v2, "\u76ee\u6807\u5168"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 564
    .end local v3    # "index":I
    :sswitch_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    const v1, 0x7f0e00db

    const v2, 0x7f08006f

    invoke-static {v0, v1, v2}, Lcn/com/magnity/magnitycx/FragmentSetting;->access$100(Lcn/com/magnity/magnitycx/FragmentSetting;II)V

    goto/16 :goto_0

    .line 567
    :sswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLIP_HORIZONTAL"

    const-string v2, "\u6c34\u5e73\u7ffb\u8f6c"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    const/4 v1, 0x1

    const v2, 0x7f0e00de

    const v4, 0x7f080065

    invoke-static {v0, v1, v2, v4}, Lcn/com/magnity/magnitycx/FragmentSetting;->access$200(Lcn/com/magnity/magnitycx/FragmentSetting;III)V

    goto/16 :goto_0

    .line 572
    :sswitch_4
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLIP_VERTICAL"

    const-string v2, "\u7ad6\u76f4\u7ffb\u8f6c"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    const v1, 0x7f0e00df

    const v2, 0x7f080066

    invoke-static {v0, v6, v1, v2}, Lcn/com/magnity/magnitycx/FragmentSetting;->access$200(Lcn/com/magnity/magnitycx/FragmentSetting;III)V

    goto/16 :goto_0

    .line 577
    :sswitch_5
    const v6, 0x7f080063

    const v7, 0x7f0e00e0

    const/4 v0, 0x5

    new-array v8, v0, [I

    fill-array-data v8, :array_2

    .line 580
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getEX()I

    move-result v9

    iget-object v10, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    move v11, v5

    .line 577
    invoke-static/range {v6 .. v11}, Lcn/com/magnity/magnitycx/DialogOption;->newInstance(II[IILcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;I)Lcn/com/magnity/magnitycx/DialogOption;

    move-result-object v12

    .line 581
    .restart local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialogOptionImageEx"

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    .end local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    :sswitch_6
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->emissivity:I

    sparse-switch v0, :sswitch_data_1

    .line 587
    const/4 v3, 0x0

    .line 588
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EMISSIVITY_NONE"

    const-string v2, "\u8f90\u5c04\u7387\u65e0\u5149"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :goto_3
    const v0, 0x7f08005e

    const v1, 0x7f0e00e5

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitycx/DialogOption;->newInstance(II[IILcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;I)Lcn/com/magnity/magnitycx/DialogOption;

    move-result-object v12

    .line 607
    .restart local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialogOptionEmissivity"

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    .end local v3    # "index":I
    .end local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    :sswitch_7
    const/4 v3, 0x1

    .line 592
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EMISSIVITY_DARK"

    const-string v2, "\u8f90\u5c04\u7387\u6697\u5149"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 595
    .end local v3    # "index":I
    :sswitch_8
    const/4 v3, 0x2

    .line 596
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EMISSIVITY_HALF"

    const-string v2, "\u8f90\u5c04\u7387\u534a\u5149"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 599
    .end local v3    # "index":I
    :sswitch_9
    const/4 v3, 0x3

    .line 600
    .restart local v3    # "index":I
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EMISSIVITY_LIGHT"

    const-string v2, "\u8f90\u5c04\u7387\u4eae\u5149"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 611
    .end local v3    # "index":I
    :sswitch_a
    const v4, 0x7f08005f

    const v5, 0x7f0e00ea

    new-array v6, v6, [I

    fill-array-data v6, :array_4

    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v7, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->fpsMode:I

    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    const v9, 0x7f080062

    invoke-static/range {v4 .. v9}, Lcn/com/magnity/magnitycx/DialogOption;->newInstance(II[IILcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;I)Lcn/com/magnity/magnitycx/DialogOption;

    move-result-object v12

    .line 615
    .restart local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialogOptionFps"

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    .end local v12    # "dlg":Landroid/support/v4/app/DialogFragment;
    :sswitch_b
    new-instance v13, Landroid/content/Intent;

    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcn/com/magnity/magnitycx/AboutProductActivity;

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    .local v13, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CLICK_PRODUCT"

    const-string v2, "\u70b9\u51fb\u4ea7\u54c1"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0, v13}, Lcn/com/magnity/magnitycx/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 625
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_c
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    const v1, 0x7f0e00ef

    const v2, 0x7f08006b

    invoke-static {v0, v1, v2}, Lcn/com/magnity/magnitycx/FragmentSetting;->access$300(Lcn/com/magnity/magnitycx/FragmentSetting;II)V

    goto/16 :goto_0

    .line 629
    :sswitch_d
    new-instance v13, Landroid/content/Intent;

    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcn/com/magnity/magnitycx/AboutAboutActivity;

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    .restart local v13    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CLICK_ABOUT"

    const-string v2, "\u70b9\u51fb\u5173\u4e8e"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSetting$SettingClickListner;->this$0:Lcn/com/magnity/magnitycx/FragmentSetting;

    invoke-virtual {v0, v13}, Lcn/com/magnity/magnitycx/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 514
    :sswitch_data_0
    .sparse-switch
        0x7f0e00d2 -> :sswitch_b
        0x7f0e00d3 -> :sswitch_d
        0x7f0e00d5 -> :sswitch_0
        0x7f0e00d9 -> :sswitch_1
        0x7f0e00db -> :sswitch_2
        0x7f0e00de -> :sswitch_3
        0x7f0e00df -> :sswitch_4
        0x7f0e00e0 -> :sswitch_5
        0x7f0e00e5 -> :sswitch_6
        0x7f0e00ea -> :sswitch_a
        0x7f0e00ef -> :sswitch_c
    .end sparse-switch

    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 531
    :array_0
    .array-data 4
        0x7f080075
        0x7f080074
        0x7f080073
    .end array-data

    .line 538
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 557
    :array_1
    .array-data 4
        0x7f08006c
        0x7f080068
        0x7f080069
        0x7f080067
    .end array-data

    .line 577
    :array_2
    .array-data 4
        0x7f080059
        0x7f08005b
        0x7f08005c
        0x7f08005d
        0x7f08005a
    .end array-data

    .line 584
    :sswitch_data_1
    .sparse-switch
        0x46 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
    .end sparse-switch

    .line 603
    :array_3
    .array-data 4
        0x7f080055
        0x7f080056
        0x7f080057
        0x7f080058
    .end array-data

    .line 611
    :array_4
    .array-data 4
        0x7f080060
        0x7f080061
    .end array-data
.end method
