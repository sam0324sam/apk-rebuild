.class Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/FragmentMedia$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/FragmentMedia$1;

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

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

    .line 765
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1700(Lcn/com/magnity/magnitymx/media/FragmentMedia;)I

    move-result v6

    if-nez v6, :cond_1

    .line 766
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 767
    .local v0, "directory":Ljava/io/File;
    if-nez v0, :cond_0

    .line 796
    .end local v0    # "directory":Ljava/io/File;
    :goto_0
    return-void

    .line 771
    .restart local v0    # "directory":Ljava/io/File;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 772
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "mediaWindowFlag"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v6, "mediaIndex"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    const-string v6, "mediaNameList"

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1800(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 775
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    const/16 v7, 0x129

    invoke-virtual {v6, v1, v7}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 777
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1800(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 778
    .local v2, "name":Ljava/lang/String;
    const v6, 0x7f0800ab

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 779
    .local v3, "v":Landroid/widget/ImageView;
    const v6, 0x7f0800c0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 780
    .local v5, "vimg":Landroid/widget/ImageView;
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1900(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 781
    .local v4, "val":Ljava/lang/Object;
    if-eqz v4, :cond_2

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "val":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 782
    :cond_2
    const v6, 0x7f070061

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    const v6, 0x3f19999a    # 0.6f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 784
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1900(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :goto_1
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    instance-of v6, v6, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    if-eqz v6, :cond_3

    .line 792
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;

    iget-object v7, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$2000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)I

    move-result v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1800(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcn/com/magnity/magnitymx/media/DelegateMediaStatusChanged;->onSelChanged(II)V

    .line 794
    :cond_3
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1600(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    goto/16 :goto_0

    .line 786
    :cond_4
    const v6, 0x7f0700ac

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 788
    iget-object v6, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaItemClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1900(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
