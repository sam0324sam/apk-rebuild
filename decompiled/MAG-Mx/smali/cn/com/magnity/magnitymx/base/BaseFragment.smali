.class public abstract Lcn/com/magnity/magnitymx/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mActivity:Lcn/com/magnity/magnitymx/base/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getFragmentLayoutId()I
.end method

.method protected getHoldingActivity()Lcn/com/magnity/magnitymx/base/BaseActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/base/BaseFragment;->mActivity:Lcn/com/magnity/magnitymx/base/BaseActivity;

    return-object v0
.end method

.method protected abstract initView(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public obtainView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 17
    check-cast p1, Lcn/com/magnity/magnitymx/base/BaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcn/com/magnity/magnitymx/base/BaseFragment;->mActivity:Lcn/com/magnity/magnitymx/base/BaseActivity;

    .line 18
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 23
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;->setBeforeLayout()V

    .line 24
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;->getFragmentLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p3}, Lcn/com/magnity/magnitymx/base/BaseFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    return-object v0
.end method

.method protected abstract setBeforeLayout()V
.end method
