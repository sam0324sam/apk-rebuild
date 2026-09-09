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

.field private static sFilteredDiff:[I

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
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 42
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 43
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 44
    new-instance v4, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v4}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 45
    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 47
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

    .line 50
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->initPalettes()V

    .line 51
    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorbarSize(II)V

    .line 52
    const-string v0, "paletteIndex"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 53
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorPalette(I)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static Lock()V
    .locals 1

    .line 61
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 64
    :goto_0
    return-void
.end method

.method public static Unlock()V
    .locals 1

    .line 68
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 73
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

.method public static buffer2ClientXY(II)[I
    .locals 5

    .line 626
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 627
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 629
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 630
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 631
    move p1, p0

    move p0, v1

    goto :goto_2

    .line 632
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 633
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 634
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 635
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 636
    nop

    .line 637
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 639
    :cond_4
    nop

    .line 640
    nop

    .line 642
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method private static calcAutumn(F)I
    .locals 2

    .line 829
    nop

    .line 830
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 831
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    const/high16 p0, 0x42200000    # 40.0f

    mul-float v1, v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 832
    shl-int/lit8 v0, v0, 0x8

    const/high16 v1, -0x10000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcGlowbow(F)I
    .locals 4

    .line 822
    const/high16 v0, 0x43a00000    # 320.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 823
    const v1, 0x3e4ccccd    # 0.2f

    sub-float v1, p0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x438c0000    # 280.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 824
    const v3, 0x3f333333    # 0.7f

    sub-float/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 825
    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcHighContrast(F)I
    .locals 10

    .line 864
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x405fc00000000000L    # 127.0

    mul-double v4, v4, v6

    const-wide/high16 v8, 0x4060000000000000L    # 128.0

    add-double/2addr v4, v8

    double-to-int p0, v4

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 865
    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v6

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v2

    .line 866
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v6

    add-double/2addr v0, v8

    double-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 867
    shl-int/lit8 p0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr p0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcHotMetal(F)I
    .locals 5

    .line 843
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 844
    const v2, 0x3eb33333    # 0.35f

    sub-float v2, p0, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v2, v2, v0

    const v4, 0x3fc51eb8    # 1.54f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v2

    .line 845
    const/high16 v4, 0x3f400000    # 0.75f

    sub-float/2addr p0, v4

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 846
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

    .line 798
    const/4 v0, 0x0

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    .line 799
    div-float/2addr p0, v3

    .line 800
    mul-float v1, v1, p0

    float-to-int v1, v1

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 801
    goto :goto_0

    :cond_0
    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v6, p0, v5

    if-gez v6, :cond_1

    .line 802
    sub-float/2addr p0, v3

    div-float/2addr p0, v3

    .line 803
    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float v0, v0, p0

    add-float/2addr v0, v1

    float-to-int v1, v0

    mul-float v4, v4, p0

    float-to-int v0, v4

    mul-float p0, p0, v2

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 804
    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v6, p0, v2

    if-gez v6, :cond_2

    .line 805
    sub-float/2addr p0, v5

    div-float/2addr p0, v3

    .line 806
    const/high16 v2, 0x43200000    # 160.0f

    mul-float p0, p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 807
    move v0, p0

    const/4 p0, 0x0

    goto :goto_0

    .line 808
    :cond_2
    sub-float/2addr p0, v2

    div-float/2addr p0, v3

    .line 809
    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v0, v0, p0

    const/high16 v2, 0x43600000    # 224.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 811
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
    .locals 6

    .line 850
    const/high16 v0, 0x40800000    # 4.0f

    mul-float v0, v0, p0

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float v1, v0, v1

    const/high16 v2, -0x3f800000    # -4.0f

    mul-float p0, p0, v2

    const/high16 v2, 0x40900000    # 4.5f

    add-float/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 851
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v4, v0, v3

    const/high16 v5, 0x40600000    # 3.5f

    add-float/2addr v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    invoke-static {v4}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v4

    .line 852
    add-float/2addr v0, v3

    const/high16 v3, 0x40200000    # 2.5f

    add-float/2addr p0, v3

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 853
    shl-int/lit8 v0, v1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcRainbow(F)I
    .locals 8

    .line 815
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

    .line 816
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v7, 0x40200000    # 2.5f

    mul-float v1, v1, v7

    sub-float v1, v4, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v6

    float-to-int v1, v1

    .line 817
    sub-float/2addr v0, p0

    mul-float v0, v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v6

    float-to-int p0, p0

    .line 818
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

.method private static calcRedHot(I)I
    .locals 2

    .line 871
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    .line 872
    add-int/lit16 v0, p0, -0xc0

    mul-int/lit8 v0, v0, 0x4

    .line 873
    nop

    .line 874
    sub-int/2addr p0, v0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 875
    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 876
    const/high16 v1, -0x10000

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    .line 878
    :cond_0
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcRedSaturation(I)I
    .locals 2

    .line 857
    const/16 v0, 0xda

    if-lt p0, v0, :cond_0

    .line 858
    const/high16 p0, -0x10000

    return p0

    .line 860
    :cond_0
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcWinter(F)I
    .locals 3

    .line 836
    const/high16 v0, 0x43000000    # 128.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 837
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 838
    const/high16 v2, 0x43070000    # 135.0f

    mul-float p0, p0, v2

    const/high16 v2, 0x42f00000    # 120.0f

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 839
    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static clamp(I)I
    .locals 1

    .line 882
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

.method public static client2BufferXY(II)[I
    .locals 5

    .line 646
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 647
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 649
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 650
    nop

    .line 651
    add-int/lit8 v1, v1, -0x1

    sub-int p0, v1, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 652
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 653
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 654
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 655
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 656
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 657
    move p1, p0

    move p0, v0

    goto :goto_2

    .line 659
    :cond_4
    nop

    .line 660
    nop

    .line 662
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static clientPos2ScreenXY(III)[I
    .locals 6

    .line 682
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 683
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 684
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    rem-int v2, p0, v2

    .line 685
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq v5, v4, :cond_4

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v4, v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    div-int/2addr p0, v0

    .line 686
    invoke-static {v2, p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static clientXY2ScreenXY(IIII)[I
    .locals 4

    .line 666
    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 667
    :cond_0
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_1

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    .line 668
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_2

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x78

    .line 671
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 675
    :cond_3
    mul-int p0, p0, p2

    div-int/2addr p0, v0

    .line 676
    mul-int p1, p1, p3

    div-int/2addr p1, v1

    goto :goto_3

    .line 672
    :cond_4
    :goto_2
    mul-int p0, p0, p2

    div-int/2addr p0, v1

    .line 673
    mul-int p1, p1, p3

    div-int/2addr p1, v0

    .line 678
    :goto_3
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 666
    :cond_5
    :goto_4
    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static doFfcCycle()V
    .locals 15

    .line 290
    const-string v0, "DeviceController"

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    if-nez v1, :cond_0

    return-void

    .line 291
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 293
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "FFC: Step 1 - Closing shutter (state 0)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 295
    :try_start_1
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v3

    .line 297
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

    .line 300
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

    .line 302
    :goto_1
    :try_start_4
    const-string v3, "FFC: Step 2 - Accumulating 8 dark baseline frames..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int v3, v3, v4

    .line 304
    new-array v4, v3, [J

    .line 305
    nop

    .line 306
    nop

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 309
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v12, 0xfa0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 310
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 312
    :try_start_5
    sget-wide v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    if-eqz v10, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    array-length v10, v10

    if-ne v10, v3, :cond_2

    .line 313
    sget-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 314
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_1

    .line 315
    aget-wide v11, v4, v10

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aget v13, v13, v10

    int-to-long v13, v13

    add-long/2addr v11, v13

    aput-wide v11, v4, v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 314
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 317
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 322
    :cond_2
    :goto_4
    :try_start_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 323
    goto :goto_5

    .line 319
    :catchall_1
    move-exception v10

    .line 320
    :try_start_7
    const-string v11, "FFC acc error"

    invoke-static {v0, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 324
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

    .line 322
    :catchall_2
    move-exception v1

    :try_start_9
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 323
    throw v1

    .line 327
    :cond_3
    if-lez v9, :cond_7

    .line 328
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 330
    :try_start_a
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    if-eqz v5, :cond_4

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    array-length v5, v5

    if-eq v5, v3, :cond_5

    .line 331
    :cond_4
    new-array v5, v3, [I

    sput-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 333
    :cond_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    .line 334
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget-wide v7, v4, v5

    int-to-long v10, v9

    div-long/2addr v7, v10

    long-to-int v8, v7

    aput v8, v6, v5

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 336
    :cond_6
    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 337
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

    .line 338
    :catchall_3
    move-exception v3

    .line 339
    :try_start_b
    const-string v4, "FFC baseline error"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 341
    :goto_7
    :try_start_c
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 342
    goto :goto_8

    .line 341
    :catchall_4
    move-exception v1

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 342
    throw v1

    .line 345
    :cond_7
    :goto_8
    const-string v3, "FFC: Step 3 - Opening shutter (state 1)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 347
    :try_start_d
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 350
    goto :goto_9

    .line 348
    :catchall_5
    move-exception v1

    .line 349
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

    .line 352
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

    .line 353
    :goto_a
    :try_start_10
    const-string v1, "FFC: Calibration cycle finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_b

    .line 354
    :catchall_6
    move-exception v1

    .line 355
    :try_start_11
    const-string v3, "doFfcCycle general error"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 357
    :goto_b
    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 358
    nop

    .line 359
    return-void

    .line 357
    :catchall_7
    move-exception v0

    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 358
    throw v0
.end method

.method public static doRecording(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 731
    sget-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return p0
.end method

.method public static getEX()I
    .locals 1

    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public static getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 2

    .line 752
    if-eqz p0, :cond_0

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->bIsothermal:Z

    .line 754
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 755
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intAutoEnlargeRange:I

    .line 756
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intBrightOffset:I

    .line 757
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intContrastOffset:I

    .line 758
    const/16 v1, 0x61a8

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intCurrentEnvTemperature:I

    .line 759
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intDetailRatio:I

    .line 761
    :cond_0
    return-void
.end method

.method public static getOutputBMPData(Landroid/graphics/Bitmap;I)Z
    .locals 10

    .line 570
    const-string p1, "DeviceController"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 573
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 592
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 573
    return v1

    .line 574
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 575
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 576
    if-lez v5, :cond_4

    if-gtz v9, :cond_2

    goto :goto_0

    .line 578
    :cond_2
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-int v2, v5, v9

    if-lt v0, v2, :cond_3

    .line 580
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

    .line 581
    nop

    .line 592
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 581
    const/4 p0, 0x1

    return p0

    .line 582
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 583
    :try_start_3
    const-string v0, "bmp.setPixels error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 584
    nop

    .line 592
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 584
    return v1

    .line 587
    :cond_3
    nop

    .line 592
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 587
    return v1

    .line 592
    :cond_4
    :goto_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 576
    return v1

    .line 588
    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 589
    :try_start_4
    const-string v0, "getOutputBMPData error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 590
    nop

    .line 592
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 590
    return v1

    .line 592
    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 593
    throw p0

    .line 570
    :cond_5
    :goto_1
    return v1
.end method

.method public static getOutputColorbarData(Landroid/graphics/Bitmap;I)Z
    .locals 12

    .line 597
    const/4 p1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 599
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 600
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 601
    if-lez v4, :cond_8

    if-gtz v8, :cond_1

    goto :goto_4

    .line 603
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

    .line 604
    :goto_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v0, v1, v0

    .line 605
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 607
    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v1, v8, :cond_7

    .line 608
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

    .line 609
    if-gez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 610
    :cond_4
    const/16 v5, 0xff

    if-le v3, v5, :cond_5

    const/16 v3, 0xff

    .line 611
    :cond_5
    :goto_2
    aget v3, v0, v3

    .line 612
    mul-int v5, v1, v4

    .line 613
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_6

    .line 614
    add-int v7, v5, v6

    aput v3, v2, v7

    .line 613
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 607
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    return v9

    .line 601
    :cond_8
    :goto_4
    return p1

    .line 619
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 620
    const-string v0, "DeviceController"

    const-string v1, "getOutputColorbarData error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    return p1

    .line 597
    :cond_9
    :goto_5
    return p1
.end method

.method public static getPreviewOrientation()I
    .locals 1

    .line 150
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    return v0
.end method

.method public static getRectTemperatureInfo(IIII[IZ)Z
    .locals 17

    .line 211
    move-object/from16 v0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/16 p5, 0x0

    goto/16 :goto_9

    .line 212
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 214
    :try_start_0
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 266
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 214
    return v1

    .line 215
    :cond_1
    :try_start_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    .line 216
    :goto_0
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v3, :cond_3

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x78

    .line 218
    :goto_1
    invoke-static/range {p0 .. p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v4

    .line 219
    invoke-static/range {p2 .. p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v5

    .line 221
    aget v6, v4, v1

    aget v7, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 222
    add-int/lit8 v7, v2, -0x1

    aget v8, v4, v1

    aget v9, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 223
    const/4 v8, 0x1

    aget v9, v4, v8

    aget v10, v5, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 224
    sub-int/2addr v3, v8

    aget v4, v4, v8

    aget v5, v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    if-gt v6, v7, :cond_d

    if-le v9, v3, :cond_4

    const/16 p5, 0x0

    goto/16 :goto_7

    .line 228
    :cond_4
    nop

    .line 229
    nop

    .line 230
    nop

    .line 231
    nop

    .line 232
    mul-int v4, v9, v2

    add-int/2addr v4, v6

    .line 233
    nop

    .line 235
    const-wide/16 v11, 0x0

    move-wide v12, v11

    const/16 p5, 0x0

    const/high16 v1, -0x80000000

    const/4 v14, 0x0

    const v15, 0x7fffffff

    move v11, v9

    move v9, v4

    :goto_2
    if-gt v11, v3, :cond_9

    .line 236
    mul-int v16, v11, v2

    .line 237
    move v8, v6

    const/16 p0, 0x1

    :goto_3
    if-gt v8, v7, :cond_8

    .line 238
    add-int v5, v16, v8

    .line 239
    if-ltz v5, :cond_7

    :try_start_2
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 240
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget v10, v10, v5

    .line 241
    if-ge v10, v15, :cond_5

    .line 242
    nop

    .line 243
    move v4, v5

    move v15, v10

    .line 245
    :cond_5
    if-le v10, v1, :cond_6

    .line 246
    nop

    .line 247
    move v9, v5

    move v1, v10

    .line 249
    :cond_6
    move/from16 p3, v1

    int-to-long v0, v10

    add-long/2addr v12, v0

    .line 250
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    .line 237
    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p4

    goto :goto_3

    .line 235
    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p4

    const/4 v8, 0x1

    goto :goto_2

    .line 255
    :cond_9
    const/16 p0, 0x1

    const/16 v0, 0x61a8

    if-lez v14, :cond_a

    int-to-long v2, v14

    div-long/2addr v12, v2

    long-to-int v2, v12

    goto :goto_4

    .line 262
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 255
    :cond_a
    const/16 v2, 0x61a8

    .line 256
    :goto_4
    const v3, 0x7fffffff

    if-eq v15, v3, :cond_b

    goto :goto_5

    :cond_b
    const/16 v15, 0x61a8

    :goto_5
    aput v15, p4, p5

    .line 257
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_c

    goto :goto_6

    :cond_c
    const/16 v1, 0x61a8

    :goto_6
    aput v1, p4, p0

    .line 258
    const/4 v0, 0x2

    aput v2, p4, v0

    .line 259
    const/4 v0, 0x3

    aput v4, p4, v0

    .line 260
    const/4 v0, 0x4

    aput v9, p4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    nop

    .line 266
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 261
    return p0

    .line 226
    :cond_d
    const/16 p5, 0x0

    .line 266
    :goto_7
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 226
    return p5

    .line 262
    :catchall_1
    move-exception v0

    const/16 p5, 0x0

    .line 263
    :goto_8
    :try_start_3
    const-string v1, "DeviceController"

    const-string v2, "getRectTemperatureInfo error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 264
    nop

    .line 266
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 264
    return p5

    .line 266
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 267
    throw v0

    .line 211
    :cond_e
    const/16 p5, 0x0

    :goto_9
    return p5
.end method

.method public static getState()Lcn/com/magnity/magnitycx/sdk/State;
    .locals 1

    .line 165
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 167
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 170
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 170
    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    :try_start_1
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 172
    return-object v0

    .line 174
    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 175
    throw v0
.end method

.method public static getTemperature(IIZ)I
    .locals 10

    .line 179
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 181
    const/16 p2, 0x61a8

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    if-eqz v0, :cond_5

    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v0, v0

    if-lez v0, :cond_5

    .line 182
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 183
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 186
    :goto_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 187
    div-int/lit8 p0, v0, 0x2

    .line 188
    div-int/lit8 v1, v1, 0x2

    .line 189
    nop

    .line 190
    const/4 p1, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    :goto_2
    if-gt v5, v2, :cond_3

    .line 191
    const/4 v6, -0x1

    :goto_3
    if-gt v6, v2, :cond_2

    .line 192
    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    add-int v8, v1, v5

    mul-int v8, v8, v0

    add-int v9, p0, v6

    add-int/2addr v8, v9

    aget v7, v7, v8

    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 191
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 190
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 195
    :cond_3
    const-wide/16 p0, 0x9

    div-long/2addr v3, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p0, v3

    .line 206
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 195
    return p0

    .line 198
    :cond_4
    if-ltz p0, :cond_5

    :try_start_1
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length p1, p1

    if-ge p0, p1, :cond_5

    .line 199
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget p0, p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 199
    return p0

    .line 202
    :cond_5
    :try_start_2
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz p0, :cond_6

    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 202
    return p2

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    nop

    .line 206
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 204
    return p2
.end method

.method private static initPalettes()V
    .locals 7

    .line 767
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 768
    int-to-float v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 770
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v3, v3, v0

    shl-int/lit8 v4, v1, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v1

    aput v4, v3, v1

    .line 772
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    rsub-int v4, v1, 0xff

    shl-int/lit8 v6, v4, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v4, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v1

    .line 774
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 776
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 778
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcGlowbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 780
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcAutumn(F)I

    move-result v4

    aput v4, v3, v1

    .line 782
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcWinter(F)I

    move-result v4

    aput v4, v3, v1

    .line 784
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v4

    aput v4, v3, v1

    .line 786
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v4

    aput v4, v3, v1

    .line 788
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedSaturation(I)I

    move-result v4

    aput v4, v3, v1

    .line 790
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHighContrast(F)I

    move-result v2

    aput v2, v3, v1

    .line 792
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedHot(I)I

    move-result v3

    aput v3, v2, v1

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 794
    :cond_0
    return-void
.end method

.method public static isOutputDataReady()Z
    .locals 1

    .line 142
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    return v0
.end method

.method public static isProcessImage()Z
    .locals 1

    .line 138
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .line 727
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return v0
.end method

.method public static pushFrame([BII)Z
    .locals 28

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DeviceController"

    const/4 v3, 0x0

    if-eqz v0, :cond_2c

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    const/16 p2, 0x0

    goto/16 :goto_18

    .line 363
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 365
    :try_start_0
    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v4, :cond_1

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v4, 0xa0

    .line 366
    :goto_0
    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v6, :cond_2

    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v6, 0x78

    .line 367
    :goto_1
    mul-int v7, v4, v6

    .line 369
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    if-eqz v8, :cond_3

    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    array-length v8, v8

    if-eq v8, v7, :cond_4

    .line 370
    :cond_3
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 371
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 372
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 373
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 374
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 375
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 376
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 379
    :cond_4
    nop

    .line 380
    array-length v8, v0

    const/4 v9, 0x3

    const/16 v10, 0x1c

    const/16 v11, 0xff

    const/4 v12, 0x1

    if-lt v8, v10, :cond_5

    .line 381
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

    .line 382
    const v13, 0x1bb1b11b

    if-ne v8, v13, :cond_5

    .line 383
    goto :goto_2

    .line 387
    :cond_5
    const/4 v10, 0x0

    :goto_2
    array-length v8, v0

    sub-int/2addr v8, v10

    div-int/2addr v8, v5

    .line 388
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    if-gtz v8, :cond_6

    .line 565
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 389
    return v3

    .line 391
    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    .line 392
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v10

    .line 393
    :try_start_1
    aget-byte v15, v0, v14

    and-int/2addr v15, v11

    .line 394
    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v0, v14

    and-int/2addr v14, v11

    .line 395
    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v14, v15

    .line 396
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aput v14, v15, v13

    .line 397
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aput v14, v15, v13

    .line 391
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 399
    :cond_7
    sget-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    sput-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 400
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    add-int/2addr v0, v12

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 403
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    if-nez v0, :cond_8

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    const/16 v8, 0xf

    if-lt v0, v8, :cond_8

    .line 404
    sput-boolean v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 405
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 409
    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_a

    .line 410
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    sget-boolean v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aget v10, v10, v0

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget v13, v13, v0

    sub-int/2addr v10, v13

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    aput v10, v8, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 414
    :cond_a
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v6, :cond_1f

    .line 415
    mul-int v8, v0, v4

    .line 416
    if-lt v0, v5, :cond_1d

    add-int/lit8 v10, v6, -0x2

    if-lt v0, v10, :cond_b

    move/from16 v20, v0

    move/from16 p0, v8

    const/16 p2, 0x0

    const/16 v19, 0x3

    goto/16 :goto_c

    .line 423
    :cond_b
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v13, v13, v8

    aput v13, v10, v8

    .line 424
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v8, 0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 425
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v13, v8, v4

    add-int/lit8 v14, v13, -0x2

    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v15, v15, v14

    aput v15, v10, v14

    .line 426
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v13, -0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 428
    const/4 v10, 0x2

    :goto_7
    add-int/lit8 v13, v4, -0x2

    if-ge v10, v13, :cond_1c

    .line 429
    add-int v13, v8, v10

    .line 430
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    .line 432
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    sub-int v16, v13, v4

    add-int/lit8 v17, v16, -0x1

    aget v15, v15, v17

    .line 433
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x0

    :try_start_2
    aget v3, v17, v16

    .line 434
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v16, v16, 0x1

    aget v5, v17, v16

    .line 435
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, -0x1

    const/16 v19, 0x3

    aget v9, v16, v17

    .line 436
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, 0x1

    aget v11, v16, v17

    .line 437
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int v17, v13, v4

    add-int/lit8 v20, v17, -0x1

    aget v12, v16, v20

    .line 438
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    move/from16 v20, v0

    aget v0, v16, v17

    .line 439
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v17, 0x1

    move/from16 p0, v8

    aget v8, v16, v17

    .line 441
    nop

    .line 442
    move/from16 v16, v10

    if-ge v3, v15, :cond_c

    move v10, v3

    goto :goto_8

    :cond_c
    move v10, v15

    .line 443
    :goto_8
    if-ge v5, v10, :cond_d

    move v10, v5

    .line 444
    :cond_d
    if-ge v9, v10, :cond_e

    move v10, v9

    .line 445
    :cond_e
    if-ge v11, v10, :cond_f

    move v10, v11

    .line 446
    :cond_f
    if-ge v12, v10, :cond_10

    move v10, v12

    .line 447
    :cond_10
    if-ge v0, v10, :cond_11

    move v10, v0

    .line 448
    :cond_11
    if-ge v8, v10, :cond_12

    move v10, v8

    .line 450
    :cond_12
    nop

    .line 451
    move/from16 v17, v3

    if-le v3, v15, :cond_13

    goto :goto_9

    :cond_13
    move v3, v15

    .line 452
    :goto_9
    if-le v5, v3, :cond_14

    move v3, v5

    .line 453
    :cond_14
    if-le v9, v3, :cond_15

    move v3, v9

    .line 454
    :cond_15
    if-le v11, v3, :cond_16

    move v3, v11

    .line 455
    :cond_16
    if-le v12, v3, :cond_17

    move v3, v12

    .line 456
    :cond_17
    if-le v0, v3, :cond_18

    move v3, v0

    .line 457
    :cond_18
    if-le v8, v3, :cond_19

    move v3, v8

    .line 459
    :cond_19
    add-int v15, v15, v17

    add-int/2addr v15, v5

    add-int/2addr v15, v9

    add-int/2addr v15, v11

    add-int/2addr v15, v12

    add-int/2addr v15, v0

    add-int/2addr v15, v8

    shr-int/lit8 v0, v15, 0x3

    .line 462
    add-int/lit16 v3, v3, 0xfa

    if-gt v14, v3, :cond_1b

    add-int/lit16 v10, v10, -0xfa

    if-ge v14, v10, :cond_1a

    goto :goto_a

    .line 465
    :cond_1a
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v14, v0, v13

    goto :goto_b

    .line 463
    :cond_1b
    :goto_a
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v0, v3, v13

    .line 428
    :goto_b
    add-int/lit8 v10, v16, 0x1

    move/from16 v8, p0

    move/from16 v0, v20

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/16 v11, 0xff

    const/4 v12, 0x1

    goto/16 :goto_7

    :cond_1c
    move/from16 v20, v0

    const/16 p2, 0x0

    const/16 v19, 0x3

    goto :goto_e

    .line 416
    :cond_1d
    move/from16 v20, v0

    move/from16 p0, v8

    const/16 p2, 0x0

    const/16 v19, 0x3

    .line 417
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_1e

    .line 418
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v8, p0, v0

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v5, v5, v8

    aput v5, v3, v8

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 561
    :catchall_0
    move-exception v0

    goto/16 :goto_17

    .line 420
    :cond_1e
    nop

    .line 414
    :goto_e
    add-int/lit8 v0, v20, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/16 v11, 0xff

    const/4 v12, 0x1

    goto/16 :goto_6

    .line 473
    :cond_1f
    const/16 p2, 0x0

    const/16 v0, 0x1388

    if-le v1, v0, :cond_20

    const v0, 0x186a0

    if-ge v1, v0, :cond_20

    move v0, v1

    goto :goto_f

    :cond_20
    const/16 v0, 0x6d60

    .line 474
    :goto_f
    nop

    .line 475
    add-int/lit16 v1, v0, 0x3fac

    .line 477
    const/4 v3, 0x0

    :goto_10
    const-wide/16 v8, 0xa

    const-wide/16 v10, 0x4b

    if-ge v3, v7, :cond_21

    .line 478
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    sget-object v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v12, v12, v3

    int-to-long v12, v12

    mul-long v12, v12, v10

    div-long/2addr v12, v8

    long-to-int v8, v12

    add-int/2addr v8, v1

    aput v8, v5, v3

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 482
    :cond_21
    nop

    .line 483
    nop

    .line 484
    nop

    .line 485
    div-int/lit8 v3, v6, 0x2

    mul-int v3, v3, v4

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    .line 486
    nop

    .line 488
    nop

    .line 489
    nop

    .line 490
    nop

    .line 492
    const-wide/16 v12, 0x0

    const v14, 0x7fffffff

    const/high16 v15, -0x80000000

    move-wide/from16 p0, v8

    move-wide v8, v12

    move-wide v13, v8

    const/4 v5, 0x4

    const v15, 0x7fffffff

    const/high16 v16, -0x80000000

    const/16 v17, 0x0

    move v12, v3

    :goto_11
    move-wide/from16 v22, v10

    add-int/lit8 v10, v6, -0x4

    if-ge v5, v10, :cond_25

    .line 493
    mul-int v10, v5, v4

    .line 494
    move/from16 v20, v1

    move/from16 v11, v16

    const/4 v1, 0x4

    :goto_12
    move/from16 v16, v3

    add-int/lit8 v3, v4, -0x4

    if-ge v1, v3, :cond_24

    .line 495
    add-int v3, v10, v1

    .line 496
    sget-object v24, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    move/from16 v25, v1

    aget v1, v24, v3

    .line 497
    if-ge v1, v15, :cond_22

    .line 498
    nop

    .line 499
    move v15, v1

    move/from16 v16, v3

    .line 501
    :cond_22
    if-le v1, v11, :cond_23

    .line 502
    nop

    .line 503
    move v11, v1

    move v12, v3

    .line 505
    :cond_23
    move-wide/from16 v26, v8

    int-to-long v8, v1

    add-long/2addr v13, v8

    .line 506
    mul-long v8, v8, v8

    add-long v8, v26, v8

    .line 507
    add-int/lit8 v17, v17, 0x1

    .line 494
    add-int/lit8 v1, v25, 0x1

    move/from16 v3, v16

    goto :goto_12

    .line 492
    :cond_24
    move-wide/from16 v26, v8

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    move/from16 v1, v20

    move/from16 v16, v11

    move-wide/from16 v10, v22

    goto :goto_11

    .line 511
    :cond_25
    move/from16 v20, v1

    if-gtz v17, :cond_26

    .line 512
    nop

    .line 513
    nop

    .line 514
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto :goto_13

    .line 511
    :cond_26
    move/from16 v1, v16

    move/from16 v5, v17

    .line 517
    :goto_13
    long-to-double v10, v13

    int-to-double v13, v5

    div-double/2addr v10, v13

    .line 518
    long-to-double v8, v8

    div-double/2addr v8, v13

    mul-double v13, v10, v10

    sub-double/2addr v8, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 519
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 522
    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    mul-double v13, v13, v8

    move-wide/from16 v16, v8

    sub-double v8, v10, v13

    double-to-int v5, v8

    .line 523
    add-double/2addr v13, v10

    double-to-int v8, v13

    .line 524
    sub-int/2addr v8, v5

    const/4 v9, 0x1

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 526
    sget v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    if-ltz v9, :cond_27

    sget v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    const/16 v13, 0xc

    if-ge v9, v13, :cond_27

    sget v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    move/from16 v18, v9

    goto :goto_14

    :cond_27
    const/16 v18, 0x2

    .line 527
    :goto_14
    sget-object v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v9, v9, v18

    .line 529
    const/4 v13, 0x0

    :goto_15
    if-ge v13, v7, :cond_2a

    .line 530
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v14, v14, v13

    .line 531
    sub-int/2addr v14, v5

    move-wide/from16 v18, v10

    move-object v11, v9

    int-to-long v9, v14

    const-wide/16 v24, 0xff

    mul-long v9, v9, v24

    move-wide/from16 v24, v9

    int-to-long v9, v8

    div-long v9, v24, v9

    long-to-int v10, v9

    .line 532
    if-gez v10, :cond_28

    const/16 v9, 0xff

    const/4 v10, 0x0

    goto :goto_16

    .line 533
    :cond_28
    const/16 v9, 0xff

    if-le v10, v9, :cond_29

    const/16 v10, 0xff

    .line 534
    :cond_29
    :goto_16
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    aget v10, v11, v10

    aput v10, v14, v13

    .line 529
    add-int/lit8 v13, v13, 0x1

    move-object v9, v11

    move-wide/from16 v10, v18

    goto :goto_15

    .line 538
    :cond_2a
    move-wide/from16 v18, v10

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v15

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v8, v7

    add-int v7, v20, v8

    iput v7, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    .line 539
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v1

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v1, v7

    add-int v1, v20, v1

    iput v1, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    .line 540
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const-wide/high16 v7, 0x401e000000000000L    # 7.5

    mul-double v10, v18, v7

    double-to-int v5, v10

    add-int v5, v20, v5

    iput v5, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 542
    rem-int v1, v3, v4

    div-int/2addr v3, v4

    invoke-static {v1, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v1

    .line 543
    rem-int v3, v12, v4

    div-int/2addr v12, v4

    invoke-static {v3, v12}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v3

    .line 545
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    aget v9, v1, p2

    iput v9, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinX:I

    .line 546
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x1

    aget v1, v1, v21

    iput v1, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinY:I

    .line 547
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    aget v5, v3, p2

    iput v5, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    .line 548
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x1

    aget v3, v3, v21

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    .line 549
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    mul-double v8, v16, v7

    double-to-int v3, v8

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intSTDTemperature:I

    .line 550
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v3, 0x32

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveNETDt:I

    .line 552
    const/16 v21, 0x1

    sput-boolean v21, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 555
    sget-wide v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x7d0

    cmp-long v1, v9, v11

    if-lez v1, :cond_2b

    .line 556
    sput-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 557
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

    const-string v1, "C maxXY=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    :cond_2b
    nop

    .line 565
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 560
    const/16 v21, 0x1

    return v21

    .line 561
    :catchall_1
    move-exception v0

    const/16 p2, 0x0

    .line 562
    :goto_17
    :try_start_3
    const-string v1, "pushFrame error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 563
    nop

    .line 565
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 563
    return p2

    .line 565
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 566
    throw v0

    .line 362
    :cond_2c
    const/16 p2, 0x0

    :goto_18
    return p2
.end method

.method public static saveDDT(Ljava/lang/String;)Z
    .locals 0

    .line 735
    const/4 p0, 0x1

    return p0
.end method

.method public static screenXY2ClientXY(IIII)[I
    .locals 6

    .line 690
    const/4 v0, 0x0

    if-lez p2, :cond_9

    if-gtz p3, :cond_0

    goto :goto_7

    .line 691
    :cond_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    .line 692
    :goto_0
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    .line 695
    :goto_1
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 699
    :cond_3
    mul-int p0, p0, v1

    div-int/2addr p0, p2

    .line 700
    mul-int p1, p1, v2

    div-int/2addr p1, p3

    goto :goto_3

    .line 696
    :cond_4
    :goto_2
    mul-int p0, p0, v2

    div-int/2addr p0, p2

    .line 697
    mul-int p1, p1, v1

    div-int/2addr p1, p3

    .line 702
    :goto_3
    sget p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq p2, v5, :cond_6

    sget p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne p2, v4, :cond_5

    goto :goto_4

    :cond_5
    move p2, v1

    goto :goto_5

    :cond_6
    :goto_4
    move p2, v2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 703
    sget p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq p2, v5, :cond_8

    sget p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne p2, v4, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 704
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 690
    :cond_9
    :goto_7
    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static screenXY2SensorXY(IIII)[I
    .locals 0

    .line 713
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object p0

    .line 714
    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 p2, 0x1

    aget p0, p0, p2

    invoke-static {p1, p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object p0

    return-object p0
.end method

.method public static sensorXY2ScreenXY(IIII)[I
    .locals 1

    .line 708
    invoke-static {p0, p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object p0

    .line 709
    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-static {p1, p0, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static setAutoEnlarge(I)V
    .locals 0

    .line 749
    return-void
.end method

.method public static setColorPalette(I)V
    .locals 1

    .line 154
    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 155
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 157
    :cond_0
    return-void
.end method

.method public static setColorbarSize(II)V
    .locals 0

    .line 160
    if-lez p0, :cond_0

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarWidth:I

    .line 161
    :cond_0
    if-lez p1, :cond_1

    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarHeight:I

    .line 162
    :cond_1
    return-void
.end method

.method public static setEX(III)V
    .locals 0

    .line 743
    return-void
.end method

.method public static setEmissivity(II)V
    .locals 0

    .line 746
    return-void
.end method

.method public static setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 0

    .line 764
    return-void
.end method

.method public static setPreviewOrientation(I)V
    .locals 0

    .line 146
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    .line 147
    return-void
.end method

.method public static startProcess(Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;IIIIIIIIIILjava/lang/String;)Z
    .locals 0

    .line 89
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 91
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

    .line 92
    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    .line 93
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 94
    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 95
    sput p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 97
    :cond_0
    if-ltz p9, :cond_1

    const/16 p0, 0xc

    if-ge p9, p0, :cond_1

    .line 98
    sput p9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 101
    :cond_1
    sget p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int p0, p0, p1

    .line 102
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 103
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 104
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 105
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 106
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 107
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 108
    new-array p0, p0, [I

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 109
    new-instance p0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 111
    const/4 p0, 0x0

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 112
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 113
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 114
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 115
    const-wide/16 p1, 0x0

    sput-wide p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 117
    const/4 p1, 0x1

    sput-boolean p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 118
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    nop

    .line 122
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 120
    return p1

    .line 122
    :catchall_0
    move-exception p0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 123
    throw p0
.end method

.method public static startRecording(Ljava/lang/String;IIIII)Z
    .locals 0

    .line 718
    const/4 p0, 0x1

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 719
    return p0
.end method

.method public static stopProcess()V
    .locals 1

    .line 127
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 129
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 130
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 131
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 134
    throw v0
.end method

.method public static stopRecording()V
    .locals 1

    .line 723
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 724
    return-void
.end method

.method public static triggerFFC()V
    .locals 3

    .line 271
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "DeviceController"

    const-string v1, "FFC already in progress, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;-><init>()V

    const-string v2, "FFC-Worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 287
    return-void
.end method
