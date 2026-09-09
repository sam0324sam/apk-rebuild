.class public Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;
.super Landroid/support/v4/app/Fragment;
.source "PeerDeviceFragment.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerView;


# static fields
.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_EDIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PeerDeviceFragment"


# instance fields
.field private mDeviceGroupNum:I

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

.field private mMenuSelectedGroupPos:I

.field private mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

.field private mSubTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mMenuSelectedGroupPos:I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    return-object v0
.end method


# virtual methods
.method public addData(Lcn/com/magnity/magnitymx/device/DeviceGroup;)V
    .locals 5
    .param p1, "deviceGroup"    # Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .prologue
    .line 123
    iget v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    .line 124
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mSubTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 124
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->addData(Lcn/com/magnity/magnitymx/device/DeviceGroup;)V

    .line 127
    return-void
.end method

.method public initData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "deviceGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/device/DeviceGroup;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    .line 133
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mSubTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    .line 136
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 137
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$1;-><init>(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 93
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment$2;-><init>(Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 114
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 201
    :pswitch_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    iget v4, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mMenuSelectedGroupPos:I

    invoke-virtual {v3, v4}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmCurrentDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v2

    .line 202
    .local v2, "info":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    iget v3, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mMenuSelectedGroupPos:I

    .line 203
    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->newInstance(Lcn/com/magnity/magnitymx/data/DeviceInfo;I)Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    move-result-object v0

    .line 204
    .local v0, "d":Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 205
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "d":Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;
    .end local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "info":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :pswitch_1
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v3

    const-string v4, "DELETE_DEVICE"

    const-string v5, "PARAMETER1"

    iget v6, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mMenuSelectedGroupPos:I

    invoke-virtual {v3, v4, v5, v6}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 186
    check-cast v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 187
    .local v1, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v2, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    iput v2, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mMenuSelectedGroupPos:I

    .line 188
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    iget v3, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mMenuSelectedGroupPos:I

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .line 190
    .local v0, "group":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v5, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 192
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v6, v6, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 195
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    const v2, 0x7f0a0049

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "root":Landroid/view/View;
    const v2, 0x7f080191

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mSubTitleTextView:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 53
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/FragmentUtils;->getResult(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 54
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isOnlineDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-virtual {v2, v0}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 58
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->start()V

    .line 59
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 181
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 166
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->saveSelected(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->stop()V

    .line 168
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;->saveSelected(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public refreshData(II)V
    .locals 2
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-virtual {v1, p1, p2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->setSelected(II)V

    .line 143
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->getGroupCount()I

    move-result v0

    .line 144
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 145
    iget-object v1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 148
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public removeData(I)V
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    .line 152
    iget v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    .line 153
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mSubTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mDeviceGroupNum:I

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 153
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->removeData(I)V

    .line 156
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerPresenter;

    .prologue
    .line 160
    check-cast p1, Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    .end local p1    # "presenter":Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerPresenter;
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mPeerPresenter:Lcn/com/magnity/magnitymx/online/PeerDevicePresenter;

    .line 161
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->setPresenter(Lcn/com/magnity/magnitymx/online/IDeviceContract$IPeerPresenter;)V

    return-void
.end method

.method public updateData(ILcn/com/magnity/magnitymx/device/DeviceGroup;)V
    .locals 1
    .param p1, "groupPos"    # I
    .param p2, "deviceGroup"    # Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .prologue
    .line 118
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/PeerDeviceFragment;->mExpandableListViewAdapter:Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->updateData(ILcn/com/magnity/magnitymx/device/DeviceGroup;)V

    .line 119
    return-void
.end method
