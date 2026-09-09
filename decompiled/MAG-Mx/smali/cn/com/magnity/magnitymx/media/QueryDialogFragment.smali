.class public Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "QueryDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;,
        Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;
    }
.end annotation


# static fields
.field private static final BUTTONTEXTIDS:Ljava/lang/String; = "btnTextIds"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TEXTCOLORIDS:Ljava/lang/String; = "textcolorIds"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private btnTextColorIds_:[I

.field private btnTextIds_:[I

.field private id_:I

.field private magOnClickListener_:Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;

.field private title_:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/media/QueryDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    .prologue
    .line 22
    iget v0, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->id_:I

    return v0
.end method

.method public static newInstance(II[I[I)Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "titleId"    # I
    .param p2, "btnTextIds"    # [I
    .param p3, "textColorIds"    # [I

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "btnTextIds"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 42
    const-string v2, "textcolorIds"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 43
    new-instance v1, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;-><init>()V

    .line 44
    .local v1, "dlg":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;[I[I)Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "btnTextIds"    # [I
    .param p3, "textColorIds"    # [I

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "btnTextIds"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 54
    const-string v2, "textcolorIds"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 55
    new-instance v1, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;-><init>()V

    .line 56
    .local v1, "dlg":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
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
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->id_:I

    .line 67
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->title_:Ljava/lang/Object;

    .line 68
    const-string v1, "btnTextIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->btnTextIds_:[I

    .line 69
    const-string v1, "textcolorIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->btnTextColorIds_:[I

    .line 71
    :cond_0
    new-instance v1, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/media/QueryDialogFragment;Lcn/com/magnity/magnitymx/media/QueryDialogFragment$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->magOnClickListener_:Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;

    .line 72
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 77
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 79
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0a0040

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f080081

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, "btn1":Landroid/widget/Button;
    const v6, 0x7f080082

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 83
    .local v1, "btn2":Landroid/widget/Button;
    const v6, 0x7f0800ba

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, "txtView":Landroid/widget/TextView;
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->title_:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 85
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->title_:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->btnTextIds_:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 92
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->btnTextIds_:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 93
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->btnTextColorIds_:[I

    if-eqz v6, :cond_0

    .line 94
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->btnTextColorIds_:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 95
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->btnTextColorIds_:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_1
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->magOnClickListener_:Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->magOnClickListener_:Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 87
    :cond_1
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->title_:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v6

    goto :goto_1
.end method
