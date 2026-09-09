.class Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentMedia;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentMedia;Lcn/com/magnity/magnitycx/FragmentMedia$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentMedia$1;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 378
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$800(Lcn/com/magnity/magnitycx/FragmentMedia;)I

    move-result v5

    if-nez v5, :cond_0

    .line 379
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "mediaWindowFlag"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v5, "mediaIndex"

    invoke-virtual {v0, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v5, "mediaNameList"

    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$900(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 383
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-virtual {v5, v0, v7}, Lcn/com/magnity/magnitycx/FragmentMedia;->startActivityForResult(Landroid/content/Intent;I)V

    .line 404
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$900(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    .local v1, "name":Ljava/lang/String;
    const v5, 0x7f0e0103

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 387
    .local v2, "v":Landroid/widget/ImageView;
    const v5, 0x7f0e0102

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 388
    .local v4, "vimg":Landroid/widget/ImageView;
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1000(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 389
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "val":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 390
    :cond_1
    const v5, 0x7f03001b

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 392
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1000(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :goto_1
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    if-eqz v5, :cond_2

    .line 400
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;

    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1100(Lcn/com/magnity/magnitycx/FragmentMedia;)I

    move-result v6

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v7}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$900(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcn/com/magnity/magnitycx/sdk/DelegateMediaStatusChanged;->onSelChanged(II)V

    .line 402
    :cond_2
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$700(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    goto :goto_0

    .line 394
    :cond_3
    const v5, 0x7f03001c

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 396
    iget-object v5, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$1000(Lcn/com/magnity/magnitycx/FragmentMedia;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
