.class public Lcom/github/lzyzsd/circleprogress/DonutProgress;
.super Landroid/view/View;
.source "DonutProgress.java"


# static fields
.field private static final INSTANCE_BACKGROUND_COLOR:Ljava/lang/String; = "inner_background_color"

.field private static final INSTANCE_FINISHED_STROKE_COLOR:Ljava/lang/String; = "finished_stroke_color"

.field private static final INSTANCE_FINISHED_STROKE_WIDTH:Ljava/lang/String; = "finished_stroke_width"

.field private static final INSTANCE_INNER_BOTTOM_TEXT:Ljava/lang/String; = "inner_bottom_text"

.field private static final INSTANCE_INNER_BOTTOM_TEXT_COLOR:Ljava/lang/String; = "inner_bottom_text_color"

.field private static final INSTANCE_INNER_BOTTOM_TEXT_SIZE:Ljava/lang/String; = "inner_bottom_text_size"

.field private static final INSTANCE_INNER_DRAWABLE:Ljava/lang/String; = "inner_drawable"

.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_STARTING_DEGREE:Ljava/lang/String; = "starting_degree"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT:Ljava/lang/String; = "text"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_UNFINISHED_STROKE_COLOR:Ljava/lang/String; = "unfinished_stroke_color"

.field private static final INSTANCE_UNFINISHED_STROKE_WIDTH:Ljava/lang/String; = "unfinished_stroke_width"


# instance fields
.field private attributeResourceId:I

.field private final default_finished_color:I

.field private final default_inner_background_color:I

.field private final default_inner_bottom_text_color:I

.field private final default_inner_bottom_text_size:F

.field private final default_max:I

.field private final default_startingDegree:I

.field private final default_stroke_width:F

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unfinished_color:I

.field private finishedOuterRect:Landroid/graphics/RectF;

.field private finishedPaint:Landroid/graphics/Paint;

.field private finishedStrokeColor:I

.field private finishedStrokeWidth:F

.field private innerBackgroundColor:I

.field private innerBottomText:Ljava/lang/String;

.field private innerBottomTextColor:I

.field private innerBottomTextHeight:F

.field protected innerBottomTextPaint:Landroid/graphics/Paint;

.field private innerBottomTextSize:F

.field private innerCirclePaint:Landroid/graphics/Paint;

.field private max:I

.field private final min_size:I

.field private prefixText:Ljava/lang/String;

.field private progress:F

.field private showText:Z

.field private startingDegree:I

.field private suffixText:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field protected textPaint:Landroid/graphics/Paint;

.field private textSize:F

.field private unfinishedOuterRect:Landroid/graphics/RectF;

.field private unfinishedPaint:Landroid/graphics/Paint;

.field private unfinishedStrokeColor:I

.field private unfinishedStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v6, 0xf1

    const/16 v5, 0xcc

    const/16 v4, 0x91

    const/16 v2, 0x42

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedOuterRect:Landroid/graphics/RectF;

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedOuterRect:Landroid/graphics/RectF;

    .line 32
    iput v3, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->attributeResourceId:I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:F

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 46
    const-string v1, "%"

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->text:Ljava/lang/String;

    .line 53
    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_finished_color:I

    .line 54
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_unfinished_color:I

    .line 55
    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_color:I

    .line 56
    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_color:I

    .line 57
    iput v3, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_background_color:I

    .line 58
    const/16 v1, 0x64

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_max:I

    .line 59
    iput v3, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_startingDegree:I

    .line 95
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_size:F

    .line 96
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->min_size:I

    .line 97
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_stroke_width:F

    .line 98
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_size:F

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initByAttributes(Landroid/content/res/TypedArray;)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initPainters()V

    .line 105
    return-void
.end method

