.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;
.super Ljava/lang/Object;
.source "DialogFragmentEmissivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 129
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v2, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "val":Ljava/lang/Object;
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;->val$args:Landroid/os/Bundle;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v0, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .end local v1    # "val":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$4;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->dismiss()V

    .line 134
    return-void
.end method
