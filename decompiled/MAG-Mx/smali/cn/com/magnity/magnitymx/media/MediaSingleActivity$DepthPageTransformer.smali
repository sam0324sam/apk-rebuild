.class Lcn/com/magnity/magnitymx/media/MediaSingleActivity$DepthPageTransformer;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepthPageTransformer"
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.75f


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$DepthPageTransformer;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$DepthPageTransformer;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1036
    .local v1, "pageWidth":I
    const v3, 0x7f08009a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/MediaSingleView;

    .line 1038
    .local v0, "item":Lcn/com/magnity/magnitymx/media/MediaSingleView;
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    .line 1040
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1041
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->restore()V

    .line 1068
    :goto_0
    return-void

    .line 1043
    :cond_0
    cmpg-float v3, p2, v4

    if-gtz v3, :cond_1

    .line 1045
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1046
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1047
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1048
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 1050
    :cond_1
    cmpg-float v3, p2, v6

    if-gtz v3, :cond_2

    .line 1052
    sub-float v3, v6, p2

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1055
    int-to-float v3, v1

    neg-float v4, p2

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1058
    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3e800000    # 0.25f

    .line 1059
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 1060
    .local v2, "scaleFactor":F
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1061
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 1065
    .end local v2    # "scaleFactor":F
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1066
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/MediaSingleView;->restore()V

    goto :goto_0
.end method