.method private getProgressAngle()F
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->max:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private measure(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 361
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 362
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 363
    .local v2, "size":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 364
    move v1, v2

    .line 371
    .local v1, "result":I
    :cond_0
    :goto_0
    return v1

    .line 366
    .end local v1    # "result":I
    :cond_1
    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->min_size:I

    .line 367
    .restart local v1    # "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 368
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getAttributeResourceId()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->attributeResourceId:I

    return v0
.end method

.method public getFinishedStrokeColor()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    return v0
.end method

.method public getFinishedStrokeWidth()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    return v0
.end method

.method public getInnerBackgroundColor()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    return v0
.end method

.method public getInnerBottomText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerBottomTextColor()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    return v0
.end method

.method public getInnerBottomTextSize()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->max:I

    return v0
.end method

.method public getPrefixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:F

    return v0
.end method

.method public getStartingDegree()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->startingDegree:I

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    return v0
.end method

.method public getUnfinishedStrokeColor()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    return v0
.end method

.method public getUnfinishedStrokeWidth()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    return v0
.end method

.method protected initByAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 138
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_finished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_finished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    .line 139
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_unfinished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_unfinished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    .line 140
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_show_text:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->showText:Z

    .line 141
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_drawable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->attributeResourceId:I

    .line 143
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_max:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setMax(I)V

    .line 144
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setProgress(F)V

    .line 145
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_finished_stroke_width:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_stroke_width:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    .line 146
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_unfinished_stroke_width:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_stroke_width:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    .line 148
    iget-boolean v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->showText:Z

    if-eqz v0, :cond_3

    .line 149
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_prefix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_prefix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 152
    :cond_0
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 155
    :cond_1
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->text:Ljava/lang/String;

    .line 159
    :cond_2
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_text_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    .line 160
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    .line 161
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    .line 162
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    .line 163
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    .line 166
    :cond_3
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    .line 167
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    .line 168
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    .line 170
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_circle_starting_degree:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->startingDegree:I

    .line 171
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_background_color:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    .line 172
    return-void
.end method

.method protected initPainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->showText:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initPainters()V

    .line 177
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 178
    return-void
.end method

.method public isShowText()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->showText:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 376
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 378
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 379
    .local v8, "delta":F
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedOuterRect:Landroid/graphics/RectF;

    .line 381
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v8

    .line 382
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v8

    .line 379
    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 383
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedOuterRect:Landroid/graphics/RectF;

    .line 385
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v8

    .line 386
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v8

    .line 383
    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 388
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    div-float v9, v0, v12

    .line 389
    .local v9, "innerCircleRadius":F
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v12

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 390
    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedOuterRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getStartingDegree()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgressAngle()F

    move-result v3

    iget-object v5, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 391
    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedOuterRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getStartingDegree()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgressAngle()F

    move-result v2

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-direct {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgressAngle()F

    move-result v3

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 393
    iget-boolean v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->showText:Z

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->text:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->text:Ljava/lang/String;

    .line 395
    .local v10, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float v11, v0, v1

    .line 397
    .local v11, "textHeight":F
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v12

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v11

    div-float/2addr v1, v12

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 400
    .end local v11    # "textHeight":F
    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 402
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextHeight:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v12

    sub-float v7, v0, v1

    .line 403
    .local v7, "bottomTextBaseline":F
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    .end local v7    # "bottomTextBaseline":F
    .end local v10    # "text":Ljava/lang/String;
    :cond_1
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->attributeResourceId:I

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->attributeResourceId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 409
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v12

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v12

    const/4 v2, 0x0

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 411
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void

    .line 394
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->measure(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->measure(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setMeasuredDimension(II)V

    .line 356
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextHeight:F

    .line 357
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 440
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 441
    check-cast v0, Landroid/os/Bundle;

    .line 442
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    .line 443
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    .line 444
    const-string v1, "inner_bottom_text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    .line 445
    const-string v1, "inner_bottom_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    .line 446
    const-string v1, "inner_bottom_text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    .line 447
    const-string v1, "finished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    .line 448
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    .line 449
    const-string v1, "finished_stroke_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    .line 450
    const-string v1, "unfinished_stroke_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    .line 451
    const-string v1, "inner_background_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    .line 452
    const-string v1, "inner_drawable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->attributeResourceId:I

    .line 453
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initPainters()V

    .line 454
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setMax(I)V

    .line 455
    const-string v1, "starting_degree"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setStartingDegree(I)V

    .line 456
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setProgress(F)V

    .line 457
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 458
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 459
    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->text:Ljava/lang/String;

    .line 460
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 464
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 415
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 417
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 419
    const-string v1, "inner_bottom_text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 420
    const-string v1, "inner_bottom_text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomTextColor()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 421
    const-string v1, "inner_bottom_text"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "inner_bottom_text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v1, "finished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getFinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getUnfinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v1, "starting_degree"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getStartingDegree()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgress()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 428
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "finished_stroke_width"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getFinishedStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 432
    const-string v1, "unfinished_stroke_width"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getUnfinishedStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 433
    const-string v1, "inner_background_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string v1, "inner_drawable"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getAttributeResourceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    return-object v0
.end method

.method public setAttributeResourceId(I)V
    .locals 0
    .param p1, "attributeResourceId"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->attributeResourceId:I

    .line 349
    return-void
.end method

.method public setDonut_progress(Ljava/lang/String;)V
    .locals 1
    .param p1, "percent"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setProgress(F)V

    .line 469
    :cond_0
    return-void
.end method

.method public setFinishedStrokeColor(I)V
    .locals 0
    .param p1, "finishedStrokeColor"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    .line 257
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 258
    return-void
.end method

.method public setFinishedStrokeWidth(F)V
    .locals 0
    .param p1, "finishedStrokeWidth"    # F

    .prologue
    .line 193
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    .line 194
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 195
    return-void
.end method

.method public setInnerBackgroundColor(I)V
    .locals 0
    .param p1, "innerBackgroundColor"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    .line 302
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 303
    return-void
.end method

.method public setInnerBottomText(Ljava/lang/String;)V
    .locals 0
    .param p1, "innerBottomText"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 313
    return-void
.end method

.method public setInnerBottomTextColor(I)V
    .locals 0
    .param p1, "innerBottomTextColor"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    .line 331
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 332
    return-void
.end method

.method public setInnerBottomTextSize(F)V
    .locals 0
    .param p1, "innerBottomTextSize"    # F

    .prologue
    .line 321
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    .line 322
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 323
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 227
    if-lez p1, :cond_0

    .line 228
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->max:I

    .line 229
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 231
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixText"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 294
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 215
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:F

    .line 216
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getMax()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 217
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getMax()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:F

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 220
    return-void
.end method

.method public setShowText(Z)V
    .locals 0
    .param p1, "showText"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->showText:Z

    .line 186
    return-void
.end method

.method public setStartingDegree(I)V
    .locals 0
    .param p1, "startingDegree"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->startingDegree:I

    .line 340
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 341
    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffixText"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 285
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->text:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 276
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    .line 248
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 249
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 238
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    .line 239
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 240
    return-void
.end method

.method public setUnfinishedStrokeColor(I)V
    .locals 0
    .param p1, "unfinishedStrokeColor"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    .line 266
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 267
    return-void
.end method

.method public setUnfinishedStrokeWidth(F)V
    .locals 0
    .param p1, "unfinishedStrokeWidth"    # F

    .prologue
    .line 202
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    .line 203
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 204
    return-void
.end method
