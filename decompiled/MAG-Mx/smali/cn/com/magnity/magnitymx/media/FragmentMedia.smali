.class public Lcn/com/magnity/magnitymx/media/FragmentMedia;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMedia.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/MediaActivity$DelegateBackPressed;
.implements Lcn/com/magnity/magnitymx/media/QueryDialogFragment$DelegateQueryResult;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemLongClickListener;,
        Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;,
        Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;,
        Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;
    }
.end annotation


# static fields
.field private static final MODE_NORMAL:I = 0x0

.field private static final MODE_SELECTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FragmentMedia"


# instance fields
.field private btnDelete_:Landroid/widget/Button;

.field private btnMap_:Landroid/widget/Button;

.field private btnSelectAll_:Landroid/widget/Button;

.field private btnSocialShare_:Landroid/widget/Button;

.field private btnUpload_:Landroid/widget/Button;

.field private fileNames_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstVisiblePos_:I

.field private gridView_:Landroid/widget/GridView;

.field private index_:I

.field private isBackground:Z

.field private isServiceBinded:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

.field private mMagnityNetworkServiceBinder:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private magSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

.field private mapSelStatus_:Ljava/util/Map;

.field private mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

.field private mediaItemClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;

.field private mediaItemLongClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemLongClickListener;

.field private mediaMenuClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

.field private menu_:Landroid/view/ViewGroup;

.field private mode_:I

.field private networkTask:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

.field private progressDialog_:Landroid/app/ProgressDialog;

.field private state:Landroid/os/Parcelable;

.field private visibleItemCount_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .line 88
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isBackground:Z

    .line 89
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isServiceBinded:Z

    .line 95
    iput v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isBackground:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->showImagesOnMap()V

    return-void
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isBackground:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->uploadFiles()V

    return-void
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->socialShare()V

    return-void
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isAllItemSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->unselectAllFiles()V

    return-void
.end method

