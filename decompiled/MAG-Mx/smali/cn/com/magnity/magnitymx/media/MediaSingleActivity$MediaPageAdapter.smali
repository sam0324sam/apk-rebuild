.class Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MediaSingleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    return-void
.end method

.method private releaseImageViewResouce(Lcn/com/magnity/magnitymx/media/MediaSingleView;)V
    .locals 1
    .param p1, "v"    # Lcn/com/magnity/magnitymx/media/MediaSingleView;

    .prologue
    .line 940
    if-nez p1, :cond_0

    .line 944
    :goto_0
    return-void

    .line 943
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 948
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 949
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/MediaSingleView;

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->releaseImageViewResouce(Lcn/com/magnity/magnitymx/media/MediaSingleView;)V

    .line 953
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 969
    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-virtual {v8}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0a0054

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 971
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 973
    .local v2, "name":Ljava/lang/String;
    const v8, 0x7f08009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/MediaSingleView;

    .line 974
    .local v0, "img":Lcn/com/magnity/magnitymx/media/MediaSingleView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .line 975
    invoke-static {v8}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, "path":Ljava/lang/String;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v8, v3}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1600(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 978
    const v8, 0x7f0800bf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 980
    .local v6, "videoLogo":Landroid/widget/ImageView;
    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaUtils;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v4

    .line 981
    .local v4, "type":I
    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    .line 982
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 986
    :goto_0
    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1700(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1800(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaViewPager;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->setOnChildActionListener(Lcn/com/magnity/magnitymx/media/OnChildActionListener;)V

    .line 989
    const v8, 0x7f0800ad

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 990
    .local v5, "uploadLogo":Landroid/widget/ImageView;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-static {v8, v2}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1900(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Ljava/lang/String;)Z

    move-result v1

    .line 991
    .local v1, "isUploaded":Z
    if-eqz v1, :cond_1

    .line 992
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 997
    return-object v7

    .line 984
    .end local v1    # "isUploaded":Z
    .end local v5    # "uploadLogo":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 994
    .restart local v1    # "isUploaded":Z
    .restart local v5    # "uploadLogo":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 936
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 958
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object v0, p3

    .line 960
    check-cast v0, Landroid/view/View;

    .line 961
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 965
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/MediaSingleView;

    invoke-static {v2, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1502(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleView;)Lcn/com/magnity/magnitymx/media/MediaSingleView;

    goto :goto_0
.end method
