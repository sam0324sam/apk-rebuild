.class public Lcn/com/magnity/magnitymx/live/LiveSurfaceView;
.super Landroid/view/SurfaceView;
.source "LiveSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;
    }
.end annotation


# static fields
.field private static final ALARM_COLOR:I = -0x10000

.field public static LIVE_COLORBAR_WIDTH:I

.field private static mAlphaStep:I


# instance fields
.field private mAlarmPaint:Landroid/graphics/Paint;

.field private mBatteryExtraWidth:I

.field private mBatteryIconHeight:I

.field private mBatteryIconWidth:I

.field private mBatteryPaint:Landroid/graphics/Paint;

.field private mBlendCanvas:Landroid/graphics/Canvas;

.field private mCapRect:Landroid/graphics/Rect;

.field private mCaptureAlarmPaint:Landroid/graphics/Paint;

.field private mCaptureOSDParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

.field private mCapturePaint:Landroid/graphics/Paint;

.field private mCurrentMaxPaint:Landroid/graphics/Paint;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mImageCopy:Landroid/graphics/Bitmap;

.field private mImagePosLock:Ljava/util/concurrent/locks/Lock;

.field private volatile mLiveImgDx:I

.field private volatile mLiveImgDy:I

.field private volatile mLiveImgHeight:I

.field private volatile mLiveImgWidth:I

.field private mLiveRect:Landroid/graphics/Rect;

.field private mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

.field private mPaint:Landroid/graphics/Paint;

.field private mPfd:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

.field private mRecRect:Landroid/graphics/Rect;

.field private mRefBitmapLock:Ljava/util/concurrent/locks/Lock;

.field private mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartVisibleAlpha:F

.field private mStartX:I

.field private mStartY:I

.field private mStreamId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 160
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 162
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 164
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRefBitmapLock:Ljava/util/concurrent/locks/Lock;

    .line 165
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImagePosLock:Ljava/util/concurrent/locks/Lock;

    .line 166
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 168
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MagApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009c

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    and-int/lit8 v1, v1, -0x4

    sput v1, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->LIVE_COLORBAR_WIDTH:I

    .line 170
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 171
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x14

    sput v1, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mAlphaStep:I

    .line 173
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveRect:Landroid/graphics/Rect;

    .line 174
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRecRect:Landroid/graphics/Rect;

    .line 175
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCapRect:Landroid/graphics/Rect;

    .line 176
    return-void
.end method

