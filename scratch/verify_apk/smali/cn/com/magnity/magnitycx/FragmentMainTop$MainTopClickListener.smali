.class Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;
.super Ljava/lang/Object;
.source "FragmentMainTop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentMainTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainTopClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentMainTop;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentMainTop;Lcn/com/magnity/magnitycx/FragmentMainTop$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentMainTop$1;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMainTop;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    const/4 v3, 0x0

    .line 310
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 312
    :sswitch_0
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->dispMode:I

    .line 313
    .local v0, "dispMode":I
    if-nez v0, :cond_1

    .line 314
    const/4 v0, 0x1

    .line 315
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "DISABLE_VISWND"

    const-string v10, "\u5173\u95ed\u53ef\u89c1\u5149"

    invoke-static {v8, v9, v10}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_1
    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$100(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;

    move-result-object v10

    const v11, 0x7f03000a

    const v12, 0x7f030009

    if-nez v0, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-static {v9, v10, v11, v12, v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V

    .line 324
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/MainActivity;->getFragmentMainCenter()Lcn/com/magnity/magnitycx/FragmentMainCenter;

    move-result-object v2

    .line 325
    .local v2, "fragment":Lcn/com/magnity/magnitycx/FragmentMainCenter;
    instance-of v8, v2, Lcn/com/magnity/magnitycx/FragmentMainTop$DelegateDisplayModeChanged;

    if-eqz v8, :cond_4

    .line 326
    const/4 v8, 0x0

    .line 327
    invoke-interface {v2, v8, v0}, Lcn/com/magnity/magnitycx/FragmentMainTop$DelegateDisplayModeChanged;->onDisplayModeChanged(II)Z

    move-result v7

    .line 328
    .local v7, "ret":Z
    if-nez v7, :cond_4

    .line 329
    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$100(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;

    move-result-object v10

    const v11, 0x7f03000a

    const v12, 0x7f030009

    if-nez v0, :cond_3

    const/4 v8, 0x0

    :goto_3
    invoke-static {v9, v10, v11, v12, v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V

    goto :goto_0

    .line 317
    .end local v2    # "fragment":Lcn/com/magnity/magnitycx/FragmentMainCenter;
    .end local v7    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .line 318
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ENABLE_VISWND"

    const-string v10, "\u6253\u5f00\u53ef\u89c1\u5149"

    invoke-static {v8, v9, v10}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 321
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 329
    .restart local v2    # "fragment":Lcn/com/magnity/magnitycx/FragmentMainCenter;
    .restart local v7    # "ret":Z
    :cond_3
    const/4 v8, 0x1

    goto :goto_3

    .line 335
    .end local v7    # "ret":Z
    :cond_4
    const-string v8, "dispMode"

    invoke-static {v8, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 336
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v0, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->dispMode:I

    .line 338
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v4, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->onceTipVisibleMove:I

    .line 339
    .local v4, "num":I
    if-nez v0, :cond_0

    add-int/lit8 v5, v4, -0x1

    .end local v4    # "num":I
    .local v5, "num":I
    if-eqz v4, :cond_0

    .line 340
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v5, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->onceTipVisibleMove:I

    .line 341
    const-string v8, "onceTipVisibleMove2"

    invoke-static {v8, v5}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 342
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080041

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 347
    .end local v0    # "dispMode":I
    .end local v2    # "fragment":Lcn/com/magnity/magnitycx/FragmentMainCenter;
    .end local v5    # "num":I
    :sswitch_1
    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    .line 348
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    if-eqz v8, :cond_6

    .line 349
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ENABLE_CENTER_TEMP"

    const-string v10, "\u6253\u5f00\u4e2d\u5fc3\u6d4b\u6e29"

    invoke-static {v8, v9, v10}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_5
    const-string v8, "isShowCross"

    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    invoke-static {v8, v9}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 355
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v9}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$300(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f030005

    const v11, 0x7f030004

    sget-object v12, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v12, v12, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    invoke-static {v8, v9, v10, v11, v12}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V

    goto/16 :goto_0

    .line 347
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 351
    :cond_6
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "DISABLE_CENTER_TEMP"

    const-string v10, "\u5173\u95ed\u4e2d\u5fc3\u6d4b\u6e29"

    invoke-static {v8, v9, v10}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 359
    :sswitch_2
    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    if-nez v8, :cond_8

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    .line 360
    const-string v8, "isTraceMaxMin"

    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    invoke-static {v8, v9}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putBooleanWithCommit(Ljava/lang/String;Z)V

    .line 362
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v9}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$400(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f03003b

    const v11, 0x7f03003a

    sget-object v12, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v12, v12, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    invoke-static {v8, v9, v10, v11, v12}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V

    .line 365
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v8, v8, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-eqz v8, :cond_7

    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v8, v8, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_7

    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v8, v8, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_7

    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v8, v8, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    :cond_7
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    if-eqz v8, :cond_0

    .line 371
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v9, 0x0

    iput v9, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    .line 372
    const-string v8, "maxMinTrace"

    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    invoke-static {v8, v9}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 359
    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    .line 377
    :sswitch_3
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v6, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    .line 378
    .local v6, "ratio":I
    if-nez v6, :cond_a

    .line 379
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v9, 0x1

    iput v9, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    .line 380
    const-string v8, "exMode"

    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    invoke-static {v8, v9}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 382
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v9}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$500(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f03003e

    const v11, 0x7f03003d

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V

    .line 390
    :cond_9
    :goto_7
    const-string v8, "exMode"

    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    invoke-static {v8, v9}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 392
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v9, v9, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v10, v10, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v10, v10, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-static {v8, v9, v10}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setEX(III)V

    goto/16 :goto_0

    .line 383
    :cond_a
    const/4 v8, 0x1

    if-ne v6, v8, :cond_b

    .line 384
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v9, 0x2

    iput v9, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    .line 385
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v9}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$500(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f03003f

    const v11, 0x7f03003e

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V

    goto :goto_7

    .line 386
    :cond_b
    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    .line 387
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    const/4 v9, 0x0

    iput v9, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    .line 388
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v9}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$500(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f03003d

    const v11, 0x7f03003f

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V

    goto :goto_7

    .line 398
    .end local v6    # "ratio":I
    :sswitch_4
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isLaserOn:Z

    if-eqz v8, :cond_c

    .line 399
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "DISABLE_LASER"

    const-string v10, "\u5173\u95ed\u6fc0\u5149"

    invoke-static {v8, v9, v10}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->closeLaser()V

    goto/16 :goto_0

    .line 402
    :cond_c
    const v8, 0x7f040037

    invoke-static {v8}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->newInstance(I)Lcn/com/magnity/magnitycx/QueryDialogFragment;

    move-result-object v1

    .line 403
    .local v1, "dlgMediaDel":Lcn/com/magnity/magnitycx/QueryDialogFragment;
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ENABLE_LASER"

    const-string v10, "\u6253\u5f00\u6fc0\u5149"

    invoke-static {v8, v9, v10}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const-string v9, "openLaser"

    invoke-virtual {v1, v8, v9}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    .end local v1    # "dlgMediaDel":Lcn/com/magnity/magnitycx/QueryDialogFragment;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcn/com/magnity/magnitycx/SettingActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8, v3}, Lcn/com/magnity/magnitycx/FragmentMainTop;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :sswitch_6
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcn/com/magnity/magnitycx/SettingActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8, v3}, Lcn/com/magnity/magnitycx/FragmentMainTop;->startActivity(Landroid/content/Intent;)V

    .line 439
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$600(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/PopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 442
    :sswitch_7
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcn/com/magnity/magnitycx/SupportActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v8, v3}, Lcn/com/magnity/magnitycx/FragmentMainTop;->startActivity(Landroid/content/Intent;)V

    .line 444
    iget-object v8, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-static {v8}, Lcn/com/magnity/magnitycx/FragmentMainTop;->access$600(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/PopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00c8 -> :sswitch_0
        0x7f0e00c9 -> :sswitch_1
        0x7f0e00ca -> :sswitch_3
        0x7f0e00cb -> :sswitch_2
        0x7f0e00cc -> :sswitch_4
        0x7f0e00cd -> :sswitch_5
        0x7f0e011c -> :sswitch_6
        0x7f0e011d -> :sswitch_7
    .end sparse-switch
.end method
