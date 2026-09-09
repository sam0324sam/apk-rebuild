.class Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MediaSingleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;Lcn/com/magnity/magnitycx/MediaSingleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/MediaSingleActivity$1;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V

    return-void
.end method

.method private releaseImageViewResouce(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 373
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 375
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 376
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 377
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 386
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 387
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    const v1, 0x7f0e00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->releaseImageViewResouce(Landroid/widget/ImageView;)V

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$600(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 396
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040044

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 398
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$600(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    .local v1, "name":Ljava/lang/String;
    const v5, 0x7f0e00f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 401
    .local v0, "img":Landroid/widget/ImageView;
    iget-object v6, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v7, v7, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$600(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$700(Lcn/com/magnity/magnitycx/MediaSingleActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    const v5, 0x7f0e00fa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 405
    .local v3, "videoLogo":Landroid/widget/ImageView;
    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->guessMediaTypeBySuffix(Ljava/lang/String;)I

    move-result v2

    .line 406
    .local v2, "type":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 407
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :goto_0
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MediaPageAdapter;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$800(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    return-object v4

    .line 409
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 369
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
