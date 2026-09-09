.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentRoiAlarmTempAddEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final ARGS_ROI_INDEX:Ljava/lang/String; = "index"

.field private static final ARGS_ROI_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "RoiAlarmTempAddEdit"


# instance fields
.field private mHigherTempEditText:Landroid/widget/EditText;

.field private mLowerTempEditText:Landroid/widget/EditText;

.field private mRoiIndex:I

.field private mRoiName:Ljava/lang/String;

.field private mRoiNameEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiIndex:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiName:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;
    .locals 3
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;-><init>()V

    .line 38
    .local v1, "dialog":Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->dismiss()V

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->dismiss()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f080020
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 54
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 55
    .local v2, "args":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 56
    const-string v5, "index"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiIndex:I

    .line 57
    const-string v5, "name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiName:Ljava/lang/String;

    .line 59
    :cond_0
    const v5, 0x7f0a004e

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 60
    .local v4, "rootView":Landroid/view/View;
    const v5, 0x7f08012f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiNameEditText:Landroid/widget/EditText;

    .line 61
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiNameEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget-boolean v5, Lcn/com/magnity/magnitymx/MagApp;->mIsRoiNameEditable:Z

    if-nez v5, :cond_1

    .line 63
    const v5, 0x7f08001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 64
    .local v3, "roiNameLayout":Landroid/widget/LinearLayout;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    .end local v3    # "roiNameLayout":Landroid/widget/LinearLayout;
    :cond_1
    const v5, 0x7f08001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mLowerTempEditText:Landroid/widget/EditText;

    .line 67
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mLowerTempEditText:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 70
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mLowerTempEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mLowerTempEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 72
    const v5, 0x7f08001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mHigherTempEditText:Landroid/widget/EditText;

    .line 73
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mHigherTempEditText:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mHigherTempEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mHigherTempEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 77
    const v5, 0x7f080020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, "alarmCancelTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v5, 0x7f080021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "alarmOkTextView":Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-object v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 141
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mLowerTempEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "lowerText":Ljava/lang/String;
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mHigherTempEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "higherText":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 145
    const-wide/16 v4, 0x0

    .line 150
    .local v4, "lowerTempDouble":D
    :goto_0
    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 151
    const-wide/16 v0, 0x0

    .line 155
    .local v0, "higherTempDouble":D
    :goto_1
    mul-double v10, v4, v12

    double-to-int v6, v10

    .line 156
    .local v6, "lowerTempInt":I
    mul-double v10, v0, v12

    double-to-int v2, v10

    .line 157
    .local v2, "higherTempInt":I
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiNameEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "roiName":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 159
    iget-object v9, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiName:Ljava/lang/String;

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v8

    .line 162
    .local v8, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v10, v8, Lcn/com/magnity/magnitymx/dialog/IRoiAlarmFeedback;

    if-eqz v10, :cond_1

    .line 163
    check-cast v8, Lcn/com/magnity/magnitymx/dialog/IRoiAlarmFeedback;

    .end local v8    # "parentFragment":Landroid/support/v4/app/Fragment;
    iget v10, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mRoiIndex:I

    invoke-interface {v8, v10, v9, v6, v2}, Lcn/com/magnity/magnitymx/dialog/IRoiAlarmFeedback;->onAlarmTempAdded(ILjava/lang/String;II)V

    .line 165
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 166
    return-void

    .line 147
    .end local v0    # "higherTempDouble":D
    .end local v2    # "higherTempInt":I
    .end local v4    # "lowerTempDouble":D
    .end local v6    # "lowerTempInt":I
    .end local v9    # "roiName":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .restart local v4    # "lowerTempDouble":D
    goto :goto_0

    .line 153
    :cond_3
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .restart local v0    # "higherTempDouble":D
    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 124
    const-string v0, "RoiAlarmTempAddEdit"

    const-string v1, "onFocusChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mLowerTempEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :pswitch_1
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->mHigherTempEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x7f08001d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 86
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 88
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 90
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 92
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 93
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 94
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 96
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 97
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiAlarmTempAddEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 98
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 99
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    .end local v0    # "alphaValue":Landroid/util/TypedValue;
    .end local v1    # "dimAmount":Landroid/util/TypedValue;
    .end local v3    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
