.class public Lcom/unnamed/b/atv/holder/SimpleViewHolder;
.super Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
.source "SimpleViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "node"    # Lcom/unnamed/b/atv/model/TreeNode;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 20
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unnamed/b/atv/holder/SimpleViewHolder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-object v0
.end method

.method public toggle(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 28
    return-void
.end method
