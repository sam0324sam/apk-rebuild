.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentRoiSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;,
        Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$IRoiSelectionChanged;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->mRunnable:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 47
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0a0041

    .line 48
    invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "container":Landroid/view/View;
    const v8, 0x7f0800ca

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 50
    .local v5, "roiLineImageView":Landroid/widget/ImageView;
    const v8, 0x7f0800cb

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 51
    .local v6, "roiPointImageView":Landroid/widget/ImageView;
    const v8, 0x7f0800cc

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 52
    .local v7, "roiRectImageView":Landroid/widget/ImageView;
    new-instance v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;

    invoke-direct {v4, p0, v11}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$1;)V

    .line 53
    .local v4, "onClickListener":Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v3

    .line 57
    .local v3, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getStreamType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 58
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 66
    .local v2, "dlg":Landroid/app/Dialog;
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 92
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 74
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 77
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 78
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 80
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 83
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 84
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 85
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 86
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    return-void
.end method
