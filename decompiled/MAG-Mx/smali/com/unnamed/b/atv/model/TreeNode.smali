.class public Lcom/unnamed/b/atv/model/TreeNode;
.super Ljava/lang/Object;
.source "TreeNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;,
        Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;,
        Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;
    }
.end annotation


# static fields
.field public static final NODES_ID_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

.field private mExpanded:Z

.field private mId:I

.field private mLastId:I

.field private mLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

.field private mParent:Lcom/unnamed/b/atv/model/TreeNode;

.field private mSelectable:Z

.field private mSelected:Z

.field private mValue:Ljava/lang/Object;

.field private mViewHolder:Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mValue:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private generateId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLastId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLastId:I

    return v0
.end method

.method public static root()Lcom/unnamed/b/atv/model/TreeNode;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/unnamed/b/atv/model/TreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unnamed/b/atv/model/TreeNode;-><init>(Ljava/lang/Object;)V

    .line 36
    .local v0, "root":Lcom/unnamed/b/atv/model/TreeNode;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/model/TreeNode;->setSelectable(Z)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 1
    .param p1, "childNode"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 50
    iput-object p0, p1, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    .line 51
    invoke-direct {p0}, Lcom/unnamed/b/atv/model/TreeNode;->generateId()I

    move-result v0

    iput v0, p1, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    .line 52
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-object p0
.end method

.method public addChildren(Ljava/util/Collection;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;)",
            "Lcom/unnamed/b/atv/model/TreeNode;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/unnamed/b/atv/model/TreeNode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    .line 65
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    goto :goto_0

    .line 67
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    return-object p0
.end method

.method public varargs addChildren([Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 3
    .param p1, "nodes"    # [Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 57
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 58
    .local v0, "n":Lcom/unnamed/b/atv/model/TreeNode;
    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "n":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    return-object p0
.end method

.method public deleteChild(Lcom/unnamed/b/atv/model/TreeNode;)I
    .locals 3
    .param p1, "child"    # Lcom/unnamed/b/atv/model/TreeNode;

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 72
    iget v2, p1, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    iget-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unnamed/b/atv/model/TreeNode;

    iget v1, v1, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    if-ne v2, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 71
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getChildren()Ljava/util/List;
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
    .line 81
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    return v0
.end method

.method public getLevel()I
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "level":I
    move-object v1, p0

    .line 146
    .local v1, "root":Lcom/unnamed/b/atv/model/TreeNode;
    :goto_0
    iget-object v2, v1, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v2, :cond_0

    .line 147
    iget-object v1, v1, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return v0
.end method

.method public getLongClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    return-object v0
.end method

.method public getParent()Lcom/unnamed/b/atv/model/TreeNode;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v1, "path":Ljava/lang/StringBuilder;
    move-object v0, p0

    .line 132
    .local v0, "node":Lcom/unnamed/b/atv/model/TreeNode;
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    iget-object v0, v0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    .line 135
    iget-object v2, v0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v2, :cond_0

    .line 136
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getRoot()Lcom/unnamed/b/atv/model/TreeNode;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .line 208
    .local v0, "root":Lcom/unnamed/b/atv/model/TreeNode;
    :goto_0
    iget-object v1, v0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v1, :cond_0

    .line 209
    iget-object v0, v0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    goto :goto_0

    .line 211
    :cond_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewHolder()Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mViewHolder:Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mExpanded:Z

    return v0
.end method

.method public isFirstChild()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode;->isRoot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v0, v1, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    .line 197
    .local v0, "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unnamed/b/atv/model/TreeNode;

    iget v1, v1, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    iget v3, p0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    .line 199
    .end local v0    # "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    :goto_0
    return v1

    .restart local v0    # "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    :cond_0
    move v1, v2

    .line 197
    goto :goto_0

    .end local v0    # "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    :cond_1
    move v1, v2

    .line 199
    goto :goto_0
.end method

.method public isLastChild()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode;->isRoot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v2, v2, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 156
    .local v1, "parentSize":I
    if-lez v1, :cond_1

    .line 157
    iget-object v2, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v0, v2, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    .line 158
    .local v0, "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unnamed/b/atv/model/TreeNode;

    iget v2, v2, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    iget v4, p0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    .line 161
    .end local v0    # "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    .end local v1    # "parentSize":I
    :goto_0
    return v2

    .restart local v0    # "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    .restart local v1    # "parentSize":I
    :cond_0
    move v2, v3

    .line 158
    goto :goto_0

    .end local v0    # "parentChildren":Ljava/util/List;, "Ljava/util/List<Lcom/unnamed/b/atv/model/TreeNode;>;"
    .end local v1    # "parentSize":I
    :cond_1
    move v2, v3

    .line 161
    goto :goto_0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0
    .param p1, "listener"    # Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    .line 174
    return-object p0
.end method

.method public setExpanded(Z)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mExpanded:Z

    .line 110
    return-object p0
.end method

.method public setLongClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0
    .param p1, "listener"    # Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    .line 183
    return-object p0
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    .line 123
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelected:Z

    .line 115
    return-void
.end method

.method public setViewHolder(Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0
    .param p1, "viewHolder"    # Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mViewHolder:Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iput-object p0, p1, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/unnamed/b/atv/model/TreeNode;

    .line 169
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
