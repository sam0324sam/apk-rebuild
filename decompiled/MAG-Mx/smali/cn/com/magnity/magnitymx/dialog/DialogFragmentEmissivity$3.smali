.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;
.super Landroid/widget/BaseAdapter;
.source "DialogFragmentEmissivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f05003d

    const/4 v6, 0x0

    .line 102
    if-nez p2, :cond_0

    .line 103
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$1;)V

    .line 104
    .local v0, "viewHolder":Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0048

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    const v1, 0x7f0800ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->access$202(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0801af

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->access$302(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 108
    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_0
    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$3;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;->access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-object p2

    .line 114
    .end local v0    # "viewHolder":Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;

    .restart local v0    # "viewHolder":Lcn/com/magnity/magnitymx/dialog/DialogFragmentEmissivity$ViewHolder;
    goto :goto_0
.end method
