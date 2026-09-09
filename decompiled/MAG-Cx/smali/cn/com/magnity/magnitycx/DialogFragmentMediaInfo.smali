.class public Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentMediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo$MagOnClickListener;
    }
.end annotation


# static fields
.field private static final MEDIAFILEINFO:Ljava/lang/String; = "mediaFileInfo"


# instance fields
.field private magOnClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo$MagOnClickListener;

.field private mediaInfos_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private fillCatigory(Landroid/view/View;IILjava/lang/String;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "stringId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "item":Landroid/view/View;
    const v2, 0x7f0e00f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v2, 0x7f0e00f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "text":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 45
    .restart local v1    # "text":Landroid/widget/TextView;
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "mediaFileInfo"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 24
    new-instance v1, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;-><init>()V

    .line 25
    .local v1, "dlg":Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->setArguments(Landroid/os/Bundle;)V

    .line 26
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "mediaFileInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;

    .line 37
    :cond_0
    new-instance v1, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo$MagOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo$MagOnClickListener;-><init>(Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->magOnClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo$MagOnClickListener;

    .line 38
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 52
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f040032

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 54
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0e00a0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, "btnOk":Landroid/widget/Button;
    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->magOnClickListener_:Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo$MagOnClickListener;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const/4 v3, 0x0

    .line 59
    .local v3, "i":I
    :try_start_0
    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x1

    .line 60
    .local v6, "isVideo":Z
    :goto_0
    const v10, 0x7f0e009a

    const v11, 0x7f080033

    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_2
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v10, v11, v9}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->fillCatigory(Landroid/view/View;IILjava/lang/String;)V

    .line 61
    const v10, 0x7f0e009b

    const v11, 0x7f080037

    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :try_start_3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v10, v11, v9}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->fillCatigory(Landroid/view/View;IILjava/lang/String;)V

    .line 62
    const v10, 0x7f0e009c

    const v11, 0x7f080036

    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_4
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v10, v11, v9}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->fillCatigory(Landroid/view/View;IILjava/lang/String;)V

    .line 63
    if-eqz v6, :cond_1

    .line 64
    const v10, 0x7f0e009d

    const v11, 0x7f080032

    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :try_start_5
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v10, v11, v9}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->fillCatigory(Landroid/view/View;IILjava/lang/String;)V

    .line 70
    :goto_1
    const v10, 0x7f0e009e

    const v11, 0x7f080035

    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_6
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v10, v11, v9}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->fillCatigory(Landroid/view/View;IILjava/lang/String;)V

    .line 71
    const v10, 0x7f0e009f

    const v11, 0x7f080034

    iget-object v9, p0, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->mediaInfos_:Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :try_start_7
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v10, v11, v9}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->fillCatigory(Landroid/view/View;IILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move v3, v4

    .line 76
    .end local v4    # "i":I
    .end local v6    # "isVideo":Z
    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 59
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 66
    .end local v4    # "i":I
    .restart local v3    # "i":I
    .restart local v6    # "isVideo":Z
    :cond_1
    const v9, 0x7f0e009d

    :try_start_8
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 67
    .local v7, "item":Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 68
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 72
    .end local v4    # "i":I
    .end local v6    # "isVideo":Z
    .end local v7    # "item":Landroid/view/View;
    .restart local v3    # "i":I
    :catch_0
    move-exception v2

    .line 73
    .local v2, "ex":Ljava/lang/Exception;
    :goto_3
    const-string v9, "Fail to get media info"

    invoke-static {v9}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    goto :goto_2

    .line 72
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v2

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_3
.end method
