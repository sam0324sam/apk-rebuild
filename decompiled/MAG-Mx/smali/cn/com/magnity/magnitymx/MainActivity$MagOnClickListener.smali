.class Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/MainActivity$1;

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 755
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 614
    :sswitch_1
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    .line 615
    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    .line 616
    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 619
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isChildFragmentVisible(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 620
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->showChildFragment(I)V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->hideChildFragment(I)V

    goto :goto_0

    .line 626
    :sswitch_2
    sget-boolean v9, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v9, :cond_2

    .line 627
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    double-to-float v6, v10

    .line 628
    .local v6, "maxMemory":F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    double-to-float v8, v10

    .line 629
    .local v8, "totalMemory":F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    double-to-float v2, v10

    .line 630
    .local v2, "freeMemory":F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxMemory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 631
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "totalMemory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "freeMemory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 635
    .end local v2    # "freeMemory":F
    .end local v6    # "maxMemory":F
    .end local v8    # "totalMemory":F
    :cond_2
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v5

    .line 636
    .local v5, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isMaxTraceOn()Z

    move-result v4

    .line 637
    .local v4, "isMaxTraceOn":Z
    if-nez v4, :cond_3

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v5, v9}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setMaxTraceOn(Z)V

    .line 638
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    iget-object v10, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/MainActivity;->access$600(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x7f0c0012

    const v12, 0x7f0c0011

    .line 639
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isMaxTraceOn()Z

    move-result v13

    .line 638
    invoke-static {v9, v10, v11, v12, v13}, Lcn/com/magnity/magnitymx/MainActivity;->access$700(Lcn/com/magnity/magnitymx/MainActivity;Landroid/widget/ImageView;IIZ)V

    goto/16 :goto_0

    .line 637
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 643
    .end local v4    # "isMaxTraceOn":Z
    .end local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_3
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 644
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->triggerFFC()V

    goto/16 :goto_0

    .line 648
    :sswitch_4
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v5

    .line 650
    .restart local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v9

    if-nez v9, :cond_4

    .line 651
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "android.permission.CAMERA"

    aput-object v12, v10, v11

    const/16 v11, 0x127

    invoke-static {v9, v10, v11}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v7

    .line 653
    .local v7, "result":Z
    if-eqz v7, :cond_0

    .line 656
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->startVisibleCamera()V

    .line 657
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setShowType(I)V

    .line 663
    .end local v7    # "result":Z
    :goto_2
    iget-object v10, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$800(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v11

    const v12, 0x7f070070

    const v13, 0x7f07006f

    .line 664
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v9

    const/4 v14, 0x1

    if-ne v9, v14, :cond_5

    const/4 v9, 0x1

    .line 663
    :goto_3
    invoke-static {v10, v11, v12, v13, v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$700(Lcn/com/magnity/magnitymx/MainActivity;Landroid/widget/ImageView;IIZ)V

    goto/16 :goto_0

    .line 659
    :cond_4
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopVisibleCamera()V

    .line 660
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setShowType(I)V

    goto :goto_2

    .line 664
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 668
    .end local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_5
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 669
    iget-object v10, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$900(Lcn/com/magnity/magnitymx/MainActivity;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$902(Lcn/com/magnity/magnitymx/MainActivity;Z)Z

    .line 670
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/MainActivity;->updateTunebar()V

    goto/16 :goto_0

    .line 669
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 674
    :sswitch_6
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const-class v12, Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v10}, Lcn/com/magnity/magnitymx/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 677
    :sswitch_7
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;-><init>()V

    .line 678
    .local v0, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 682
    .end local v0    # "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;
    :sswitch_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v1, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9, v1}, Lcn/com/magnity/magnitymx/media/MediaUtils;->updateFileList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 684
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 687
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const-class v10, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 688
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "mediaWindowFlag"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    const-string v9, "mediaIndex"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    const-string v9, "mediaNameList"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 691
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v9, v3}, Lcn/com/magnity/magnitymx/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 695
    .end local v1    # "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_9
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 698
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isMgsRecording()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 699
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopMgsRecording()V

    goto/16 :goto_0

    .line 702
    :cond_7
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcn/com/magnity/magnitymx/MainActivity;->access$1002(Lcn/com/magnity/magnitymx/MainActivity;Z)Z

    .line 704
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v12, v10, v11

    const/16 v11, 0x126

    invoke-static {v9, v10, v11}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v7

    .line 706
    .restart local v7    # "result":Z
    if-eqz v7, :cond_0

    .line 710
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v5

    .line 711
    .restart local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getCaptureMode()I

    move-result v9

    if-nez v9, :cond_9

    .line 712
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v10

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_8

    const/4 v9, 0x1

    :goto_5
    invoke-interface {v10, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->capturePhoto(Z)V

    .line 713
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$300(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->invalidate()V

    .line 714
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcn/com/magnity/magnitymx/MainActivity;->access$1002(Lcn/com/magnity/magnitymx/MainActivity;Z)Z

    goto/16 :goto_0

    .line 712
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .line 716
    :cond_9
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isStitching()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 717
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcn/com/magnity/magnitymx/MainActivity;->access$1100(Lcn/com/magnity/magnitymx/MainActivity;Z)V

    goto/16 :goto_0

    .line 719
    :cond_a
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1200(Lcn/com/magnity/magnitymx/MainActivity;)Z

    goto/16 :goto_0

    .line 727
    .end local v5    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    .end local v7    # "result":Z
    :sswitch_a
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1300(Lcn/com/magnity/magnitymx/MainActivity;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 728
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 731
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPause()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 732
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->resume()V

    .line 733
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v9

    const v10, 0x7f070092

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 735
    :cond_b
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->pause()V

    .line 736
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v9

    const v10, 0x7f070095

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 739
    :cond_c
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v9

    if-nez v9, :cond_d

    .line 740
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    const/16 v10, 0x32

    invoke-interface {v9, v10}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->delayedStartPlay(I)V

    .line 741
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v9

    const v10, 0x7f070092

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1500(Lcn/com/magnity/magnitymx/MainActivity;)V

    goto/16 :goto_0

    .line 744
    :cond_d
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v9

    invoke-interface {v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->stopPlay()V

    .line 745
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1400(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v9

    const v10, 0x7f070095

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/MainActivity;->access$1600(Lcn/com/magnity/magnitymx/MainActivity;)V

    goto/16 :goto_0

    .line 751
    :sswitch_b
    iget-object v9, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const-class v10, Lcn/com/magnity/magnitymx/online/DeviceListActivity;

    const/4 v11, 0x0

    iget-object v12, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v12}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v12

    invoke-interface {v12}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->overlay(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 612
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08000f -> :sswitch_2
        0x7f080016 -> :sswitch_6
        0x7f080017 -> :sswitch_4
        0x7f080019 -> :sswitch_5
        0x7f0800da -> :sswitch_9
        0x7f0800db -> :sswitch_0
        0x7f0800dd -> :sswitch_b
        0x7f0800de -> :sswitch_a
        0x7f0800df -> :sswitch_7
        0x7f0800ea -> :sswitch_8
        0x7f080196 -> :sswitch_1
        0x7f080197 -> :sswitch_3
    .end sparse-switch
.end method
