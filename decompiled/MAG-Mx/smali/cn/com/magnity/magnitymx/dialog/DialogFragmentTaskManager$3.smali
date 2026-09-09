.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 243
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

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
    .line 247
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 248
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)I

    move-result v1

    const-string v2, "task_changed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, p3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;ILandroid/widget/Adapter;)V

    .line 254
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->dismiss()V

    .line 255
    return-void
.end method
