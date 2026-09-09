.class Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;
.super Ljava/lang/Object;
.source "QueryDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/QueryDialogFragment;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/QueryDialogFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/QueryDialogFragment;Lcn/com/magnity/magnitymx/media/QueryDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/QueryDialogFragment$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/media/QueryDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->access$100(Lcn/com/magnity/magnitymx/media/QueryDialogFragment;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;->onQueryResult(II)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/QueryDialogFragment$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->dismiss()V

    .line 124
    return-void

    .line 113
    :pswitch_0
    const/4 v0, 0x0

    .line 114
    goto :goto_0

    .line 116
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x7f080081
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
