.class public Lcn/com/magnity/magnitycx/MediaActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MediaActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;
.implements Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/MediaActivity$DelegateBackPressed;
    }
.end annotation


# instance fields
.field private fragment_:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private cancelDefaultAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x10100ae

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 52
    .local v2, "activityStyle":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 53
    .local v3, "windowAnimationStyleResId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 56
    .local v0, "activityCloseEnterAnimation":I
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 57
    .local v1, "activityCloseExitAnimation":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {p0, v0, v1}, Lcn/com/magnity/magnitycx/MediaActivity;->overridePendingTransition(II)V

    .line 59
    return-void

    .line 54
    nop

    :array_0
    .array-data 4
        0x10100ba
        0x10100bb
    .end array-data
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcn/com/magnity/magnitycx/MediaActivity$DelegateBackPressed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcn/com/magnity/magnitycx/MediaActivity$DelegateBackPressed;

    .line 93
    invoke-interface {v0}, Lcn/com/magnity/magnitycx/MediaActivity$DelegateBackPressed;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 96
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0e0085

    const/4 v3, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f04001f

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitycx/MediaActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->cancelDefaultAnimation()V

    .line 31
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 32
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 36
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    .line 37
    iget-object v2, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-direct {v2}, Lcn/com/magnity/magnitycx/FragmentMedia;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    .line 39
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 41
    :cond_0
    return-void
.end method

.method public onModeChanged(III)V
    .locals 4
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    if-nez p2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/MediaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-ne p2, v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 86
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/MediaActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->onBackPressed()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->cancelDefaultAnimation()V

    .line 46
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5a92\u4f53\u9875\u9762"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 48
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 64
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5a92\u4f53\u9875\u9762"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onQueryResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaActivity;->fragment_:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;->onQueryResult(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public onSelChanged(II)V
    .locals 4
    .param p1, "newSelCount"    # I
    .param p2, "count"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/MediaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
