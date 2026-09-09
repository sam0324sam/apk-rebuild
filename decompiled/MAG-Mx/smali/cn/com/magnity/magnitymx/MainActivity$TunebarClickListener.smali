.class Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;
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
    name = "TunebarClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/MainActivity$1;

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;-><init>(Lcn/com/magnity/magnitymx/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 25
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 870
    :goto_0
    return-void

    .line 763
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v20

    .line 764
    .local v20, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getEnlargeTemp()[I

    move-result-object v24

    .line 766
    .local v24, "temp":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->lock()V

    .line 767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getDeviceState()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    .line 768
    .local v23, "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    .line 770
    const/16 v22, -0xa

    .line 771
    .local v22, "min":I
    const/16 v21, 0x64

    .line 772
    .local v21, "max":I
    const/4 v1, 0x0

    aget v5, v24, v1

    .local v5, "low":I
    const/4 v1, 0x1

    aget v6, v24, v1

    .line 773
    .local v6, "high":I
    const/16 v1, -0xa

    if-lt v5, v1, :cond_0

    const/16 v1, 0x64

    if-gt v5, v1, :cond_0

    if-lt v5, v6, :cond_1

    .line 774
    :cond_0
    const/16 v5, -0xa

    .line 776
    :cond_1
    const/16 v1, -0xa

    if-lt v6, v1, :cond_2

    const/16 v1, 0x64

    if-gt v6, v1, :cond_2

    if-lt v5, v6, :cond_3

    .line 777
    :cond_2
    const/16 v6, 0x64

    .line 780
    :cond_3
    const v1, 0x7f0800e7

    .line 781
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isManualEnlargeOn()Z

    move-result v2

    const/16 v3, -0xa

    const/16 v4, 0x64

    const v7, 0x7f0e0109

    .line 780
    invoke-static/range {v1 .. v7}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->newInstance(IZIIIII)Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    move-result-object v16

    .line 783
    .local v16, "dialogFragmentSlider":Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 787
    .end local v5    # "low":I
    .end local v6    # "high":I
    .end local v16    # "dialogFragmentSlider":Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
    .end local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    .end local v21    # "max":I
    .end local v22    # "min":I
    .end local v23    # "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    .end local v24    # "temp":[I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v20

    .line 788
    .restart local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getIsoTemp()[I

    move-result-object v24

    .line 790
    .restart local v24    # "temp":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->lock()V

    .line 791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getDeviceState()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcn/com/magnity/magnitymx/StatisticInfoCompat;

    .line 792
    .restart local v23    # "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    .line 794
    const/16 v22, -0xa

    .line 795
    .restart local v22    # "min":I
    const/16 v21, 0x64

    .line 796
    .restart local v21    # "max":I
    const/4 v1, 0x0

    aget v5, v24, v1

    .restart local v5    # "low":I
    const/4 v1, 0x1

    aget v6, v24, v1

    .line 797
    .restart local v6    # "high":I
    const/16 v1, -0xa

    if-lt v5, v1, :cond_4

    const/16 v1, 0x64

    if-gt v5, v1, :cond_4

    if-lt v5, v6, :cond_5

    .line 798
    :cond_4
    const/16 v5, -0xa

    .line 800
    :cond_5
    const/16 v1, -0xa

    if-lt v6, v1, :cond_6

    const/16 v1, 0x64

    if-gt v6, v1, :cond_6

    if-lt v5, v6, :cond_7

    .line 801
    :cond_6
    const/16 v6, 0x64

    .line 804
    :cond_7
    const v1, 0x7f0800c7

    .line 805
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIsoOn()Z

    move-result v2

    const/16 v3, -0xa

    const/16 v4, 0x64

    const v7, 0x7f0e0102

    .line 804
    invoke-static/range {v1 .. v7}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->newInstance(IZIIIII)Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    move-result-object v16

    .line 807
    .restart local v16    # "dialogFragmentSlider":Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    .end local v5    # "low":I
    .end local v6    # "high":I
    .end local v16    # "dialogFragmentSlider":Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
    .end local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    .end local v21    # "max":I
    .end local v22    # "min":I
    .end local v23    # "statisticInfo":Lcn/com/magnity/magnitymx/StatisticInfoCompat;
    .end local v24    # "temp":[I
    :sswitch_2
    const v1, 0x7f080065

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    .line 812
    invoke-static {v2}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v2

    .line 811
    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->newInstance(IF)Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    move-result-object v14

    .line 813
    .local v14, "dialogFragmentEmissivity":Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 817
    .end local v14    # "dialogFragmentEmissivity":Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;
    :sswitch_3
    const v1, 0x7f080043

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    .line 818
    invoke-static {v2}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getPaletteIndex()I

    move-result v2

    .line 817
    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->newInstance(II)Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;

    move-result-object v15

    .line 819
    .local v15, "dialogFragmentPalette":Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    .end local v15    # "dialogFragmentPalette":Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v20

    .line 824
    .restart local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    const v7, 0x7f080183

    const v8, 0x7f0e00f3

    .line 825
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isAlarmOn()Z

    move-result v9

    const v10, 0x7f0e00f4

    .line 826
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getAlarmTemp()I

    move-result v11

    const/16 v12, -0x14

    const/16 v13, 0x1f4

    .line 824
    invoke-static/range {v7 .. v13}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->newInstance(IIZIIII)Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    move-result-object v19

    .line 828
    .local v19, "dialogFragmentValue":Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    .end local v19    # "dialogFragmentValue":Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;
    .end local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v20

    .line 833
    .restart local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    const v1, 0x7f080180

    .line 834
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskEnabled()Z

    move-result v3

    .line 835
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskGotoNextAuto()Z

    move-result v4

    .line 833
    invoke-static {v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->newInstance(ILjava/lang/String;ZZ)Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    move-result-object v17

    .line 836
    .local v17, "dialogFragmentTaskManager":Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    .end local v17    # "dialogFragmentTaskManager":Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;
    .end local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v20

    .line 841
    .restart local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    const v7, 0x7f08002a

    const v8, 0x7f0e0100

    .line 842
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIrRefOn()Z

    move-result v9

    const v10, 0x7f0e0101

    .line 843
    invoke-virtual/range {v20 .. v20}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getRefAlpha()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v11, v1

    const/4 v12, 0x0

    const/16 v13, 0x64

    .line 841
    invoke-static/range {v7 .. v13}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->newInstance(IIZIIII)Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    move-result-object v19

    .line 845
    .restart local v19    # "dialogFragmentValue":Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 849
    .end local v19    # "dialogFragmentValue":Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;
    .end local v20    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const-class v4, Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 853
    :sswitch_8
    const v1, 0x7f080040

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    .line 854
    invoke-static {v2}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getStreamType()I

    move-result v2

    .line 853
    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->newInstance(II)Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

    move-result-object v18

    .line 855
    .local v18, "dialogFragmentTitleAboveList":Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

    .line 856
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 855
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    .end local v18    # "dialogFragmentTitleAboveList":Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$1700(Lcn/com/magnity/magnitymx/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$1702(Lcn/com/magnity/magnitymx/MainActivity;Z)Z

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$1700(Lcn/com/magnity/magnitymx/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$1800(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$1900(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 860
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 865
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$1800(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$1900(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/MainActivity$TunebarClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 761
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080027 -> :sswitch_7
        0x7f08002a -> :sswitch_6
        0x7f080040 -> :sswitch_8
        0x7f080043 -> :sswitch_3
        0x7f080065 -> :sswitch_2
        0x7f0800c7 -> :sswitch_1
        0x7f0800e7 -> :sswitch_0
        0x7f080180 -> :sswitch_5
        0x7f080183 -> :sswitch_4
        0x7f0801a3 -> :sswitch_9
    .end sparse-switch
.end method
