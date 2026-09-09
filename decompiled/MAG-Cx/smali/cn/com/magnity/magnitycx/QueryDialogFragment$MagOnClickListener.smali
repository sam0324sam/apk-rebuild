.class Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;
.super Ljava/lang/Object;
.source "QueryDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/QueryDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/QueryDialogFragment;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/QueryDialogFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitycx/QueryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/QueryDialogFragment;Lcn/com/magnity/magnitycx/QueryDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/QueryDialogFragment;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/QueryDialogFragment$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;-><init>(Lcn/com/magnity/magnitycx/QueryDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 69
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitycx/QueryDialogFragment;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitycx/QueryDialogFragment;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;->onQueryResult(I)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitycx/QueryDialogFragment;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->dismiss()V

    .line 74
    return-void

    .line 63
    :sswitch_0
    const/4 v0, 0x0

    .line 64
    goto :goto_0

    .line 66
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00a0 -> :sswitch_1
        0x7f0e00aa -> :sswitch_0
    .end sparse-switch
.end method
