.class public Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "ConstraintHeightExpandableListView.java"


# instance fields
.field private mMaxHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/high16 v4, 0x42c80000    # 100.0f

    iput v4, p0, Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;->mMaxHeight:F

    .line 24
    sget-object v4, Lcn/com/magnity/magnitymx/R$styleable;->ConstraintHeightListView:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, v5, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 27
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 29
    .local v3, "type":I
    if-nez v3, :cond_0

    .line 30
    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;->mMaxHeight:F

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "type":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 38
    .local v0, "specSize":I
    iget v1, p0, Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;->mMaxHeight:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;->mMaxHeight:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 39
    iget v1, p0, Lcn/com/magnity/magnitymx/online/ConstraintHeightExpandableListView;->mMaxHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 43
    return-void
.end method
