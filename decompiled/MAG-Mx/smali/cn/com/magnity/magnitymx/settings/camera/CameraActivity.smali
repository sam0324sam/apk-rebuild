.class public Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraActivity"


# instance fields
.field private mCurrentRotate:I

.field private mPresenter:Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRotate0:Landroid/widget/RadioButton;

.field private mRotate180:Landroid/widget/RadioButton;

.field private mRotate270:Landroid/widget/RadioButton;

.field private mRotate90:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    .prologue
    .line 17
    iget v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mCurrentRotate:I

    return v0
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mCurrentRotate:I

    return p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;)Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mPresenter:Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->finish()V

    .line 97
    return-void
.end method

.method public initData(I)V
    .locals 2
    .param p1, "rotate"    # I

    .prologue
    .line 73
    rem-int/lit8 v1, p1, 0x4

    iput v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mCurrentRotate:I

    .line 74
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate0:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 75
    .local v0, "checkId":I
    packed-switch p1, :pswitch_data_0

    .line 91
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 92
    return-void

    .line 77
    :pswitch_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate0:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate90:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate180:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 84
    goto :goto_0

    .line 86
    :pswitch_3
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate270:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 87
    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->setContentView(I)V

    .line 32
    const v1, 0x7f080130

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 33
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate0:Landroid/widget/RadioButton;

    .line 34
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate90:Landroid/widget/RadioButton;

    .line 35
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate180:Landroid/widget/RadioButton;

    .line 36
    const v1, 0x7f080032

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRotate270:Landroid/widget/RadioButton;

    .line 37
    iget-object v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity$1;-><init>(Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 61
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 64
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    :cond_0
    const v1, 0x7f0e00f5

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->setTitle(I)V

    .line 68
    new-instance v1, Lcn/com/magnity/magnitymx/settings/camera/CameraPresenter;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/settings/camera/CameraPresenter;-><init>(Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBaseView;)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 112
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 127
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 121
    :sswitch_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mPresenter:Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;

    iget v1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mCurrentRotate:I

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;->save(I)V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08008f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;

    .prologue
    .line 101
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->mPresenter:Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;

    .line 102
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/settings/camera/CameraActivity;->setPresenter(Lcn/com/magnity/magnitymx/settings/camera/ICameraContract$ICameraBasePresenter;)V

    return-void
.end method
