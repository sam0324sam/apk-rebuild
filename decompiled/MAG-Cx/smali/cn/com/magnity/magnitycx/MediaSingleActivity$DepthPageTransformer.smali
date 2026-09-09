.class public Lcn/com/magnity/magnitycx/MediaSingleActivity$DepthPageTransformer;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DepthPageTransformer"
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.75f


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$DepthPageTransformer;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 444
    .local v0, "pageWidth":I
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 446
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 472
    :goto_0
    return-void

    .line 448
    :cond_0
    cmpg-float v2, p2, v3

    if-gtz v2, :cond_1

    .line 450
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 451
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 452
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 453
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 455
    :cond_1
    cmpg-float v2, p2, v5

    if-gtz v2, :cond_2

    .line 457
    sub-float v2, v5, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 460
    int-to-float v2, v0

    neg-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 463
    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    .line 464
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 465
    .local v1, "scaleFactor":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 466
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 470
    .end local v1    # "scaleFactor":F
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
