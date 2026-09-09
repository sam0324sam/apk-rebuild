.class public Lcom/unnamed/b/atv/view/TreeNodeWrapperView;
.super Landroid/widget/LinearLayout;
.source "TreeNodeWrapperView.java"


# instance fields
.field private final containerStyle:I

.field private nodeContainer:Landroid/view/ViewGroup;

.field private nodeItemsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput p2, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->containerStyle:I

    .line 23
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 27
    invoke-virtual {p0, v6}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->setOrientation(I)V

    .line 29
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    .line 30
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/unnamed/b/atv/R$id;->node_header:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 33
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->containerStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 34
    .local v0, "newContext":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget v3, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->containerStyle:I

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    .line 35
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    sget v2, Lcom/unnamed/b/atv/R$id;->node_items:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 37
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->addView(Landroid/view/View;)V

    .line 41
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->addView(Landroid/view/View;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getNodeContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public insertNodeView(Landroid/view/View;)V
    .locals 1
    .param p1, "nodeView"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method
