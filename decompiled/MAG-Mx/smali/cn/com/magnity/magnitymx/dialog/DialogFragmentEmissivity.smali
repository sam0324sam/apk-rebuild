.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentEmissivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final ARGS_ID:Ljava/lang/String; = "id"

.field private static final ARGS_VAL:Ljava/lang/String; = "val"


# instance fields
.field private mTableNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTableValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->mTableNameList:Ljava/util/List;

    .line 47
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$2;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->mTableValueList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->mTableNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->mTableValueList:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(IF)Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;
    .locals 3
    .param p0, "id"    # I
    .param p1, "val"    # F

    .prologue
    .line 63
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;-><init>()V

    .line 64
    .local v1, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "val"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 67
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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
    const/4 v6, 0x1

    .line 74
    const v5, 0x7f0a003c

    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 81
    .local v1, "args":Landroid/os/Bundle;
    const v5, 0x7f080066

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 83
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)V

    .line 123
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    new-instance v5, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;

    invoke-direct {v5, p0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    const v5, 0x7f08011f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    .line 148
    .local v3, "rangeSeekBar":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;
    const-string v5, "val"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 149
    new-instance v5, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$5;

    invoke-direct {v5, p0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$5;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;Landroid/os/Bundle;)V

    invoke-virtual {v3, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 160
    return-object v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 167
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 168
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 171
    :cond_0
    return-void
.end method