.method static synthetic access$1500(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->selectAllFiles()V

    return-void
.end method

.method static synthetic access$1600(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateButtons()V

    return-void
.end method

.method static synthetic access$1700(Lcn/com/magnity/magnitymx/media/FragmentMedia;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    return v0
.end method

.method static synthetic access$1702(Lcn/com/magnity/magnitymx/media/FragmentMedia;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    return p1
.end method

.method static synthetic access$1800(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getSelectedItemCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isServiceBinded:Z

    return p1
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mMagnityNetworkServiceBinder:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    return-object v0
.end method

.method static synthetic access$702(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mMagnityNetworkServiceBinder:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    return-object p1
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    return-object v0
.end method

.method static synthetic access$802(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    return-object p1
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->shareFile(Z)V

    return-void
.end method

.method private deleteSelectedFiles()V
    .locals 8

    .prologue
    .line 525
    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 526
    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 527
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 528
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 529
    .local v4, "val":Z
    if-eqz v4, :cond_0

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "pathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 536
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 542
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "val":Z
    :cond_1
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateFileList()V

    .line 543
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateGridView()V

    .line 545
    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 546
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->onActivityBackPressed()Z

    .line 552
    :cond_2
    :goto_1
    return-void

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    if-eqz v5, :cond_2

    .line 549
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;->onSelChanged(II)V

    goto :goto_1
.end method

.method private getSelectedItemCount()I
    .locals 4

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "num":I
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 412
    .local v1, "value":Ljava/lang/Object;
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_1
    return v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 345
    const v0, 0x7f0800a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    .line 346
    iget v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 352
    :cond_0
    :goto_0
    const v0, 0x7f080086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnMap_:Landroid/widget/Button;

    .line 353
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnMap_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v0, 0x7f08008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnUpload_:Landroid/widget/Button;

    .line 355
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnUpload_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    .line 357
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v0, 0x7f080083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    .line 359
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    .line 362
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->networkTask:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    .line 366
    const v0, 0x7f0800af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    .line 367
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 368
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaItemClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 369
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaItemLongClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 370
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->setAdapter()V

    .line 371
    return-void

    .line 348
    :cond_1
    iget v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private isAllItemSelected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 696
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    .line 697
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 696
    :cond_0
    return v0
.end method

.method private isNoItemSelected()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 701
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectAllFiles()V
    .locals 5

    .prologue
    .line 674
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 677
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    if-eqz v2, :cond_1

    .line 678
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 679
    .local v1, "num":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    invoke-interface {v2, v1, v1}, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;->onSelChanged(II)V

    .line 681
    .end local v1    # "num":I
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateGridView()V

    .line 682
    return-void
.end method

.method private setAdapter()V
    .locals 5

    .prologue
    .line 374
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateFileList()V

    .line 375
    new-instance v0, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;-><init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    .line 376
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    iget v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->setMode(I)V

    .line 377
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    return-void
.end method

.method private shareFile(Z)V
    .locals 13
    .param p1, "isFile"    # Z

    .prologue
    const/4 v12, 0x1

    .line 626
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v5, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v9, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 628
    .local v4, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 629
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 630
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 631
    .local v8, "val":Z
    if-eqz v8, :cond_0

    .line 634
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 635
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, "pathName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 638
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/FileUtils;->copyAndRename(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 643
    :cond_1
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 645
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".fileprovider"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 646
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_3

    .line 670
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "f":Ljava/io/File;
    .end local v6    # "pathName":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "val":Z
    :cond_2
    :goto_2
    return-void

    .line 639
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v6    # "pathName":Ljava/lang/String;
    .restart local v8    # "val":Z
    :catch_0
    move-exception v1

    .line 640
    .local v1, "ex":Ljava/lang/Exception;
    const-string v9, "share multi files copy and rename error"

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 649
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 653
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "f":Ljava/io/File;
    .end local v6    # "pathName":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "val":Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v12, :cond_5

    .line 655
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 663
    :goto_3
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    if-eqz p1, :cond_6

    .line 665
    const-string v9, "application/octet-stream"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    :goto_4
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0099

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 657
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v12, :cond_2

    .line 658
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v10, "android.intent.extra.STREAM"

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 667
    :cond_6
    const-string v9, "image/jpeg"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method

.method private showImagesOnMap()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method private socialShare()V
    .locals 10

    .prologue
    .line 594
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0a0070

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 595
    .local v5, "view":Landroid/view/View;
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 596
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 597
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 598
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 599
    .local v6, "window":Landroid/view/Window;
    if-nez v6, :cond_0

    .line 622
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 603
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 604
    const/16 v7, 0x11

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 605
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 606
    const v7, 0x7f080159

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 607
    .local v4, "sharePicImageView":Landroid/widget/ImageView;
    const v7, 0x7f080158

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 608
    .local v3, "shareFileImageView":Landroid/widget/ImageView;
    new-instance v1, Lcn/com/magnity/magnitymx/media/FragmentMedia$5;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia$5;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    .line 620
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private unselectAllFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 685
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 688
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    if-eqz v1, :cond_1

    .line 689
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;->onSelChanged(II)V

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateGridView()V

    .line 692
    return-void
.end method

.method private updateButtons()V
    .locals 7

    .prologue
    const v6, 0x7f0e0096

    const v5, 0x7f0700ad

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 705
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isNoItemSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 707
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 708
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 709
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 711
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 727
    :goto_0
    return-void

    .line 713
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 714
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 715
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isAllItemSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    const v2, 0x7f0e009b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 717
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 718
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 719
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 721
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 722
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 723
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 724
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateFileList()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaUtils;->updateFileList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 382
    return-void
.end method

.method private uploadFiles()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 555
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v3

    .line 556
    .local v3, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v9

    .line 557
    .local v9, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v10

    if-nez v10, :cond_2

    .line 558
    new-instance v4, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-direct {v4}, Lcn/com/magnity/magnitymx/login/LoginDialog;-><init>()V

    .line 559
    .local v4, "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 560
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 561
    const-class v10, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v0, v10}, Lcn/com/magnity/magnitymx/login/LoginDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 562
    new-instance v10, Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {v10, v4}, Lcn/com/magnity/magnitymx/login/LoginPresenter;-><init>(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;)V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e0146

    invoke-virtual {p0, v11}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 586
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v4    # "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    :cond_1
    :goto_0
    return-void

    .line 566
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    const/4 v8, 0x0

    .line 568
    .local v8, "uploadedSuccessNum":I
    const/4 v7, 0x0

    .line 569
    .local v7, "uploadedFailedNum":I
    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 570
    .local v2, "key":Ljava/lang/Object;
    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v5, v2

    .line 571
    check-cast v5, Ljava/lang/String;

    .line 572
    .local v5, "name":Ljava/lang/String;
    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->magSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    invoke-virtual {v10, v5}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v6

    .line 573
    .local v6, "uploadStatus":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_4

    if-nez v6, :cond_5

    .line 574
    :cond_4
    new-instance v10, Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v5, v13, v12}, Lcn/com/magnity/magnitymx/media/NetworkItem;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 575
    :cond_5
    const/4 v10, 0x1

    if-ne v6, v10, :cond_6

    .line 576
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 577
    :cond_6
    const/4 v10, -0x2

    if-ne v6, v10, :cond_3

    .line 578
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 582
    .end local v2    # "key":Ljava/lang/Object;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "uploadStatus":I
    :cond_7
    iget-object v10, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    if-eqz v10, :cond_1

    .line 583
    iget-object v11, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    new-array v10, v13, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {v11, v10, v8, v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->addUploadItems([Lcn/com/magnity/magnitymx/media/NetworkItem;II)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    iget v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    if-nez v0, :cond_0

    move v0, v1

    .line 485
    :goto_0
    return v0

    .line 474
    :cond_0
    iput v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    .line 475
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->unselectAllFiles()V

    .line 476
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->cancelAllTasks()V

    .line 477
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;->onModeChanged(III)V

    .line 484
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->setMode(I)V

    move v0, v2

    .line 485
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 492
    packed-switch p1, :pswitch_data_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 494
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 497
    if-eqz p3, :cond_0

    .line 498
    const-string v2, "mediaIndex"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 499
    .local v0, "index":I
    if-ne v0, v3, :cond_1

    .line 500
    const-string v2, "mediaName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "pathName":Ljava/lang/String;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 503
    .end local v1    # "pathName":Ljava/lang/String;
    :cond_1
    if-eq v0, v3, :cond_0

    .line 504
    iput v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->index_:I

    .line 505
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateGridView()V

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x129
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 438
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mContext:Landroid/content/Context;

    .line 439
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 237
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0, v8}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->setRetainInstance(Z)V

    .line 240
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    .line 241
    new-instance v5, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

    invoke-direct {v5, p0, v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/FragmentMedia$1;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;

    .line 242
    new-instance v5, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;

    invoke-direct {v5, p0, v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/FragmentMedia$1;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaItemClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;

    .line 243
    new-instance v5, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemLongClickListener;

    invoke-direct {v5, p0, v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemLongClickListener;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/FragmentMedia$1;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaItemLongClickListener_:Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemLongClickListener;

    .line 244
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    .line 245
    new-instance v6, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-direct {v6, p0, v5}, Lcn/com/magnity/magnitymx/media/FragmentMedia$FragmentMediaHandler;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/MediaActivity;)V

    iput-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mHandler:Landroid/os/Handler;

    .line 247
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 248
    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 249
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e014b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "runInBackground":Ljava/lang/String;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v6, -0x1

    new-instance v7, Lcn/com/magnity/magnitymx/media/FragmentMedia$1;

    invoke-direct {v7, p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia$1;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    invoke-virtual {v5, v6, v2, v7}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 258
    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 259
    iget-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v6, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;

    invoke-direct {v6, p0, v2}, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 269
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getmMagSQLiteUtils()Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v5

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->magSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    .line 271
    new-instance v1, Lcn/com/magnity/magnitymx/media/FragmentMedia$3;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia$3;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    .line 309
    .local v1, "networkServiceListener":Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
    new-instance v5, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;

    invoke-direct {v5, p0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/NetworkServiceListener;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 324
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "MagnityNetworkService"

    invoke-static {v5, v6}, Lcn/com/magnity/magnitymx/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 325
    .local v0, "isServiceRunning":Z
    if-eqz v0, :cond_1

    .line 326
    iget-boolean v5, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isServiceBinded:Z

    if-nez v5, :cond_0

    .line 327
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v3, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3, v6, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 334
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
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
    .line 339
    const v1, 0x7f0a004d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->initViews(Landroid/view/View;)V

    .line 341
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 427
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 428
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->cancelAllTasks()V

    .line 429
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isServiceBinded:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->isServiceBinded:Z

    .line 433
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mContext:Landroid/content/Context;

    .line 445
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->index_:I

    .line 422
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 423
    return-void
.end method

.method public onQueryResult(II)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 515
    if-ne p2, v0, :cond_0

    .line 516
    if-ne p1, v0, :cond_0

    .line 517
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->deleteSelectedFiles()V

    .line 518
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateButtons()V

    .line 521
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 399
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateFileList()V

    .line 400
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateGridView()V

    .line 402
    iget v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mode_:I

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getSelectedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 460
    iput p2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->firstVisiblePos_:I

    .line 461
    iput p3, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->visibleItemCount_:I

    .line 463
    iget v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->visibleItemCount_:I

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    iget v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->firstVisiblePos_:I

    iget v2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->visibleItemCount_:I

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->loadBitmap(II)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->state:Landroid/os/Parcelable;

    .line 467
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->state:Landroid/os/Parcelable;

    .line 456
    return-void
.end method

.method public updateGridView()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/MediaGridViewAdapter;->notifyDataSetChanged()V

    .line 387
    iget v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->index_:I

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->index_:I

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 393
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia;->state:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 394
    return-void
.end method
