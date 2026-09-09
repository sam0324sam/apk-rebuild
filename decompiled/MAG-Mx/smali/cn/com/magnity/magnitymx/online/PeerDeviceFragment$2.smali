.class Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;
.super Ljava/lang/Object;
.source "PeerDeviceFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    .line 93
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->updateAdapter(IILandroid/widget/ExpandableListAdapter;)V

    .line 98
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->sendSelChangedMsgToAnotherListFragment()V

    .line 99
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->getSelected(II)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 100
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;->this$0:Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->notifyLiveWindow()V

    .line 101
    const/4 v0, 0x0

    return v0
.end method
