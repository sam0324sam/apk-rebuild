.class public Lcn/com/magnity/magnitycx/DialogFragmentMode;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;
    }
.end annotation


# instance fields
.field private btnGoBack_:Landroid/widget/ImageButton;

.field private btnModeIr_:Landroid/widget/ImageButton;

.field private btnModePip_:Landroid/widget/ImageButton;

.field private modeClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setDialogProperty()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMode;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMode;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMode;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 70
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 71
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 75
    const v2, 0x7f0a0129

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x0

    const v1, 0x103000a

    invoke-virtual {p0, v0, v1}, Lcn/com/magnity/magnitycx/DialogFragmentMode;->setStyle(II)V

    .line 25
    new-instance v0, Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;-><init>(Lcn/com/magnity/magnitycx/DialogFragmentMode;Lcn/com/magnity/magnitycx/DialogFragmentMode$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->modeClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    const v1, 0x7f040033

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0e007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->btnGoBack_:Landroid/widget/ImageButton;

    .line 34
    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->btnModeIr_:Landroid/widget/ImageButton;

    .line 35
    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->btnModePip_:Landroid/widget/ImageButton;

    .line 37
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->btnGoBack_:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->modeClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->btnModeIr_:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->modeClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->btnModePip_:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode;->modeClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMode;->setDialogProperty()V

    .line 42
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 83
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMode;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 84
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 85
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    return-void
.end method
