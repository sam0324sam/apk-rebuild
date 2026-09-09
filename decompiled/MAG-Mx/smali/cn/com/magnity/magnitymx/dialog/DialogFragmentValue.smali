.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentValue.java"


# static fields
.field private static final ARGS_ID:Ljava/lang/String; = "id"

.field private static final ARGS_MAX:Ljava/lang/String; = "max"

.field private static final ARGS_MIN:Ljava/lang/String; = "min"

.field private static final ARGS_NAME:Ljava/lang/String; = "name"

.field private static final ARGS_ON:Ljava/lang/String; = "on"

.field private static final ARGS_TITLE:Ljava/lang/String; = "title"

.field private static final ARGS_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IIZIIII)Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;
    .locals 3
    .param p0, "id"    # I
    .param p1, "titleId"    # I
    .param p2, "on"    # Z
    .param p3, "nameId"    # I
    .param p4, "value"    # I
    .param p5, "min"    # I
    .param p6, "max"    # I

    .prologue
    .line 34
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;-><init>()V

    .line 35
    .local v1, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string v2, "on"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "value"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "min"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v2, "max"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 50
    const v6, 0x7f0a0047

    invoke-virtual {p1, v6, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const v6, 0x7f080191

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 57
    .local v5, "title":Landroid/widget/TextView;
    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const v6, 0x7f0800c8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, "caption":Landroid/widget/TextView;
    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 62
    const v6, 0x7f080102

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .line 63
    .local v4, "slideSwitch":Lcn/com/magnity/magnitymx/util/SlideSwitch;
    const-string v6, "on"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setState(Z)V

    .line 64
    new-instance v6, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$1;

    invoke-direct {v6, p0, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;Landroid/os/Bundle;)V

    invoke-virtual {v4, v6}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setSlideListener(Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;)V

    .line 85
    const v6, 0x7f08011f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    .line 86
    .local v2, "rangeSeekBar":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;
    const-string v6, "min"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "max"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setRangeValues(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 87
    const-string v6, "value"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 88
    new-instance v6, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$2;

    invoke-direct {v6, p0, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$2;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;Landroid/os/Bundle;)V

    invoke-virtual {v2, v6}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 98
    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 105
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 106
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 113
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 116
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 117
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 119
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 120
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 121
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 123
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 124
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 125
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    .end local v0    # "alphaValue":Landroid/util/TypedValue;
    .end local v1    # "dimAmount":Landroid/util/TypedValue;
    .end local v3    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
