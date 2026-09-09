.class public Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;
.super Landroid/support/v4/app/ListFragment;
.source "OnlineDeviceFragment.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/online/IDeviceContract$IView;


# static fields
.field private static final ITEM_KEYS:[Ljava/lang/String;

.field private static final ITEM_VALS:[I


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

.field private mSubTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 22
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "img"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->ITEM_KEYS:[Ljava/lang/String;

    .line 23
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->ITEM_VALS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800d6
        0x7f0800d5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    return-object v0
.end method


# virtual methods
.method public getAdapterItemKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->ITEM_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mListView:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment$1;-><init>(Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v2, 0x7f0a004a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "root":Landroid/view/View;
    const v2, 0x7f08018c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mSubTitleTextView:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/FragmentUtils;->getResult(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 45
    .local v0, "deviceInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->isOnlineDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    invoke-interface {v2, v0}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->updateSelectedDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 50
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    invoke-interface {v2, p3}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->loadSelected(Landroid/os/Bundle;)V

    .line 51
    iget-object v2, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->start()V

    .line 53
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 81
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->stop()V

    .line 82
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->saveSelected(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;->refresh()V

    .line 110
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mPresenter:Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    .line 87
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->setPresenter(Lcn/com/magnity/magnitymx/online/IDeviceContract$IPresenter;)V

    return-void
.end method

.method public updateDeviceListView(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mSubTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 102
    .local v6, "pos":I
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f0a004b

    sget-object v4, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->ITEM_KEYS:[Ljava/lang/String;

    sget-object v5, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->ITEM_VALS:[I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcn/com/magnity/magnitymx/online/OnlineDeviceFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 106
    return-void
.end method
