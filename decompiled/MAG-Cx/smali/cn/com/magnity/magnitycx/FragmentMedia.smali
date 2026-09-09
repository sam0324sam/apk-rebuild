.class public Lcn/com/magnity/magnitycx/FragmentMedia;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMedia.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/MediaActivity$DelegateBackPressed;
.implements Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;,
        Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;,
        Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;
    }
.end annotation


# static fields
.field private static final MODE_NORMAL:I = 0x0

.field private static final MODE_SELECTION:I = 0x1


# instance fields
.field private btnDelete_:Landroid/widget/Button;

.field private btnSelectAll_:Landroid/widget/Button;

.field private btnSocialShare_:Landroid/widget/Button;

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

.field private mapSelStatus_:Ljava/util/Map;

.field private mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

.field private mediaItemClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;

.field private mediaItemLongClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;

.field private mediaMenuClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;

.field private menu_:Landroid/view/ViewGroup;

.field private mode_:I

.field private visibleItemCount_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    return-void
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitycx/FragmentMedia;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getSelectedItemCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitycx/FragmentMedia;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitycx/FragmentMedia;)Lcn/com/magnity/magnitycx/MediaGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateGridView()V

    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->socialShare()V

    return-void
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitycx/FragmentMedia;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->isAllItemSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->unselectAllFiles()V

    return-void
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->selectAllFiles()V

    return-void
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateButtons()V

    return-void
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitycx/FragmentMedia;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    iget v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    return v0
.end method

.method static synthetic access$802(Lcn/com/magnity/magnitycx/FragmentMedia;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    return p1
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    return-object v0
.end method

.method private deleteSelectedFiles()V
    .locals 8

    .prologue
    .line 221
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 222
    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 225
    .local v4, "val":Z
    if-eqz v4, :cond_0

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v6, v6, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "pathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 235
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string v5, ".jpg"

    const-string v6, ".ddt"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v1    # "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 242
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "val":Z
    :cond_2
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateFileList()V

    .line 243
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateGridView()V

    .line 245
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->onActivityBackPressed()Z

    .line 252
    :cond_3
    :goto_1
    return-void

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    if-eqz v5, :cond_3

    .line 249
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;->onSelChanged(II)V

    goto :goto_1
.end method

.method private getSelectedItemCount()I
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "num":I
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

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

    .line 146
    .local v1, "value":Ljava/lang/Object;
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    return v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 83
    const v0, 0x7f0e0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    .line 84
    iget v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 90
    :cond_0
    :goto_0
    const v0, 0x7f0e0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f0e00cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0e00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f0e00ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    .line 98
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 99
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaItemClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaItemLongClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 101
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->setAdapter()V

    .line 102
    return-void

    .line 86
    :cond_1
    iget v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private isAllItemSelected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 317
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    .line 318
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 317
    :cond_0
    return v0
.end method

.method private isNoItemSelected()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 322
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

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
    .line 295
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 298
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 300
    .local v1, "num":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    invoke-interface {v2, v1, v1}, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;->onSelChanged(II)V

    .line 302
    .end local v1    # "num":I
    :cond_1
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateGridView()V

    .line 303
    return-void
.end method

.method private setAdapter()V
    .locals 5

    .prologue
    .line 105
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateFileList()V

    .line 106
    new-instance v0, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;-><init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    .line 107
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    iget v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->setMode(I)V

    .line 108
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-void
.end method

.method private socialShare()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, "hasVideo":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v5, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 258
    .local v4, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 259
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 261
    .local v8, "val":Z
    if-eqz v8, :cond_0

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v10, v10, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "pathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 268
    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v7

    .line 269
    .local v7, "type":I
    if-nez v7, :cond_1

    .line 270
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "cn.com.magnity.magnitycx.fileprovider"

    invoke-static {v9, v10, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_1
    if-ne v7, v11, :cond_0

    .line 272
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "cn.com.magnity.magnitycx.fileprovider"

    invoke-static {v9, v10, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v2, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "f":Ljava/io/File;
    .end local v6    # "pathName":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "val":Z
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 280
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 288
    :goto_1
    if-eqz v2, :cond_5

    const-string v9, "video/*"

    :goto_2
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08003a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcn/com/magnity/magnitycx/FragmentMedia;->startActivity(Landroid/content/Intent;)V

    .line 291
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 282
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_3

    .line 283
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.extra.STREAM"

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 288
    :cond_5
    const-string v9, "image/*"

    goto :goto_2
.end method

.method private unselectAllFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 306
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;->onSelChanged(II)V

    .line 312
    :cond_1
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateGridView()V

    .line 313
    return-void
.end method

.method private updateButtons()V
    .locals 7

    .prologue
    const v6, 0x7f080038

    const v5, 0x7f020061

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 326
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->isNoItemSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 330
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 348
    :goto_0
    return-void

    .line 334
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSocialShare_:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnDelete_:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->isAllItemSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 338
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 339
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 340
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 342
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 343
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 345
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->btnSelectAll_:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateFileList()V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->updateFileList(Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method

.method private updateGridView()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->notifyDataSetChanged()V

    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    iget v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->index_:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 118
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 119
    return-void
.end method


# virtual methods
.method public onActivityBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    iget v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    if-nez v0, :cond_0

    move v0, v1

    .line 202
    :goto_0
    return v0

    .line 191
    :cond_0
    iput v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    .line 192
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->unselectAllFiles()V

    .line 193
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->cancelAllTasks()V

    .line 194
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->menu_:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;->onModeChanged(III)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->setMode(I)V

    move v0, v2

    .line 202
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateGridView()V

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/FragmentMedia;->setRetainInstance(Z)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMedia;Lcn/com/magnity/magnitycx/FragmentMedia$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaMenuClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;

    .line 68
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMedia;Lcn/com/magnity/magnitycx/FragmentMedia$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaItemClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;

    .line 69
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMedia;Lcn/com/magnity/magnitycx/FragmentMedia$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaItemLongClickListener_:Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mapSelStatus_:Ljava/util/Map;

    .line 71
    return-void
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
    .line 76
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/FragmentMedia;->initViews(Landroid/view/View;)V

    .line 79
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->cancelAllTasks()V

    .line 164
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->gridView_:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->index_:I

    .line 156
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5a92\u4f53"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 158
    return-void
.end method

.method public onQueryResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 214
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->deleteSelectedFiles()V

    .line 216
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateButtons()V

    .line 218
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 124
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateFileList()V

    .line 125
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->updateGridView()V

    .line 127
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u5a92\u4f53"

    invoke-static {v2, v3}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    iget v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mode_:I

    if-nez v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->fileNames_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    :goto_0
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->onceTipMediaLongClick:I

    .line 136
    .local v0, "num":I
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "num":I
    .local v1, "num":I
    if-eqz v0, :cond_0

    .line 137
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput v1, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->onceTipMediaLongClick:I

    .line 138
    const-string v2, "onceTipMediaLongClick2"

    invoke-static {v2, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080040

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_0
    return-void

    .line 132
    .end local v1    # "num":I
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMedia;->getSelectedItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 178
    iput p2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->firstVisiblePos_:I

    .line 179
    iput p3, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->visibleItemCount_:I

    .line 181
    iget v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->visibleItemCount_:I

    if-lez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->mediaGridViewAdapter_:Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    iget v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->firstVisiblePos_:I

    iget v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia;->visibleItemCount_:I

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->loadBitmap(II)V

    .line 184
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 174
    return-void
.end method
