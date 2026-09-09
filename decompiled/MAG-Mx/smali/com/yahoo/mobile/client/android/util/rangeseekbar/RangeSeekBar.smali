.class public Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;
.super Landroid/widget/ImageView;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;,
        Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;,
        Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# static fields
.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final DEFAULT_COLOR:I

.field public static final DEFAULT_MAXIMUM:Ljava/lang/Integer;

.field public static final DEFAULT_MINIMUM:Ljava/lang/Integer;

.field private static final DEFAULT_TEXT_DISTANCE_TO_BUTTON_IN_DP:I = 0x8

.field private static final DEFAULT_TEXT_DISTANCE_TO_TOP_IN_DP:I = 0x8

.field private static final INITIAL_PADDING_IN_DP:I = 0x8

.field public static final INVALID_POINTER_ID:I = 0xff

.field public static final TEXT_LATERAL_PADDING_IN_DP:I = 0x3


# instance fields
.field private INITIAL_PADDING:F

.field private final LINE_HEIGHT_IN_DP:I

.field private absoluteMaxValue:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private absoluteMaxValuePrim:D

.field private absoluteMinValue:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private absoluteMinValuePrim:D

.field private listener:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mDistanceToTop:I

.field private mDownMotionX:F

.field private mIsDragging:Z

.field private mRect:Landroid/graphics/RectF;

.field private mScaledTouchSlop:I

.field private mSingleThumb:Z

.field private mTextOffset:I

.field private mTextSize:I

.field private normalizedMaxValue:D

.field private normalizedMinValue:D

.field private notifyWhileDragging:Z

.field private numberType:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

.field private padding:F

.field private final paint:Landroid/graphics/Paint;

.field private pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

.field private final thumbDisabledImage:Landroid/graphics/Bitmap;

.field private final thumbHalfHeight:F

.field private final thumbHalfWidth:F

.field private final thumbImage:Landroid/graphics/Bitmap;

.field private final thumbPressedImage:Landroid/graphics/Bitmap;

