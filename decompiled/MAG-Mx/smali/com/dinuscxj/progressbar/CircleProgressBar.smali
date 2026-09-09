.class public Lcom/dinuscxj/progressbar/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dinuscxj/progressbar/CircleProgressBar$ShaderMode;,
        Lcom/dinuscxj/progressbar/CircleProgressBar$Style;
    }
.end annotation


# static fields
.field private static final COLOR_FFD3D3D5:Ljava/lang/String; = "#ffe3e3e5"

.field private static final COLOR_FFF2A670:Ljava/lang/String; = "#fff2a670"

.field private static final DEFAULT_LINE_COUNT:I = 0x2d

.field private static final DEFAULT_LINE_WIDTH:F = 4.0f

.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "%d%%"

.field private static final DEFAULT_PROGRESS_STROKE_WIDTH:F = 1.0f

.field private static final DEFAULT_PROGRESS_TEXT_SIZE:F = 11.0f

.field private static final DEFAULT_START_DEGREE:F = -90.0f

.field private static final LINE:I = 0x0

.field private static final LINEAR:I = 0x0

.field private static final RADIAL:I = 0x1

.field private static final SOLID:I = 0x1

.field private static final SOLID_LINE:I = 0x2

.field private static final SWEEP:I = 0x2


# instance fields
.field private mBackgroundColor:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mCap:Landroid/graphics/Paint$Cap;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawProgressText:Z

.field private mLineCount:I

.field private mLineWidth:F

.field private mProgressBackgroundColor:I

.field private final mProgressBackgroundPaint:Landroid/graphics/Paint;

.field private mProgressEndColor:I

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRectF:Landroid/graphics/RectF;

.field private mProgressStartColor:I

.field private mProgressStrokeWidth:F

.field private mProgressTextColor:I

.field private mProgressTextFormatPattern:Ljava/lang/String;

.field private final mProgressTextPaint:Landroid/graphics/Paint;

.field private final mProgressTextRect:Landroid/graphics/Rect;

.field private mProgressTextSize:F

.field private mRadius:F

.field private mShader:I

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dinuscxj/progressbar/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextPaint:Landroid/graphics/Paint;

    .line 111
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->adjustIndeterminate()V

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/dinuscxj/progressbar/CircleProgressBar;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->initPaint()V

    .line 114
    return-void
.end method

.method private adjustIndeterminate()V
    .locals 6

    .prologue
    .line 216
    :try_start_0
    const-class v4, Landroid/widget/ProgressBar;

    const-string v5, "mOnlyIndeterminate"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 217
    .local v3, "mOnlyIndeterminateField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 218
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    const-class v4, Landroid/widget/ProgressBar;

    const-string v5, "mIndeterminate"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 221
    .local v2, "mIndeterminateField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 222
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    const-class v4, Landroid/widget/ProgressBar;

    const-string v5, "mCurrentDrawable"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 225
    .local v1, "mCurrentDrawableField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 226
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v1    # "mCurrentDrawableField":Ljava/lang/reflect/Field;
    .end local v2    # "mIndeterminateField":Ljava/lang/reflect/Field;
    .end local v3    # "mOnlyIndeterminateField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 242
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundColor:I

    if-eqz v0, :cond_0

    .line 243
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    iget-object v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    :cond_0
    return-void
.end method

