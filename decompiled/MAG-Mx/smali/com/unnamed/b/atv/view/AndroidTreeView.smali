.class public Lcom/unnamed/b/atv/view/AndroidTreeView;
.super Ljava/lang/Object;
.source "AndroidTreeView.java"


# static fields
.field private static final NODES_PATH_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private applyForRoot:Z

.field private containerStyle:I

.field private defaultViewHolderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private enableAutoToggle:Z

.field private mContext:Landroid/content/Context;

.field protected mRoot:Lcom/unnamed/b/atv/model/TreeNode;

.field private mSelectionModeEnabled:Z

.field private mUseDefaultAnimation:Z

.field private nodeClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

.field private nodeLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

.field private use2dScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    .line 33
    const-class v0, Lcom/unnamed/b/atv/holder/SimpleViewHolder;

    iput-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    .line 37
    iput-boolean v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    .line 38
    iput-boolean v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    .line 42
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    .line 33
    const-class v0, Lcom/unnamed/b/atv/holder/SimpleViewHolder;

    iput-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    .line 37
    iput-boolean v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    .line 38
    iput-boolean v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    .line 50
    iput-object p2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    .line 51
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/unnamed/b/atv/view/AndroidTreeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unnamed/b/atv/view/AndroidTreeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unnamed/b/atv/view/AndroidTreeView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    return v0
.end method

