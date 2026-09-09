.class Lcom/unnamed/b/atv/view/AndroidTreeView$2;
.super Ljava/lang/Object;
.source "AndroidTreeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 264
    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iput-object p2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v2}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;->onClick(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)V

    .line 272
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$100(Lcom/unnamed/b/atv/view/AndroidTreeView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toggleNode(Lcom/unnamed/b/atv/model/TreeNode;)V

    .line 275
    :cond_1
    return-void

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$000(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$000(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$2;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v2}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;->onClick(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)V

    goto :goto_0
.end method
