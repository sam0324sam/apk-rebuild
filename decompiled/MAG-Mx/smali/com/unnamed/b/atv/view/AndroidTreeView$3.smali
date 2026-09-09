.class Lcom/unnamed/b/atv/view/AndroidTreeView$3;
.super Ljava/lang/Object;
.source "AndroidTreeView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unnamed/b/atv/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

.field final synthetic val$n:Lcom/unnamed/b/atv/model/TreeNode;


# direct methods
.method constructor <init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unnamed/b/atv/view/AndroidTreeView;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iput-object p2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getLongClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getLongClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v2}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;->onLongClick(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$200(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$200(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v2}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;->onLongClick(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$100(Lcom/unnamed/b/atv/view/AndroidTreeView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toggleNode(Lcom/unnamed/b/atv/model/TreeNode;)V

    .line 289
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
