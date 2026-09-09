.class public Lcn/com/magnity/magnitymx/util/SlideSwitch;
.super Landroid/view/View;
.source "SlideSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR_THEME:I

.field private static final RIM_SIZE:I = 0x6

.field public static final SHAPE_CIRCLE:I = 0x2

.field public static final SHAPE_RECT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private backCircleRect:Landroid/graphics/RectF;

.field private backRect:Landroid/graphics/Rect;

.field private color_theme:I

.field private diffX:I

.field private eventLastX:I

.field private eventStartX:I

.field private frontCircleRect:Landroid/graphics/RectF;

.field private frontRect:Landroid/graphics/Rect;

.field private frontRect_left:I

.field private frontRect_left_begin:I

.field private isOpen:Z

.field private listener:Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

.field private max_left:I

.field private min_left:I

.field private paint:Landroid/graphics/Paint;

.field private shape:I

.field private slideable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "#ff00ee00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->DEFAULT_COLOR_THEME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v1, 0x6

    iput v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left_begin:I

    .line 66
    iput v4, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->diffX:I

    .line 67
    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->slideable:Z

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->listener:Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    .line 79
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    sget-object v1, Lcn/com/magnity/magnitymx/R$styleable;->slideswitch:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    sget v2, Lcn/com/magnity/magnitymx/util/SlideSwitch;->DEFAULT_COLOR_THEME:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->color_theme:I

    .line 84
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->isOpen:Z

    .line 85
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->shape:I

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/util/SlideSwitch;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 41
    iget v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    return v0
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/util/SlideSwitch;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    return p1
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/util/SlideSwitch;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->alpha:I

    return p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/util/SlideSwitch;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 41
    iget v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    return v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/util/SlideSwitch;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->invalidateView()V

    return-void
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 41
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->listener:Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->isOpen:Z

    return v0
.end method

