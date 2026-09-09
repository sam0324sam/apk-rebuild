.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentStopPlayTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 35
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v2, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-nez v2, :cond_0

    .line 45
    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    return-void

    .line 38
    .restart local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_0
    const/4 v1, 0x0

    .line 39
    .local v1, "isResumePlay":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080118

    if-ne v2, v3, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 42
    :cond_1
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    const v2, 0x7f0a0043

    const-string v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 42
    invoke-interface {v0, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentStopPlayTips;->dismiss()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    .line 24
    const v3, 0x7f0a0043

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 25
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x7f080117

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    .local v0, "cancelText":Landroid/widget/TextView;
    const v3, 0x7f080118

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, "resumeText":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-object v2
.end method