.field private final thumbWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_MINIMUM:Ljava/lang/Integer;

    .line 53
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_MAXIMUM:Ljava/lang/Integer;

    .line 79
    const/16 v0, 0xff

    const/16 v1, 0x33

    const/16 v2, 0xb5

    const/16 v3, 0xe5

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    iput v1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->LINE_HEIGHT_IN_DP:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070099

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbDisabledImage:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbWidth:F

    .line 64
    iget v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfWidth:F

    .line 65
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfHeight:F

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    .line 72
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    .line 73
    iput-object v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->notifyWhileDragging:Z

    .line 91
    const/16 v0, 0xff

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    .line 108
    invoke-direct {p0, p1, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->LINE_HEIGHT_IN_DP:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070099

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbDisabledImage:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbWidth:F

    .line 64
    iget v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfWidth:F

    .line 65
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfHeight:F

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    .line 72
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->notifyWhileDragging:Z

    .line 91
    const/16 v0, 0xff

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput v1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->LINE_HEIGHT_IN_DP:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070099

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbDisabledImage:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbWidth:F

    .line 64
    iget v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfWidth:F

    .line 65
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfHeight:F

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    .line 72
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->notifyWhileDragging:Z

    .line 91
    const/16 v0, 0xff

    iput v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 409
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method private drawThumb(FZLandroid/graphics/Canvas;Z)V
    .locals 4
    .param p1, "screenCoord"    # F
    .param p2, "pressed"    # Z
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "areSelectedValuesDefault"    # Z

    .prologue
    .line 555
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    if-eqz p4, :cond_0

    .line 556
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbDisabledImage:Landroid/graphics/Bitmap;

    .line 561
    .local v0, "buttonToDraw":Landroid/graphics/Bitmap;
    :goto_0
    iget v1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfWidth:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 564
    return-void

    .line 558
    .end local v0    # "buttonToDraw":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .restart local v0    # "buttonToDraw":Landroid/graphics/Bitmap;
    :goto_1
    goto :goto_0

    .end local v0    # "buttonToDraw":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private evalPressedThumb(F)Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;
    .locals 6
    .param p1, "touchX"    # F

    .prologue
    .line 573
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/4 v2, 0x0

    .line 574
    .local v2, "result":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;
    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, p1, v4, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v1

    .line 575
    .local v1, "minThumbPressed":Z
    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, p1, v4, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v0

    .line 576
    .local v0, "maxThumbPressed":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MIN:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    .line 584
    :cond_0
    :goto_0
    return-object v2

    .line 578
    :cond_1
    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MAX:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    goto :goto_0

    .line 579
    :cond_2
    if-eqz v1, :cond_3

    .line 580
    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MIN:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    goto :goto_0

    .line 581
    :cond_3
    if-eqz v0, :cond_0

    .line 582
    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MAX:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    goto :goto_0
.end method

.method private extractNumericValueFromAttributes(Landroid/content/res/TypedArray;II)Ljava/lang/Number;
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "attribute"    # I
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "II)TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 123
    .local v0, "tv":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    :goto_0
    return-object v2

    .line 127
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 128
    .local v1, "type":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 129
    int-to-float v2, p3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/high16 v9, 0x40000000    # 2.0f

    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 136
    if-nez p2, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setRangeToDefaultValues()V

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setValuePrimAndNumberType()V

    .line 149
    invoke-static {p1, v5}, Lcom/yahoo/mobile/client/android/util/PixelUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->INITIAL_PADDING:F

    .line 151
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextSize:I

    .line 152
    invoke-static {p1, v5}, Lcom/yahoo/mobile/client/android/util/PixelUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDistanceToTop:I

    .line 153
    iget v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextSize:I

    invoke-static {p1, v5}, Lcom/yahoo/mobile/client/android/util/PixelUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDistanceToTop:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextOffset:I

    .line 156
    invoke-static {p1, v8}, Lcom/yahoo/mobile/client/android/util/PixelUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    int-to-float v1, v2

    .line 157
    .local v1, "lineHeight":F
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    iget v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextOffset:I

    int-to-float v4, v4

    iget v5, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfHeight:F

    add-float/2addr v4, v5

    div-float v5, v1, v9

    sub-float/2addr v4, v5

    .line 159
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextOffset:I

    int-to-float v6, v6

    iget v7, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfHeight:F

    add-float/2addr v6, v7

    div-float v7, v1, v9

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mRect:Landroid/graphics/RectF;

    .line 163
    invoke-virtual {p0, v8}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setFocusable(Z)V

    .line 164
    invoke-virtual {p0, v8}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mScaledTouchSlop:I

    .line 166
    return-void

    .line 139
    .end local v1    # "lineHeight":F
    :cond_0
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/com/magnity/magnitymx/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_MINIMUM:Ljava/lang/Integer;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v8, v2}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->extractNumericValueFromAttributes(Landroid/content/res/TypedArray;II)Ljava/lang/Number;

    move-result-object v2

    sget-object v3, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_MAXIMUM:Ljava/lang/Integer;

    .line 142
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v4, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->extractNumericValueFromAttributes(Landroid/content/res/TypedArray;II)Ljava/lang/Number;

    move-result-object v3

    .line 140
    invoke-virtual {p0, v2, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setRangeValues(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 143
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mSingleThumb:Z

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private isInThumbRange(FD)Z
    .locals 2
    .param p1, "touchX"    # F
    .param p2, "normalizedThumbValue"    # D

    .prologue
    .line 595
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    invoke-direct {p0, p2, p3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizedToScreen(D)F
    .locals 5
    .param p1, "normalizedCoord"    # D

    .prologue
    .line 652
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private normalizedToValue(D)Ljava/lang/Number;
    .locals 11
    .param p1, "normalized"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 626
    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v6, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    add-double v0, v2, v4

    .line 628
    .local v0, "v":D
    iget-object v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->numberType:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    mul-double v4, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->toNumber(D)Ljava/lang/Number;

    move-result-object v2

    return-object v2
.end method

.method private final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 383
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 384
    .local v1, "pointerId":I
    iget v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 388
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 389
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDownMotionX:F

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    .line 392
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private screenToNormalized(F)D
    .locals 9
    .param p1, "screenCoord"    # F

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/high16 v8, 0x40000000    # 2.0f

    const-wide/16 v4, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getWidth()I

    move-result v2

    .line 663
    .local v2, "width":I
    int-to-float v3, v2

    iget v6, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    mul-float/2addr v6, v8

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    .line 668
    :goto_0
    return-wide v4

    .line 667
    :cond_0
    iget v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    sub-float v3, p1, v3

    int-to-float v6, v2

    iget v7, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v3, v6

    float-to-double v0, v3

    .line 668
    .local v0, "result":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_0
.end method

.method private setNormalizedMaxValue(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 614
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    .line 615
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    .line 616
    return-void
.end method

.method private setNormalizedMinValue(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 604
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    .line 605
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    .line 606
    return-void
.end method

.method private setRangeToDefaultValues()V
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_MINIMUM:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    .line 178
    sget-object v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_MAXIMUM:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    .line 179
    invoke-direct {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setValuePrimAndNumberType()V

    .line 180
    return-void
.end method

.method private setValuePrimAndNumberType()V
    .locals 2

    .prologue
    .line 183
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    .line 184
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 185
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    invoke-static {v0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;->fromNumber(Ljava/lang/Number;)Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->numberType:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$NumberType;

    .line 186
    return-void
.end method

.method private final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 395
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 396
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 398
    .local v1, "x":F
    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MIN:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mSingleThumb:Z

    if-nez v2, :cond_1

    .line 399
    invoke-direct {p0, v1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    sget-object v2, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MAX:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-direct {p0, v1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method private valueToNormalized(Ljava/lang/Number;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v0, 0x0

    .line 638
    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 642
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getAbsoluteMaxValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getAbsoluteMinValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getSelectedMaxValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v0, v1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToValue(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMinValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToValue(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public isNotifyWhileDragging()Z
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget-boolean v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->notifyWhileDragging:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 450
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 452
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 453
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 454
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const v12, -0x777778

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e0057

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "minLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e0056

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "maxLabel":Ljava/lang/String;
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    iget-object v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 461
    .local v6, "minMaxLabelSize":F
    iget v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextOffset:I

    int-to-float v11, v11

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfHeight:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextSize:I

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    add-float v5, v11, v12

    .line 462
    .local v5, "minMaxHeight":F
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v11, v5, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 463
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v6

    iget-object v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v11, v5, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 464
    iget v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->INITIAL_PADDING:F

    add-float/2addr v11, v6

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbHalfWidth:F

    add-float/2addr v11, v12

    iput v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    .line 467
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mRect:Landroid/graphics/RectF;

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    iput v12, v11, Landroid/graphics/RectF;->left:F

    .line 468
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->padding:F

    sub-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->right:F

    .line 469
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 471
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getAbsoluteMinValue()Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 472
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getAbsoluteMaxValue()Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    .line 474
    .local v10, "selectedValuesAreDefault":Z
    :goto_0
    if-eqz v10, :cond_4

    const v0, -0x777778

    .line 479
    .local v0, "colorToUseForButtonsAndHighlightedLine":I
    :goto_1
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mRect:Landroid/graphics/RectF;

    iget-wide v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToScreen(D)F

    move-result v12

    iput v12, v11, Landroid/graphics/RectF;->left:F

    .line 480
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mRect:Landroid/graphics/RectF;

    iget-wide v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToScreen(D)F

    move-result v12

    iput v12, v11, Landroid/graphics/RectF;->right:F

    .line 482
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 486
    iget-boolean v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mSingleThumb:Z

    if-nez v11, :cond_0

    .line 487
    iget-wide v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToScreen(D)F

    move-result v11

    sget-object v12, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MIN:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    iget-object v13, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    invoke-virtual {v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-direct {p0, v11, v12, p1, v10}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;Z)V

    .line 492
    :cond_0
    iget-wide v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToScreen(D)F

    move-result v11

    sget-object v12, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->MAX:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    iget-object v13, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    invoke-virtual {v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-direct {p0, v11, v12, p1, v10}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;Z)V

    .line 496
    if-nez v10, :cond_2

    .line 497
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 498
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/yahoo/mobile/client/android/util/PixelUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v9

    .line 502
    .local v9, "offset":I
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 503
    .local v7, "minText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "maxText":Ljava/lang/String;
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    int-to-float v12, v9

    add-float v8, v11, v12

    .line 505
    .local v8, "minTextWidth":F
    iget-object v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    int-to-float v12, v9

    add-float v3, v11, v12

    .line 507
    .local v3, "maxTextWidth":F
    iget-boolean v11, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mSingleThumb:Z

    if-nez v11, :cond_1

    .line 508
    iget-wide v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    .line 509
    invoke-direct {p0, v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToScreen(D)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v12, v8

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDistanceToTop:I

    iget v13, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextSize:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 508
    invoke-virtual {p1, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 515
    :cond_1
    iget-wide v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    .line 516
    invoke-direct {p0, v12, v13}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedToScreen(D)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v12, v3

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDistanceToTop:I

    iget v13, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mTextSize:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 515
    invoke-virtual {p1, v2, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    .end local v2    # "maxText":Ljava/lang/String;
    .end local v3    # "maxTextWidth":F
    .end local v7    # "minText":Ljava/lang/String;
    .end local v8    # "minTextWidth":F
    .end local v9    # "offset":I
    :cond_2
    monitor-exit p0

    return-void

    .line 472
    .end local v0    # "colorToUseForButtonsAndHighlightedLine":I
    .end local v10    # "selectedValuesAreDefault":Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 474
    .restart local v10    # "selectedValuesAreDefault":Z
    :cond_4
    :try_start_1
    sget v0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->DEFAULT_COLOR:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 450
    .end local v1    # "maxLabel":Ljava/lang/String;
    .end local v4    # "minLabel":Ljava/lang/String;
    .end local v5    # "minMaxHeight":F
    .end local v6    # "minMaxLabelSize":F
    .end local v10    # "selectedValuesAreDefault":Z
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 433
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    monitor-enter p0

    const/16 v1, 0xc8

    .line 434
    .local v1, "width":I
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 439
    .local v0, "height":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 442
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 433
    .end local v0    # "height":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 540
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 541
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 542
    const-string v1, "MIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    .line 543
    const-string v1, "MAX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    .line 544
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 528
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 530
    const-string v1, "MIN"

    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMinValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 531
    const-string v1, "MAX"

    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->normalizedMaxValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 532
    return-object v0
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 418
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mIsDragging:Z

    .line 419
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 425
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mIsDragging:Z

    .line 426
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 377
    :goto_0
    return v4

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 292
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v4, v5

    .line 377
    goto :goto_0

    .line 296
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    .line 297
    iget v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 298
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDownMotionX:F

    .line 300
    iget v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDownMotionX:F

    invoke-direct {p0, v4}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->evalPressedThumb(F)Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    move-result-object v4

    iput-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    .line 303
    iget-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    if-nez v4, :cond_2

    .line 304
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p0, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setPressed(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    .line 309
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->onStartTrackingTouch()V

    .line 310
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 311
    invoke-direct {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 315
    .end local v2    # "pointerIndex":I
    :pswitch_2
    iget-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    if-eqz v4, :cond_1

    .line 317
    iget-boolean v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_4

    .line 318
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 333
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->notifyWhileDragging:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->listener:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_1

    .line 334
    iget-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->listener:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v7

    invoke-interface {v4, p0, v6, v7}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 321
    :cond_4
    iget v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 322
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 324
    .local v3, "x":F
    iget v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDownMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 325
    invoke-virtual {p0, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setPressed(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    .line 327
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->onStartTrackingTouch()V

    .line 328
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 329
    invoke-direct {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_2

    .line 339
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    :pswitch_3
    iget-boolean v6, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_5

    .line 340
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 341
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->onStopTrackingTouch()V

    .line 342
    invoke-virtual {p0, v4}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setPressed(Z)V

    .line 351
    :goto_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->pressedThumb:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$Thumb;

    .line 352
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    .line 353
    iget-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->listener:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_1

    .line 354
    iget-object v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->listener:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v7

    invoke-interface {v4, p0, v6, v7}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 346
    :cond_5
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->onStartTrackingTouch()V

    .line 347
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 348
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 358
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 360
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mDownMotionX:F

    .line 361
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mActivePointerId:I

    .line 362
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 366
    .end local v1    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 367
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 370
    :pswitch_6
    iget-boolean v6, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_6

    .line 371
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->onStopTrackingTouch()V

    .line 372
    invoke-virtual {p0, v4}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setPressed(Z)V

    .line 374
    :cond_6
    invoke-virtual {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public resetSelectedValues()V
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    invoke-virtual {p0, v0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMinValue(Ljava/lang/Number;)V

    .line 190
    iget-object v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    invoke-virtual {p0, v0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 191
    return-void
.end method

.method public setNotifyWhileDragging(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 203
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    iput-boolean p1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->notifyWhileDragging:Z

    .line 204
    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    .local p1, "listener":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener<TT;>;"
    iput-object p1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->listener:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 277
    return-void
.end method

.method public setRangeValues(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    .local p1, "minValue":Ljava/lang/Number;, "TT;"
    .local p2, "maxValue":Ljava/lang/Number;, "TT;"
    iput-object p1, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    .line 170
    iput-object p2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    .line 171
    invoke-direct {p0}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setValuePrimAndNumberType()V

    .line 172
    return-void
.end method

.method public setSelectedMaxValue(Ljava/lang/Number;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 264
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->valueToNormalized(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method public setSelectedMinValue(Ljava/lang/Number;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;, "Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v4, 0x0

    .line 240
    iget-wide v0, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v2, p0, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0, v4, v5}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0, p1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->valueToNormalized(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setNormalizedMinValue(D)V

    goto :goto_0
.end method