.method static synthetic access$502(Lcn/com/magnity/magnitymx/util/SlideSwitch;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->isOpen:Z

    return p1
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/util/SlideSwitch;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left_begin:I

    return p1
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/util/SlideSwitch;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 41
    iget v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->min_left:I

    return v0
.end method

.method private invalidateView()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->invalidate()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public initDrawingVal()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->getMeasuredWidth()I

    move-result v1

    .line 112
    .local v1, "width":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->getMeasuredHeight()I

    move-result v0

    .line 114
    .local v0, "height":I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backCircleRect:Landroid/graphics/RectF;

    .line 115
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontCircleRect:Landroid/graphics/RectF;

    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    .line 117
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backRect:Landroid/graphics/Rect;

    .line 118
    iput v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->min_left:I

    .line 119
    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->shape:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 120
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    .line 123
    :goto_0
    iget-boolean v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->isOpen:Z

    if-eqz v2, :cond_1

    .line 124
    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    iput v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    .line 125
    const/16 v2, 0xff

    iput v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->alpha:I

    .line 130
    :goto_1
    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    iput v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left_begin:I

    .line 131
    return-void

    .line 122
    :cond_0
    add-int/lit8 v2, v0, -0xc

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x6

    iput v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    goto :goto_0

    .line 127
    :cond_1
    iput v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    .line 128
    iput v4, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->alpha:I

    goto :goto_1
.end method

.method public measureDimension(II)I
    .locals 4
    .param p1, "defaultSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 136
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 137
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 138
    move v0, v2

    .line 145
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 140
    .end local v0    # "result":I
    :cond_1
    move v0, p1

    .line 141
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 142
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public moveToDest(Z)V
    .locals 5
    .param p1, "toRight"    # Z

    .prologue
    const/4 v4, 0x0

    .line 235
    const/4 v1, 0x2

    new-array v2, v1, [I

    iget v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    aput v1, v2, v4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    :goto_0
    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 237
    .local v0, "toDestAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 240
    invoke-virtual {p0, v4}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setSlideable(Z)V

    .line 241
    new-instance v1, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;-><init>(Lcn/com/magnity/magnitymx/util/SlideSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    new-instance v1, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;

    invoke-direct {v1, p0, p1}, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;-><init>(Lcn/com/magnity/magnitymx/util/SlideSwitch;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    return-void

    .line 235
    .end local v0    # "toDestAnim":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->min_left:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x6

    const/4 v5, -0x1

    const v3, -0x777778

    .line 150
    iget v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->shape:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->color_theme:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    iget v3, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    .line 157
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    .line 156
    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x6

    .line 165
    .local v0, "radius":I
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backCircleRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 167
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backCircleRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 168
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->color_theme:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backCircleRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 171
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    iget v3, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backRect:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xc

    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->backRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    .line 171
    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontCircleRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 175
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontCircleRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 100
    const/16 v2, 0x118

    invoke-virtual {p0, v2, p1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->measureDimension(II)I

    move-result v1

    .line 101
    .local v1, "width":I
    const/16 v2, 0x8c

    invoke-virtual {p0, v2, p2}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->measureDimension(II)I

    move-result v0

    .line 102
    .local v0, "height":I
    iget v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->shape:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 103
    if-ge v1, v0, :cond_0

    .line 104
    mul-int/lit8 v1, v0, 0x2

    .line 106
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setMeasuredDimension(II)V

    .line 107
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->initDrawingVal()V

    .line 108
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 291
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 292
    check-cast v0, Landroid/os/Bundle;

    .line 293
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isOpen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->isOpen:Z

    .line 294
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 296
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 297
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 303
    const-string v1, "isOpen"

    iget-boolean v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->isOpen:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 182
    iget-boolean v6, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->slideable:Z

    if-nez v6, :cond_1

    .line 183
    sget-object v4, Lcn/com/magnity/magnitymx/util/SlideSwitch;->TAG:Ljava/lang/String;

    const-string v5, "onTouchEvent slideable = false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 216
    :cond_0
    :goto_0
    return v4

    .line 186
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 187
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->eventStartX:I

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->eventLastX:I

    .line 193
    iget v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->eventLastX:I

    iget v6, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->eventStartX:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->diffX:I

    .line 194
    iget v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->diffX:I

    iget v6, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left_begin:I

    add-int v1, v5, v6

    .line 195
    .local v1, "tempX":I
    iget v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    if-le v1, v5, :cond_2

    iget v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    .line 196
    :cond_2
    iget v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->min_left:I

    if-ge v1, v5, :cond_3

    iget v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->min_left:I

    .line 197
    :cond_3
    iget v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->min_left:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    if-gt v1, v5, :cond_0

    .line 198
    iput v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    .line 199
    const/high16 v5, 0x437f0000    # 255.0f

    int-to-float v6, v1

    mul-float/2addr v5, v6

    iget v6, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->alpha:I

    .line 200
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->invalidateView()V

    goto :goto_0

    .line 204
    .end local v1    # "tempX":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->eventStartX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 205
    .local v3, "wholeX":I
    iget v6, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left:I

    iput v6, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left_begin:I

    .line 207
    iget v6, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->frontRect_left_begin:I

    iget v7, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->max_left:I

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_5

    move v2, v4

    .line 208
    .local v2, "toRight":Z
    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_4

    .line 209
    if-nez v2, :cond_6

    move v2, v4

    .line 211
    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->moveToDest(Z)V

    goto :goto_0

    .end local v2    # "toRight":Z
    :cond_5
    move v2, v5

    .line 207
    goto :goto_1

    .restart local v2    # "toRight":Z
    :cond_6
    move v2, v5

    .line 209
    goto :goto_2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setShapeType(I)V
    .locals 0
    .param p1, "shapeType"    # I

    .prologue
    .line 282
    iput p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->shape:I

    .line 283
    return-void
.end method

.method public setSlideListener(Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->listener:Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    .line 232
    return-void
.end method

.method public setSlideable(Z)V
    .locals 0
    .param p1, "slideable"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->slideable:Z

    .line 287
    return-void
.end method

.method public setState(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->isOpen:Z

    .line 271
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->initDrawingVal()V

    .line 272
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->invalidateView()V

    .line 273
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->listener:Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 275
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->listener:Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;->open()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch;->listener:Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;->close()V

    goto :goto_0
.end method
