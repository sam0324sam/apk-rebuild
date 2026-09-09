.class public Lcom/unnamed/b/atv/view/TwoDScrollView;
.super Landroid/widget/FrameLayout;
.source "TwoDScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTwoDScrollViewMovedFocus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 93
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->initTwoDScrollView()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 98
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->initTwoDScrollView()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 103
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->initTwoDScrollView()V

    .line 104
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 220
    .local v1, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 221
    .local v2, "childWidth":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 224
    .end local v1    # "childHeight":I
    .end local v2    # "childWidth":I
    :cond_1
    return v3
.end method

.method private clamp(III)I
    .locals 1
    .param p1, "n"    # I
    .param p2, "my"    # I
    .param p3, "child"    # I

    .prologue
    .line 1082
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1098
    :cond_0
    const/4 p1, 0x0

    .line 1108
    .end local p1    # "n":I
    :cond_1
    :goto_0
    return p1

    .line 1100
    .restart local p1    # "n":I
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1106
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScroll(II)V
    .locals 0
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 723
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 724
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->smoothScrollBy(II)V

    .line 726
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZIIZII)Landroid/view/View;
    .locals 15
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "leftFocus"    # Z
    .param p5, "left"    # I
    .param p6, "right"    # I

    .prologue
    .line 498
    const/4 v14, 0x2

    invoke-virtual {p0, v14}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 499
    .local v3, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 508
    .local v2, "focusCandidate":Landroid/view/View;
    const/4 v4, 0x0

    .line 510
    .local v4, "foundFullyContainedFocusable":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 511
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_b

    .line 512
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 513
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    .line 514
    .local v13, "viewTop":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 515
    .local v7, "viewBottom":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 516
    .local v11, "viewLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    .line 518
    .local v12, "viewRight":I
    move/from16 v0, p2

    if-ge v0, v7, :cond_0

    move/from16 v0, p3

    if-ge v13, v0, :cond_0

    move/from16 v0, p5

    if-ge v0, v12, :cond_0

    move/from16 v0, p6

    if-ge v11, v0, :cond_0

    .line 523
    move/from16 v0, p2

    if-ge v0, v13, :cond_1

    move/from16 v0, p3

    if-ge v7, v0, :cond_1

    move/from16 v0, p5

    if-ge v0, v11, :cond_1

    move/from16 v0, p6

    if-ge v12, v0, :cond_1

    const/4 v10, 0x1

    .line 524
    .local v10, "viewIsFullyContained":Z
    :goto_1
    if-nez v2, :cond_2

    .line 526
    move-object v2, v6

    .line 527
    move v4, v10

    .line 511
    .end local v10    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 523
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 529
    .restart local v10    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    .line 530
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v14

    if-lt v13, v14, :cond_4

    :cond_3
    if-nez p1, :cond_7

    .line 531
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v14

    if-le v7, v14, :cond_7

    :cond_4
    const/4 v9, 0x1

    .line 532
    .local v9, "viewIsCloserToVerticalBoundary":Z
    :goto_3
    if-eqz p4, :cond_5

    .line 533
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v14

    if-lt v11, v14, :cond_6

    :cond_5
    if-nez p4, :cond_8

    .line 534
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v14

    if-le v12, v14, :cond_8

    :cond_6
    const/4 v8, 0x1

    .line 535
    .local v8, "viewIsCloserToHorizontalBoundary":Z
    :goto_4
    if-eqz v4, :cond_9

    .line 536
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 542
    move-object v2, v6

    goto :goto_2

    .line 531
    .end local v8    # "viewIsCloserToHorizontalBoundary":Z
    .end local v9    # "viewIsCloserToVerticalBoundary":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 534
    .restart local v9    # "viewIsCloserToVerticalBoundary":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 545
    .restart local v8    # "viewIsCloserToHorizontalBoundary":Z
    :cond_9
    if-eqz v10, :cond_a

    .line 547
    move-object v2, v6

    .line 548
    const/4 v4, 0x1

    goto :goto_2

    .line 549
    :cond_a
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 554
    move-object v2, v6

    goto :goto_2

    .line 560
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "viewBottom":I
    .end local v8    # "viewIsCloserToHorizontalBoundary":Z
    .end local v9    # "viewIsCloserToVerticalBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    .end local v11    # "viewLeft":I
    .end local v12    # "viewRight":I
    .end local v13    # "viewTop":I
    :cond_b
    return-object v2
