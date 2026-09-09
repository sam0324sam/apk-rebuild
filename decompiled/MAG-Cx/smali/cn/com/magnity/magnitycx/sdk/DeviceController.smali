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

.field private static sManualTempOffset:I

.field private static sOffsetLoaded:Z

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
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 37
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z

    .line 38
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 39
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 40
    const-wide/16 v5, 0x0

    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 42
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 43
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 44
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 45
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 46
    new-instance v4, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v4}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 47
    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 49
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

    .line 52
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->initPalettes()V

    .line 53
    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorbarSize(II)V

    .line 54
    const-string v0, "paletteIndex"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorPalette(I)V

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static Lock()V
    .locals 1

    .line 63
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 66
    :goto_0
    return-void
.end method

.method public static Unlock()V
    .locals 1

    .line 70
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 75
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

.method static synthetic access$200()Lcn/com/magnity/magnitycx/sdk/State;
    .locals 1

    .line 8
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 8
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    return v0
.end method

.method public static adjustTempOffset(Landroid/content/Context;I)V
    .locals 4

    .line 896
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v0, p1

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 898
    :try_start_0
    const-string p1, "user_manual_temp_offset"

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    invoke-static {p1, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 899
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 900
    if-eqz p0, :cond_0

    .line 901
    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 902
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 903
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "\u6eab\u5ea6\u6821\u6e96\u88dc\u511f: %+.1f\u00b0C\n(\u76ee\u524d\u8b80\u6578: %.1f\u00b0C)"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 905
    :try_start_1
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 906
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 908
    :cond_0
    return-void
.end method

.method public static adjustTempOffsetDown(Landroid/content/Context;)V
    .locals 1

    .line 915
    const/16 v0, -0x1f4

    invoke-static {p0, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffset(Landroid/content/Context;I)V

    .line 916
    return-void
.end method

.method public static adjustTempOffsetUp(Landroid/content/Context;)V
    .locals 1

    .line 911
    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffset(Landroid/content/Context;I)V

    .line 912
    return-void
.end method

.method public static buffer2ClientXY(II)[I
    .locals 5

    .line 636
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 637
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 639
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 640
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 641
    move p1, p0

    move p0, v1

    goto :goto_2

    .line 642
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 643
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 644
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 645
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 646
    nop

    .line 647
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 649
    :cond_4
    nop

    .line 650
    nop

    .line 652
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method private static calcAutumn(F)I
    .locals 2

    .line 839
    nop

    .line 840
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 841
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    const/high16 p0, 0x42200000    # 40.0f

    mul-float v1, v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 842
    shl-int/lit8 v0, v0, 0x8

    const/high16 v1, -0x10000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcGlowbow(F)I
    .locals 4

    .line 832
    const/high16 v0, 0x43a00000    # 320.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 833
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

    .line 834
    const v3, 0x3f333333    # 0.7f

    sub-float/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 835
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

    .line 874
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

    .line 875
    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v6

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v2

    .line 876
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v6

    add-double/2addr v0, v8

    double-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 877
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

    .line 853
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 854
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

    .line 855
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

    .line 856
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

    .line 808
    const/4 v0, 0x0

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    .line 809
    div-float/2addr p0, v3

    .line 810
    mul-float v1, v1, p0

    float-to-int v1, v1

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 811
    goto :goto_0

    :cond_0
    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v6, p0, v5

    if-gez v6, :cond_1

    .line 812
    sub-float/2addr p0, v3

    div-float/2addr p0, v3

    .line 813
    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float v0, v0, p0

    add-float/2addr v0, v1

    float-to-int v1, v0

    mul-float v4, v4, p0

    float-to-int v0, v4

    mul-float p0, p0, v2

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 814
    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v6, p0, v2

    if-gez v6, :cond_2

    .line 815
    sub-float/2addr p0, v5

    div-float/2addr p0, v3

    .line 816
    const/high16 v2, 0x43200000    # 160.0f

    mul-float p0, p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 817
    move v0, p0

    const/4 p0, 0x0

    goto :goto_0

    .line 818
    :cond_2
    sub-float/2addr p0, v2

    div-float/2addr p0, v3

    .line 819
    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v0, v0, p0

    const/high16 v2, 0x43600000    # 224.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 821
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

    .line 860
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

    .line 861
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

    .line 862
    add-float/2addr v0, v3

    const/high16 v3, 0x40200000    # 2.5f

    add-float/2addr p0, v3

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 863
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

    .line 825
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

    .line 826
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

    .line 827
    sub-float/2addr v0, p0

    mul-float v0, v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v6

    float-to-int p0, p0

    .line 828
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

    .line 881
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    .line 882
    add-int/lit16 v0, p0, -0xc0

    mul-int/lit8 v0, v0, 0x4

    .line 883
    nop

    .line 884
    sub-int/2addr p0, v0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 885
    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 886
    const/high16 v1, -0x10000

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    .line 888
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

    .line 867
    const/16 v0, 0xda

    if-lt p0, v0, :cond_0

    .line 868
    const/high16 p0, -0x10000

    return p0

    .line 870
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

    .line 846
    const/high16 v0, 0x43000000    # 128.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 847
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 848
    const/high16 v2, 0x43070000    # 135.0f

    mul-float p0, p0, v2

    const/high16 v2, 0x42f00000    # 120.0f

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 849
    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static calibrateToTarget(Landroid/content/Context;I)V
    .locals 4

    .line 919
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 920
    if-gtz v0, :cond_0

    const v0, 0x88b8

    .line 921
    :cond_0
    sub-int v0, p1, v0

    .line 922
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v1, v0

    sput v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 924
    :try_start_0
    const-string v0, "user_manual_temp_offset"

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 925
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 926
    if-eqz p0, :cond_1

    .line 927
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 928
    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 929
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "\u5df2\u6821\u6e96\u76ee\u6a19\u6eab\u5ea6\u70ba %.1f\u00b0C\n(\u7e3d\u88dc\u511f\u91cf: %+.1f\u00b0C)"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 931
    :try_start_1
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 932
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 934
    :cond_1
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    .line 892
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

    .line 656
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 657
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 659
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 660
    nop

    .line 661
    add-int/lit8 v1, v1, -0x1

    sub-int p0, v1, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 662
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 663
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 664
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 665
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 666
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 667
    move p1, p0

    move p0, v0

    goto :goto_2

    .line 669
    :cond_4
    nop

    .line 670
    nop

    .line 672
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static clientPos2ScreenXY(III)[I
    .locals 6

    .line 692
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 693
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 694
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

    .line 695
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq v5, v4, :cond_4

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v4, v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    div-int/2addr p0, v0

    .line 696
    invoke-static {v2, p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static clientXY2ScreenXY(IIII)[I
    .locals 4

    .line 676
    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 677
    :cond_0
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_1

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    .line 678
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_2

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x78

    .line 681
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 685
    :cond_3
    mul-int p0, p0, p2

    div-int/2addr p0, v0

    .line 686
    mul-int p1, p1, p3

    div-int/2addr p1, v1

    goto :goto_3

    .line 682
    :cond_4
    :goto_2
    mul-int p0, p0, p2

    div-int/2addr p0, v1

    .line 683
    mul-int p1, p1, p3

    div-int/2addr p1, v0

    .line 688
    :goto_3
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 676
    :cond_5
    :goto_4
    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static doFfcCycle()V
    .locals 15

    .line 292
    const-string v0, "DeviceController"

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    if-nez v1, :cond_0

    return-void

    .line 293
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 295
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "FFC: Step 1 - Closing shutter (state 0)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 297
    :try_start_1
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    goto :goto_0

    .line 298
    :catchall_0
    move-exception v3

    .line 299
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

    .line 302
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

    .line 304
    :goto_1
    :try_start_4
    const-string v3, "FFC: Step 2 - Accumulating 8 dark baseline frames..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int v3, v3, v4

    .line 306
    new-array v4, v3, [J

    .line 307
    nop

    .line 308
    nop

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 311
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v12, 0xfa0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 312
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 314
    :try_start_5
    sget-wide v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    if-eqz v10, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    array-length v10, v10

    if-ne v10, v3, :cond_2

    .line 315
    sget-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 316
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_1

    .line 317
    aget-wide v11, v4, v10

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aget v13, v13, v10

    int-to-long v13, v13

    add-long/2addr v11, v13

    aput-wide v11, v4, v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 316
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 319
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 324
    :cond_2
    :goto_4
    :try_start_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 325
    goto :goto_5

    .line 321
    :catchall_1
    move-exception v10

    .line 322
    :try_start_7
    const-string v11, "FFC acc error"

    invoke-static {v0, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 326
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

    .line 324
    :catchall_2
    move-exception v1

    :try_start_9
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 325
    throw v1

    .line 329
    :cond_3
    if-lez v9, :cond_7

    .line 330
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 332
    :try_start_a
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    if-eqz v5, :cond_4

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    array-length v5, v5

    if-eq v5, v3, :cond_5

    .line 333
    :cond_4
    new-array v5, v3, [I

    sput-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 335
    :cond_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    .line 336
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget-wide v7, v4, v5

    int-to-long v10, v9

    div-long/2addr v7, v10

    long-to-int v8, v7

    aput v8, v6, v5

    .line 335
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 338
    :cond_6
    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 339
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

    .line 340
    :catchall_3
    move-exception v3

    .line 341
    :try_start_b
    const-string v4, "FFC baseline error"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 343
    :goto_7
    :try_start_c
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 344
    goto :goto_8

    .line 343
    :catchall_4
    move-exception v1

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 344
    throw v1

    .line 347
    :cond_7
    :goto_8
    const-string v3, "FFC: Step 3 - Opening shutter (state 1)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 349
    :try_start_d
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 352
    goto :goto_9

    .line 350
    :catchall_5
    move-exception v1

    .line 351
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

    .line 354
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

    .line 355
    :goto_a
    :try_start_10
    const-string v1, "FFC: Calibration cycle finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_b

    .line 356
    :catchall_6
    move-exception v1

    .line 357
    :try_start_11
    const-string v3, "doFfcCycle general error"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 359
    :goto_b
    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 360
    nop

    .line 361
    return-void

    .line 359
    :catchall_7
    move-exception v0

    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 360
    throw v0
.end method

.method public static doRecording(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 741
    sget-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return p0
.end method

.method public static getEX()I
    .locals 1

    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public static getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 2

    .line 762
    if-eqz p0, :cond_0

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->bIsothermal:Z

    .line 764
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 765
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intAutoEnlargeRange:I

    .line 766
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intBrightOffset:I

    .line 767
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intContrastOffset:I

    .line 768
    const/16 v1, 0x61a8

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intCurrentEnvTemperature:I

    .line 769
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intDetailRatio:I

    .line 771
    :cond_0
    return-void
.end method

.method public static getOutputBMPData(Landroid/graphics/Bitmap;I)Z
    .locals 10

    .line 580
    const-string p1, "DeviceController"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 583
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 602
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 583
    return v1

    .line 584
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 585
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 586
    if-lez v5, :cond_4

    if-gtz v9, :cond_2

    goto :goto_0

    .line 588
    :cond_2
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-int v2, v5, v9

    if-lt v0, v2, :cond_3

    .line 590
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

    .line 591
    nop

    .line 602
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 591
    const/4 p0, 0x1

    return p0

    .line 592
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 593
    :try_start_3
    const-string v0, "bmp.setPixels error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 594
    nop

    .line 602
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 594
    return v1

    .line 597
    :cond_3
    nop

    .line 602
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 597
    return v1

    .line 602
    :cond_4
    :goto_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 586
    return v1

    .line 598
    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 599
    :try_start_4
    const-string v0, "getOutputBMPData error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 600
    nop

    .line 602
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 600
    return v1

    .line 602
    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 603
    throw p0

    .line 580
    :cond_5
    :goto_1
    return v1
.end method

.method public static getOutputColorbarData(Landroid/graphics/Bitmap;I)Z
    .locals 12

    .line 607
    const/4 p1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 609
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 610
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 611
    if-lez v4, :cond_8

    if-gtz v8, :cond_1

    goto :goto_4

    .line 613
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

    .line 614
    :goto_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v0, v1, v0

    .line 615
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 617
    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v1, v8, :cond_7

    .line 618
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

    .line 619
    if-gez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 620
    :cond_4
    const/16 v5, 0xff

    if-le v3, v5, :cond_5

    const/16 v3, 0xff

    .line 621
    :cond_5
    :goto_2
    aget v3, v0, v3

    .line 622
    mul-int v5, v1, v4

    .line 623
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_6

    .line 624
    add-int v7, v5, v6

    aput v3, v2, v7

    .line 623
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 617
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 627
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    return v9

    .line 611
    :cond_8
    :goto_4
    return p1

    .line 629
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 630
    const-string v0, "DeviceController"

    const-string v1, "getOutputColorbarData error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    return p1

    .line 607
    :cond_9
    :goto_5
    return p1
.end method

.method public static getPreviewOrientation()I
    .locals 1

    .line 152
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    return v0
.end method

.method public static getRectTemperatureInfo(IIII[IZ)Z
    .locals 17

    .line 213
    move-object/from16 v0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/16 p5, 0x0

    goto/16 :goto_9

    .line 214
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 216
    :try_start_0
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 268
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 216
    return v1

    .line 217
    :cond_1
    :try_start_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    .line 218
    :goto_0
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v3, :cond_3

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x78

    .line 220
    :goto_1
    invoke-static/range {p0 .. p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v4

    .line 221
    invoke-static/range {p2 .. p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v5

    .line 223
    aget v6, v4, v1

    aget v7, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 224
    add-int/lit8 v7, v2, -0x1

    aget v8, v4, v1

    aget v9, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 225
    const/4 v8, 0x1

    aget v9, v4, v8

    aget v10, v5, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 226
    sub-int/2addr v3, v8

    aget v4, v4, v8

    aget v5, v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    if-gt v6, v7, :cond_d

    if-le v9, v3, :cond_4

    const/16 p5, 0x0

    goto/16 :goto_7

    .line 230
    :cond_4
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    mul-int v4, v9, v2

    add-int/2addr v4, v6

    .line 235
    nop

    .line 237
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

    .line 238
    mul-int v16, v11, v2

    .line 239
    move v8, v6

    const/16 p0, 0x1

    :goto_3
    if-gt v8, v7, :cond_8

    .line 240
    add-int v5, v16, v8

    .line 241
    if-ltz v5, :cond_7

    :try_start_2
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 242
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget v10, v10, v5

    .line 243
    if-ge v10, v15, :cond_5

    .line 244
    nop

    .line 245
    move v4, v5

    move v15, v10

    .line 247
    :cond_5
    if-le v10, v1, :cond_6

    .line 248
    nop

    .line 249
    move v9, v5

    move v1, v10

    .line 251
    :cond_6
    move/from16 p3, v1

    int-to-long v0, v10

    add-long/2addr v12, v0

    .line 252
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    .line 239
    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p4

    goto :goto_3

    .line 237
    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p4

    const/4 v8, 0x1

    goto :goto_2

    .line 257
    :cond_9
    const/16 p0, 0x1

    const/16 v0, 0x61a8

    if-lez v14, :cond_a

    int-to-long v2, v14

    div-long/2addr v12, v2

    long-to-int v2, v12

    goto :goto_4

    .line 264
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 257
    :cond_a
    const/16 v2, 0x61a8

    .line 258
    :goto_4
    const v3, 0x7fffffff

    if-eq v15, v3, :cond_b

    goto :goto_5

    :cond_b
    const/16 v15, 0x61a8

    :goto_5
    aput v15, p4, p5

    .line 259
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_c

    goto :goto_6

    :cond_c
    const/16 v1, 0x61a8

    :goto_6
    aput v1, p4, p0

    .line 260
    const/4 v0, 0x2

    aput v2, p4, v0

    .line 261
    const/4 v0, 0x3

    aput v4, p4, v0

    .line 262
    const/4 v0, 0x4

    aput v9, p4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    nop

    .line 268
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 263
    return p0

    .line 228
    :cond_d
    const/16 p5, 0x0

    .line 268
    :goto_7
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 228
    return p5

    .line 264
    :catchall_1
    move-exception v0

    const/16 p5, 0x0

    .line 265
    :goto_8
    :try_start_3
    const-string v1, "DeviceController"

    const-string v2, "getRectTemperatureInfo error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 266
    nop

    .line 268
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 266
    return p5

    .line 268
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 269
    throw v0

    .line 213
    :cond_e
    const/16 p5, 0x0

    :goto_9
    return p5
.end method

.method public static getState()Lcn/com/magnity/magnitycx/sdk/State;
    .locals 1

    .line 167
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 169
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 172
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 172
    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    :try_start_1
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 174
    return-object v0

    .line 176
    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 177
    throw v0
.end method

.method public static getTemperature(IIZ)I
    .locals 10

    .line 181
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 183
    const/16 p2, 0x61a8

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    if-eqz v0, :cond_5

    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v0, v0

    if-lez v0, :cond_5

    .line 184
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 185
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 188
    :goto_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 189
    div-int/lit8 p0, v0, 0x2

    .line 190
    div-int/lit8 v1, v1, 0x2

    .line 191
    nop

    .line 192
    const/4 p1, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    :goto_2
    if-gt v5, v2, :cond_3

    .line 193
    const/4 v6, -0x1

    :goto_3
    if-gt v6, v2, :cond_2

    .line 194
    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    add-int v8, v1, v5

    mul-int v8, v8, v0

    add-int v9, p0, v6

    add-int/2addr v8, v9

    aget v7, v7, v8

    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 193
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 192
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 197
    :cond_3
    const-wide/16 p0, 0x9

    div-long/2addr v3, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p0, v3

    .line 208
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 197
    return p0

    .line 200
    :cond_4
    if-ltz p0, :cond_5

    :try_start_1
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length p1, p1

    if-ge p0, p1, :cond_5

    .line 201
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget p0, p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 201
    return p0

    .line 204
    :cond_5
    :try_start_2
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz p0, :cond_6

    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 204
    return p2

    .line 205
    :catchall_0
    move-exception p0

    .line 206
    nop

    .line 208
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 206
    return p2
.end method

.method private static initPalettes()V
    .locals 7

    .line 777
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 778
    int-to-float v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 780
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v3, v3, v0

    shl-int/lit8 v4, v1, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v1

    aput v4, v3, v1

    .line 782
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

    .line 784
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 786
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 788
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcGlowbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 790
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcAutumn(F)I

    move-result v4

    aput v4, v3, v1

    .line 792
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcWinter(F)I

    move-result v4

    aput v4, v3, v1

    .line 794
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v4

    aput v4, v3, v1

    .line 796
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v4

    aput v4, v3, v1

    .line 798
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedSaturation(I)I

    move-result v4

    aput v4, v3, v1

    .line 800
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHighContrast(F)I

    move-result v2

    aput v2, v3, v1

    .line 802
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedHot(I)I

    move-result v3

    aput v3, v2, v1

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 804
    :cond_0
    return-void
.end method

.method public static isOutputDataReady()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    return v0
.end method

.method public static isProcessImage()Z
    .locals 1

    .line 140
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .line 737
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return v0
.end method

.method public static pushFrame([BII)Z
    .locals 28

    .line 364
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DeviceController"

    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    goto/16 :goto_18

    .line 365
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 367
    :try_start_0
    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v4, :cond_1

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v4, 0xa0

    .line 368
    :goto_0
    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v6, :cond_2

    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v6, 0x78

    .line 369
    :goto_1
    mul-int v7, v4, v6

    .line 371
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    if-eqz v8, :cond_3

    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    array-length v8, v8

    if-eq v8, v7, :cond_4

    .line 372
    :cond_3
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 373
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 374
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 375
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 376
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 377
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 378
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 381
    :cond_4
    nop

    .line 382
    array-length v8, v0

    const/4 v9, 0x3

    const/16 v10, 0x1c

    const/16 v11, 0xff

    const/4 v12, 0x1

    if-lt v8, v10, :cond_5

    .line 383
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

    .line 384
    const v13, 0x1bb1b11b

    if-ne v8, v13, :cond_5

    .line 385
    goto :goto_2

    .line 389
    :cond_5
    const/4 v10, 0x0

    :goto_2
    array-length v8, v0

    sub-int/2addr v8, v10

    div-int/2addr v8, v5

    .line 390
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    if-gtz v8, :cond_6

    .line 575
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 391
    return v3

    .line 393
    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    .line 394
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v10

    .line 395
    :try_start_1
    aget-byte v15, v0, v14

    and-int/2addr v15, v11

    .line 396
    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v0, v14

    and-int/2addr v14, v11

    .line 397
    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v14, v15

    .line 398
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aput v14, v15, v13

    .line 399
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aput v14, v15, v13

    .line 393
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 401
    :cond_7
    sget-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    sput-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 402
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    add-int/2addr v0, v12

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 405
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    if-nez v0, :cond_8

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    const/16 v8, 0xf

    if-lt v0, v8, :cond_8

    .line 406
    sput-boolean v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 407
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 411
    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_a

    .line 412
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

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 416
    :cond_a
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v6, :cond_1f

    .line 417
    mul-int v8, v0, v4

    .line 418
    if-lt v0, v5, :cond_1d

    add-int/lit8 v10, v6, -0x2

    if-lt v0, v10, :cond_b

    move/from16 v20, v0

    move/from16 p0, v8

    const/16 v18, 0x3

    const/16 v19, 0x1

    goto/16 :goto_c

    .line 425
    :cond_b
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v13, v13, v8

    aput v13, v10, v8

    .line 426
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v8, 0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 427
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v13, v8, v4

    add-int/lit8 v14, v13, -0x2

    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v15, v15, v14

    aput v15, v10, v14

    .line 428
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v13, -0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 430
    const/4 v10, 0x2

    :goto_7
    add-int/lit8 v13, v4, -0x2

    if-ge v10, v13, :cond_1c

    .line 431
    add-int v13, v8, v10

    .line 432
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    .line 434
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    sub-int v16, v13, v4

    add-int/lit8 v17, v16, -0x1

    aget v15, v15, v17

    .line 435
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v5, v17, v16

    .line 436
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v16, v16, 0x1

    const/16 v18, 0x3

    aget v9, v17, v16

    .line 437
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, -0x1

    aget v11, v16, v17

    .line 438
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, 0x1

    const/16 v19, 0x1

    aget v12, v16, v17

    .line 439
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int v17, v13, v4

    add-int/lit8 v20, v17, -0x1

    aget v3, v16, v20

    .line 440
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    move/from16 v20, v0

    aget v0, v16, v17

    .line 441
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v17, 0x1

    move/from16 p0, v8

    aget v8, v16, v17

    .line 443
    nop

    .line 444
    move/from16 v16, v10

    if-ge v5, v15, :cond_c

    move v10, v5

    goto :goto_8

    :cond_c
    move v10, v15

    .line 445
    :goto_8
    if-ge v9, v10, :cond_d

    move v10, v9

    .line 446
    :cond_d
    if-ge v11, v10, :cond_e

    move v10, v11

    .line 447
    :cond_e
    if-ge v12, v10, :cond_f

    move v10, v12

    .line 448
    :cond_f
    if-ge v3, v10, :cond_10

    move v10, v3

    .line 449
    :cond_10
    if-ge v0, v10, :cond_11

    move v10, v0

    .line 450
    :cond_11
    if-ge v8, v10, :cond_12

    move v10, v8

    .line 452
    :cond_12
    nop

    .line 453
    move/from16 v17, v5

    if-le v5, v15, :cond_13

    goto :goto_9

    :cond_13
    move v5, v15

    .line 454
    :goto_9
    if-le v9, v5, :cond_14

    move v5, v9

    .line 455
    :cond_14
    if-le v11, v5, :cond_15

    move v5, v11

    .line 456
    :cond_15
    if-le v12, v5, :cond_16

    move v5, v12

    .line 457
    :cond_16
    if-le v3, v5, :cond_17

    move v5, v3

    .line 458
    :cond_17
    if-le v0, v5, :cond_18

    move v5, v0

    .line 459
    :cond_18
    if-le v8, v5, :cond_19

    move v5, v8

    .line 461
    :cond_19
    add-int v15, v15, v17

    add-int/2addr v15, v9

    add-int/2addr v15, v11

    add-int/2addr v15, v12

    add-int/2addr v15, v3

    add-int/2addr v15, v0

    add-int/2addr v15, v8

    shr-int/lit8 v0, v15, 0x3

    .line 464
    add-int/lit16 v5, v5, 0xfa

    if-gt v14, v5, :cond_1b

    add-int/lit16 v10, v10, -0xfa

    if-ge v14, v10, :cond_1a

    goto :goto_a

    .line 467
    :cond_1a
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v14, v0, v13

    goto :goto_b

    .line 465
    :cond_1b
    :goto_a
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v0, v3, v13

    .line 430
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

    const/16 v18, 0x3

    const/16 v19, 0x1

    goto :goto_e

    .line 418
    :cond_1d
    move/from16 v20, v0

    move/from16 p0, v8

    const/16 v18, 0x3

    const/16 v19, 0x1

    .line 419
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_1e

    .line 420
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v8, p0, v0

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v5, v5, v8

    aput v5, v3, v8

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 422
    :cond_1e
    nop

    .line 416
    :goto_e
    add-int/lit8 v0, v20, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/16 v11, 0xff

    const/4 v12, 0x1

    goto/16 :goto_6

    .line 475
    :cond_1f
    const/16 v19, 0x1

    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_20

    .line 477
    :try_start_2
    const-string v0, "user_manual_temp_offset"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 478
    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded sManualTempOffset = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_f

    .line 480
    :catchall_0
    move-exception v0

    :goto_f
    nop

    .line 483
    :cond_20
    const/16 v0, 0x1388

    if-le v1, v0, :cond_21

    const v0, 0x186a0

    if-ge v1, v0, :cond_21

    move v0, v1

    goto :goto_10

    :cond_21
    const/16 v0, 0x6d60

    .line 484
    :goto_10
    nop

    .line 485
    add-int/lit8 v1, v0, 0x0

    :try_start_3
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v1, v3

    .line 487
    const/4 v3, 0x0

    :goto_11
    const-wide/16 v8, 0xa

    const-wide/16 v10, 0x4b

    if-ge v3, v7, :cond_22

    .line 488
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    sget-object v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v12, v12, v3

    int-to-long v12, v12

    mul-long v12, v12, v10

    div-long/2addr v12, v8

    long-to-int v8, v12

    add-int/2addr v8, v1

    aput v8, v5, v3

    .line 487
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 492
    :cond_22
    nop

    .line 493
    nop

    .line 494
    nop

    .line 495
    div-int/lit8 v3, v6, 0x2

    mul-int v3, v3, v4

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    .line 496
    nop

    .line 498
    nop

    .line 499
    nop

    .line 500
    nop

    .line 502
    const-wide/16 v12, 0x0

    const v14, 0x7fffffff

    const/high16 v15, -0x80000000

    move-wide/from16 p0, v8

    move-wide v8, v12

    move-wide v13, v8

    const/4 v5, 0x4

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const/high16 v17, -0x80000000

    move v12, v3

    :goto_12
    move-wide/from16 v22, v10

    add-int/lit8 v10, v6, -0x4

    if-ge v5, v10, :cond_26

    .line 503
    mul-int v10, v5, v4

    .line 504
    move/from16 v20, v1

    move/from16 v11, v16

    move/from16 v1, v17

    move/from16 v16, v3

    const/4 v3, 0x4

    :goto_13
    move/from16 v24, v5

    add-int/lit8 v5, v4, -0x4

    if-ge v3, v5, :cond_25

    .line 505
    add-int v5, v10, v3

    .line 506
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    move/from16 v25, v3

    aget v3, v17, v5

    .line 507
    if-ge v3, v11, :cond_23

    .line 508
    nop

    .line 509
    move v11, v3

    move/from16 v16, v5

    .line 511
    :cond_23
    if-le v3, v1, :cond_24

    .line 512
    nop

    .line 513
    move v1, v3

    move v12, v5

    .line 515
    :cond_24
    move-wide/from16 v26, v8

    int-to-long v8, v3

    add-long/2addr v13, v8

    .line 516
    mul-long v8, v8, v8

    add-long v8, v26, v8

    .line 517
    add-int/lit8 v15, v15, 0x1

    .line 504
    add-int/lit8 v3, v25, 0x1

    move/from16 v5, v24

    goto :goto_13

    .line 502
    :cond_25
    move-wide/from16 v26, v8

    add-int/lit8 v5, v24, 0x1

    move/from16 v17, v1

    move/from16 v3, v16

    move/from16 v1, v20

    move/from16 v16, v11

    move-wide/from16 v10, v22

    goto :goto_12

    .line 521
    :cond_26
    move/from16 v20, v1

    if-gtz v15, :cond_27

    .line 522
    nop

    .line 523
    nop

    .line 524
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x1

    goto :goto_14

    .line 521
    :cond_27
    move/from16 v1, v16

    move/from16 v5, v17

    .line 527
    :goto_14
    long-to-double v10, v13

    int-to-double v13, v15

    div-double/2addr v10, v13

    .line 528
    long-to-double v8, v8

    div-double/2addr v8, v13

    mul-double v13, v10, v10

    sub-double/2addr v8, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 529
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 532
    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    mul-double v13, v13, v8

    move-wide v15, v8

    sub-double v8, v10, v13

    double-to-int v8, v8

    .line 533
    add-double/2addr v13, v10

    double-to-int v9, v13

    .line 534
    sub-int/2addr v9, v8

    const/4 v13, 0x1

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 536
    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    if-ltz v13, :cond_28

    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    const/16 v14, 0xc

    if-ge v13, v14, :cond_28

    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    goto :goto_15

    :cond_28
    const/4 v13, 0x2

    .line 537
    :goto_15
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v13, v14, v13

    .line 539
    const/4 v14, 0x0

    :goto_16
    if-ge v14, v7, :cond_2b

    .line 540
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v17, v17, v14

    .line 541
    move/from16 p2, v3

    sub-int v3, v17, v8

    move/from16 v17, v7

    move/from16 v18, v8

    int-to-long v7, v3

    const-wide/16 v24, 0xff

    mul-long v7, v7, v24

    move-wide/from16 v24, v7

    int-to-long v7, v9

    div-long v7, v24, v7

    long-to-int v3, v7

    .line 542
    if-gez v3, :cond_29

    const/4 v3, 0x0

    const/16 v7, 0xff

    goto :goto_17

    .line 543
    :cond_29
    const/16 v7, 0xff

    if-le v3, v7, :cond_2a

    const/16 v3, 0xff

    .line 544
    :cond_2a
    :goto_17
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    aget v3, v13, v3

    aput v3, v8, v14

    .line 539
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p2

    move/from16 v7, v17

    move/from16 v8, v18

    goto :goto_16

    .line 548
    :cond_2b
    move/from16 p2, v3

    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v1

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v1, v7

    add-int v1, v20, v1

    iput v1, v3, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    .line 549
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v5

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v3, v7

    add-int v3, v20, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    .line 550
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const-wide/high16 v7, 0x401e000000000000L    # 7.5

    mul-double v10, v10, v7

    double-to-int v3, v10

    add-int v3, v20, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 552
    rem-int v3, p2, v4

    div-int v1, p2, v4

    invoke-static {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v1

    .line 553
    rem-int v3, v12, v4

    div-int/2addr v12, v4

    invoke-static {v3, v12}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v3

    .line 555
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x0

    aget v9, v1, v21

    iput v9, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinX:I

    .line 556
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v19, 0x1

    aget v1, v1, v19

    iput v1, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinY:I

    .line 557
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x0

    aget v5, v3, v21

    iput v5, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    .line 558
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v19, 0x1

    aget v3, v3, v19

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    .line 559
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    mul-double v8, v15, v7

    double-to-int v3, v8

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intSTDTemperature:I

    .line 560
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v3, 0x32

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveNETDt:I

    .line 562
    const/16 v19, 0x1

    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 565
    sget-wide v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x7d0

    cmp-long v1, v9, v11

    if-lez v1, :cond_2c

    .line 566
    sput-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 567
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    :cond_2c
    nop

    .line 575
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 570
    const/16 v19, 0x1

    return v19

    .line 571
    :catchall_1
    move-exception v0

    .line 572
    :try_start_4
    const-string v1, "pushFrame error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 573
    nop

    .line 575
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 573
    const/16 v21, 0x0

    return v21

    .line 575
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 576
    throw v0

    .line 364
    :cond_2d
    :goto_18
    const/16 v21, 0x0

    return v21
.end method

.method public static resetCalibration(Landroid/content/Context;)V
    .locals 2

    .line 937
    const/4 v0, 0x0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 939
    :try_start_0
    const-string v1, "user_manual_temp_offset"

    invoke-static {v1, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 940
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 941
    if-eqz p0, :cond_0

    .line 943
    :try_start_1
    const-string v1, "\u6eab\u5ea6\u6821\u6e96\u5df2\u91cd\u7f6e (0.0\u00b0C)"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 944
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 946
    :cond_0
    return-void
.end method

.method public static saveDDT(Ljava/lang/String;)Z
    .locals 0

    .line 745
    const/4 p0, 0x1

    return p0
.end method

.method public static screenXY2ClientXY(IIII)[I
    .locals 6

    .line 700
    const/4 v0, 0x0

    if-lez p2, :cond_9

    if-gtz p3, :cond_0

    goto :goto_7

    .line 701
    :cond_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    .line 702
    :goto_0
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    .line 705
    :goto_1
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 709
    :cond_3
    mul-int p0, p0, v1

    div-int/2addr p0, p2

    .line 710
    mul-int p1, p1, v2

    div-int/2addr p1, p3

    goto :goto_3

    .line 706
    :cond_4
    :goto_2
    mul-int p0, p0, v2

    div-int/2addr p0, p2

    .line 707
    mul-int p1, p1, v1

    div-int/2addr p1, p3

    .line 712
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

    .line 713
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

    .line 714
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 700
    :cond_9
    :goto_7
    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static screenXY2SensorXY(IIII)[I
    .locals 0

    .line 723
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object p0

    .line 724
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

    .line 718
    invoke-static {p0, p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object p0

    .line 719
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

    .line 759
    return-void
.end method

.method public static setColorPalette(I)V
    .locals 1

    .line 156
    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 157
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 159
    :cond_0
    return-void
.end method

.method public static setColorbarSize(II)V
    .locals 0

    .line 162
    if-lez p0, :cond_0

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarWidth:I

    .line 163
    :cond_0
    if-lez p1, :cond_1

    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarHeight:I

    .line 164
    :cond_1
    return-void
.end method

.method public static setEX(III)V
    .locals 0

    .line 753
    return-void
.end method

.method public static setEmissivity(II)V
    .locals 0

    .line 756
    return-void
.end method

.method public static setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 0

    .line 774
    return-void
.end method

.method public static setPreviewOrientation(I)V
    .locals 0

    .line 148
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    .line 149
    return-void
.end method

.method public static showCalibrationDialog(Landroid/app/Activity;)V
    .locals 1

    .line 949
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 950
    :cond_0
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 994
    return-void

    .line 949
    :cond_1
    :goto_0
    return-void
.end method

.method public static startProcess(Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;IIIIIIIIIILjava/lang/String;)Z
    .locals 0

    .line 91
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 93
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

    .line 94
    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    .line 95
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 96
    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 97
    sput p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 99
    :cond_0
    if-ltz p9, :cond_1

    const/16 p0, 0xc

    if-ge p9, p0, :cond_1

    .line 100
    sput p9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 103
    :cond_1
    sget p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int p0, p0, p1

    .line 104
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 105
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 106
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 107
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 108
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 109
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 110
    new-array p0, p0, [I

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 111
    new-instance p0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 113
    const/4 p0, 0x0

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 114
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 115
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 116
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 117
    const-wide/16 p1, 0x0

    sput-wide p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 119
    const/4 p1, 0x1

    sput-boolean p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 120
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    nop

    .line 124
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 122
    return p1

    .line 124
    :catchall_0
    move-exception p0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 125
    throw p0
.end method

.method public static startRecording(Ljava/lang/String;IIIII)Z
    .locals 0

    .line 728
    const/4 p0, 0x1

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 729
    return p0
.end method

.method public static stopProcess()V
    .locals 1

    .line 129
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 131
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 132
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 133
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 136
    throw v0
.end method

.method public static stopRecording()V
    .locals 1

    .line 733
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 734
    return-void
.end method

.method public static triggerFFC()V
    .locals 3

    .line 273
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "DeviceController"

    const-string v1, "FFC already in progress, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;-><init>()V

    const-string v2, "FFC-Worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 289
    return-void
.end method
