.class public abstract Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
.super Ljava/lang/Object;
.source "TreeNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unnamed/b/atv/model/TreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNodeViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected containerStyle:I

.field protected context:Landroid/content/Context;

.field protected mNode:Lcom/unnamed/b/atv/model/TreeNode;

.field private mView:Landroid/view/View;

.field protected tView:Lcom/unnamed/b/atv/view/AndroidTreeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->context:Landroid/content/Context;

    .line 231
    return-void
.end method


# virtual methods
.method public abstract createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            "TE;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public getContainerStyle()I
    .locals 1

    .prologue
    .line 270
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    iget v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->containerStyle:I

    return v0
.end method

.method public getNodeItemsView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 262
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/unnamed/b/atv/R$id;->node_items:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNodeView()Landroid/view/View;
    .locals 2

    .prologue
    .line 258
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTreeView()Lcom/unnamed/b/atv/view/AndroidTreeView;
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->tView:Lcom/unnamed/b/atv/view/AndroidTreeView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 234
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    iget-object v2, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    .line 242
    :goto_0
    return-object v2

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeView()Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "nodeView":Landroid/view/View;
    new-instance v1, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getContainerStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;-><init>(Landroid/content/Context;I)V

    .line 239
    .local v1, "nodeWrapperView":Lcom/unnamed/b/atv/view/TreeNodeWrapperView;
    invoke-virtual {v1, v0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->insertNodeView(Landroid/view/View;)V

    .line 240
    iput-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    .line 242
    iget-object v2, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContainerStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 254
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    iput p1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->containerStyle:I

    .line 255
    return-void
.end method

.method public setTreeViev(Lcom/unnamed/b/atv/view/AndroidTreeView;)V
    .locals 0
    .param p1, "treeViev"    # Lcom/unnamed/b/atv/view/AndroidTreeView;

    .prologue
    .line 246
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->tView:Lcom/unnamed/b/atv/view/AndroidTreeView;

    .line 247
    return-void
.end method

.method public toggle(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 278
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    return-void
.end method

.method public toggleSelectionMode(Z)V
    .locals 0
    .param p1, "editModeEnabled"    # Z

    .prologue
    .line 282
    .local p0, "this":Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;, "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<TE;>;"
    return-void
.end method