.end method

.method private findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "leftFocus"    # Z
    .param p4, "left"    # I
    .param p5, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 467
    .local v8, "verticalFadingEdgeLength":I
    add-int v2, p2, v8

    .line 468
    .local v2, "topWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    sub-int v3, v0, v8

    .line 469
    .local v3, "bottomWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 470
    .local v7, "horizontalFadingEdgeLength":I
    add-int v5, p4, v7

    .line 471
    .local v5, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v0

    add-int/2addr v0, p4

    sub-int v6, v0, v7

    .line 473
    .local v6, "rightWithoutFadingEdge":I
    if-eqz p5, :cond_0

    .line 474
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 475
    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 476
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, v6, :cond_0

    .line 477
    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 480
    .end local p5    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p5

    .restart local p5    # "preferredFocusable":Landroid/view/View;
    :cond_0
    move-object v0, p0

    move v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object p5

    goto :goto_0
.end method

.method private initTwoDScrollView()V
    .locals 3

    .prologue
    .line 171
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->setFocusable(Z)V

    .line 173
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->setDescendantFocusability(I)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->setWillNotDraw(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 176
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTouchSlop:I

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMinimumVelocity:I

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMaximumVelocity:I

    .line 179
    return-void
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1022
    if-ne p1, p2, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return v1

    .line 1026
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1027
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(IIIIII)Z
    .locals 19
    .param p1, "directionY"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "directionX"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I

    .prologue
    .line 621
    const/4 v15, 0x1

    .line 622
    .local v15, "handled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v16

    .line 623
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v12

    .line 624
    .local v12, "containerTop":I
    add-int v9, v12, v16

    .line 625
    .local v9, "containerBottom":I
    const/16 v2, 0x21

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    const/4 v3, 0x1

    .line 626
    .local v3, "up":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v18

    .line 627
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v10

    .line 628
    .local v10, "containerLeft":I
    add-int v11, v10, v18

    .line 629
    .local v11, "containerRight":I
    const/16 v2, 0x21

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    const/4 v6, 0x1

    .local v6, "leftwards":Z
    :goto_1
    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 630
    invoke-direct/range {v2 .. v8}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object v17

    .line 631
    .local v17, "newFocused":Landroid/view/View;
    if-nez v17, :cond_0

    .line 632
    move-object/from16 v17, p0

    .line 634
    :cond_0
    move/from16 v0, p2

    if-lt v0, v12, :cond_1

    move/from16 v0, p3

    if-le v0, v9, :cond_2

    :cond_1
    move/from16 v0, p5

    if-lt v0, v10, :cond_6

    move/from16 v0, p6

    if-gt v0, v11, :cond_6

    .line 635
    :cond_2
    const/4 v15, 0x0

    .line 641
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_3

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 642
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 643
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 645
    :cond_3
    return v15

    .line 625
    .end local v3    # "up":Z
    .end local v6    # "leftwards":Z
    .end local v10    # "containerLeft":I
    .end local v11    # "containerRight":I
    .end local v17    # "newFocused":Landroid/view/View;
    .end local v18    # "width":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 629
    .restart local v3    # "up":Z
    .restart local v10    # "containerLeft":I
    .restart local v11    # "containerRight":I
    .restart local v18    # "width":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 637
    .restart local v6    # "leftwards":Z
    .restart local v17    # "newFocused":Landroid/view/View;
    :cond_6
    if-eqz v3, :cond_7

    sub-int v14, p2, v12

    .line 638
    .local v14, "deltaY":I
    :goto_3
    if-eqz v6, :cond_8

    sub-int v13, p5, v10

    .line 639
    .local v13, "deltaX":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    goto :goto_2

    .line 637
    .end local v13    # "deltaX":I
    .end local v14    # "deltaY":I
    :cond_7
    sub-int v14, p3, v9

    goto :goto_3

    .line 638
    .restart local v14    # "deltaY":I
    :cond_8
    sub-int v13, p6, v11

    goto :goto_4
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 841
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 843
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 844
    iget-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 845
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 846
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    .line 848
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 859
    invoke-virtual {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 860
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 861
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 862
    if-eqz p2, :cond_2

    .line 863
    invoke-virtual {p0, v2, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    .line 868
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 860
    goto :goto_0

    .line 865
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 195
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    return-void
.end method

.method public arrowScroll(IZ)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "horizontal"    # Z

    .prologue
    const/16 v8, 0x21

    const/16 v9, 0x82

    const/4 v7, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 657
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 658
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {v6, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 659
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getMaxScrollAmountHorizontal()I

    move-result v2

    .line 661
    .local v2, "maxJump":I
    :goto_0
    if-nez p2, :cond_7

    .line 662
    if-eqz v3, :cond_2

    .line 663
    iget-object v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 664
    iget-object v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 665
    iget-object v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v5

    .line 666
    .local v5, "scrollDelta":I
    invoke-direct {p0, v7, v5}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    .line 667
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 714
    :goto_1
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 659
    .end local v2    # "maxJump":I
    .end local v5    # "scrollDelta":I
    :cond_1
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getMaxScrollAmountVertical()I

    move-result v2

    goto :goto_0

    .line 670
    .restart local v2    # "maxJump":I
    :cond_2
    move v5, v2

    .line 671
    .restart local v5    # "scrollDelta":I
    if-ne p1, v8, :cond_4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v6

    if-ge v6, v5, :cond_4

    .line 672
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v5

    .line 682
    :cond_3
    :goto_3
    if-nez v5, :cond_5

    move v6, v7

    .line 683
    goto :goto_2

    .line 673
    :cond_4
    if-ne p1, v9, :cond_3

    .line 674
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 675
    invoke-virtual {p0, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 676
    .local v1, "daBottom":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v8

    add-int v4, v6, v8

    .line 677
    .local v4, "screenBottom":I
    sub-int v6, v1, v4

    if-ge v6, v2, :cond_3

    .line 678
    sub-int v5, v1, v4

    goto :goto_3

    .line 685
    .end local v1    # "daBottom":I
    .end local v4    # "screenBottom":I
    :cond_5
    if-ne p1, v9, :cond_6

    move v6, v5

    :goto_4
    invoke-direct {p0, v7, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    goto :goto_1

    :cond_6
    neg-int v6, v5

    goto :goto_4

    .line 688
    .end local v5    # "scrollDelta":I
    :cond_7
    if-eqz v3, :cond_8

    .line 689
    iget-object v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 690
    iget-object v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 691
    iget-object v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v5

    .line 692
    .restart local v5    # "scrollDelta":I
    invoke-direct {p0, v5, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    .line 693
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_1

    .line 696
    .end local v5    # "scrollDelta":I
    :cond_8
    move v5, v2

    .line 697
    .restart local v5    # "scrollDelta":I
    if-ne p1, v8, :cond_a

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v6

    if-ge v6, v5, :cond_a

    .line 698
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v5

    .line 708
    :cond_9
    :goto_5
    if-nez v5, :cond_b

    move v6, v7

    .line 709
    goto :goto_2

    .line 699
    :cond_a
    if-ne p1, v9, :cond_9

    .line 700
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_9

    .line 701
    invoke-virtual {p0, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 702
    .restart local v1    # "daBottom":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v8

    add-int v4, v6, v8

    .line 703
    .restart local v4    # "screenBottom":I
    sub-int v6, v1, v4

    if-ge v6, v2, :cond_9

    .line 704
    sub-int v5, v1, v4

    goto :goto_5

    .line 711
    .end local v1    # "daBottom":I
    .end local v4    # "screenBottom":I
    :cond_b
    if-ne p1, v9, :cond_c

    move v6, v5

    :goto_6
    invoke-direct {p0, v6, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    goto/16 :goto_1

    :cond_c
    neg-int v6, v5

    goto :goto_6
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    .line 772
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 798
    iget-object v5, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 815
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    .line 816
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v2

    .line 817
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 818
    .local v3, "x":I
    iget-object v5, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 819
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 820
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result v5

    .line 822
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v6, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result v6

    .line 821
    invoke-virtual {p0, v5, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollTo(II)V

    .line 826
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v5

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->onScrollChanged(IIII)V

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->postInvalidate()V

    .line 833
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    return-void

    .line 824
    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 880
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 928
    :cond_0
    :goto_0
    return v6

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v3

    .line 882
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v5

    .line 883
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 884
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 886
    .local v2, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 887
    add-int/2addr v5, v2

    .line 891
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 892
    sub-int/2addr v4, v2

    .line 894
    :cond_3
    const/4 v6, 0x0

    .line 895
    .local v6, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 899
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 901
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 908
    :goto_1
    invoke-virtual {p0, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 909
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 910
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 912
    goto :goto_0

    .line 904
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 912
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 917
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 919
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 926
    :goto_2
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 922
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    .line 766
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 231
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0x11

    const/16 v6, 0x82

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 246
    iget-object v5, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 247
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 251
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :goto_0
    return v3

    .restart local v0    # "currentFocused":Landroid/view/View;
    .restart local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    move v3, v4

    .line 252
    goto :goto_0

    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    move v3, v4

    .line 254
    goto :goto_0

    .line 256
    :cond_3
    const/4 v1, 0x0

    .line 257
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 289
    goto :goto_0

    .line 260
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 261
    invoke-virtual {p0, v8, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 263
    :cond_5
    invoke-virtual {p0, v8, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    .line 265
    goto :goto_1

    .line 267
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 268
    invoke-virtual {p0, v6, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 270
    :cond_6
    invoke-virtual {p0, v6, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    .line 272
    goto :goto_1

    .line 274
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 275
    invoke-virtual {p0, v7, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 277
    :cond_7
    invoke-virtual {p0, v7, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    .line 279
    goto :goto_1

    .line 281
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 282
    const/16 v4, 0x42

    invoke-virtual {p0, v4, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 284
    :cond_8
    const/16 v4, 0x42

    invoke-virtual {p0, v4, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v1

    goto :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public fling(II)V
    .locals 14
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1039
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v2

    sub-int v10, v0, v2

    .line 1040
    .local v10, "height":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 1041
    .local v9, "bottom":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v2

    sub-int v13, v0, v2

    .line 1042
    .local v13, "width":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 1044
    .local v12, "right":I
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v2

    const/4 v5, 0x0

    sub-int v6, v12, v13

    const/4 v7, 0x0

    sub-int v8, v9, v10

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1046
    if-lez p2, :cond_3

    const/4 v3, 0x1

    .line 1047
    .local v3, "movingDown":Z
    :goto_0
    if-lez p1, :cond_4

    const/4 v1, 0x1

    .line 1049
    .local v1, "movingRight":Z
    :goto_1
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;

    move-result-object v11

    .line 1050
    .local v11, "newFocused":Landroid/view/View;
    if-nez v11, :cond_0

    .line 1051
    move-object v11, p0

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v11, v0, :cond_1

    if-eqz v3, :cond_5

    const/16 v0, 0x82

    :goto_2
    invoke-virtual {v11, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->awakenScrollBars(I)Z

    .line 1060
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->invalidate()V

    .line 1062
    .end local v1    # "movingRight":Z
    .end local v3    # "movingDown":Z
    .end local v9    # "bottom":I
    .end local v10    # "height":I
    .end local v11    # "newFocused":Landroid/view/View;
    .end local v12    # "right":I
    .end local v13    # "width":I
    :cond_2
    return-void

    .line 1046
    .restart local v9    # "bottom":I
    .restart local v10    # "height":I
    .restart local v12    # "right":I
    .restart local v13    # "width":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1047
    .restart local v3    # "movingDown":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1054
    .restart local v1    # "movingRight":Z
    .restart local v11    # "newFocused":Landroid/view/View;
    :cond_5
    const/16 v0, 0x21

    goto :goto_2
.end method

.method public fullScroll(IZ)Z
    .locals 13
    .param p1, "direction"    # I
    .param p2, "horizontal"    # Z

    .prologue
    .line 576
    if-nez p2, :cond_2

    .line 577
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v8, 0x1

    .line 578
    .local v8, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v9

    .line 579
    .local v9, "height":I
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 580
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 581
    if-eqz v8, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v7

    .line 583
    .local v7, "count":I
    if-lez v7, :cond_0

    .line 584
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 585
    .local v11, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 586
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v9

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 589
    .end local v7    # "count":I
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result v0

    .line 603
    .end local v8    # "down":Z
    .end local v9    # "height":I
    :goto_1
    return v0

    .line 577
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 591
    :cond_2
    const/16 v0, 0x82

    if-ne p1, v0, :cond_4

    const/4 v10, 0x1

    .line 592
    .local v10, "right":Z
    :goto_2
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v12

    .line 593
    .local v12, "width":I
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 594
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 595
    if-eqz v10, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v7

    .line 597
    .restart local v7    # "count":I
    if-lez v7, :cond_3

    .line 598
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 599
    .restart local v11    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 600
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v12

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 603
    .end local v7    # "count":I
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result v0

    goto :goto_1

    .line 591
    .end local v10    # "right":Z
    .end local v12    # "width":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const/4 v3, 0x0

    .line 129
    :goto_0
    return v3

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 124
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 125
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 126
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 127
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 129
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 141
    :goto_0
    return v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 138
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 141
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmountHorizontal()I
    .locals 2

    .prologue
    .line 167
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxScrollAmountVertical()I
    .locals 2

    .prologue
    .line 163
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 147
    const/4 v3, 0x0

    .line 155
    :goto_0
    return v3

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 150
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 151
    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 152
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 153
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 155
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 112
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 115
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 781
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 782
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 784
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 785
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v5, 0x0

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 790
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 791
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 793
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 794
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 304
    .local v0, "action":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-boolean v7, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 354
    :goto_0
    return v5

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_1

    .line 308
    iput-boolean v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    move v5, v6

    .line 309
    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 312
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 313
    .local v1, "x":F
    packed-switch v0, :pswitch_data_0

    .line 354
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 323
    :pswitch_0
    iget v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 324
    .local v4, "yDiff":I
    iget v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v2, v6

    .line 325
    .local v2, "xDiff":I
    iget v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTouchSlop:I

    if-gt v4, v6, :cond_3

    iget v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTouchSlop:I

    if-le v2, v6, :cond_2

    .line 326
    :cond_3
    iput-boolean v5, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 332
    .end local v2    # "xDiff":I
    .end local v4    # "yDiff":I
    :pswitch_1
    iput v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    .line 333
    iput v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    .line 340
    iget-object v7, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    .line 346
    :pswitch_2
    iput-boolean v6, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 988
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    .line 991
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    .line 994
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 997
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollTo(II)V

    .line 998
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 955
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 956
    const/16 p1, 0x82

    .line 961
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 962
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 966
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    .line 967
    const/4 v1, 0x0

    .line 970
    :goto_2
    return v1

    .line 957
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 958
    const/16 p1, 0x21

    goto :goto_0

    .line 963
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 970
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1002
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1004
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1005
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1012
    iget-object v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1013
    iget-object v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1014
    .local v1, "scrollDeltaX":I
    iget-object v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1015
    .local v2, "scrollDeltaY":I
    invoke-direct {p0, v1, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v12

    if-eqz v12, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v11

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->canScroll()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 370
    iget-object v12, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_2

    .line 371
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 373
    :cond_2
    iget-object v12, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 376
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 377
    .local v10, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 379
    .local v9, "x":F
    packed-switch v0, :pswitch_data_0

    .line 442
    :cond_3
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 385
    :pswitch_0
    iget-object v11, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_4

    .line 386
    iget-object v11, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 390
    :cond_4
    iput v10, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    .line 391
    iput v9, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    goto :goto_1

    .line 395
    :pswitch_1
    iget v12, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    sub-float/2addr v12, v9

    float-to-int v3, v12

    .line 396
    .local v3, "deltaX":I
    iget v12, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    sub-float/2addr v12, v10

    float-to-int v4, v12

    .line 397
    .local v4, "deltaY":I
    iput v9, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    .line 398
    iput v10, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    .line 400
    if-gez v3, :cond_8

    .line 401
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v12

    if-gez v12, :cond_5

    .line 402
    const/4 v3, 0x0

    .line 413
    :cond_5
    :goto_2
    if-gez v4, :cond_a

    .line 414
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v11

    if-gez v11, :cond_6

    .line 415
    const/4 v4, 0x0

    .line 426
    :cond_6
    :goto_3
    if-nez v4, :cond_7

    if-eqz v3, :cond_3

    .line 427
    :cond_7
    invoke-virtual {p0, v3, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_1

    .line 404
    :cond_8
    if-lez v3, :cond_5

    .line 405
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v13

    sub-int v7, v12, v13

    .line 406
    .local v7, "rightEdge":I
    invoke-virtual {p0, v11}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v7

    .line 407
    .local v1, "availableToScroll":I
    if-lez v1, :cond_9

    .line 408
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 410
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 417
    .end local v1    # "availableToScroll":I
    .end local v7    # "rightEdge":I
    :cond_a
    if-lez v4, :cond_6

    .line 418
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v12

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v13

    sub-int v2, v12, v13

    .line 419
    .local v2, "bottomEdge":I
    invoke-virtual {p0, v11}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v1, v11, v2

    .line 420
    .restart local v1    # "availableToScroll":I
    if-lez v1, :cond_b

    .line 421
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    .line 423
    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    .line 430
    .end local v1    # "availableToScroll":I
    .end local v2    # "bottomEdge":I
    .end local v3    # "deltaX":I
    .end local v4    # "deltaY":I
    :pswitch_2
    iget-object v8, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 431
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    iget v12, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 432
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    float-to-int v5, v11

    .line 433
    .local v5, "initialXVelocity":I
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    float-to-int v6, v11

    .line 434
    .local v6, "initialYVelocity":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMinimumVelocity:I

    if-le v11, v12, :cond_c

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_c

    .line 435
    neg-int v11, v5

    neg-int v12, v6

    invoke-virtual {p0, v11, v12}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fling(II)V

    .line 437
    :cond_c
    iget-object v11, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_3

    .line 438
    iget-object v11, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 439
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 934
    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 935
    invoke-direct {p0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    .line 941
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 942
    return-void

    .line 938
    :cond_1
    iput-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 977
    invoke-direct {p0, p2, p3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    .line 983
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 984
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1072
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result p1

    .line 1074
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result p2

    .line 1075
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 1076
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1079
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 735
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 736
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 737
    iget-object v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 738
    iget-object v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->awakenScrollBars(I)Z

    .line 739
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->invalidate()V

    .line 746
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastScroll:J

    .line 747
    return-void

    .line 741
    :cond_0
    iget-object v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    iget-object v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 744
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->smoothScrollBy(II)V

    .line 757
    return-void
.end method
