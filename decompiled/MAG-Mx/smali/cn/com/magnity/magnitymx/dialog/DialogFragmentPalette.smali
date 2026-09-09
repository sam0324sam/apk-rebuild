.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentPalette.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARGS_ID:Ljava/lang/String; = "id"

.field private static final ARGS_INDEX:Ljava/lang/String; = "index"

.field public static final PALETTE_NAMES_RESID:[I


# instance fields
.field private mId:I

.field private mIndex:I

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    return-void

    :array_0
    .array-data 4
        0x7f0e00c3
        0x7f0e00ba
        0x7f0e00be
        0x7f0e00c0
        0x7f0e00bb
        0x7f0e00b9
        0x7f0e00c4
        0x7f0e00bd
        0x7f0e00bf
        0x7f0e00c2
        0x7f0e00bc
        0x7f0e00c1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mapIndex2Id_:Ljava/util/HashMap;

    .line 53
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette$2;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mapId2Index_:Ljava/util/HashMap;

    return-void
.end method

.method private fillPalette(Landroid/view/View;III)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "imgId"    # I
    .param p4, "tvId"    # I

    .prologue
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "v":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    const v3, 0x7f0800a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 146
    .local v2, "viewer":Landroid/widget/ImageButton;
    invoke-virtual {v2, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 147
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v3, 0x7f0800aa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 150
    return-void
.end method

.method private initPalette(Landroid/view/View;I)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "i":I
    const v2, 0x7f08010f

    const v3, 0x7f0c001f

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v4, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 127
    const v2, 0x7f080106

    const v3, 0x7f0c0016

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v4, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 128
    const v2, 0x7f08010a

    const v3, 0x7f0c001a

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget v4, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 129
    const v2, 0x7f08010c

    const v3, 0x7f0c001c

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v4, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 130
    const v2, 0x7f080107

    const v3, 0x7f0c0017

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget v4, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 131
    const v2, 0x7f080105

    const v3, 0x7f0c0015

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v4, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 132
    const v2, 0x7f080110

    const v3, 0x7f0c0020

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget v4, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 133
    const v2, 0x7f080109

    const v3, 0x7f0c0019

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v4, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 134
    const v2, 0x7f08010b

    const v3, 0x7f0c001b

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget v4, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 135
    const v2, 0x7f08010e

    const v3, 0x7f0c001e

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v4, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 136
    const v2, 0x7f080108

    const v3, 0x7f0c0018

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget v4, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 137
    const v2, 0x7f08010d

    const v3, 0x7f0c001d

    sget-object v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->PALETTE_NAMES_RESID:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v4, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->fillPalette(Landroid/view/View;III)V

    .line 139
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->updateSelectionUi(II)V

    .line 140
    return-void
.end method

.method public static newInstance(II)Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;
    .locals 3
    .param p0, "id"    # I
    .param p1, "index"    # I

    .prologue
    .line 77
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;-><init>()V

    .line 78
    .local v1, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0800a9

    if-eq v3, v4, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 172
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 176
    iget-object v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mapId2Index_:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 178
    .local v1, "index":I
    iget v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mIndex:I

    invoke-virtual {p0, v3, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->updateSelectionUi(II)V

    .line 180
    iput v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mIndex:I

    .line 182
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 183
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v3, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v3, :cond_0

    .line 184
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mId:I

    const-string v4, ""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v3, v4, v5}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 88
    const v1, 0x7f0a003f

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->rootView_:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mIndex:I

    .line 92
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mId:I

    .line 93
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->rootView_:Landroid/view/View;

    iget v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mIndex:I

    invoke-direct {p0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->initPalette(Landroid/view/View;I)V

    .line 95
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 98
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05002b

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->rootView_:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 122
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 192
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 193
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 105
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 108
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 109
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 110
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 111
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 112
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 114
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 115
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    return-void
.end method

.method updateSelectionUi(II)V
    .locals 5
    .param p1, "formerSelected"    # I
    .param p2, "currentSelected"    # I

    .prologue
    const v4, 0x7f0800aa

    .line 155
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->rootView_:Landroid/view/View;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mapIndex2Id_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050037

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->rootView_:Landroid/view/View;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentPalette;->mapIndex2Id_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    return-void
.end method
