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

    .line 60
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 63
    :goto_0
    return-void
.end method

.method public static Unlock()V
    .locals 1

    .line 67
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 72
    :goto_0
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 8
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->doFfcCycle()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 8
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    return p0
.end method

.method private static calcAutumn(F)I
    .locals 2

    .line 693
    nop

    .line 694
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 695
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    const/high16 p0, 0x42480000    # 50.0f

    mul-float v1, v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 696
    shl-int/lit8 v0, v0, 0x8

    const/high16 v1, -0x10000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcHotMetal(F)I
    .locals 5

    .line 686
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 687
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

    .line 688
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

    .line 689
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

    .line 655
    const/4 v0, 0x0

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    .line 656
    div-float/2addr p0, v3

    .line 657
    mul-float v1, v1, p0

    float-to-int v1, v1

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 658
    goto :goto_0

    :cond_0
    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v6, p0, v5

    if-gez v6, :cond_1

    .line 659
    sub-float/2addr p0, v3

    div-float/2addr p0, v3

    .line 660
    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float v0, v0, p0

    add-float/2addr v0, v1

    float-to-int v1, v0

    mul-float v4, v4, p0

    float-to-int v0, v4

    mul-float p0, p0, v2

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 661
    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v6, p0, v2

    if-gez v6, :cond_2

    .line 662
    sub-float/2addr p0, v5

    div-float/2addr p0, v3

    .line 663
    const/high16 v2, 0x43200000    # 160.0f

    mul-float p0, p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 664
    move v0, p0

    const/4 p0, 0x0

    goto :goto_0

    .line 665
    :cond_2
    sub-float/2addr p0, v2

    div-float/2addr p0, v3

    .line 666
    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v0, v0, p0

    const/high16 v2, 0x43600000    # 224.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 668
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

    .line 679
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

    .line 680
    const/high16 v3, 0x40000000    # 2.0f

    sub-float v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v1

    sub-float v3, v2, v3

    float-to-int v3, v3

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v3

    .line 681
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float p0, p0, v1

    sub-float/2addr v2, p0

    float-to-int p0, v2

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 682
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

    .line 672
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

    .line 673
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

    .line 674
    sub-float/2addr v0, p0

    mul-float v0, v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v6

    float-to-int p0, p0

    .line 675
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

    .line 700
    nop

    .line 701
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 702
    const/high16 v2, 0x43000000    # 128.0f

    mul-float p0, p0, v2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 703
    shl-int/lit8 v0, v1, 0x8

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static clamp(I)I
    .locals 1

    .line 707
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

    .line 555
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 556
    :goto_0
    rem-int v1, p0, v0

    .line 557
    div-int/2addr p0, v0

    .line 558
    invoke-static {v1, p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static clientXY2ScreenXY(IIII)[I
    .locals 4

    .line 539
    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 540
    :cond_0
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_1

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    .line 541
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_2

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x78

    .line 544
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 548
    :cond_3
    mul-int p0, p0, p2

    div-int/2addr p0, v0

    .line 549
    mul-int p1, p1, p3

    div-int/2addr p1, v1

    goto :goto_3

    .line 545
    :cond_4
    :goto_2
    mul-int p0, p0, p2

    div-int/2addr p0, v1

    .line 546
    mul-int p1, p1, p3

    div-int/2addr p1, v0

    .line 551
    :goto_3
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 539
    :cond_5
    :goto_4
    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static doFfcCycle()V
    .locals 15

    .line 265
    const-string v0, "DeviceController"

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    if-nez v1, :cond_0

    return-void

    .line 266
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 268
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "FFC: Step 1 - Closing shutter (state 0)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 270
    :try_start_1
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v3

    .line 272
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FFC setShutterState(0) error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 275
    :goto_0
    const-wide/16 v3, 0x190

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    goto :goto_1

    :catch_0
    move-exception v3

    .line 277
    :goto_1
    :try_start_4
    const-string v3, "FFC: Step 2 - Accumulating 8 dark baseline frames..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int v3, v3, v4

    .line 279
    new-array v4, v3, [J

    .line 280
    nop

    .line 281
    nop

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 284
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v12, 0xfa0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 285
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 287
    :try_start_5
    sget-wide v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    if-eqz v10, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    array-length v10, v10

    if-ne v10, v3, :cond_2

    .line 288
    sget-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 289
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_1

    .line 290
    aget-wide v11, v4, v10

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aget v13, v13, v10

    int-to-long v13, v13

    add-long/2addr v11, v13

    aput-wide v11, v4, v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 292
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 297
    :cond_2
    :goto_4
    :try_start_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 298
    goto :goto_5

    .line 294
    :catchall_1
    move-exception v10

    .line 295
    :try_start_7
    const-string v11, "FFC acc error"

    invoke-static {v0, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 299
    :goto_5
    const-wide/16 v10, 0x23

    :try_start_8
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_2

    :catch_1
    move-exception v10

    goto :goto_2

    .line 297
    :catchall_2
    move-exception v1

    :try_start_9
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 298
    throw v1

    .line 302
    :cond_3
    if-lez v9, :cond_7

    .line 303
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 305
    :try_start_a
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    if-eqz v5, :cond_4

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    array-length v5, v5

    if-eq v5, v3, :cond_5

    .line 306
    :cond_4
    new-array v5, v3, [I

    sput-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 308
    :cond_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    .line 309
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget-wide v7, v4, v5

    int-to-long v10, v9

    div-long/2addr v7, v10

    long-to-int v8, v7

    aput v8, v6, v5

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 311
    :cond_6
    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 312
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

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    .line 313
    :catchall_3
    move-exception v3

    .line 314
    :try_start_b
    const-string v4, "FFC baseline error"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 316
    :goto_7
    :try_start_c
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 317
    goto :goto_8

    .line 316
    :catchall_4
    move-exception v1

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 317
    throw v1

    .line 320
    :cond_7
    :goto_8
    const-string v3, "FFC: Step 3 - Opening shutter (state 1)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 322
    :try_start_d
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 325
    goto :goto_9

    .line 323
    :catchall_5
    move-exception v1

    .line 324
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FFC setShutterState(1) error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 327
    :goto_9
    const-wide/16 v3, 0x12c

    :try_start_f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_a

    :catch_2
    move-exception v1

    .line 328
    :goto_a
    :try_start_10
    const-string v1, "FFC: Calibration cycle finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_b

    .line 329
    :catchall_6
    move-exception v1

    .line 330
    :try_start_11
    const-string v3, "doFfcCycle general error"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 332
    :goto_b
    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 333
    nop

    .line 334
    return-void

    .line 332
    :catchall_7
    move-exception v0

    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 333
    throw v0
.end method

.method public static doRecording(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 601
    sget-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return p0
.end method

.method public static getEX()I
    .locals 1

    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public static getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 2

    .line 622
    if-eqz p0, :cond_0

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->bIsothermal:Z

    .line 624
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 625
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intAutoEnlargeRange:I

    .line 626
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intBrightOffset:I

    .line 627
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intContrastOffset:I

    .line 628
    const/16 v1, 0x61a8

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intCurrentEnvTemperature:I

    .line 629
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intDetailRatio:I

    .line 631
    :cond_0
    return-void
.end method

.method public static getOutputBMPData(Landroid/graphics/Bitmap;I)Z
    .locals 10

    .line 483
    const-string p1, "DeviceController"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 484
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 486
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 505
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 486
    return v1

    .line 487
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 488
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 489
    if-lez v5, :cond_4

    if-gtz v9, :cond_2

    goto :goto_0

    .line 491
    :cond_2
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-int v2, v5, v9

    if-lt v0, v2, :cond_3

    .line 493
    :try_start_2
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    nop

    .line 505
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 494
    const/4 p0, 0x1

    return p0

    .line 495
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 496
    :try_start_3
    const-string v0, "bmp.setPixels error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    nop

    .line 505
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 497
    return v1

    .line 500
    :cond_3
    nop

    .line 505
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 500
    return v1

    .line 505
    :cond_4
    :goto_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 489
    return v1

    .line 501
    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 502
    :try_start_4
    const-string v0, "getOutputBMPData error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 503
    nop

    .line 505
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 503
    return v1

    .line 505
    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 506
    throw p0

    .line 483
    :cond_5
    :goto_1
    return v1
.end method

.method public static getOutputColorbarData(Landroid/graphics/Bitmap;I)Z
    .locals 12

    .line 510
    const/4 p1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 512
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 513
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 514
    if-lez v4, :cond_8

    if-gtz v8, :cond_1

    goto :goto_4

    .line 516
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

    .line 517
    :goto_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v0, v1, v0

    .line 518
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 520
    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v1, v8, :cond_7

    .line 521
    add-int/lit8 v3, v8, -0x1

    sub-int v5, v3, v1

    int-to-long v5, v5

    const-wide/16 v10, 0xff

    mul-long v5, v5, v10

    if-le v8, v9, :cond_3

    move v9, v3

    :cond_3
    int-to-long v9, v9

    div-long/2addr v5, v9

    long-to-int v3, v5

    .line 522
    if-gez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 523
    :cond_4
    const/16 v5, 0xff

    if-le v3, v5, :cond_5

    const/16 v3, 0xff

    .line 524
    :cond_5
    :goto_2
    aget v3, v0, v3

    .line 525
    mul-int v5, v1, v4

    .line 526
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_6

    .line 527
    add-int v7, v5, v6

    aput v3, v2, v7

    .line 526
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 520
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    return v9

    .line 514
    :cond_8
    :goto_4
    return p1

    .line 532
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 533
    const-string v0, "DeviceController"

    const-string v1, "getOutputColorbarData error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    return p1

    .line 510
    :cond_9
    :goto_5
    return p1
.end method

.method public static getPreviewOrientation()I
    .locals 1

    .line 148
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    return v0
.end method

.method public static getRectTemperatureInfo(IIII[IZ)Z
    .locals 18

    .line 191
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    array-length v6, v4

    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    const/16 p5, 0x0

    goto/16 :goto_7

    .line 192
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 194
    :try_start_0
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_1

    .line 241
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 194
    return v5

    .line 196
    :cond_1
    :try_start_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 197
    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 198
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 199
    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    sub-int/2addr v7, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 201
    if-gt v6, v0, :cond_b

    if-le v2, v1, :cond_2

    const/16 p5, 0x0

    goto/16 :goto_5

    .line 203
    :cond_2
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    mul-int v3, v3, v2

    add-int/2addr v3, v6

    .line 208
    nop

    .line 210
    const v9, 0x7fffffff

    const-wide/16 v10, 0x0

    move-wide v11, v10

    const/4 v13, 0x0

    const v14, 0x7fffffff

    const/high16 v15, -0x80000000

    move v10, v3

    :goto_0
    if-gt v2, v1, :cond_7

    .line 211
    sget v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-int v16, v16, v2

    .line 212
    move v5, v6

    const/16 p5, 0x0

    :goto_1
    if-gt v5, v0, :cond_6

    .line 213
    const/16 v17, 0x1

    add-int v8, v16, v5

    .line 214
    if-ltz v8, :cond_5

    :try_start_2
    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v7, v7

    if-ge v8, v7, :cond_5

    .line 215
    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget v7, v7, v8

    .line 216
    if-ge v7, v14, :cond_3

    .line 217
    nop

    .line 218
    move v14, v7

    move v3, v8

    .line 220
    :cond_3
    if-le v7, v15, :cond_4

    .line 221
    nop

    .line 222
    move v15, v7

    move v10, v8

    .line 224
    :cond_4
    int-to-long v7, v7

    add-long/2addr v11, v7

    .line 225
    add-int/lit8 v13, v13, 0x1

    .line 212
    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    goto :goto_1

    .line 210
    :cond_6
    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_0

    .line 230
    :cond_7
    const/16 p5, 0x0

    const/16 v17, 0x1

    const/16 v0, 0x61a8

    if-lez v13, :cond_8

    int-to-long v1, v13

    div-long/2addr v11, v1

    long-to-int v1, v11

    goto :goto_2

    .line 237
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 230
    :cond_8
    const/16 v1, 0x61a8

    .line 231
    :goto_2
    if-eq v14, v9, :cond_9

    goto :goto_3

    :cond_9
    const/16 v14, 0x61a8

    :goto_3
    aput v14, v4, p5

    .line 232
    const/high16 v2, -0x80000000

    if-eq v15, v2, :cond_a

    goto :goto_4

    :cond_a
    const/16 v15, 0x61a8

    :goto_4
    aput v15, v4, v17

    .line 233
    const/4 v0, 0x2

    aput v1, v4, v0

    .line 234
    const/4 v0, 0x3

    aput v3, v4, v0

    .line 235
    const/4 v0, 0x4

    aput v10, v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    nop

    .line 241
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 236
    return v17

    .line 201
    :cond_b
    const/16 p5, 0x0

    .line 241
    :goto_5
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 201
    return p5

    .line 237
    :catchall_1
    move-exception v0

    const/16 p5, 0x0

    .line 238
    :goto_6
    :try_start_3
    const-string v1, "DeviceController"

    const-string v2, "getRectTemperatureInfo error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 239
    nop

    .line 241
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 239
    return p5

    .line 241
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 242
    throw v0

    .line 191
    :cond_c
    const/16 p5, 0x0

    :goto_7
    return p5
.end method

.method public static getState()Lcn/com/magnity/magnitycx/sdk/State;
    .locals 1

    .line 163
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 165
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 168
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 168
    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    :try_start_1
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 170
    return-object v0

    .line 172
    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 173
    throw v0
.end method

.method public static getTemperature(IIZ)I
    .locals 0

    .line 177
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 179
    const/16 p1, 0x61a8

    :try_start_0
    sget-object p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    if-eqz p2, :cond_0

    if-ltz p0, :cond_0

    sget-object p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length p2, p2

    if-ge p0, p2, :cond_0

    .line 180
    sget-object p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget p0, p2, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 180
    return p0

    .line 182
    :cond_0
    :try_start_1
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz p0, :cond_1

    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget p1, p0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 182
    return p1

    .line 183
    :catchall_0
    move-exception p0

    .line 184
    nop

    .line 186
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 184
    return p1
.end method

.method private static initPalettes()V
    .locals 7

    .line 637
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 638
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v2, v2, v0

    shl-int/lit8 v3, v1, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v3, v5

    or-int/2addr v3, v1

    aput v3, v2, v1

    .line 639
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    int-to-float v3, v1

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v5

    aput v5, v2, v1

    .line 640
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v5

    aput v5, v2, v1

    .line 641
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v5

    aput v5, v2, v1

    .line 642
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v5, 0x4

    aget-object v2, v2, v5

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v5

    aput v5, v2, v1

    .line 643
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

    .line 644
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x6

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcAutumn(F)I

    move-result v4

    aput v4, v2, v1

    .line 645
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x7

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcWinter(F)I

    move-result v4

    aput v4, v2, v1

    .line 646
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x8

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v4

    aput v4, v2, v1

    .line 647
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x9

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v4

    aput v4, v2, v1

    .line 648
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xa

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v4

    aput v4, v2, v1

    .line 649
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xb

    aget-object v2, v2, v4

    invoke-static {v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v3

    aput v3, v2, v1

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 651
    :cond_0
    return-void
.end method

.method public static isOutputDataReady()Z
    .locals 1

    .line 140
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    return v0
.end method

.method public static isProcessImage()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .line 597
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return v0
.end method

.method public static pushFrame([BII)Z
    .locals 36

    .line 337
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DeviceController"

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    const/16 v19, 0x0

    goto/16 :goto_11

    .line 338
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 340
    :try_start_0
    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v4, :cond_1

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v4, 0xa0

    .line 341
    :goto_0
    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v6, :cond_2

    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v6, 0x78

    .line 342
    :goto_1
    mul-int v7, v4, v6

    .line 344
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    if-eqz v8, :cond_3

    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    array-length v8, v8

    if-eq v8, v7, :cond_4

    .line 345
    :cond_3
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 346
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 347
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 348
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 349
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 350
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 353
    :cond_4
    nop

    .line 354
    array-length v8, v0

    const/4 v9, 0x3

    const/16 v10, 0x1c

    const/16 v11, 0xff

    const/4 v12, 0x1

    if-lt v8, v10, :cond_5

    .line 355
    aget-byte v8, v0, v3

    and-int/2addr v8, v11

    aget-byte v13, v0, v12

    and-int/2addr v13, v11

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v8, v13

    aget-byte v13, v0, v5

    and-int/2addr v13, v11

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v8, v13

    aget-byte v13, v0, v9

    and-int/2addr v13, v11

    shl-int/lit8 v13, v13, 0x18

    or-int/2addr v8, v13

    .line 356
    const v13, 0x1bb1b11b

    if-ne v8, v13, :cond_5

    .line 357
    goto :goto_2

    .line 361
    :cond_5
    const/4 v10, 0x0

    :goto_2
    array-length v8, v0

    sub-int/2addr v8, v10

    div-int/2addr v8, v5

    .line 362
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 363
    if-gtz v8, :cond_6

    .line 478
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 363
    return v3

    .line 365
    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    .line 366
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v10

    .line 367
    :try_start_1
    aget-byte v15, v0, v14

    and-int/2addr v15, v11

    .line 368
    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v0, v14

    and-int/2addr v14, v11

    .line 369
    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v14, v15

    .line 370
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aput v14, v15, v13

    .line 371
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aput v14, v15, v13

    .line 365
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 373
    :cond_7
    sget-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    sput-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 374
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    add-int/2addr v0, v12

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 377
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    if-nez v0, :cond_8

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    const/16 v8, 0xf

    if-lt v0, v8, :cond_8

    .line 378
    sput-boolean v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 379
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 385
    :cond_8
    const/16 v0, 0x1388

    if-le v1, v0, :cond_9

    const v0, 0x186a0

    if-ge v1, v0, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    const/16 v0, 0x6d60

    .line 386
    :goto_4
    nop

    .line 387
    add-int/lit16 v1, v0, 0x34bc

    .line 389
    nop

    .line 390
    nop

    .line 391
    nop

    .line 392
    div-int/lit8 v8, v6, 0x2

    mul-int v8, v8, v4

    div-int/lit8 v10, v4, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v8, v10

    .line 393
    nop

    .line 395
    nop

    .line 396
    nop

    .line 397
    nop

    .line 399
    const-wide/16 v13, 0x0

    const v10, 0x7fffffff

    const/high16 v15, -0x80000000

    move v10, v8

    move-wide v11, v13

    move-wide v14, v11

    const v13, 0x7fffffff

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_5
    const-wide/16 v20, 0xa

    const-wide/16 v22, 0x4b

    if-ge v3, v6, :cond_11

    .line 400
    mul-int v24, v3, v4

    .line 401
    if-lt v3, v9, :cond_a

    add-int/lit8 v5, v6, -0x3

    if-ge v3, v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 402
    :goto_6
    move/from16 v26, v17

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v4, :cond_10

    .line 403
    add-int v17, v24, v9

    .line 404
    :try_start_2
    sget-boolean v28, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    if-eqz v28, :cond_b

    sget-object v28, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aget v28, v28, v17

    sget-object v29, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget v29, v29, v17

    sub-int v28, v28, v29

    move/from16 v35, v28

    move/from16 v28, v1

    move/from16 v1, v35

    goto :goto_8

    :cond_b
    move/from16 v28, v1

    const/4 v1, 0x0

    .line 405
    :goto_8
    sget-object v29, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aput v1, v29, v17

    .line 408
    move/from16 p0, v10

    move-wide/from16 v29, v11

    int-to-long v10, v1

    mul-long v31, v10, v22

    move-wide/from16 v33, v10

    div-long v10, v31, v20

    long-to-int v11, v10

    add-int v10, v28, v11

    .line 409
    sget-object v11, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aput v10, v11, v17

    .line 412
    if-eqz v5, :cond_f

    const/4 v10, 0x3

    if-lt v9, v10, :cond_e

    add-int/lit8 v11, v4, -0x3

    if-ge v9, v11, :cond_e

    .line 413
    if-ge v1, v13, :cond_c

    .line 414
    nop

    .line 415
    move v13, v1

    move/from16 v8, v17

    .line 417
    :cond_c
    move/from16 v11, v26

    if-le v1, v11, :cond_d

    .line 418
    nop

    .line 419
    move/from16 v26, v1

    goto :goto_9

    .line 417
    :cond_d
    move/from16 v17, p0

    move/from16 v26, v11

    .line 421
    :goto_9
    add-long v14, v14, v33

    .line 422
    mul-long v11, v33, v33

    add-long v11, v29, v11

    .line 423
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 412
    :cond_e
    move/from16 v11, v26

    goto :goto_a

    :cond_f
    move/from16 v11, v26

    const/4 v10, 0x3

    .line 402
    :goto_a
    move/from16 v17, p0

    move/from16 v26, v11

    move-wide/from16 v11, v29

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v17

    move/from16 v1, v28

    goto :goto_7

    .line 399
    :cond_10
    move/from16 v28, v1

    move/from16 p0, v10

    move-wide/from16 v29, v11

    move/from16 v11, v26

    const/4 v10, 0x3

    add-int/lit8 v3, v3, 0x1

    move/from16 v10, p0

    move/from16 v17, v11

    move-wide/from16 v11, v29

    const/4 v5, 0x2

    const/4 v9, 0x3

    goto/16 :goto_5

    .line 428
    :cond_11
    move/from16 v28, v1

    if-gtz v18, :cond_12

    .line 429
    nop

    .line 430
    nop

    .line 431
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_c

    .line 428
    :cond_12
    move/from16 v3, v17

    move/from16 v1, v18

    .line 434
    :goto_c
    long-to-double v14, v14

    move/from16 p0, v8

    int-to-double v8, v1

    div-double/2addr v14, v8

    .line 435
    long-to-double v11, v11

    div-double/2addr v11, v8

    mul-double v8, v14, v14

    sub-double/2addr v11, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 436
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 439
    const-wide/high16 v11, 0x4004000000000000L    # 2.5

    mul-double v11, v11, v8

    move-wide/from16 v17, v8

    sub-double v8, v14, v11

    double-to-int v1, v8

    .line 440
    add-double/2addr v11, v14

    double-to-int v5, v11

    .line 441
    sub-int/2addr v5, v1

    const/4 v8, 0x1

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 443
    sget v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    if-ltz v8, :cond_13

    sget v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    const/16 v9, 0xc

    if-ge v8, v9, :cond_13

    sget v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    goto :goto_d

    :cond_13
    const/4 v8, 0x2

    .line 444
    :goto_d
    sget-object v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v8, v9, v8

    .line 446
    const/4 v9, 0x0

    :goto_e
    if-ge v9, v7, :cond_16

    .line 447
    sget-object v11, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v11, v11, v9

    .line 448
    sub-int/2addr v11, v1

    int-to-long v11, v11

    const-wide/16 v24, 0xff

    mul-long v11, v11, v24

    move/from16 v24, v7

    move-object/from16 p1, v8

    int-to-long v7, v5

    div-long/2addr v11, v7

    long-to-int v7, v11

    .line 449
    if-gez v7, :cond_14

    const/4 v7, 0x0

    const/16 v8, 0xff

    goto :goto_f

    .line 450
    :cond_14
    const/16 v8, 0xff

    if-le v7, v8, :cond_15

    const/16 v7, 0xff

    .line 451
    :cond_15
    :goto_f
    sget-object v11, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    aget v7, p1, v7

    aput v7, v11, v9

    .line 446
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p1

    move/from16 v7, v24

    goto :goto_e

    .line 455
    :cond_16
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v13

    mul-long v7, v7, v22

    div-long v7, v7, v20

    long-to-int v5, v7

    add-int v5, v28, v5

    iput v5, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    .line 456
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v3

    mul-long v7, v7, v22

    div-long v7, v7, v20

    long-to-int v3, v7

    add-int v3, v28, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    .line 457
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const-wide/high16 v7, 0x401e000000000000L    # 7.5

    mul-double v14, v14, v7

    double-to-int v3, v14

    add-int v3, v28, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 458
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    rem-int v3, p0, v4

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMinX:I

    .line 459
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    div-int v3, p0, v4

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMinY:I

    .line 460
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    rem-int v3, v10, v4

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    .line 461
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    div-int/2addr v10, v4

    iput v10, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    .line 462
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    mul-double v8, v17, v7

    double-to-int v3, v8

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intSTDTemperature:I

    .line 463
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v3, 0x32

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveNETDt:I

    .line 465
    const/16 v16, 0x1

    sput-boolean v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 468
    sget-wide v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x7d0

    cmp-long v1, v9, v11

    if-lez v1, :cond_17

    .line 469
    sput-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushFrame: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " fpa="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v3, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "C aveT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    int-to-double v3, v1

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "C minT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    int-to-double v3, v1

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "C maxT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    int-to-double v3, v1

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "C hasBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    :cond_17
    nop

    .line 478
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 473
    const/16 v16, 0x1

    return v16

    .line 474
    :catchall_0
    move-exception v0

    goto :goto_10

    :catchall_1
    move-exception v0

    const/16 v19, 0x0

    .line 475
    :goto_10
    :try_start_3
    const-string v1, "pushFrame error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 476
    nop

    .line 478
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 476
    return v19

    .line 478
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 479
    throw v0

    .line 337
    :cond_18
    const/16 v19, 0x0

    :goto_11
    return v19
.end method

.method public static saveDDT(Ljava/lang/String;)Z
    .locals 0

    .line 605
    const/4 p0, 0x1

    return p0
.end method

.method public static screenXY2ClientXY(IIII)[I
    .locals 5

    .line 562
    const/4 v0, 0x0

    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 563
    :cond_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    .line 564
    :goto_0
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    .line 567
    :goto_1
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 571
    :cond_3
    mul-int p0, p0, v1

    div-int/2addr p0, p2

    .line 572
    mul-int p1, p1, v2

    div-int/2addr p1, p3

    goto :goto_3

    .line 568
    :cond_4
    :goto_2
    mul-int p0, p0, v2

    div-int/2addr p0, p2

    .line 569
    mul-int p1, p1, v1

    div-int/2addr p1, p3

    .line 574
    :goto_3
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 575
    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 576
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 562
    :cond_5
    :goto_4
    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static screenXY2SensorXY(IIII)[I
    .locals 0

    .line 584
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static sensorXY2ScreenXY(IIII)[I
    .locals 0

    .line 580
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static setAutoEnlarge(I)V
    .locals 0

    .line 619
    return-void
.end method

.method public static setColorPalette(I)V
    .locals 1

    .line 152
    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 153
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 155
    :cond_0
    return-void
.end method

.method public static setColorbarSize(II)V
    .locals 0

    .line 158
    if-lez p0, :cond_0

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarWidth:I

    .line 159
    :cond_0
    if-lez p1, :cond_1

    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarHeight:I

    .line 160
    :cond_1
    return-void
.end method

.method public static setEX(III)V
    .locals 0

    .line 613
    return-void
.end method

.method public static setEmissivity(II)V
    .locals 0

    .line 616
    return-void
.end method

.method public static setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 0

    .line 634
    return-void
.end method

.method public static setPreviewOrientation(I)V
    .locals 0

    .line 144
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    .line 145
    return-void
.end method

.method public static startProcess(Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;IIIIIIIIIILjava/lang/String;)Z
    .locals 0

    .line 88
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 90
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

    .line 91
    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    .line 92
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 93
    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 94
    sput p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 96
    :cond_0
    if-ltz p9, :cond_1

    const/16 p0, 0xc

    if-ge p9, p0, :cond_1

    .line 97
    sput p9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 100
    :cond_1
    sget p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int p0, p0, p1

    .line 101
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 102
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 103
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 104
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 105
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 106
    new-array p0, p0, [I

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 107
    new-instance p0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 109
    const/4 p0, 0x0

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 110
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 111
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 112
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 113
    const-wide/16 p1, 0x0

    sput-wide p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 115
    const/4 p1, 0x1

    sput-boolean p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 116
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    nop

    .line 120
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 118
    return p1

    .line 120
    :catchall_0
    move-exception p0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 121
    throw p0
.end method

.method public static startRecording(Ljava/lang/String;IIIII)Z
    .locals 0

    .line 588
    const/4 p0, 0x1

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 589
    return p0
.end method

.method public static stopProcess()V
    .locals 1

    .line 125
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 127
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 128
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 129
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 132
    throw v0
.end method

.method public static stopRecording()V
    .locals 1

    .line 593
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 594
    return-void
.end method

.method public static triggerFFC()V
    .locals 3

    .line 246
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "DeviceController"

    const-string v1, "FFC already in progress, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;-><init>()V

    const-string v2, "FFC-Worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method
