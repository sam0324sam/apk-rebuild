.class public Lcom/yahoo/mobile/client/android/util/PixelUtil;
.super Ljava/lang/Object;
.source "PixelUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 31
    int-to-float v1, p1

    invoke-static {p0}, Lcom/yahoo/mobile/client/android/util/PixelUtil;->getPixelScaleFactor(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 32
    .local v0, "px":I
    return v0
.end method

.method private static getPixelScaleFactor(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public static pxToDp(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 36
    int-to-float v1, p1

    invoke-static {p0}, Lcom/yahoo/mobile/client/android/util/PixelUtil;->getPixelScaleFactor(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 37
    .local v0, "dp":I
    return v0
.end method
