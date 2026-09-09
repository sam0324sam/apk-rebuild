.class Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagOnLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/MainActivity$1;

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;-><init>(Lcn/com/magnity/magnitymx/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 604
    :cond_0
    :goto_0
    return v5

    .line 581
    :sswitch_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 582
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 583
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isInVisibleAdjustingMode()Z

    move-result v0

    .line 584
    .local v0, "isVisibleInAdjustingMode":Z
    if-nez v0, :cond_1

    .line 585
    invoke-virtual {v1, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setVisibleAdjustingMode(Z)V

    .line 586
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const v3, 0x7f0e0158

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {v1, v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setVisibleAdjustingMode(Z)V

    .line 589
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const v3, 0x7f0e0038

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 596
    .end local v0    # "isVisibleInAdjustingMode":Z
    .end local v1    # "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    :sswitch_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getStreamType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 597
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    const v3, 0x7f0e00da

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitymx/MainActivity$MagOnLongClickListener;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/MainActivity;->access$500(Lcn/com/magnity/magnitymx/MainActivity;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->startMgsRecording()V

    goto :goto_0

    .line 579
    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_0
        0x7f0800da -> :sswitch_1
    .end sparse-switch
.end method
