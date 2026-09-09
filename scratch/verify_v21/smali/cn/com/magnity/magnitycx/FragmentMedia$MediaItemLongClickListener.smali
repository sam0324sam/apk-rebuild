.class Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentMedia;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentMedia;Lcn/com/magnity/magnitycx/FragmentMedia$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentMedia$1;

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 410
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$800(Lcn/com/magnity/magnitycx/FragmentMedia;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 427
    :goto_0
    return v3

    .line 414
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$900(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1000(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$700(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    .line 418
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1200(Lcn/com/magnity/magnitycx/FragmentMedia;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1, v3}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$802(Lcn/com/magnity/magnitycx/FragmentMedia;I)I

    .line 421
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v2}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$900(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v4, v3, v2}, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;->onModeChanged(III)V

    .line 424
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1300(Lcn/com/magnity/magnitycx/FragmentMedia;)Lcn/com/magnity/magnitycx/MediaGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitycx/MediaGridViewAdapter;->setMode(I)V

    .line 426
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemLongClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1400(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    goto :goto_0
.end method
