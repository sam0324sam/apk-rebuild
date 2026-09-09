.class public Lcn/com/magnity/magnitymx/dialog/FragmentTask;
.super Lcn/com/magnity/magnitymx/base/BaseFragment;
.source "FragmentTask.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/com/magnity/magnitymx/base/BaseFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcn/com/magnity/magnitymx/task/TaskData;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I = 0x913


# instance fields
.field private mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

.field private mLoader:Landroid/support/v4/content/Loader;

.field private mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootVIew:Landroid/view/View;

.field private mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

.field private mTaskTreeView:Landroid/widget/ExpandableListView;

.field private mTxtInfo:Landroid/widget/TextView;

.field private mWaitingCursor:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;-><init>()V

    .line 44
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;-><init>(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/dialog/FragmentTask;[J)[I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/FragmentTask;
    .param p1, "x1"    # [J

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getItemPosition([J)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    return-object v0
.end method

.method private getItemPosition([J)[I
    .locals 12
    .param p1, "ids"    # [J

    .prologue
    .line 307
    iget-object v8, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/task/TaskData;->getParentItems()Ljava/util/List;

    move-result-object v7

    .line 308
    .local v7, "parents":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/TreeItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "parentNum":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 309
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 310
    .local v5, "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v8

    const/4 v10, 0x0

    aget-wide v10, p1, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 311
    const/4 v8, 0x1

    aget-wide v8, p1, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 312
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 324
    .end local v5    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    :goto_1
    return-object v8

    .line 314
    .restart local v5    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    :cond_0
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/task/TreeItem;->getChilds()Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "childs":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/TreeItem;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "childNum":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 316
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 317
    .local v0, "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v8

    const/4 v10, 0x1

    aget-wide v10, p1, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 318
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    goto :goto_1

    .line 315
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 308
    .end local v0    # "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    .end local v1    # "childNum":I
    .end local v2    # "childs":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/TreeItem;>;"
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    .end local v5    # "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private registerListener()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TaskData;->isSqliteTask()Z

    move-result v0

    .line 197
    .local v0, "isSqliteTask":Z
    if-nez v0, :cond_0

    .line 198
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;-><init>(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 304
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcn/com/magnity/magnitymx/dialog/FragmentTask$3;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask$3;-><init>(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 233
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;-><init>(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    goto :goto_0
.end method

.method private updateTreeItems()V
    .locals 5

    .prologue
    .line 181
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mRootVIew:Landroid/view/View;

    const v3, 0x7f08019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    .line 182
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v2, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/task/TaskData;->getParentItems()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    .line 184
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 186
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 187
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/task/TaskData;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskFirstName(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getGroupCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 191
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFragmentLayoutId()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f0a004f

    return v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "container"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mRootVIew:Landroid/view/View;

    .line 153
    const v1, 0x7f0801b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mWaitingCursor:Landroid/widget/ProgressBar;

    .line 154
    const v1, 0x7f0801a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTxtInfo:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getTaskData()Lcn/com/magnity/magnitymx/task/TaskData;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    .line 158
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mWaitingCursor:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x913

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mLoader:Landroid/support/v4/content/Loader;

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mWaitingCursor:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTxtInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->updateTreeItems()V

    .line 169
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->registerListener()V

    .line 172
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskIds()[J

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getItemPosition([J)[I

    move-result-object v0

    .line 173
    .local v0, "pos":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v5, :cond_0

    .line 174
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->setSelectedPos(II)V

    .line 175
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 176
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    aget v3, v0, v4

    aget v4, v0, v5

    invoke-virtual {v2, v3, v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChildrenPosition(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-super {p0, p1}, Lcn/com/magnity/magnitymx/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->setRetainInstance(Z)V

    .line 119
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mReceiver:Landroid/content/BroadcastReceiver;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ACTION_UPDATE_TASK_TREE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/MsgBus;->register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcn/com/magnity/magnitymx/task/TaskData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcn/com/magnity/magnitymx/task/ParseDataLoader;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/com/magnity/magnitymx/task/ParseDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MsgBus;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 125
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;->onDestroy()V

    .line 126
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V

    .line 145
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x913

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 147
    :cond_0
    invoke-super {p0}, Lcn/com/magnity/magnitymx/base/BaseFragment;->onDestroyView()V

    .line 148
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcn/com/magnity/magnitymx/task/TaskData;)V
    .locals 7
    .param p2, "data"    # Lcn/com/magnity/magnitymx/task/TaskData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcn/com/magnity/magnitymx/task/TaskData;",
            ">;",
            "Lcn/com/magnity/magnitymx/task/TaskData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcn/com/magnity/magnitymx/task/TaskData;>;"
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    iput-object p2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskData:Lcn/com/magnity/magnitymx/task/TaskData;

    .line 88
    if-eqz p2, :cond_2

    .line 89
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1, p2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setTaskData(Lcn/com/magnity/magnitymx/task/TaskData;)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->updateTreeItems()V

    .line 93
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->registerListener()V

    .line 96
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskIds()[J

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getItemPosition([J)[I

    move-result-object v0

    .line 97
    .local v0, "pos":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v5, :cond_1

    .line 98
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->setSelectedPos(II)V

    .line 99
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 100
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTaskTreeView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mAdapter:Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    aget v3, v0, v4

    aget v4, v0, v5

    invoke-virtual {v2, v3, v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChildrenPosition(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setSelection(I)V

    .line 102
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTxtInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    .end local v0    # "pos":[I
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mWaitingCursor:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    return-void

    .line 104
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTxtInfo:Landroid/widget/TextView;

    const v2, 0x7f0e0130

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mTxtInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p2, Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->onLoadFinished(Landroid/support/v4/content/Loader;Lcn/com/magnity/magnitymx/task/TaskData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcn/com/magnity/magnitymx/task/TaskData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcn/com/magnity/magnitymx/task/TaskData;>;"
    return-void
.end method

.method protected setBeforeLayout()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .prologue
    .line 129
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 130
    return-void
.end method