.method static synthetic access$200(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/unnamed/b/atv/view/AndroidTreeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    return-object v0
.end method

.method private addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "n"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 257
    invoke-direct {p0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    .line 258
    .local v1, "viewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "nodeView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    iget-boolean v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v2, :cond_0

    .line 261
    iget-boolean v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    invoke-virtual {v1, v2}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    .line 264
    :cond_0
    new-instance v2, Lcom/unnamed/b/atv/view/AndroidTreeView$2;

    invoke-direct {v2, p0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView$2;-><init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Lcom/unnamed/b/atv/model/TreeNode;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v2, Lcom/unnamed/b/atv/view/AndroidTreeView$3;

    invoke-direct {v2, p0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView$3;-><init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Lcom/unnamed/b/atv/model/TreeNode;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 292
    return-void
.end method

.method private static collapse(Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 445
    .local v1, "initialHeight":I
    new-instance v0, Lcom/unnamed/b/atv/view/AndroidTreeView$5;

    invoke-direct {v0, p0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView$5;-><init>(Landroid/view/View;I)V

    .line 463
    .local v0, "a":Landroid/view/animation/Animation;
    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 464
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 465
    return-void
.end method

.method private collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 5
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "includeSubnodes"    # Z

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1, v4}, Lcom/unnamed/b/atv/model/TreeNode;->setExpanded(Z)Lcom/unnamed/b/atv/model/TreeNode;

    .line 217
    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    .line 219
    .local v1, "nodeViewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    iget-boolean v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapse(Landroid/view/View;)V

    .line 224
    :goto_0
    invoke-virtual {v1, v4}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    .line 225
    if-eqz p2, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 227
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_1

    .line 222
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_1
    return-void
.end method

.method private static expand(Landroid/view/View;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 417
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 420
    .local v1, "targetHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 421
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 422
    new-instance v0, Lcom/unnamed/b/atv/view/AndroidTreeView$4;

    invoke-direct {v0, p0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView$4;-><init>(Landroid/view/View;I)V

    .line 438
    .local v0, "a":Landroid/view/animation/Animation;
    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 440
    return-void
.end method

.method private expandLevel(Lcom/unnamed/b/atv/model/TreeNode;I)V
    .locals 3
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "level"    # I

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getLevel()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 154
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 157
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandLevel(Lcom/unnamed/b/atv/model/TreeNode;I)V

    goto :goto_0

    .line 159
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_1
    return-void
.end method

.method private expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 4
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "includeSubnodes"    # Z

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-virtual {p1, v3}, Lcom/unnamed/b/atv/model/TreeNode;->setExpanded(Z)Lcom/unnamed/b/atv/model/TreeNode;

    .line 234
    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    .line 235
    .local v1, "parentViewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    invoke-virtual {v1, v3}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    .line 240
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 241
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V

    .line 243
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    .line 244
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    .line 248
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_2
    iget-boolean v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expand(Landroid/view/View;)V

    .line 254
    :goto_1
    return-void

    .line 251
    :cond_3
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private getSaveState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "root"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "sBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 198
    .local v0, "node":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSaveState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 204
    .end local v0    # "node":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_1
    return-void
.end method

.method private getSelected(Lcom/unnamed/b/atv/model/TreeNode;)Ljava/util/List;
    .locals 4
    .param p1, "parent"    # Lcom/unnamed/b/atv/model/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 347
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    invoke-direct {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected(Lcom/unnamed/b/atv/model/TreeNode;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 352
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_1
    return-object v1
.end method

.method private getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    .locals 8
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getViewHolder()Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v3

    .line 398
    .local v3, "viewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    if-nez v3, :cond_0

    .line 400
    :try_start_0
    iget-object v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 401
    .local v2, "object":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-object v3, v0

    .line 402
    invoke-virtual {p1, v3}, Lcom/unnamed/b/atv/model/TreeNode;->setViewHolder(Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;)Lcom/unnamed/b/atv/model/TreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getContainerStyle()I

    move-result v4

    if-gtz v4, :cond_1

    .line 408
    iget v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    invoke-virtual {v3, v4}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->setContainerStyle(I)V

    .line 410
    :cond_1
    invoke-virtual {v3}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getTreeView()Lcom/unnamed/b/atv/view/AndroidTreeView;

    move-result-object v4

    if-nez v4, :cond_2

    .line 411
    invoke-virtual {v3, p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->setTreeViev(Lcom/unnamed/b/atv/view/AndroidTreeView;)V

    .line 413
    :cond_2
    return-object v3

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not instantiate class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private makeAllSelection(ZZ)V
    .locals 3
    .param p1, "selected"    # Z
    .param p2, "skipCollapsed"    # Z

    .prologue
    .line 364
    iget-boolean v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 366
    .local v0, "node":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-direct {p0, v0, p1, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->selectNode(Lcom/unnamed/b/atv/model/TreeNode;ZZ)V

    goto :goto_0

    .line 369
    .end local v0    # "node":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    return-void
.end method

.method private restoreNodeState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/util/Set;)V
    .locals 3
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "openNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 189
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;)V

    .line 191
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->restoreNodeState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/util/Set;)V

    goto :goto_0

    .line 194
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_1
    return-void
.end method

.method private selectNode(Lcom/unnamed/b/atv/model/TreeNode;ZZ)V
    .locals 4
    .param p1, "parent"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "selected"    # Z
    .param p3, "skipCollapsed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 379
    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode;->setSelected(Z)V

    .line 380
    invoke-direct {p0, p1, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 381
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v1

    .line 382
    .local v1, "toContinue":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 384
    .local v0, "node":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-direct {p0, v0, p2, p3}, Lcom/unnamed/b/atv/view/AndroidTreeView;->selectNode(Lcom/unnamed/b/atv/model/TreeNode;ZZ)V

    goto :goto_0

    .line 387
    .end local v0    # "node":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_1
    return-void
.end method

.method private toggleSelectionMode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 3
    .param p1, "parent"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "mSelectionModeEnabled"    # Z

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 328
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 330
    .local v0, "node":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toggleSelectionMode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    .line 333
    .end local v0    # "node":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    return-void
.end method

.method private toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 2
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "makeSelectable"    # Z

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    .line 391
    .local v0, "holder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    .line 394
    :cond_0
    return-void
.end method


# virtual methods
.method public addNode(Lcom/unnamed/b/atv/model/TreeNode;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 2
    .param p1, "parent"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "nodeToAdd"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 471
    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    .line 472
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    .line 474
    .local v0, "parentViewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V

    .line 476
    .end local v0    # "parentViewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 101
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    .line 103
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    return-void
.end method

.method public collapseNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 1
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 167
    return-void
.end method

.method public deselectAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->makeAllSelection(ZZ)V

    .line 361
    return-void
.end method

.method public expandAll()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 97
    return-void
.end method

.method public expandLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 148
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-direct {p0, v0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandLevel(Lcom/unnamed/b/atv/model/TreeNode;I)V

    goto :goto_0

    .line 150
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    return-void
.end method

.method public expandNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 1
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 163
    return-void
.end method

.method public getSaveState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSaveState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/StringBuilder;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected(Lcom/unnamed/b/atv/model/TreeNode;)Ljava/util/List;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSelectedValues(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected()Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, "selected":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 314
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 315
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 142
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 7
    .param p1, "style"    # I

    .prologue
    .line 108
    if-lez p1, :cond_2

    .line 109
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v1, "newContext":Landroid/view/ContextThemeWrapper;
    iget-boolean v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    if-eqz v4, :cond_1

    new-instance v2, Lcom/unnamed/b/atv/view/TwoDScrollView;

    invoke-direct {v2, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    .end local v1    # "newContext":Landroid/view/ContextThemeWrapper;
    .local v2, "view":Landroid/view/ViewGroup;
    :goto_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    .line 116
    .local v0, "containerContext":Landroid/content/Context;
    iget v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->applyForRoot:Z

    if-eqz v4, :cond_0

    .line 117
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .end local v0    # "containerContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 119
    .restart local v0    # "containerContext":Landroid/content/Context;
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    .local v3, "viewTreeItems":Landroid/widget/LinearLayout;
    sget v4, Lcom/unnamed/b/atv/R$id;->tree_items:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 122
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    iget-object v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    new-instance v5, Lcom/unnamed/b/atv/view/AndroidTreeView$1;

    iget-object v6, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v3}, Lcom/unnamed/b/atv/view/AndroidTreeView$1;-><init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Lcom/unnamed/b/atv/model/TreeNode;->setViewHolder(Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;)Lcom/unnamed/b/atv/model/TreeNode;

    .line 137
    iget-object v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 138
    return-object v2

    .line 110
    .end local v0    # "containerContext":Landroid/content/Context;
    .end local v2    # "view":Landroid/view/ViewGroup;
    .end local v3    # "viewTreeItems":Landroid/widget/LinearLayout;
    .restart local v1    # "newContext":Landroid/view/ContextThemeWrapper;
    :cond_1
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    .end local v1    # "newContext":Landroid/view/ContextThemeWrapper;
    :cond_2
    iget-boolean v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    if-eqz v4, :cond_3

    new-instance v2, Lcom/unnamed/b/atv/view/TwoDScrollView;

    iget-object v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "view":Landroid/view/ViewGroup;
    :goto_1
    goto :goto_0

    .end local v2    # "view":Landroid/view/ViewGroup;
    :cond_3
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public is2dScrollEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    return v0
.end method

.method public isAutoToggleEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    return v0
.end method

.method public isSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    return v0
.end method

.method public removeNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 4
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getParent()Lcom/unnamed/b/atv/model/TreeNode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getParent()Lcom/unnamed/b/atv/model/TreeNode;

    move-result-object v1

    .line 481
    .local v1, "parent":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {v1, p1}, Lcom/unnamed/b/atv/model/TreeNode;->deleteChild(Lcom/unnamed/b/atv/model/TreeNode;)I

    move-result v0

    .line 482
    .local v0, "index":I
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz v0, :cond_0

    .line 483
    invoke-direct {p0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v2

    .line 484
    .local v2, "parentViewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    invoke-virtual {v2}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 487
    .end local v0    # "index":I
    .end local v1    # "parent":Lcom/unnamed/b/atv/model/TreeNode;
    .end local v2    # "parentViewHolder":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    :cond_0
    return-void
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 3
    .param p1, "saveState"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseAll()V

    .line 181
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "openNodesArray":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v0, "openNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v2, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->restoreNodeState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/util/Set;)V

    .line 185
    .end local v0    # "openNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "openNodesArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 1
    .param p1, "skipCollapsed"    # Z

    .prologue
    .line 356
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->makeAllSelection(ZZ)V

    .line 357
    return-void
.end method

.method public selectNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 1
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "selected"    # Z

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode;->setSelected(Z)V

    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 376
    :cond_0
    return-void
.end method

.method public setDefaultAnimation(Z)V
    .locals 0
    .param p1, "defaultAnimation"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    .line 56
    return-void
.end method

.method public setDefaultContainerStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultContainerStyle(IZ)V

    .line 60
    return-void
.end method

.method public setDefaultContainerStyle(IZ)V
    .locals 0
    .param p1, "style"    # I
    .param p2, "applyForRoot"    # Z

    .prologue
    .line 63
    iput p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    .line 64
    iput-boolean p2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->applyForRoot:Z

    .line 65
    return-void
.end method

.method public setDefaultNodeClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    .line 89
    return-void
.end method

.method public setDefaultNodeLongClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    .line 93
    return-void
.end method

.method public setDefaultViewHolder(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "viewHolder":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;>;"
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    .line 85
    return-void
.end method

.method public setRoot(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 0
    .param p1, "mRoot"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    .line 47
    return-void
.end method

.method public setSelectionModeEnabled(Z)V
    .locals 3
    .param p1, "selectionModeEnabled"    # Z

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->deselectAll()V

    .line 302
    :cond_0
    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    .line 304
    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 305
    .local v0, "node":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-direct {p0, v0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toggleSelectionMode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    .line 308
    .end local v0    # "node":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_1
    return-void
.end method

.method public setUse2dScroll(Z)V
    .locals 0
    .param p1, "use2dScroll"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    .line 69
    return-void
.end method

.method public setUseAutoToggle(Z)V
    .locals 0
    .param p1, "enableAutoToggle"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    .line 77
    return-void
.end method

.method public toggleNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 2
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0, p1, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0
.end method
