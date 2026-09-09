.class Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;
.super Ljava/lang/Object;
.source "OnlineDeviceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->updateListAdapter(ILandroid/widget/Adapter;)V

    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->sendSelChangedMsgToAnotherListFragment()V

    .line 66
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    move-result-object v1

    invoke-interface {v1, p3}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->getSelected(I)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 67
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->notifyLiveWindow()V

    .line 68
    return-void
.end method
