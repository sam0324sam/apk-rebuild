.class public abstract Lcn/com/magnity/magnitymx/base/BaseActivity;
.super Lcn/com/magnity/magnitymx/base/ElementActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/ElementActivity;-><init>()V

    return-void
.end method

.method private disableRotationAnimation()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 39
    .local v1, "localWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 40
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected abstract getActivityLayoutId()I
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method public obtainView(I)Landroid/view/View;
    .locals 1
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
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
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/ElementActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->supportRequestWindowFeature(I)Z

    .line 15
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->requestWindowFeature(I)Z

    .line 16
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->setBeforeLayout()V

    .line 17
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->getActivityLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/BaseActivity;->disableRotationAnimation()V

    .line 19
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/base/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected abstract setBeforeLayout()V
.end method
