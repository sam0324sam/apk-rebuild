.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;
.super Ljava/lang/Object;
.source "DialogFragmentTitleAboveList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

.field final synthetic val$adapter:Landroid/widget/SimpleAdapter;

.field final synthetic val$id_:I


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;ILandroid/widget/SimpleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

    iput p2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;->val$id_:I

    iput-object p3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;->val$adapter:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 97
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 98
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v2, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v2, :cond_0

    .line 100
    packed-switch p3, :pswitch_data_0

    .line 103
    const/4 v1, 0x2

    .line 112
    .local v1, "sel":I
    :goto_0
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;->val$id_:I

    const-string v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v2, v3, v4}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .end local v1    # "sel":I
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList$1;->val$adapter:Landroid/widget/SimpleAdapter;

    invoke-static {v2, p3, v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTitleAboveList;ILandroid/widget/Adapter;)V

    .line 115
    return-void

    .line 106
    .restart local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :pswitch_0
    const/4 v1, 0x4

    .line 107
    .restart local v1    # "sel":I
    goto :goto_0

    .line 109
    .end local v1    # "sel":I
    :pswitch_1
    const/4 v1, 0x6

    .restart local v1    # "sel":I
    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
