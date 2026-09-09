.class public Lcn/com/magnity/magnitycx/QueryDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "QueryDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;,
        Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;
    }
.end annotation


# static fields
.field private static final RESID:Ljava/lang/String; = "resid"


# instance fields
.field private magOnClickListener_:Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;

.field private resId_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcn/com/magnity/magnitycx/QueryDialogFragment;
    .locals 3
    .param p0, "resId"    # I

    .prologue
    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "resid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    new-instance v1, Lcn/com/magnity/magnitycx/QueryDialogFragment;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/QueryDialogFragment;-><init>()V

    .line 26
    .local v1, "dlg":Lcn/com/magnity/magnitycx/QueryDialogFragment;
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "resid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment;->resId_:I

    .line 37
    :cond_0
    new-instance v1, Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;-><init>(Lcn/com/magnity/magnitycx/QueryDialogFragment;Lcn/com/magnity/magnitycx/QueryDialogFragment$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment;->magOnClickListener_:Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;

    .line 38
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 45
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment;->resId_:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 47
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e00aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    .local v0, "btnCancel":Landroid/widget/Button;
    const v5, 0x7f0e00a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 50
    .local v1, "btnOk":Landroid/widget/Button;
    iget-object v5, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment;->magOnClickListener_:Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v5, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment;->magOnClickListener_:Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
