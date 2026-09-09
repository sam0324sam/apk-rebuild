.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;
.super Ljava/lang/Object;
.source "DialogFragmentRoiSelection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    const/4 v0, -0x1

    .line 99
    .local v0, "type":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$IRoiSelectionChanged;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$IRoiSelectionChanged;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$IRoiSelectionChanged;->onRoiSelectionChanged(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentRoiSelection;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    return-void

    .line 101
    :pswitch_0
    const/4 v0, 0x2

    .line 102
    goto :goto_0

    .line 104
    :pswitch_1
    const/4 v0, 0x0

    .line 105
    goto :goto_0

    .line 107
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f0800ca
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
