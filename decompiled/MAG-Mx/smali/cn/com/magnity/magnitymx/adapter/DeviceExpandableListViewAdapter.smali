.class public Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DeviceExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;,
        Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedChildPos:I

.field private mSelectedGroupPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "deviceGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/device/DeviceGroup;>;"
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 23
    iput v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mSelectedGroupPos:I

    .line 24
    iput v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mSelectedChildPos:I

    .line 28
    iput-object p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public addData(Lcn/com/magnity/magnitymx/device/DeviceGroup;)V
    .locals 1
    .param p1, "group"    # Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .prologue
    .line 149
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .line 54
    .local v0, "label":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmDevices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 67
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 113
    if-nez p4, :cond_1

    .line 114
    iget-object v2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 115
    new-instance v1, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;

    invoke-direct {v1, p0, v4}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$1;)V

    .line 116
    .local v1, "itemHolder":Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;
    const v2, 0x7f080054

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->access$602(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;Landroid/view/View;)Landroid/view/View;

    .line 117
    const v2, 0x7f080055

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->access$702(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 118
    const v2, 0x7f080053

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->access$802(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    :goto_0
    iget v2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mSelectedGroupPos:I

    if-ne v2, p1, :cond_2

    iget v2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mSelectedChildPos:I

    if-ne v2, p2, :cond_2

    .line 125
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->access$800(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/device/DeviceItem;

    .line 131
    .local v0, "child":Lcn/com/magnity/magnitymx/device/DeviceItem;
    if-eqz v0, :cond_0

    .line 132
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->access$700(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceItem;->getDevice_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-object p4

    .line 121
    .end local v0    # "child":Lcn/com/magnity/magnitymx/device/DeviceItem;
    .end local v1    # "itemHolder":Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;

    .restart local v1    # "itemHolder":Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;
    goto :goto_0

    .line 127
    :cond_2
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;->access$800(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$ItemHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .line 40
    .local v0, "label":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 43
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmDevices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 78
    iget-object v2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .line 79
    .local v0, "deviceGroup":Lcn/com/magnity/magnitymx/device/DeviceGroup;
    if-nez p3, :cond_0

    .line 80
    iget-object v2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 81
    new-instance v1, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;

    invoke-direct {v1, p0, v5}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;-><init>(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$1;)V

    .line 82
    .local v1, "groupHolder":Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    const v2, 0x7f080076

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$102(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/view/View;)Landroid/view/View;

    .line 83
    const v2, 0x7f080077

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$202(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    const v2, 0x7f080075

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$302(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 85
    const v2, 0x7f080053

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$402(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_0
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$300(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$400(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget v2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mSelectedGroupPos:I

    if-ne v2, p1, :cond_1

    .line 95
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$400(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_1
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$200(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/device/DeviceGroup;->getmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-object p3

    .line 88
    .end local v1    # "groupHolder":Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;

    .restart local v1    # "groupHolder":Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$400(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$300(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    invoke-static {v1}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;->access$400(Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public removeData(I)V
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 161
    return-void
.end method

.method public setSelected(II)V
    .locals 0
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .prologue
    .line 143
    iput p1, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mSelectedGroupPos:I

    .line 144
    iput p2, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mSelectedChildPos:I

    .line 145
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 146
    return-void
.end method

.method public updateData(ILcn/com/magnity/magnitymx/device/DeviceGroup;)V
    .locals 1
    .param p1, "groupPos"    # I
    .param p2, "group"    # Lcn/com/magnity/magnitymx/device/DeviceGroup;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->mDeviceGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/adapter/DeviceExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 156
    return-void
.end method
