.class public Lcn/com/magnity/magnitycx/DialogFragmentPalette;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentPalette.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mapId2Index_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mapIndex2Id_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rootView_:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 23
    new-instance v0, Lcn/com/magnity/magnitycx/DialogFragmentPalette$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette$1;-><init>(Lcn/com/magnity/magnitycx/DialogFragmentPalette;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->mapIndex2Id_:Ljava/util/HashMap;

    .line 40
    new-instance v0, Lcn/com/magnity/magnitycx/DialogFragmentPalette$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette$2;-><init>(Lcn/com/magnity/magnitycx/DialogFragmentPalette;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->mapId2Index_:Ljava/util/HashMap;

    return-void
.end method

.method private fillPalette(Landroid/view/View;III)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "imgId"    # I
    .param p4, "tvId"    # I

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "v":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    const v3, 0x7f0e00fb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 113
    .local v2, "viewer":Landroid/widget/ImageButton;
    invoke-virtual {v2, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 114
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f0e00fc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    return-void
.end method

.method private initPalette(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 93
    const v0, 0x7f0e00ab

    const v1, 0x7f03002f

    const v2, 0x7f08004d

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 94
    const v0, 0x7f0e00ac

    const v1, 0x7f030026

    const v2, 0x7f080044

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 95
    const v0, 0x7f0e00ad

    const v1, 0x7f03002a

    const v2, 0x7f080048

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 96
    const v0, 0x7f0e00ae

    const v1, 0x7f03002c

    const v2, 0x7f08004a

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 97
    const v0, 0x7f0e00af

    const v1, 0x7f030027

    const v2, 0x7f080045

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 98
    const v0, 0x7f0e00b0

    const v1, 0x7f030025

    const v2, 0x7f080043

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 99
    const v0, 0x7f0e00b1

    const v1, 0x7f030030

    const v2, 0x7f08004e

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 100
    const v0, 0x7f0e00b2

    const v1, 0x7f030029

    const v2, 0x7f080047

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 101
    const v0, 0x7f0e00b3

    const v1, 0x7f03002b

    const v2, 0x7f080049

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 102
    const v0, 0x7f0e00b4

    const v1, 0x7f03002e

    const v2, 0x7f08004b

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 103
    const v0, 0x7f0e00b5

    const v1, 0x7f030028

    const v2, 0x7f080046

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 104
    const v0, 0x7f0e00b6

    const v1, 0x7f03002d

    const v2, 0x7f08004c

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 106
    const/4 v0, 0x0

    const-string v1, "paletteIndex"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->updateSelectionUi(II)V

    .line 107
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0e00fb

    if-eq v2, v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 136
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 140
    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->mapId2Index_:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .local v0, "index":I
    const-string v2, "paletteIndex"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->updateSelectionUi(II)V

    .line 143
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 144
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorPalette(I)V

    .line 145
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 146
    const-string v2, "paletteIndex"

    invoke-static {v2, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 65
    const v0, 0x7f040035

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->rootView_:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->rootView_:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->initPalette(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 70
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->rootView_:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 90
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 80
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 81
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 82
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 83
    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    return-void
.end method

.method updateSelectionUi(II)V
    .locals 4
    .param p1, "formerSelected"    # I
    .param p2, "currentSelected"    # I

    .prologue
    .line 122
    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->rootView_:Landroid/view/View;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->mapIndex2Id_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->rootView_:Landroid/view/View;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentPalette;->mapIndex2Id_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    return-void
.end method
