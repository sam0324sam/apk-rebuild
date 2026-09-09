.class public Lcn/com/magnity/magnitycx/sdk/DeviceController;
.super Ljava/lang/Object;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;
    }
.end annotation


# static fields
.field public static final BITSPERPIXEL:I = 0x10

.field private static final PALETTES:[[I

.field private static final TAG:Ljava/lang/String; = "DeviceController"

.field private static sArgbPixels:[I

.field private static sAutoFfcDone:Z

.field private static sBaseline:[I

.field private static volatile sColorbarHeight:I

.field private static volatile sColorbarWidth:I

.field private static sDiff:[I

.field private static volatile sFpaHeight:I

.field private static volatile sFpaWidth:I

.field private static sFrameCount:I

.field private static sFrameSeq:J

.field private static sHasBaseline:Z

.field private static volatile sHasFrame:Z

.field private static volatile sIsCalibrating:Z

.field private static volatile sIsProcessing:Z

.field private static volatile sIsRecording:Z

.field private static sLastLogTime:J

.field private static sLatestRawAD:[I

.field private static final sLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static volatile sPaletteIndex:I

.field private static sPixelTemps:[I

.field private static volatile sPreviewOrientation:I

.field private static sRawAD:[I

.field private static volatile sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

.field private static sState:Lcn/com/magnity/magnitycx/sdk/State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 19
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 20
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 22
    const/16 v1, 0xa0

    sput v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 23
    const/16 v1, 0x78

    sput v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 24
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    .line 25
    const/4 v1, 0x2

    sput v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 26
    const/16 v2, 0x64

    sput v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarWidth:I

    .line 27
    const/16 v3, 0x14

    sput v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarHeight:I

    .line 29
    const/4 v4, 0x0

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    .line 31
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 32
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 33
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 34
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 35
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 36
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 37
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 38
    const-wide/16 v5, 0x0

    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 40
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 41
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 42
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 43
    new-instance v4, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v4}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 44
    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 46
    new-array v4, v1, [I

    const/4 v5, 0x1

    const/16 v6, 0x100

    aput v6, v4, v5

    const/16 v5, 0xc

    aput v5, v4, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    .line 49
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->initPalettes()V

    .line 50
    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorbarSize(II)V

    .line 51
    const-string v0, "paletteIndex"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorPalette(I)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static Lock()V
    .locals 1

    .line 59
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 60
    return-void
.end method

.method public static Unlock()V
    .locals 1

    .line 63
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 8
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->doFfcCycle()V

    return-void
.end method

.method private static calcAutumn(F)I
    .locals 2

    .line 639
    nop

    .line 640
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 641
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    const/high16 p0, 0x42480000    # 50.0f

    mul-float v1, v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 642
    shl-int/lit8 v0, v0, 0x8

    const/high16 v1, -0x10000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcHotMetal(F)I
    .locals 5

    .line 632
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 633
    const v2, 0x3e99999a    # 0.3f

    sub-float v2, p0, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v2, v2, v0

    const v4, 0x3fb33333    # 1.4f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v2

    .line 634
    const v4, 0x3f333333    # 0.7f

    sub-float/2addr p0, v4

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v0

    const v0, 0x40533333    # 3.3f

    mul-float p0, p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 635
    shl-int/lit8 v0, v1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcIronbow(F)I
    .locals 7

    .line 601
    const/4 v0, 0x0

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    .line 602
    div-float/2addr p0, v3

    .line 603
    mul-float v1, v1, p0

    float-to-int v1, v1

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 604
    goto :goto_0

    :cond_0
    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v6, p0, v5

    if-gez v6, :cond_1

    .line 605
    sub-float/2addr p0, v3

    div-float/2addr p0, v3

    .line 606
    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float v0, v0, p0

    add-float/2addr v0, v1

    float-to-int v1, v0

    mul-float v4, v4, p0

    float-to-int v0, v4

    mul-float p0, p0, v2

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 607
    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v6, p0, v2

    if-gez v6, :cond_2

    .line 608
    sub-float/2addr p0, v5

    div-float/2addr p0, v3

    .line 609
    const/high16 v2, 0x43200000    # 160.0f

    mul-float p0, p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 610
    move v0, p0

    const/4 p0, 0x0

    goto :goto_0

    .line 611
    :cond_2
    sub-float/2addr p0, v2

    div-float/2addr p0, v3

    .line 612
    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v0, v0, p0

    const/high16 v2, 0x43600000    # 224.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 614
    :goto_0
    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcJet(F)I
    .locals 5

    .line 625
    const/high16 v0, 0x40800000    # 4.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    sub-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    sub-float v0, v2, v0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 626
    const/high16 v3, 0x40000000    # 2.0f

    sub-float v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v1

    sub-float v3, v2, v3

    float-to-int v3, v3

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v3

    .line 627
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float p0, p0, v1

    sub-float/2addr v2, p0

    float-to-int p0, v2

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 628
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcRainbow(F)I
    .locals 8

    .line 618
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p0, v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    .line 619
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v1, v1, v7

    sub-float v1, v4, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v6

    float-to-int v1, v1

    .line 620
    sub-float/2addr v0, p0

    mul-float v0, v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v6

    float-to-int p0, p0

    .line 621
    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcWinter(F)I
    .locals 3

    .line 646
    nop

    .line 647
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 648
    const/high16 v2, 0x43000000    # 128.0f

    mul-float p0, p0, v2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 649
    shl-int/lit8 v0, v1, 0x8

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static clamp(I)I
    .locals 1

    .line 653
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    const/16 p0, 0xff

    :cond_1
    :goto_0
    return p0
.end method

.method public static clientPos2ScreenXY(III)[I
    .locals 2

    .line 501
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 502
    :goto_0
    rem-int v1, p0, v0

    .line 503
    div-int/2addr p0, v0

    .line 504
    invoke-static {v1, p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static clientXY2ScreenXY(IIII)[I
    .locals 4

    .line 485
    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 486
    :cond_0
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_1

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    .line 487
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_2

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x78

    .line 490
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 494
    :cond_3
    mul-int p0, p0, p2

    div-int/2addr p0, v0

    .line 495
    mul-int p1, p1, p3

    div-int/2addr p1, v1

    goto :goto_3

    .line 491
    :cond_4
    :goto_2
    mul-int p0, p0, p2

    div-int/2addr p0, v1

    .line 492
    mul-int p1, p1, p3

    div-int/2addr p1, v0

    .line 497
    :goto_3
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 485
    :cond_5
    :goto_4
    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static doFfcCycle()V
    .locals 15

    .line 239
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 241
    const-string v1, "FFC: Step 1 - Closing shutter (state 0)"

    const-string v2, "DeviceController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v3

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FFC setShutterState(0) error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    const-wide/16 v3, 0x190

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 250
    :goto_1
    const-string v3, "FFC: Step 2 - Accumulating 8 dark baseline frames..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int v3, v3, v4

    .line 252
    new-array v4, v3, [J

    .line 253
    nop

    .line 254
    nop

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 257
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v12, 0xfa0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 258
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 260
    :try_start_2
    sget-wide v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    if-eqz v10, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    array-length v10, v10

    if-ne v10, v3, :cond_2

    .line 261
    sget-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 262
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_1

    .line 263
    aget-wide v11, v4, v10

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aget v13, v13, v10

    int-to-long v13, v13

    add-long/2addr v11, v13

    aput-wide v11, v4, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 265
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 268
    :cond_2
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    nop

    .line 270
    const-wide/16 v10, 0x23

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_2

    .line 268
    :catchall_0
    move-exception v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    throw v0

    .line 273
    :cond_3
    if-lez v9, :cond_5

    .line 274
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_4

    .line 277
    :try_start_4
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget-wide v7, v4, v5

    int-to-long v10, v9

    div-long/2addr v7, v10

    long-to-int v8, v7

    aput v8, v6, v5

    .line 276
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 279
    :cond_4
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FFC: Baseline computed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frames successfully!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 283
    goto :goto_5

    .line 282
    :catchall_1
    move-exception v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 283
    throw v0

    .line 286
    :cond_5
    :goto_5
    const-string v3, "FFC: Step 3 - Opening shutter (state 1)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_5
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 291
    goto :goto_6

    .line 289
    :catch_3
    move-exception v0

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FFC setShutterState(1) error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_6
    const-wide/16 v3, 0x12c

    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 294
    :goto_7
    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 295
    const-string v0, "FFC: Calibration cycle finished."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method public static doRecording(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 547
    sget-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return p0
.end method

.method public static getEX()I
    .locals 1

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public static getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 2

    .line 568
    if-eqz p0, :cond_0

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->bIsothermal:Z

    .line 570
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 571
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intAutoEnlargeRange:I

    .line 572
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intBrightOffset:I

    .line 573
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intContrastOffset:I

    .line 574
    const/16 v1, 0x61a8

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intCurrentEnvTemperature:I

    .line 575
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intDetailRatio:I

    .line 577
    :cond_0
    return-void
.end method

.method public static getOutputBMPData(Landroid/graphics/Bitmap;I)Z
    .locals 8

    .line 442
    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 443
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 445
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 456
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 445
    return p1

    .line 446
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 447
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 448
    if-lez v3, :cond_4

    if-gtz v7, :cond_2

    goto :goto_0

    .line 450
    :cond_2
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    array-length v0, v0

    mul-int v1, v3, v7

    if-lt v0, v1, :cond_3

    .line 451
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    nop

    .line 456
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    const/4 p0, 0x1

    return p0

    .line 454
    :cond_3
    nop

    .line 456
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 454
    return p1

    .line 456
    :cond_4
    :goto_0
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 448
    return p1

    .line 456
    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 457
    throw p0
.end method

.method public static getOutputColorbarData(Landroid/graphics/Bitmap;I)Z
    .locals 11

    .line 461
    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 463
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 464
    if-lez v3, :cond_8

    if-gtz v7, :cond_1

    goto :goto_4

    .line 466
    :cond_1
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    if-ltz v0, :cond_2

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 467
    :goto_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v0, v1, v0

    .line 468
    mul-int v1, v3, v7

    new-array v1, v1, [I

    .line 470
    const/4 v2, 0x0

    :goto_1
    const/4 v8, 0x1

    if-ge v2, v7, :cond_7

    .line 471
    add-int/lit8 v4, v7, -0x1

    sub-int v5, v4, v2

    int-to-long v5, v5

    const-wide/16 v9, 0xff

    mul-long v5, v5, v9

    if-le v7, v8, :cond_3

    move v8, v4

    :cond_3
    int-to-long v8, v8

    div-long/2addr v5, v8

    long-to-int v4, v5

    .line 472
    if-gez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    .line 473
    :cond_4
    const/16 v5, 0xff

    if-le v4, v5, :cond_5

    const/16 v4, 0xff

    .line 474
    :cond_5
    :goto_2
    aget v4, v0, v4

    .line 475
    mul-int v5, v2, v3

    .line 476
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 477
    add-int v8, v5, v6

    aput v4, v1, v8

    .line 476
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 470
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 481
    return v8

    .line 464
    :cond_8
    :goto_4
    return p1
.end method

.method public static getPreviewOrientation()I
    .locals 1

    .line 140
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    return v0
.end method

.method public static getRectTemperatureInfo(IIII[IZ)Z
    .locals 18

    .line 176
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    array-length v6, v4

    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    const/16 p5, 0x0

    goto/16 :goto_4

    .line 177
    :cond_0
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 179
    :try_start_0
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 221
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    return v5

    .line 181
    :cond_1
    :try_start_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 182
    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 184
    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    sub-int/2addr v7, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 186
    if-gt v6, v0, :cond_8

    if-le v2, v1, :cond_2

    const/16 p5, 0x0

    goto/16 :goto_3

    .line 188
    :cond_2
    nop

    .line 189
    nop

    .line 190
    nop

    .line 191
    nop

    .line 192
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    mul-int v3, v3, v2

    add-int/2addr v3, v6

    .line 193
    nop

    .line 195
    const v7, 0x7fffffff

    const/high16 v9, -0x80000000

    const-wide/16 v10, 0x0

    move v7, v3

    move-wide v11, v10

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const/4 v13, 0x0

    :goto_0
    if-gt v2, v1, :cond_6

    .line 196
    sget v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    mul-int v14, v14, v2

    .line 197
    move v15, v6

    :goto_1
    if-gt v15, v0, :cond_5

    .line 198
    add-int v16, v14, v15

    .line 199
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    const/16 p5, 0x0

    aget v5, v17, v16

    .line 200
    if-ge v5, v9, :cond_3

    .line 201
    nop

    .line 202
    move v9, v5

    move/from16 v3, v16

    .line 204
    :cond_3
    if-le v5, v10, :cond_4

    .line 205
    nop

    .line 206
    move v10, v5

    move/from16 v7, v16

    .line 208
    :cond_4
    move/from16 p0, v9

    const/16 v16, 0x1

    int-to-long v8, v5

    add-long/2addr v11, v8

    .line 209
    add-int/lit8 v13, v13, 0x1

    .line 197
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, p0

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_1

    .line 195
    :cond_5
    const/16 p5, 0x0

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_0

    .line 213
    :cond_6
    const/16 p5, 0x0

    const/16 v16, 0x1

    if-lez v13, :cond_7

    int-to-long v0, v13

    div-long/2addr v11, v0

    long-to-int v0, v11

    goto :goto_2

    :cond_7
    const/16 v0, 0x61a8

    .line 214
    :goto_2
    aput v9, v4, p5

    .line 215
    aput v10, v4, v16

    .line 216
    const/4 v1, 0x2

    aput v0, v4, v1

    .line 217
    const/4 v0, 0x3

    aput v3, v4, v0

    .line 218
    const/4 v0, 0x4

    aput v7, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    nop

    .line 221
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    return v16

    .line 186
    :cond_8
    const/16 p5, 0x0

    .line 221
    :goto_3
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 186
    return p5

    .line 221
    :catchall_0
    move-exception v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    throw v0

    .line 176
    :cond_9
    const/16 p5, 0x0

    :goto_4
    return p5
.end method

.method public static getState()Lcn/com/magnity/magnitycx/sdk/State;
    .locals 2

    .line 155
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    throw v0
.end method

.method public static getTemperature(IIZ)I
    .locals 0

    .line 164
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    :try_start_0
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    if-eqz p1, :cond_0

    if-ltz p0, :cond_0

    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length p1, p1

    if-ge p0, p1, :cond_0

    .line 167
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget p0, p1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 167
    return p0

    .line 169
    :cond_0
    :try_start_1
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz p0, :cond_1

    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget p0, p0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/16 p0, 0x61a8

    .line 171
    :goto_0
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 169
    return p0

    .line 171
    :catchall_0
    move-exception p0

    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 172
    throw p0
.end method

.method private static initPalettes()V
    .locals 7

    .line 583
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 584
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v2, v2, v0

    shl-int/lit8 v3, v1, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v3, v5

    or-int/2addr v3, v1

    aput v3, v2, v1

    .line 585
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    int-to-float v3, v1

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v5

    aput v5, v2, v1

    .line 586
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v5

    aput v5, v2, v1

    .line 587
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v5

    aput v5, v2, v1

    .line 588
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v5, 0x4

    aget-object v2, v2, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v5

    aput v5, v2, v1

    .line 589
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v5, 0x5

    aget-object v2, v2, v5

    rsub-int v5, v1, 0xff

    shl-int/lit8 v6, v5, 0x10

    or-int/2addr v4, v6

    shl-int/lit8 v6, v5, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v2, v1

    .line 590
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x6

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcAutumn(F)I

    move-result v4

    aput v4, v2, v1

    .line 591
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x7

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcWinter(F)I

    move-result v4

    aput v4, v2, v1

    .line 592
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x8

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v4

    aput v4, v2, v1

    .line 593
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x9

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v4

    aput v4, v2, v1

    .line 594
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xa

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v4

    aput v4, v2, v1

    .line 595
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xb

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v3

    aput v3, v2, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 597
    :cond_0
    return-void
.end method

.method public static isOutputDataReady()Z
    .locals 1

    .line 132
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    return v0
.end method

.method public static isProcessImage()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .line 543
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return v0
.end method

.method public static pushFrame([BII)Z
    .locals 34

    .line 299
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    const/16 v18, 0x0

    goto/16 :goto_f

    .line 300
    :cond_0
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 302
    :try_start_0
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v3, :cond_1

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v3, 0xa0

    .line 303
    :goto_0
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v5, :cond_2

    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v5, 0x78

    .line 304
    :goto_1
    mul-int v6, v3, v5

    .line 306
    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    if-eqz v7, :cond_3

    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    array-length v7, v7

    if-eq v7, v6, :cond_4

    .line 307
    :cond_3
    new-array v7, v6, [I

    sput-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 308
    new-array v7, v6, [I

    sput-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 309
    new-array v7, v6, [I

    sput-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 310
    new-array v7, v6, [I

    sput-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 311
    new-array v7, v6, [I

    sput-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 312
    new-array v7, v6, [I

    sput-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 315
    :cond_4
    nop

    .line 316
    array-length v7, v0

    const/4 v8, 0x3

    const/16 v9, 0x1c

    const/16 v10, 0xff

    const/4 v11, 0x1

    if-lt v7, v9, :cond_5

    .line 317
    aget-byte v7, v0, v2

    and-int/2addr v7, v10

    aget-byte v12, v0, v11

    and-int/2addr v12, v10

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v7, v12

    aget-byte v12, v0, v4

    and-int/2addr v12, v10

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v7, v12

    aget-byte v12, v0, v8

    and-int/2addr v12, v10

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v7, v12

    .line 318
    const v12, 0x1bb1b11b

    if-ne v7, v12, :cond_5

    .line 319
    goto :goto_2

    .line 323
    :cond_5
    const/4 v9, 0x0

    :goto_2
    array-length v7, v0

    sub-int/2addr v7, v9

    div-int/2addr v7, v4

    .line 324
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-gtz v7, :cond_6

    .line 437
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 325
    return v2

    .line 327
    :cond_6
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v7, :cond_7

    .line 328
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v13, v9

    .line 329
    :try_start_1
    aget-byte v14, v0, v13

    and-int/2addr v14, v10

    .line 330
    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v0, v13

    and-int/2addr v13, v10

    .line 331
    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    .line 332
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aput v13, v14, v12

    .line 333
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aput v13, v14, v12

    .line 327
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 335
    :cond_7
    sget-wide v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    sput-wide v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 336
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    add-int/2addr v0, v11

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 339
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    if-nez v0, :cond_8

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    const/16 v7, 0xf

    if-lt v0, v7, :cond_8

    .line 340
    sput-boolean v11, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 341
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 347
    :cond_8
    const/16 v0, 0x1388

    if-le v1, v0, :cond_9

    const v0, 0x186a0

    if-ge v1, v0, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    const/16 v0, 0x6d60

    .line 348
    :goto_4
    nop

    .line 349
    add-int/lit16 v1, v0, 0x34bc

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 354
    div-int/lit8 v7, v5, 0x2

    mul-int v7, v7, v3

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v7, v9

    .line 355
    nop

    .line 357
    nop

    .line 358
    nop

    .line 359
    nop

    .line 361
    const-wide/16 v12, 0x0

    const v9, 0x7fffffff

    const/high16 v14, -0x80000000

    move v9, v7

    move-wide v10, v12

    move-wide v13, v10

    const v12, 0x7fffffff

    const/high16 v16, -0x80000000

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_5
    const-wide/16 v19, 0xa

    const-wide/16 v21, 0x4b

    if-ge v2, v5, :cond_11

    .line 362
    mul-int v23, v2, v3

    .line 363
    if-lt v2, v8, :cond_a

    add-int/lit8 v4, v5, -0x3

    if-ge v2, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 364
    :goto_6
    move/from16 v15, v16

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_10

    .line 365
    add-int v16, v23, v8

    .line 366
    sget-boolean v26, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    if-eqz v26, :cond_b

    sget-object v26, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aget v26, v26, v16

    sget-object v27, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget v27, v27, v16

    sub-int v26, v26, v27

    move/from16 v33, v26

    move/from16 v26, v1

    move/from16 v1, v33

    goto :goto_8

    :cond_b
    move/from16 v26, v1

    const/4 v1, 0x0

    .line 367
    :goto_8
    sget-object v27, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aput v1, v27, v16

    .line 370
    move/from16 p1, v9

    move-wide/from16 v27, v10

    int-to-long v9, v1

    mul-long v29, v9, v21

    move-wide/from16 v31, v9

    div-long v9, v29, v19

    long-to-int v10, v9

    add-int v9, v26, v10

    .line 371
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aput v9, v10, v16

    .line 374
    if-eqz v4, :cond_e

    const/4 v9, 0x3

    if-lt v8, v9, :cond_f

    add-int/lit8 v10, v3, -0x3

    if-ge v8, v10, :cond_f

    .line 375
    if-ge v1, v12, :cond_c

    .line 376
    nop

    .line 377
    move v12, v1

    move/from16 v7, v16

    .line 379
    :cond_c
    if-le v1, v15, :cond_d

    .line 380
    nop

    .line 381
    move v15, v1

    goto :goto_9

    .line 379
    :cond_d
    move/from16 v16, p1

    .line 383
    :goto_9
    add-long v13, v13, v31

    .line 384
    mul-long v10, v31, v31

    add-long v10, v27, v10

    .line 385
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 374
    :cond_e
    const/4 v9, 0x3

    .line 364
    :cond_f
    move/from16 v16, p1

    move-wide/from16 v10, v27

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v16

    move/from16 v1, v26

    goto :goto_7

    .line 361
    :cond_10
    move/from16 v26, v1

    move/from16 p1, v9

    move-wide/from16 v27, v10

    const/4 v9, 0x3

    add-int/lit8 v2, v2, 0x1

    move/from16 v9, p1

    move/from16 v16, v15

    const/4 v4, 0x2

    const/4 v8, 0x3

    goto/16 :goto_5

    .line 390
    :cond_11
    move/from16 v26, v1

    if-gtz v17, :cond_12

    .line 391
    nop

    .line 392
    nop

    .line 393
    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_b

    .line 390
    :cond_12
    move/from16 v1, v16

    move/from16 v15, v17

    .line 396
    :goto_b
    long-to-double v13, v13

    move/from16 p1, v7

    int-to-double v7, v15

    div-double/2addr v13, v7

    .line 397
    long-to-double v10, v10

    div-double/2addr v10, v7

    mul-double v7, v13, v13

    sub-double/2addr v10, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 398
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 401
    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double v10, v10, v7

    move-wide/from16 v16, v7

    sub-double v7, v13, v10

    double-to-int v2, v7

    .line 402
    add-double/2addr v10, v13

    double-to-int v4, v10

    .line 403
    sub-int/2addr v4, v2

    const/4 v15, 0x1

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 405
    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    if-ltz v7, :cond_13

    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    const/16 v8, 0xc

    if-ge v7, v8, :cond_13

    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    goto :goto_c

    :cond_13
    const/4 v7, 0x2

    .line 406
    :goto_c
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v7, v8, v7

    .line 408
    const/4 v8, 0x0

    :goto_d
    if-ge v8, v6, :cond_16

    .line 409
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v10, v10, v8

    .line 410
    sub-int/2addr v10, v2

    int-to-long v10, v10

    const-wide/16 v23, 0xff

    mul-long v10, v10, v23

    move/from16 v23, v6

    move-object/from16 p0, v7

    int-to-long v6, v4

    div-long/2addr v10, v6

    long-to-int v6, v10

    .line 411
    if-gez v6, :cond_14

    const/4 v6, 0x0

    const/16 v7, 0xff

    goto :goto_e

    .line 412
    :cond_14
    const/16 v7, 0xff

    if-le v6, v7, :cond_15

    const/16 v6, 0xff

    .line 413
    :cond_15
    :goto_e
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    aget v6, p0, v6

    aput v6, v10, v8

    .line 408
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, p0

    move/from16 v6, v23

    goto :goto_d

    .line 417
    :cond_16
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v6, v12

    mul-long v6, v6, v21

    div-long v6, v6, v19

    long-to-int v4, v6

    add-int v4, v26, v4

    iput v4, v2, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    .line 418
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v6, v1

    mul-long v6, v6, v21

    div-long v6, v6, v19

    long-to-int v1, v6

    add-int v1, v26, v1

    iput v1, v2, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    .line 419
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const-wide/high16 v6, 0x401e000000000000L    # 7.5

    mul-double v13, v13, v6

    double-to-int v2, v13

    add-int v2, v26, v2

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 420
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    rem-int v2, p1, v3

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMinX:I

    .line 421
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    div-int v2, p1, v3

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMinY:I

    .line 422
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    rem-int v2, v9, v3

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    .line 423
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    div-int/2addr v9, v3

    iput v9, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    .line 424
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    mul-double v7, v16, v6

    double-to-int v2, v7

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/State;->intSTDTemperature:I

    .line 425
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v2, 0x32

    iput v2, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveNETDt:I

    .line 427
    const/4 v15, 0x1

    sput-boolean v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 430
    sget-wide v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x7d0

    cmp-long v4, v6, v8

    if-lez v4, :cond_17

    .line 431
    sput-wide v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 432
    const-string v1, "DeviceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushFrame: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fpa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-double v3, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "C aveT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    int-to-double v2, v2

    div-double/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "C minT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    int-to-double v2, v2

    div-double/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "C maxT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    int-to-double v2, v2

    div-double/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "C hasBase="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :cond_17
    nop

    .line 437
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 435
    const/4 v15, 0x1

    return v15

    .line 437
    :catchall_0
    move-exception v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 438
    throw v0

    .line 299
    :cond_18
    const/16 v18, 0x0

    :goto_f
    return v18
.end method

.method public static saveDDT(Ljava/lang/String;)Z
    .locals 0

    .line 551
    const/4 p0, 0x1

    return p0
.end method

.method public static screenXY2ClientXY(IIII)[I
    .locals 5

    .line 508
    const/4 v0, 0x0

    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 509
    :cond_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    .line 510
    :goto_0
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    .line 513
    :goto_1
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 517
    :cond_3
    mul-int p0, p0, v1

    div-int/2addr p0, p2

    .line 518
    mul-int p1, p1, v2

    div-int/2addr p1, p3

    goto :goto_3

    .line 514
    :cond_4
    :goto_2
    mul-int p0, p0, v2

    div-int/2addr p0, p2

    .line 515
    mul-int p1, p1, v1

    div-int/2addr p1, p3

    .line 520
    :goto_3
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 521
    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 522
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 508
    :cond_5
    :goto_4
    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static screenXY2SensorXY(IIII)[I
    .locals 0

    .line 530
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static sensorXY2ScreenXY(IIII)[I
    .locals 0

    .line 526
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static setAutoEnlarge(I)V
    .locals 0

    .line 565
    return-void
.end method

.method public static setColorPalette(I)V
    .locals 1

    .line 144
    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 145
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 147
    :cond_0
    return-void
.end method

.method public static setColorbarSize(II)V
    .locals 0

    .line 150
    if-lez p0, :cond_0

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarWidth:I

    .line 151
    :cond_0
    if-lez p1, :cond_1

    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarHeight:I

    .line 152
    :cond_1
    return-void
.end method

.method public static setEX(III)V
    .locals 0

    .line 559
    return-void
.end method

.method public static setEmissivity(II)V
    .locals 0

    .line 562
    return-void
.end method

.method public static setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 0

    .line 580
    return-void
.end method

.method public static setPreviewOrientation(I)V
    .locals 0

    .line 136
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    .line 137
    return-void
.end method

.method public static startProcess(Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;IIIIIIIIIILjava/lang/String;)Z
    .locals 0

    .line 80
    sget-object p3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 82
    :try_start_0
    const-string p3, "DeviceController"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "startProcess: width="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, ", height="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, ", devType="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    .line 84
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 85
    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 86
    sput p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 88
    :cond_0
    if-ltz p9, :cond_1

    const/16 p0, 0xc

    if-ge p9, p0, :cond_1

    .line 89
    sput p9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 92
    :cond_1
    sget p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int p0, p0, p1

    .line 93
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 94
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 95
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 96
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 97
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 98
    new-array p0, p0, [I

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 99
    new-instance p0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 101
    const/4 p0, 0x0

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 102
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 103
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 104
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 105
    const-wide/16 p1, 0x0

    sput-wide p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 107
    const/4 p1, 0x1

    sput-boolean p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 108
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    nop

    .line 112
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    return p1

    .line 112
    :catchall_0
    move-exception p0

    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    throw p0
.end method

.method public static startRecording(Ljava/lang/String;IIIII)Z
    .locals 0

    .line 534
    const/4 p0, 0x1

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 535
    return p0
.end method

.method public static stopProcess()V
    .locals 2

    .line 117
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 119
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 120
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 121
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    throw v0
.end method

.method public static stopRecording()V
    .locals 1

    .line 539
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 540
    return-void
.end method

.method public static triggerFFC()V
    .locals 3

    .line 226
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "DeviceController"

    const-string v1, "FFC already in progress, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;-><init>()V

    const-string v2, "FFC-Worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    return-void
.end method
