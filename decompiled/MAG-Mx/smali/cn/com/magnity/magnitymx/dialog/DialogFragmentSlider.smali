.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentSlider.java"


# static fields
.field private static final ARGS_HIGH:Ljava/lang/String; = "high"

.field private static final ARGS_ID:Ljava/lang/String; = "id"

.field private static final ARGS_LOW:Ljava/lang/String; = "low"

.field private static final ARGS_MAX:Ljava/lang/String; = "max"

.field private static final ARGS_MIN:Ljava/lang/String; = "min"

.field private static final ARGS_ON:Ljava/lang/String; = "on"

.field private static final ARGS_TITLE:Ljava/lang/String; = "title"

.field public static final MAX_VALUE:I = 0x96

.field public static final MIN_VALUE:I = -0x14


# instance fields
.field rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->notifyDataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static newInstance(IZIIIII)Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
    .locals 3
    .param p0, "id"    # I
    .param p1, "on"    # Z
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "low"    # I
    .param p5, "high"    # I
    .param p6, "titleId"    # I

    .prologue
    .line 38
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;-><init>()V

    .line 39
    .local v1, "dialogFragmentSlider":Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "on"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    const-string v2, "min"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v2, "max"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v2, "low"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "high"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v2, "title"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method

.method private notifyDataChanged(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "minValue"    # Ljava/lang/Object;
    .param p3, "maxValue"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 55
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    const-string v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-interface {v0, p1, v1, v2}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
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
    .line 63
    const v10, 0x7f0a0042

    invoke-virtual {p1, v10, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 65
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "id":I
    const-string v10, "on"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 71
    .local v6, "on":Z
    const-string v10, "min"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 72
    .local v5, "min":I
    const-string v10, "max"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 73
    .local v4, "max":I
    const-string v10, "low"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, "low":I
    const-string v10, "high"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "high":I
    const-string v10, "title"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 77
    .local v8, "titleId":I
    const v10, 0x7f080160

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(I)V

    .line 78
    const v10, 0x7f08015e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v10, 0x7f08011f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    iput-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    .line 82
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setRangeValues(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 83
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 84
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMinValue(Ljava/lang/Number;)V

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v2, v10, v11}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->notifyDataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setNotifyWhileDragging(Z)V

    .line 87
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    new-instance v11, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$1;

    invoke-direct {v11, p0, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;I)V

    invoke-virtual {v10, v11}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 95
    const v10, 0x7f08015f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .line 96
    .local v7, "slideSwitch":Lcn/com/magnity/magnitymx/util/SlideSwitch;
    invoke-virtual {v7, v6}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setState(Z)V

    .line 97
    new-instance v10, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;

    invoke-direct {v10, p0, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;I)V

    invoke-virtual {v7, v10}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setSlideListener(Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;)V

    .line 122
    return-object v9
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 130
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 131
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 138
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 140
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 141
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 143
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 144
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 145
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 146
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 147
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 148
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 149
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    .end local v0    # "alphaValue":Landroid/util/TypedValue;
    .end local v1    # "dimAmount":Landroid/util/TypedValue;
    .end local v3    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
