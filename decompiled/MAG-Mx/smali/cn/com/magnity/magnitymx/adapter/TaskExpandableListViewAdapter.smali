.class public Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TaskExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;,
        Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
    }
.end annotation


# instance fields
.field private mCapturedColor:I

.field private mChildSelectedColor:I

.field private mContext:Landroid/content/Context;

.field private mGroupSelectedColor:I

.field private mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/TreeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedChildPos:I

.field private mSelectedGroupPos:I

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/TreeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "groups":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/TreeItem;>;"
    const/4 v2, -0x1

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mGroups:Ljava/util/List;

    .line 30
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f050048

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mGroupSelectedColor:I

    .line 31
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f05004c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mChildSelectedColor:I

    .line 32
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f05004d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mUnselectedColor:I

    .line 33
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    const v1, 0x7f05004b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mCapturedColor:I

    .line 34
    iput v2, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedGroupPos:I

    .line 35
    iput v2, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedChildPos:I

    .line 36
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 71
    .local v1, "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v2

    .line 74
    :cond_1
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->getChilds()Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "childs":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/task/TreeItem;>;"
    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p2, v3, :cond_0

    .line 78
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 88
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 151
    if-nez p4, :cond_1

    .line 152
    iget-object v5, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0a0072

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 153
    new-instance v4, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;

    invoke-direct {v4, p0, v9}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$1;)V

    .line 154
    .local v4, "itemHolder":Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;
    const v5, 0x7f0800fb

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->access$502(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;Landroid/view/View;)Landroid/view/View;

    .line 155
    const v5, 0x7f0800fc

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->access$602(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 156
    invoke-virtual {p4, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 162
    .local v1, "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    if-eqz v1, :cond_0

    .line 163
    invoke-static {v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->access$600(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget v5, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedGroupPos:I

    if-ne v5, p1, :cond_2

    iget v5, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedChildPos:I

    if-ne v5, p2, :cond_2

    move v3, v6

    .line 165
    .local v3, "isSelected":Z
    :goto_1
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->getUserData()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    move v0, v7

    .line 166
    .local v0, "captureStatus":I
    :goto_2
    if-ne v0, v6, :cond_4

    move v2, v6

    .line 168
    .local v2, "isCaptured":Z
    :goto_3
    if-eqz v3, :cond_5

    .line 169
    invoke-static {v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->access$500(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mChildSelectedColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    .end local v0    # "captureStatus":I
    .end local v2    # "isCaptured":Z
    .end local v3    # "isSelected":Z
    :cond_0
    :goto_4
    return-object p4

    .line 158
    .end local v1    # "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    .end local v4    # "itemHolder":Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;

    .restart local v4    # "itemHolder":Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;
    goto :goto_0

    .restart local v1    # "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    :cond_2
    move v3, v7

    .line 164
    goto :goto_1

    .line 165
    .restart local v3    # "isSelected":Z
    :cond_3
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->getUserData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .restart local v0    # "captureStatus":I
    :cond_4
    move v2, v7

    .line 166
    goto :goto_3

    .line 170
    .restart local v2    # "isCaptured":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 171
    invoke-static {v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->access$500(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mCapturedColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 173
    :cond_6
    invoke-static {v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;->access$500(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$ItemHolder;)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mUnselectedColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 46
    .local v0, "parent":Lcn/com/magnity/magnitymx/task/TreeItem;
    if-nez v0, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getChilds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getChildrenPosition(II)I
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChildrenCount(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    add-int v2, v1, p2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 62
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 99
    if-nez p3, :cond_1

    .line 100
    iget-object v2, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 101
    new-instance v0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;

    invoke-direct {v0, p0, v4}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$1;)V

    .line 102
    .local v0, "groupHolder":Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
    const v2, 0x7f0800fb

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$102(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;Landroid/view/View;)Landroid/view/View;

    .line 103
    const v2, 0x7f0800fc

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$202(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0800f9

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$302(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :goto_0
    invoke-static {v0}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$200(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mGroups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/task/TreeItem;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/task/TreeItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChildrenCount(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 113
    invoke-static {v0}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$300(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_1
    iget v2, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedGroupPos:I

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    .line 120
    .local v1, "isSelected":Z
    :cond_0
    if-eqz v1, :cond_3

    .line 121
    invoke-static {v0}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$100(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mGroupSelectedColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    :goto_2
    return-object p3

    .line 107
    .end local v0    # "groupHolder":Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
    .end local v1    # "isSelected":Z
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;

    .restart local v0    # "groupHolder":Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v0}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$300(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 123
    .restart local v1    # "isSelected":Z
    :cond_3
    invoke-static {v0}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;->access$100(Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter$GroupHolder;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mUnselectedColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method public getSelectedChildPos()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedChildPos:I

    return v0
.end method

.method public getSelectedGroupPos()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedGroupPos:I

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public setPosCaptured(II)V
    .locals 2
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 135
    .local v0, "child":Lcn/com/magnity/magnitymx/task/TreeItem;
    if-eqz v0, :cond_0

    .line 136
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/task/TreeItem;->setUserData(Ljava/lang/Object;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setSelectedPos(II)V
    .locals 0
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .prologue
    .line 129
    iput p1, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedGroupPos:I

    .line 130
    iput p2, p0, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->mSelectedChildPos:I

    .line 131
    return-void
.end method