.method private drawLineProgress(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineCount:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-float v13, v14

    .line 280
    .local v13, "unitDegrees":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    .line 281
    .local v10, "outerCircleRadius":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineWidth:F

    sub-float v9, v2, v7

    .line 283
    .local v9, "interCircleRadius":F
    invoke-virtual/range {p0 .. p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineCount:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    float-to-int v11, v2

    .line 285
    .local v11, "progressLineCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineCount:I

    if-ge v8, v2, :cond_1

    .line 286
    int-to-float v2, v8

    mul-float v12, v2, v13

    .line 288
    .local v12, "rotateDegrees":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v7, v14

    mul-float/2addr v7, v9

    add-float v3, v2, v7

    .line 289
    .local v3, "startX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    mul-float/2addr v7, v9

    sub-float v4, v2, v7

    .line 291
    .local v4, "startY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v7, v14

    mul-float/2addr v7, v10

    add-float v5, v2, v7

    .line 292
    .local v5, "stopX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    mul-float/2addr v7, v10

    sub-float v6, v2, v7

    .line 294
    .local v6, "stopY":F
    if-ge v8, v11, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 297
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 300
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "stopX":F
    .end local v6    # "stopY":F
    .end local v12    # "rotateDegrees":F
    :cond_1
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 261
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 270
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->drawLineProgress(Landroid/graphics/Canvas;)V

    .line 273
    :goto_0
    return-void

    .line 263
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->drawSolidProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->drawSolidLineProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawProgressText(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-boolean v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mDrawProgressText:Z

    if-nez v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextFormatPattern:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "progressText":Ljava/lang/String;
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 257
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    iget-object v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawSolidLineProgress(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 314
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 315
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    iget-object v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 316
    return-void
.end method

.method private drawSolidProgress(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 306
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 307
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 308
    return-void
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 121
    sget-object v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_background_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundColor:I

    .line 125
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_draw_progress_text:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mDrawProgressText:Z

    .line 127
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_line_count:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineCount:I

    .line 128
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_text_format_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_text_format_pattern:I

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextFormatPattern:Ljava/lang/String;

    .line 131
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_style:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    .line 132
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_shader:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mShader:I

    .line 133
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_stroke_cap:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    sget v2, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_stroke_cap:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_1
    iput-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    .line 136
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_line_width:I

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/dinuscxj/progressbar/UnitUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineWidth:F

    .line 137
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_text_size:I

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v2, v3}, Lcom/dinuscxj/progressbar/UnitUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextSize:F

    .line 138
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_stroke_width:I

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/dinuscxj/progressbar/UnitUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    .line 140
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_start_color:I

    const-string v2, "#fff2a670"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    .line 141
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_end_color:I

    const-string v2, "#fff2a670"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressEndColor:I

    .line 142
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_text_color:I

    const-string v2, "#fff2a670"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextColor:I

    .line 143
    sget v1, Lcom/dinuscxj/progressbar/R$styleable;->CircleProgressBar_progress_background_color:I

    const-string v2, "#ffe3e3e5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundColor:I

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    return-void

    .line 129
    :cond_0
    const-string v1, "%d%%"

    goto/16 :goto_0

    .line 134
    :cond_1
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_1
.end method

.method private initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 153
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 160
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    if-ne v0, v2, :cond_1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 165
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    return-void

    .line 155
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_1
.end method

.method private updateProgressShader()V
    .locals 11

    .prologue
    const/4 v6, 0x2

    .line 174
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressEndColor:I

    if-eq v1, v2, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "shader":Landroid/graphics/Shader;
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mShader:I

    packed-switch v1, :pswitch_data_0

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 205
    .end local v0    # "shader":Landroid/graphics/Shader;
    :goto_1
    return-void

    .line 178
    .restart local v0    # "shader":Landroid/graphics/Shader;
    :pswitch_0
    new-instance v0, Landroid/graphics/LinearGradient;

    .end local v0    # "shader":Landroid/graphics/Shader;
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    iget v6, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressEndColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 181
    .restart local v0    # "shader":Landroid/graphics/Shader;
    goto :goto_0

    .line 183
    :pswitch_1
    new-instance v0, Landroid/graphics/RadialGradient;

    .end local v0    # "shader":Landroid/graphics/Shader;
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    iget v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    iget v4, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    iget v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressEndColor:I

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 185
    .restart local v0    # "shader":Landroid/graphics/Shader;
    goto :goto_0

    .line 188
    :pswitch_2
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v9, v2

    .line 189
    .local v9, "radian":F
    const-wide v4, -0x3fa9800000000000L    # -90.0

    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    if-ne v1, v6, :cond_0

    const-wide/16 v2, 0x0

    .line 190
    :goto_2
    sub-double v2, v4, v2

    double-to-float v10, v2

    .line 192
    .local v10, "rotateDegrees":F
    new-instance v0, Landroid/graphics/SweepGradient;

    .end local v0    # "shader":Landroid/graphics/Shader;
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    new-array v3, v6, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressEndColor:I

    aput v5, v3, v4

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 194
    .restart local v0    # "shader":Landroid/graphics/Shader;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 195
    .local v8, "matrix":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    invoke-virtual {v8, v10, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 196
    invoke-virtual {v0, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 189
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "rotateDegrees":F
    :cond_0
    float-to-double v2, v9

    .line 190
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    goto :goto_2

    .line 202
    .end local v0    # "shader":Landroid/graphics/Shader;
    .end local v9    # "radian":F
    :cond_1
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 203
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 192
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundColor:I

    return v0
.end method

.method public getCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineCount:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineWidth:F

    return v0
.end method

.method public getProgressBackgroundColor()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundColor:I

    return v0
.end method

.method public getProgressEndColor()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressEndColor:I

    return v0
.end method

.method public getProgressStartColor()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    return v0
.end method

.method public getProgressStrokeWidth()F
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    return v0
.end method

.method public getProgressTextColor()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextColor:I

    return v0
.end method

.method public getProgressTextFormatPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextSize:F

    return v0
.end method

.method public getShader()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mShader:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->drawProgressText(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 324
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    .line 325
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    .line 327
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    .line 328
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 329
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterY:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 330
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 331
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCenterX:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 333
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->updateProgressShader()V

    .line 336
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 337
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundColor:I

    .line 345
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 347
    return-void
.end method

.method public setCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mCap:Landroid/graphics/Paint$Cap;

    .line 461
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 462
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 463
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 464
    return-void
.end method

.method public setLineCount(I)V
    .locals 0
    .param p1, "lineCount"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineCount:I

    .line 422
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 423
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .prologue
    .line 430
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mLineWidth:F

    .line 431
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 432
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 2
    .param p1, "progressBackgroundColor"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundColor:I

    .line 408
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 410
    return-void
.end method

.method public setProgressEndColor(I)V
    .locals 0
    .param p1, "progressEndColor"    # I

    .prologue
    .line 388
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressEndColor:I

    .line 389
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->updateProgressShader()V

    .line 390
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 391
    return-void
.end method

.method public setProgressStartColor(I)V
    .locals 0
    .param p1, "progressStartColor"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStartColor:I

    .line 379
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->updateProgressShader()V

    .line 380
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 381
    return-void
.end method

.method public setProgressStrokeWidth(F)V
    .locals 4
    .param p1, "progressStrokeWidth"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 359
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    .line 360
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressStrokeWidth:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 361
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 362
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 0
    .param p1, "progressTextColor"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextColor:I

    .line 399
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 400
    return-void
.end method

.method public setProgressTextFormatPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "progressTextformatPattern"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextFormatPattern:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 352
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 0
    .param p1, "progressTextSize"    # F

    .prologue
    .line 369
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressTextSize:F

    .line 370
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 371
    return-void
.end method

.method public setShader(I)V
    .locals 0
    .param p1, "shader"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mShader:I

    .line 451
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->updateProgressShader()V

    .line 452
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 453
    return-void
.end method

.method public setStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    const/4 v2, 0x1

    .line 439
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    .line 440
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->mStyle:I

    if-ne v0, v2, :cond_1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 442
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    .line 443
    return-void

    .line 440
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    .line 441
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_1
.end method
