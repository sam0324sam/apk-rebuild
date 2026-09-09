.class public Lcn/com/magnity/magnitycx/DialogOption;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;
    }
.end annotation


# static fields
.field private static final ARGUMENT_LIST:Ljava/lang/String; = "ARGUMENT_LIST"

.field private static final LIST_ITEMS:[I


# instance fields
.field private initSel_:I

.field private intf_:Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

.field private itemId_:I

.field private listNames_:[I

.field private tipId_:I

.field private titleId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/magnity/magnitycx/DialogOption;->LIST_ITEMS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e00a4
        0x7f0e00a5
        0x7f0e00a6
        0x7f0e00a7
        0x7f0e00a8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/DialogOption;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/DialogOption;

    .prologue
    .line 23
    iget v0, p0, Lcn/com/magnity/magnitycx/DialogOption;->itemId_:I

    return v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/DialogOption;)Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/DialogOption;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitycx/DialogOption;->intf_:Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    return-object v0
.end method

.method public static newInstance(II[IILcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;I)Lcn/com/magnity/magnitycx/DialogOption;
    .locals 4
    .param p0, "titleId"    # I
    .param p1, "itemId"    # I
    .param p2, "listNames"    # [I
    .param p3, "initSel"    # I
    .param p4, "intf"    # Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;
    .param p5, "tipId"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "bundlelist":Ljava/util/ArrayList;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v3, "ARGUMENT_LIST"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    new-instance v2, Lcn/com/magnity/magnitycx/DialogOption;

    invoke-direct {v2}, Lcn/com/magnity/magnitycx/DialogOption;-><init>()V

    .line 48
    .local v2, "dlg":Lcn/com/magnity/magnitycx/DialogOption;
    invoke-virtual {v2, v0}, Lcn/com/magnity/magnitycx/DialogOption;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v2
.end method

.method private setText_(Landroid/view/View;IIZ)Landroid/view/View;
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "itemId"    # I
    .param p3, "stringId"    # I
    .param p4, "isSelected"    # Z

    .prologue
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "item":Landroid/view/View;
    const v3, 0x7f0e00fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, "txtView":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 120
    const v3, 0x7f0e00fe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    .local v0, "imgView":Landroid/widget/ImageView;
    if-eqz p4, :cond_0

    .line 123
    const v3, 0x7f030011

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :goto_0
    return-object v1

    .line 125
    :cond_0
    const v3, 0x7f030012

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogOption;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 58
    const-string v4, "ARGUMENT_LIST"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 59
    .local v3, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 61
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcn/com/magnity/magnitycx/DialogOption;->titleId_:I

    .line 62
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcn/com/magnity/magnitycx/DialogOption;->itemId_:I

    .line 63
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcn/com/magnity/magnitycx/DialogOption;->listNames_:[I

    .line 64
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcn/com/magnity/magnitycx/DialogOption;->initSel_:I

    .line 65
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    iput-object v4, p0, Lcn/com/magnity/magnitycx/DialogOption;->intf_:Lcn/com/magnity/magnitycx/sdk/DelegateOptionSelected;

    .line 66
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcn/com/magnity/magnitycx/DialogOption;->tipId_:I

    .line 68
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogOption;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogOption;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 83
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040034

    invoke-virtual {v3, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 84
    .local v6, "rootView":Landroid/view/View;
    new-instance v5, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;

    invoke-direct {v5, p0, v10}, Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;-><init>(Lcn/com/magnity/magnitycx/DialogOption;Lcn/com/magnity/magnitycx/DialogOption$1;)V

    .line 86
    .local v5, "magClickListner":Lcn/com/magnity/magnitycx/DialogOption$MagClickListner;
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    const v8, 0x7f0e00a3

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, "v":Landroid/view/View;
    move-object v8, v7

    .line 89
    check-cast v8, Landroid/widget/TextView;

    iget v10, p0, Lcn/com/magnity/magnitycx/DialogOption;->titleId_:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v11, p0, Lcn/com/magnity/magnitycx/DialogOption;->listNames_:[I

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_1

    aget v2, v11, v10

    .line 93
    .local v2, "id":I
    sget-object v8, Lcn/com/magnity/magnitycx/DialogOption;->LIST_ITEMS:[I

    aget v13, v8, v1

    iget v8, p0, Lcn/com/magnity/magnitycx/DialogOption;->initSel_:I

    if-ne v8, v1, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-direct {p0, v6, v13, v2, v8}, Lcn/com/magnity/magnitycx/DialogOption;->setText_(Landroid/view/View;IIZ)Landroid/view/View;

    move-result-object v7

    .line 94
    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 91
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_0

    :cond_0
    move v8, v9

    .line 93
    goto :goto_1

    .line 98
    .end local v2    # "id":I
    :cond_1
    move v4, v1

    .local v4, "j":I
    :goto_2
    sget-object v8, Lcn/com/magnity/magnitycx/DialogOption;->LIST_ITEMS:[I

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 99
    sget-object v8, Lcn/com/magnity/magnitycx/DialogOption;->LIST_ITEMS:[I

    aget v8, v8, v4

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 100
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 103
    :cond_2
    iget v8, p0, Lcn/com/magnity/magnitycx/DialogOption;->tipId_:I

    if-eqz v8, :cond_3

    .line 104
    const v8, 0x7f0e00a9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 105
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    move-object v8, v7

    .line 106
    check-cast v8, Landroid/widget/TextView;

    iget v9, p0, Lcn/com/magnity/magnitycx/DialogOption;->tipId_:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 109
    :cond_3
    const v8, 0x7f0e00aa

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 110
    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogOption;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogOption;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
