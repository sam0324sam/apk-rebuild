.class Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;
.super Ljava/lang/Object;
.source "PeerDeviceFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, -0x1

    .line 70
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v1

    invoke-virtual {v1, p3, v3}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->getSelected(II)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v0

    .line 71
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-virtual {v1, p3, v3, v2}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->updateAdapter(IILandroid/widget/ExpandableListAdapter;)V

    .line 73
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->sendSelChangedMsgToAnotherListFragment()V

    .line 74
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 75
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->notifyLiveWindow()V

    .line 77
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