.method private createPaint(IFFFI)Landroid/graphics/Paint;
    .locals 3
    .param p1, "color"    # I
    .param p2, "textSize"    # F
    .param p3, "strokeWidth"    # F
    .param p4, "shadowRadius"    # F
    .param p5, "shadowColor"    # I

    .prologue
    const/4 v2, 0x0

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 258
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 260
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 261
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    invoke-virtual {v0, p4, v2, v2, p5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 265
    return-object v0
.end method

.method private drawBattery(Landroid/graphics/Canvas;IIIILcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "osdParam"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;
    .param p7, "rect"    # Landroid/graphics/Rect;
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "cameraState"    # I

    .prologue
    .line 416
    add-int v1, p2, p4

    iget v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryExtraWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v11, v1, -0xa

    .line 417
    .local v11, "x":I
    add-int/lit8 v12, p3, 0xa

    .line 418
    .local v12, "y":I
    const/4 v10, 0x3

    .line 420
    .local v10, "innerOffset":I
    const/4 v1, -0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 422
    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 423
    int-to-float v2, v11

    int-to-float v3, v12

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    add-int/2addr v1, v11

    int-to-float v4, v1

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    add-int/2addr v1, v12

    int-to-float v5, v1

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x40800000    # 4.0f

    move-object v1, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 426
    const/high16 v1, -0x1000000

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 427
    add-int/lit8 v1, v11, 0x1

    int-to-float v2, v1

    add-int/lit8 v1, v12, 0x1

    int-to-float v3, v1

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    add-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x40800000    # 4.0f

    move-object v1, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 431
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    shr-int/lit8 v1, p9, 0xe

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 433
    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    div-int/lit8 v2, v2, 0x14

    iget v3, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    mul-int/lit8 v4, v4, 0x13

    div-int/lit8 v4, v4, 0x14

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 435
    move-object/from16 v0, p7

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 436
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->access$100(Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 445
    :goto_0
    const v1, -0x222223

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v9, v1, 0x5

    .line 447
    .local v9, "h":I
    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v11, v1

    .line 448
    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v12, v1

    .line 449
    int-to-float v2, v11

    int-to-float v3, v12

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryExtraWidth:I

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int v1, v12, v9

    int-to-float v5, v1

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40400000    # 3.0f

    move-object v1, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 450
    return-void

    .line 438
    .end local v9    # "h":I
    :cond_0
    const v1, -0xff0100

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    add-int/lit8 v1, v11, 0x3

    int-to-float v2, v1

    add-int/lit8 v1, v12, 0x3

    int-to-float v3, v1

    add-int/lit8 v1, v11, 0x3

    iget v4, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    add-int/lit8 v4, v4, -0x6

    shr-int/lit8 v5, p9, 0xb

    and-int/lit8 v5, v5, 0x7

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x7

    add-int/2addr v1, v4

    int-to-float v4, v1

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    add-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x3

    int-to-float v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40000000    # 2.0f

    move-object v1, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawFps(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "recvFps"    # I
    .param p8, "drawFps"    # I

    .prologue
    .line 401
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 402
    .local v0, "p":Landroid/graphics/Paint;
    const v3, -0xff0100

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 405
    const-string v3, "\u63a5\u6536\u5e27\u7387:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "s":Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 407
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 408
    add-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, p4

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 410
    const-string v3, "\u663e\u793a\u5e27\u7387:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 411
    add-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 412
    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;IIIIILcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "frameIndex"    # I
    .param p7, "osdParam"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;
    .param p8, "rect"    # Landroid/graphics/Rect;
    .param p9, "paint"    # Landroid/graphics/Paint;
    .param p10, "alarmPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 514
    const/16 v25, 0x0

    .line 516
    .local v25, "bmpBar":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v13

    .line 519
    .local v13, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->lock()V

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getOutputVideoImage()Landroid/graphics/Bitmap;

    move-result-object v26

    .line 521
    .local v26, "bmpTemp":Landroid/graphics/Bitmap;
    if-nez v26, :cond_1

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getOutputTempImage()Landroid/graphics/Bitmap;

    move-result-object v26

    .line 523
    if-nez v26, :cond_0

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    .line 640
    :goto_0
    return-void

    .line 527
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getColorBarImage()Landroid/graphics/Bitmap;

    move-result-object v25

    .line 529
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 530
    invoke-static/range {v26 .. v26}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    .line 535
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getCachedValueModel()Lcn/com/magnity/magnitymx/live/CachedValue;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/live/CachedValue;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/com/magnity/magnitymx/live/CachedValue;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .local v10, "cachedValue":Lcn/com/magnity/magnitymx/live/CachedValue;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRefBitmapLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 548
    add-int v3, p2, p4

    add-int v4, p3, p5

    move-object/from16 v0, p8

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getReferenceBitmap()Landroid/graphics/Bitmap;

    move-result-object v38

    .line 550
    .local v38, "taskRefBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isIrRefOn()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v38, :cond_5

    .line 551
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 556
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRefBitmapLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    iget v4, v10, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxTemp:I

    .line 560
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v5

    iget v6, v10, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxPos:I

    .line 559
    invoke-interface {v3, v4, v5, v6}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->correctTemperature(IFI)I

    move-result v14

    .line 561
    .local v14, "maxFixedTemp":I
    if-eqz v25, :cond_3

    .line 562
    invoke-virtual/range {p7 .. p7}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->getColorbarWidth()I

    move-result v27

    .line 563
    .local v27, "colorBarWidth":I
    mul-int/lit8 v3, p5, 0x4

    div-int/lit8 v3, v3, 0x5

    and-int/lit8 v24, v3, -0x4

    .line 564
    .local v24, "barHeight":I
    add-int v3, p2, p4

    sub-int v3, v3, v27

    add-int/lit8 v39, v3, -0x2

    .line 565
    .local v39, "xoffset":I
    sub-int v3, p5, v24

    div-int/lit8 v3, v3, 0x2

    add-int v40, p3, v3

    .line 568
    .local v40, "yoffset":I
    add-int v3, v39, v27

    add-int v4, v40, v24

    move-object/from16 v0, p8

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 569
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 572
    const/16 v33, 0x6

    .line 574
    .local v33, "offset":I
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-float v7, v14

    const v8, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 575
    .local v36, "strMax":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p9

    move-object/from16 v1, v36

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 576
    add-int v3, p2, p4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x6

    int-to-float v3, v3

    add-int/lit8 v4, v40, -0x6

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    iget v4, v10, Lcn/com/magnity/magnitymx/live/CachedValue;->mMinTemp:I

    .line 580
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v5

    iget v6, v10, Lcn/com/magnity/magnitymx/live/CachedValue;->mMinPos:I

    .line 579
    invoke-interface {v3, v4, v5, v6}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->correctTemperature(IFI)I

    move-result v32

    .line 581
    .local v32, "minFixedTemp":I
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move/from16 v0, v32

    int-to-float v7, v0

    const v8, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 582
    .local v37, "strMin":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p9

    move-object/from16 v1, v37

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 583
    add-int v3, p2, p4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x6

    int-to-float v3, v3

    add-int v4, v40, v24

    .line 584
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    .line 583
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 588
    .end local v24    # "barHeight":I
    .end local v27    # "colorBarWidth":I
    .end local v32    # "minFixedTemp":I
    .end local v33    # "offset":I
    .end local v36    # "strMax":Ljava/lang/String;
    .end local v37    # "strMin":Ljava/lang/String;
    .end local v39    # "xoffset":I
    .end local v40    # "yoffset":I
    :cond_3
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isTaskEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 589
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskName()Ljava/lang/String;

    move-result-object v35

    .line 590
    .local v35, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p9

    move-object/from16 v1, v35

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 592
    const-string v3, " - "

    const-string v4, "-"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    .line 593
    const-string v3, "-null"

    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    .line 594
    const-string v3, "null-"

    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    .line 596
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v4, p4, 0x4

    div-int/lit8 v4, v4, 0x5

    div-int/2addr v3, v4

    add-int/lit8 v31, v3, 0x1

    .line 597
    .local v31, "lineNum":I
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v3

    div-int v30, v3, v31

    .line 599
    .local v30, "len":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 601
    add-int/lit8 v3, v31, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_6

    .line 602
    mul-int v3, v29, v30

    add-int/lit8 v4, v29, 0x1

    mul-int v4, v4, v30

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 607
    .local v34, "s":Ljava/lang/String;
    :goto_4
    const/4 v3, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p9

    move-object/from16 v1, v34

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 608
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p4, v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p2

    int-to-float v3, v3

    add-int/lit8 v4, v29, 0x1

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    mul-int/2addr v4, v5

    add-int v4, v4, p3

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 599
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 532
    .end local v10    # "cachedValue":Lcn/com/magnity/magnitymx/live/CachedValue;
    .end local v14    # "maxFixedTemp":I
    .end local v29    # "i":I
    .end local v30    # "len":I
    .end local v31    # "lineNum":I
    .end local v34    # "s":Ljava/lang/String;
    .end local v35    # "str":Ljava/lang/String;
    .end local v38    # "taskRefBitmap":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    move-object/from16 v0, v26

    invoke-interface {v3, v4, v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_1

    .line 536
    :catch_0
    move-exception v28

    .line 537
    .local v28, "ex":Ljava/lang/CloneNotSupportedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    goto/16 :goto_0

    .line 553
    .end local v28    # "ex":Ljava/lang/CloneNotSupportedException;
    .restart local v10    # "cachedValue":Lcn/com/magnity/magnitymx/live/CachedValue;
    .restart local v38    # "taskRefBitmap":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getRefAlpha()F

    move-result v5

    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v38

    invoke-interface {v3, v4, v0, v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 604
    .restart local v14    # "maxFixedTemp":I
    .restart local v29    # "i":I
    .restart local v30    # "len":I
    .restart local v31    # "lineNum":I
    .restart local v35    # "str":Ljava/lang/String;
    :cond_6
    mul-int v3, v29, v30

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .restart local v34    # "s":Ljava/lang/String;
    goto :goto_4

    .line 612
    .end local v29    # "i":I
    .end local v30    # "len":I
    .end local v31    # "lineNum":I
    .end local v34    # "s":Ljava/lang/String;
    .end local v35    # "str":Ljava/lang/String;
    :cond_7
    invoke-static/range {p7 .. p7}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->access$300(Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 622
    .local v9, "maxTrace":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_9

    .line 623
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isMaxTraceOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 624
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getStreamType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v11, p8

    move/from16 v12, p6

    move-object/from16 v15, p10

    move-object/from16 v16, p9

    .line 626
    invoke-direct/range {v3 .. v16}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawMaxTrace(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Lcn/com/magnity/magnitymx/live/CachedValue;Landroid/graphics/Rect;ILcn/com/magnity/magnitymx/data/LocalConfig;ILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    :cond_8
    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, v9

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    .line 630
    invoke-direct/range {v15 .. v23}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawRois(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 633
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isMgsRecording()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    .line 634
    invoke-direct/range {v15 .. v22}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawRecordingSign(Landroid/graphics/Canvas;IIIILandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 637
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->playOrStopAlarmSound(Lcn/com/magnity/magnitymx/live/CachedValue;Lcn/com/magnity/magnitymx/data/LocalConfig;)V

    .line 639
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto/16 :goto_0
.end method

.method private drawImageForSnap(Landroid/graphics/Canvas;IIIIILcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "frameIndex"    # I
    .param p7, "osdParam"    # Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;
    .param p8, "rect"    # Landroid/graphics/Rect;
    .param p9, "paint"    # Landroid/graphics/Paint;
    .param p10, "alarmPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v13

    .line 472
    .local v13, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->lock()V

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getOutputVideoImage()Landroid/graphics/Bitmap;

    move-result-object v25

    .line 474
    .local v25, "bmpTemp":Landroid/graphics/Bitmap;
    if-nez v25, :cond_1

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getOutputTempImage()Landroid/graphics/Bitmap;

    move-result-object v25

    .line 476
    if-nez v25, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-static/range {v25 .. v25}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 482
    .local v24, "bmpCopy":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v3, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    .line 484
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getCachedValueModel()Lcn/com/magnity/magnitymx/live/CachedValue;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/live/CachedValue;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/com/magnity/magnitymx/live/CachedValue;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .local v10, "cachedValue":Lcn/com/magnity/magnitymx/live/CachedValue;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    .line 492
    add-int v3, p4, p2

    add-int v4, p5, p3

    move-object/from16 v0, p8

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 493
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 494
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    invoke-static/range {p7 .. p7}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->access$200(Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 497
    .local v27, "waterMarkBmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_2

    .line 498
    add-int v3, p2, p4

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x8

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x8

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 502
    :cond_2
    invoke-static/range {p7 .. p7}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->access$300(Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 503
    .local v9, "maxTrace":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    iget v4, v10, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxTemp:I

    .line 505
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v5

    iget v6, v10, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxPos:I

    .line 504
    invoke-interface {v3, v4, v5, v6}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->correctTemperature(IFI)I

    move-result v14

    .local v14, "maxFixedTemp":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v11, p8

    move/from16 v12, p6

    move-object/from16 v15, p10

    move-object/from16 v16, p9

    .line 506
    invoke-direct/range {v3 .. v16}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawMaxTrace(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Lcn/com/magnity/magnitymx/live/CachedValue;Landroid/graphics/Rect;ILcn/com/magnity/magnitymx/data/LocalConfig;ILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, v9

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    .line 508
    invoke-direct/range {v15 .. v23}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawRois(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 485
    .end local v9    # "maxTrace":Landroid/graphics/Bitmap;
    .end local v10    # "cachedValue":Lcn/com/magnity/magnitymx/live/CachedValue;
    .end local v14    # "maxFixedTemp":I
    .end local v27    # "waterMarkBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v26

    .line 486
    .local v26, "ex":Ljava/lang/CloneNotSupportedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->unlock()V

    goto/16 :goto_0
.end method

.method private drawMarginBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 454
    .local v6, "oldColor":I
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 455
    .local v7, "style":Landroid/graphics/Paint$Style;
    const v0, 0x7f05002f

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 457
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p3

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 458
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, p4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 459
    add-int v0, p3, p5

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 460
    const/4 v1, 0x0

    add-int v0, p4, p6

    int-to-float v2, v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 461
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 463
    return-void
.end method

.method private drawMaxTrace(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Lcn/com/magnity/magnitymx/live/CachedValue;Landroid/graphics/Rect;ILcn/com/magnity/magnitymx/data/LocalConfig;ILandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxTrace"    # Landroid/graphics/Bitmap;
    .param p7, "cachedValue"    # Lcn/com/magnity/magnitymx/live/CachedValue;
    .param p8, "rect"    # Landroid/graphics/Rect;
    .param p9, "frameIndex"    # I
    .param p10, "localConfig"    # Lcn/com/magnity/magnitymx/data/LocalConfig;
    .param p11, "maxFixedTemp"    # I
    .param p12, "alarmPaint"    # Landroid/graphics/Paint;
    .param p13, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 667
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v6, v10, 0x6

    .line 669
    .local v6, "pad":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-object/from16 v0, p7

    iget v11, v0, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxPos:I

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v10, v11, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->sensorPos2ScreenXY(III)[I

    move-result-object v3

    .line 670
    .local v3, "coor":[I
    const/4 v10, 0x0

    aget v10, v3, v10

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p2

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v11, v3, v11

    .line 671
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int v11, v11, p3

    int-to-float v11, v11

    .line 670
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, p13

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 672
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "%.1f\u2103"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move/from16 v0, p11

    int-to-float v14, v0

    const v15, 0x3a83126f    # 0.001f

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 673
    .local v7, "str":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p13

    move-object/from16 v1, p8

    invoke-virtual {v0, v7, v10, v11, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 674
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 675
    .local v4, "cx":I
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 676
    .local v5, "cy":I
    const/4 v10, 0x0

    aget v10, v3, v10

    add-int v8, v10, v6

    .line 677
    .local v8, "x":I
    const/4 v10, 0x1

    aget v10, v3, v10

    add-int/2addr v10, v5

    add-int v9, v10, v6

    .line 678
    .local v9, "y":I
    sub-int v10, p4, v4

    if-le v8, v10, :cond_0

    .line 679
    const/4 v10, 0x0

    aget v10, v3, v10

    sub-int/2addr v10, v6

    sub-int v8, v10, v4

    .line 681
    :cond_0
    move/from16 v0, p5

    if-le v9, v0, :cond_1

    .line 682
    const/4 v10, 0x1

    aget v10, v3, v10

    sub-int/2addr v10, v6

    sub-int v9, v10, v5

    .line 685
    :cond_1
    invoke-virtual/range {p10 .. p10}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isAlarmOn()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 686
    invoke-virtual/range {p10 .. p10}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getAlarmTemp()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p7

    iget v11, v0, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxTemp:I

    int-to-float v11, v11

    const v12, 0x3a83126f    # 0.001f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 687
    and-int/lit8 v10, p9, 0xf

    if-nez v10, :cond_2

    .line 688
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCurrentMaxPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/Paint;->getColor()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 689
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCurrentMaxPaint:Landroid/graphics/Paint;

    .line 697
    :cond_2
    :goto_0
    add-int v10, v8, p2

    int-to-float v10, v10

    add-int v11, v9, p3

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCurrentMaxPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 698
    return-void

    .line 691
    :cond_3
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCurrentMaxPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 695
    :cond_4
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCurrentMaxPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private drawRecordingSign(Landroid/graphics/Canvas;IIIILandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "rect"    # Landroid/graphics/Rect;
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 779
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "text":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p7, v0, v3, v4, p6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 781
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p4, v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, p2, v3

    .line 782
    .local v1, "x":I
    add-int v3, p3, p5

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x2

    .line 783
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v0, v3, v4, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 784
    return-void
.end method

.method private drawRoi(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;Lcn/com/magnity/magnitymx/live/RoiInfo;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxTrace"    # Landroid/graphics/Bitmap;
    .param p7, "rect"    # Landroid/graphics/Rect;
    .param p8, "roiInfo"    # Lcn/com/magnity/magnitymx/live/RoiInfo;
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 723
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v14, v3, 0x6

    .line 726
    .local v14, "pad":I
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 753
    :goto_0
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->isTempValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getMaxPos()I

    move-result v4

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v3, v4, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->sensorPos2ScreenXY(III)[I

    move-result-object v9

    .line 755
    .local v9, "coor":[I
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    .line 757
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p3

    int-to-float v4, v4

    .line 756
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 760
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getMaxTemp()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 761
    invoke-interface {v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getFixParam()F

    move-result v5

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getMaxPos()I

    move-result v6

    .line 760
    invoke-interface {v3, v4, v5, v6}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->correctTemperature(IFI)I

    move-result v13

    .line 762
    .local v13, "maxFixedTemp":I
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.1f\u2103"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-float v7, v13

    const v8, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 763
    .local v15, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 764
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 765
    .local v11, "cx":I
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 766
    .local v12, "cy":I
    const/4 v3, 0x0

    aget v3, v9, v3

    add-int v16, v3, v14

    .line 767
    .local v16, "x":I
    const/4 v3, 0x1

    aget v3, v9, v3

    add-int/2addr v3, v12

    add-int v17, v3, v14

    .line 768
    .local v17, "y":I
    sub-int v3, p4, v11

    move/from16 v0, v16

    if-le v0, v3, :cond_1

    .line 769
    const/4 v3, 0x0

    aget v3, v9, v3

    sub-int/2addr v3, v14

    sub-int v16, v3, v11

    .line 771
    :cond_1
    move/from16 v0, v17

    move/from16 v1, p5

    if-le v0, v1, :cond_2

    .line 772
    const/4 v3, 0x1

    aget v3, v9, v3

    sub-int/2addr v3, v14

    sub-int v17, v3, v12

    .line 774
    :cond_2
    add-int v3, v16, p2

    int-to-float v3, v3

    add-int v4, v17, p3

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 776
    .end local v9    # "coor":[I
    .end local v11    # "cx":I
    .end local v12    # "cy":I
    .end local v13    # "maxFixedTemp":I
    .end local v15    # "str":Ljava/lang/String;
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_3
    return-void

    .line 728
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 729
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointX()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointY()I

    move-result v5

    .line 728
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v3, v4, v5, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->sensorXY2ScreenXY(IIII)[I

    move-result-object v9

    .line 730
    .restart local v9    # "coor":[I
    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    .line 731
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p3

    int-to-float v4, v4

    .line 730
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 735
    .end local v9    # "coor":[I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointX()I

    move-result v4

    .line 736
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointY()I

    move-result v5

    .line 735
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v3, v4, v5, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->sensorXY2ScreenXY(IIII)[I

    move-result-object v9

    .line 737
    .restart local v9    # "coor":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointX()I

    move-result v4

    .line 738
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointY()I

    move-result v5

    .line 737
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v3, v4, v5, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->sensorXY2ScreenXY(IIII)[I

    move-result-object v10

    .line 739
    .local v10, "coor2":[I
    const/4 v3, 0x0

    aget v3, v9, v3

    add-int v3, v3, p2

    int-to-float v4, v3

    const/4 v3, 0x1

    aget v3, v9, v3

    add-int v3, v3, p3

    int-to-float v5, v3

    const/4 v3, 0x0

    aget v3, v10, v3

    add-int v3, v3, p2

    int-to-float v6, v3

    const/4 v3, 0x1

    aget v3, v10, v3

    add-int v3, v3, p3

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 743
    .end local v9    # "coor":[I
    .end local v10    # "coor2":[I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointX()I

    move-result v4

    .line 744
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getBeginPointY()I

    move-result v5

    .line 743
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v3, v4, v5, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->sensorXY2ScreenXY(IIII)[I

    move-result-object v9

    .line 745
    .restart local v9    # "coor":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointX()I

    move-result v4

    .line 746
    invoke-virtual/range {p8 .. p8}, Lcn/com/magnity/magnitymx/live/RoiInfo;->getEndPointY()I

    move-result v5

    .line 745
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v3, v4, v5, v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->sensorXY2ScreenXY(IIII)[I

    move-result-object v10

    .line 747
    .restart local v10    # "coor2":[I
    const/4 v3, 0x0

    aget v3, v9, v3

    add-int v3, v3, p2

    int-to-float v4, v3

    const/4 v3, 0x1

    aget v3, v9, v3

    add-int v3, v3, p3

    int-to-float v5, v3

    const/4 v3, 0x0

    aget v3, v10, v3

    add-int v3, v3, p2

    int-to-float v6, v3

    const/4 v3, 0x1

    aget v3, v10, v3

    add-int v3, v3, p3

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawRois(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxTrace"    # Landroid/graphics/Bitmap;
    .param p7, "rect"    # Landroid/graphics/Rect;
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 644
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 646
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/RoiInfo;->isBigEnouth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawRoi(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;Lcn/com/magnity/magnitymx/live/RoiInfo;Landroid/graphics/Paint;)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getRoiList()Ljava/util/List;

    move-result-object v10

    .line 651
    .local v10, "listRoi":Ljava/util/List;, "Ljava/util/List<Lcn/com/magnity/magnitymx/live/RoiInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/com/magnity/magnitymx/live/RoiInfo;

    .local v8, "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    .line 657
    invoke-direct/range {v0 .. v9}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawRoi(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;Lcn/com/magnity/magnitymx/live/RoiInfo;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 660
    .end local v8    # "roiInfo":Lcn/com/magnity/magnitymx/live/RoiInfo;
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 661
    return-void
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 279
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private initPainter()V
    .locals 12

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v8, 0x3fc00000    # 1.5f

    const v11, 0x7f050031

    .line 230
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 231
    const v0, 0x7f050030

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getColor(I)I

    move-result v1

    .line 232
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06009d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v2, v0

    .line 233
    invoke-direct {p0, v11}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getColor(I)I

    move-result v5

    move-object v0, p0

    .line 231
    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->createPaint(IFFFI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 235
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCapturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 236
    const v0, 0x7f050030

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getColor(I)I

    move-result v6

    .line 237
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v7, v0

    .line 238
    invoke-direct {p0, v11}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getColor(I)I

    move-result v10

    move-object v5, p0

    .line 236
    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->createPaint(IFFFI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCapturePaint:Landroid/graphics/Paint;

    .line 240
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mAlarmPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 241
    const/high16 v1, -0x10000

    .line 242
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06009d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v2, v0

    .line 243
    invoke-direct {p0, v11}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getColor(I)I

    move-result v5

    move-object v0, p0

    .line 241
    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->createPaint(IFFFI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mAlarmPaint:Landroid/graphics/Paint;

    .line 245
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureAlarmPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 246
    const/high16 v6, -0x10000

    .line 247
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v7, v0

    .line 248
    invoke-direct {p0, v11}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getColor(I)I

    move-result v10

    move-object v5, p0

    .line 246
    invoke-direct/range {v5 .. v10}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->createPaint(IFFFI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureAlarmPaint:Landroid/graphics/Paint;

    .line 250
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 252
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCurrentMaxPaint:Landroid/graphics/Paint;

    .line 253
    return-void
.end method

.method private playOrStopAlarmSound(Lcn/com/magnity/magnitymx/live/CachedValue;Lcn/com/magnity/magnitymx/data/LocalConfig;)V
    .locals 7
    .param p1, "cachedValue"    # Lcn/com/magnity/magnitymx/live/CachedValue;
    .param p2, "localConfig"    # Lcn/com/magnity/magnitymx/data/LocalConfig;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 701
    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getStreamType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 702
    iget v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 704
    iput v4, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isAlarmOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getAlarmTemp()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcn/com/magnity/magnitymx/live/CachedValue;->mMaxTemp:I

    int-to-float v1, v1

    const v3, 0x3a83126f    # 0.001f

    mul-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 710
    iget v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v5, -0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    goto :goto_0

    .line 714
    :cond_2
    iget v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 716
    iput v4, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStreamId:I

    goto :goto_0
.end method


# virtual methods
.method public calculateNewImagePos(IIII)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImagePosLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    :try_start_0
    iput p1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDx:I

    .line 349
    iput p2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDy:I

    .line 350
    iput p3, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgWidth:I

    .line 351
    iput p4, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImagePosLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 355
    return-void

    .line 353
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImagePosLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public fillSignedPicture(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 359
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v7, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureOSDParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCapRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCapturePaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureAlarmPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v10}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawImageForSnap(Landroid/graphics/Canvas;IIIIILcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 363
    return-void
.end method

.method public getLiveImageHeight()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgHeight:I

    return v0
.end method

.method public getLiveImageWidth()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgWidth:I

    return v0
.end method

.method public getParentHeight()I
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getParentWidth()I
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getWidth()I

    move-result v0

    return v0
.end method

.method public lockRefBitmap()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRefBitmapLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 181
    return-void
.end method

.method public onDraw(IIII)V
    .locals 19
    .param p1, "frameIndex"    # I
    .param p2, "cameraState"    # I
    .param p3, "reveFps"    # I
    .param p4, "drawFps"    # I

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 373
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz v2, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImagePosLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 377
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDx:I

    .line 378
    .local v4, "dx":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDy:I

    .line 379
    .local v5, "dy":I
    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgWidth:I

    .line 380
    .local v6, "liveImgWidth":I
    move-object/from16 v0, p0

    iget v7, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .local v7, "liveImgHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImagePosLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawMarginBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mAlarmPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v8, p0

    move-object v9, v2

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    move/from16 v14, p1

    invoke-direct/range {v8 .. v18}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawImage(Landroid/graphics/Canvas;IIIIILcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 388
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawFps(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIII)V

    .line 391
    :cond_2
    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object v9, v2

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    move/from16 v17, p2

    invoke-direct/range {v8 .. v17}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->drawBattery(Landroid/graphics/Canvas;IIIILcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;Landroid/graphics/Rect;Landroid/graphics/Paint;I)V

    .line 396
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 382
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "liveImgWidth":I
    .end local v7    # "liveImgHeight":I
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImagePosLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public onIrDrawingStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;-><init>(Lcn/com/magnity/magnitymx/live/LiveSurfaceView;ZLcn/com/magnity/magnitymx/live/LiveSurfaceView$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureOSDParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;-><init>(Lcn/com/magnity/magnitymx/live/LiveSurfaceView;ZLcn/com/magnity/magnitymx/live/LiveSurfaceView$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureOSDParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    .line 304
    :cond_1
    return-void
.end method

.method public onIrDrawingStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->release()V

    .line 310
    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mOsdParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    .line 312
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureOSDParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureOSDParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;->release()V

    .line 314
    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mCaptureOSDParam:Lcn/com/magnity/magnitymx/live/LiveSurfaceView$OSDParam;

    .line 316
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :cond_2
    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mImageCopy:Landroid/graphics/Bitmap;

    .line 322
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 788
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    .line 797
    .local v0, "cfg":Lcn/com/magnity/magnitymx/data/LocalConfig;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v9

    .line 802
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 803
    .local v3, "x":I
    iget v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDx:I

    if-ge v3, v5, :cond_4

    .line 804
    iget v3, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDx:I

    .line 808
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 809
    .local v4, "y":I
    iget v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDy:I

    if-ge v4, v5, :cond_5

    .line 810
    iget v4, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDy:I

    .line 814
    :cond_3
    :goto_2
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDx:I

    sub-int v6, v3, v6

    iget v7, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDy:I

    sub-int v7, v4, v7

    invoke-interface {v5, v6, v7}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->screenXY2SensorXY(II)[I

    move-result-object v2

    .line 816
    .local v2, "sensorCoor":[I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 818
    :pswitch_0
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v5

    if-ne v5, v9, :cond_6

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isInVisibleAdjustingMode()Z

    move-result v5

    if-nez v5, :cond_6

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStartX:I

    .line 820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStartY:I

    .line 821
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleAlpha()F

    move-result v5

    iput v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStartVisibleAlpha:F

    goto :goto_0

    .line 805
    .end local v2    # "sensorCoor":[I
    .end local v4    # "y":I
    :cond_4
    iget v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDx:I

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgWidth:I

    add-int/2addr v5, v6

    if-le v3, v5, :cond_2

    .line 806
    iget v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDx:I

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgWidth:I

    add-int v3, v5, v6

    goto :goto_1

    .line 811
    .restart local v4    # "y":I
    :cond_5
    iget v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDy:I

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgHeight:I

    add-int/2addr v5, v6

    if-le v4, v5, :cond_3

    .line 812
    iget v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgDy:I

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mLiveImgHeight:I

    add-int v4, v5, v6

    goto :goto_2

    .line 823
    .restart local v2    # "sensorCoor":[I
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 824
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    aget v6, v2, v8

    aget v7, v2, v9

    invoke-interface {v5, v6, v7}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->delRoi(II)Z

    move-result v5

    if-nez v5, :cond_7

    .line 825
    new-instance v5, Lcn/com/magnity/magnitymx/live/RoiInfo;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v6}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getRoiType()I

    move-result v6

    invoke-direct {v5, v6}, Lcn/com/magnity/magnitymx/live/RoiInfo;-><init>(I)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    .line 826
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    aget v6, v2, v8

    aget v7, v2, v9

    invoke-virtual {v5, v6, v7}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setBeginPoint(II)V

    .line 828
    :cond_7
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 829
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v5, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->postInvalidate(Z)V

    goto/16 :goto_0

    .line 833
    :pswitch_1
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v5

    if-ne v5, v9, :cond_8

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isInVisibleAdjustingMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStartX:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_0

    .line 835
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStartY:I

    sub-int/2addr v5, v6

    sget v6, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mAlphaStep:I

    div-int v1, v5, v6

    .line 836
    .local v1, "dist":I
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    iget v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mStartVisibleAlpha:F

    int-to-float v7, v1

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-interface {v5, v6}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setVisibleAlpha(F)V

    goto/16 :goto_0

    .line 839
    .end local v1    # "dist":I
    :cond_8
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 840
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    if-eqz v5, :cond_9

    .line 841
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    aget v6, v2, v8

    aget v7, v2, v9

    invoke-virtual {v5, v6, v7}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setEndPoint(II)V

    .line 843
    :cond_9
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 844
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v5, v8}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->postInvalidate(Z)V

    goto/16 :goto_0

    .line 848
    :pswitch_2
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getShowType()I

    move-result v5

    if-ne v5, v9, :cond_a

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isInVisibleAdjustingMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 851
    :cond_a
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->lock()V

    .line 852
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    if-eqz v5, :cond_b

    .line 853
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    aget v6, v2, v8

    aget v7, v2, v9

    invoke-virtual {v5, v6, v7}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setEndPoint(II)V

    .line 854
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/live/RoiInfo;->setFinished()V

    .line 855
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    invoke-interface {v5, v6, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->addRoi(Lcn/com/magnity/magnitymx/live/RoiInfo;Z)Z

    .line 856
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRoiInfo:Lcn/com/magnity/magnitymx/live/RoiInfo;

    .line 858
    :cond_b
    invoke-static {}, Lcn/com/magnity/magnitymx/live/RoiInfo;->unlock()V

    .line 859
    iget-object v5, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v5, v9}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->postInvalidate(Z)V

    goto/16 :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .prologue
    .line 190
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 191
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->calculateNewImagePos()I

    .line 196
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v5, 0x1

    .line 200
    sget-boolean v2, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "live surfaceCreated"

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 204
    :cond_0
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->initPainter()V

    .line 205
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2, v5}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->postInvalidate(Z)V

    .line 209
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBlendCanvas:Landroid/graphics/Canvas;

    .line 210
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBlendCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 212
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 213
    .local v1, "builder":Landroid/media/SoundPool$Builder;
    invoke-virtual {v1, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 214
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 215
    .local v0, "attrBuilder":Landroid/media/AudioAttributes$Builder;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 217
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    .line 218
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f0d0000

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 220
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconWidth:I

    .line 221
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryIconHeight:I

    .line 222
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mBatteryExtraWidth:I

    .line 224
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->surfaceCreated()V

    .line 227
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 284
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "live surfaceDestroyed"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mSoundPool:Landroid/media/SoundPool;

    .line 293
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->surfaceDestroyed()V

    .line 294
    return-void
.end method

.method public unlockRefBitmap()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveSurfaceView;->mRefBitmapLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 186
    return-void
.end method
