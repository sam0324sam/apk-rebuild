.class public Lcn/com/magnity/magnitycx/FragmentSupport;
.super Landroid/support/v4/app/Fragment;
.source "FragmentSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;
    }
.end annotation


# instance fields
.field private settingClickListener_:Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentSupport;Lcn/com/magnity/magnitycx/FragmentSupport$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSupport;->settingClickListener_:Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;

    .line 20
    return-void
.end method

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
    const v7, 0x7f0e00f3

    const v6, 0x7f0e00a9

    .line 25
    const v4, 0x7f04003e

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "rootView":Landroid/view/View;
    const v4, 0x7f0e00f1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 28
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentSupport;->settingClickListener_:Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 30
    .local v0, "icon":Landroid/widget/ImageView;
    const v4, 0x7f03000e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    .local v2, "text":Landroid/widget/TextView;
    const v4, 0x7f08002b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const v4, 0x7f0e00f2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 35
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentSupport;->settingClickListener_:Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "icon":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .restart local v0    # "icon":Landroid/widget/ImageView;
    const/high16 v4, 0x7f030000

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 39
    .restart local v2    # "text":Landroid/widget/TextView;
    const v4, 0x7f080025

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 41
    return-object v1
.end method
