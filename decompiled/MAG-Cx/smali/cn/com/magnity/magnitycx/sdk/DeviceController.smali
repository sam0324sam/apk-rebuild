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

.field private static sAutoFfc2Done:Z

.field private static sAutoFfcDone:Z

.field private static sBaseline:[I

.field private static volatile sColorbarHeight:I

.field private static volatile sColorbarWidth:I

.field private static sDiff:[I

.field private static sFilteredDiff:[I

.field private static sFlipLoaded:Z

.field private static sFlipMode:I

.field private static sFlippedArgbPixels:[I

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
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfc2Done:Z

    .line 37
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 38
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z

    .line 39
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 40
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipLoaded:Z

    .line 41
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    .line 42
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 43
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 44
    const-wide/16 v5, 0x0

    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 46
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 47
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 48
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 49
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 50
    new-instance v4, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v4}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 51
    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 53
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

    .line 56
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->initPalettes()V

    .line 57
    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorbarSize(II)V

    .line 58
    const-string v0, "paletteIndex"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 59
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorPalette(I)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static Lock()V
    .locals 1

    .line 67
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 70
    :goto_0
    return-void
.end method

.method public static Unlock()V
    .locals 1

    .line 74
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 79
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

.method static synthetic access$400()I
    .locals 1

    .line 8
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    return v0
.end method

.method public static adjustTempOffset(Landroid/content/Context;I)V
    .locals 4

    .line 1002
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v0, p1

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 1004
    :try_start_0
    const-string p1, "user_manual_temp_offset"

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    invoke-static {p1, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1005
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 1006
    if-eqz p0, :cond_0

    .line 1007
    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 1008
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 1009
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

    .line 1011
    :try_start_1
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1012
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 1014
    :cond_0
    return-void
.end method

.method public static adjustTempOffsetDown(Landroid/content/Context;)V
    .locals 1

    .line 1021
    const/16 v0, -0x1f4

    invoke-static {p0, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffset(Landroid/content/Context;I)V

    .line 1022
    return-void
.end method

.method public static adjustTempOffsetUp(Landroid/content/Context;)V
    .locals 1

    .line 1017
    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffset(Landroid/content/Context;I)V

    .line 1018
    return-void
.end method

.method public static buffer2ClientXY(II)[I
    .locals 5

    .line 714
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 715
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 717
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 718
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 719
    move p1, p0

    move p0, v1

    goto :goto_2

    .line 720
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 721
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 722
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 723
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 724
    nop

    .line 725
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 727
    :cond_4
    nop

    .line 728
    nop

    .line 730
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method private static calcAutumn(F)I
    .locals 2

    .line 945
    nop

    .line 946
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 947
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    const/high16 p0, 0x42200000    # 40.0f

    mul-float v1, v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 948
    shl-int/lit8 v0, v0, 0x8

    const/high16 v1, -0x10000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcGlowbow(F)I
    .locals 4

    .line 938
    const/high16 v0, 0x43a00000    # 320.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 939
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

    .line 940
    const v3, 0x3f333333    # 0.7f

    sub-float/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 941
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

    .line 980
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

    .line 981
    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v6

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v2

    .line 982
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v6

    add-double/2addr v0, v8

    double-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 983
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

    .line 959
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 960
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

    .line 961
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

    .line 962
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

    .line 914
    const/4 v0, 0x0

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    .line 915
    div-float/2addr p0, v3

    .line 916
    mul-float v1, v1, p0

    float-to-int v1, v1

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 917
    goto :goto_0

    :cond_0
    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v6, p0, v5

    if-gez v6, :cond_1

    .line 918
    sub-float/2addr p0, v3

    div-float/2addr p0, v3

    .line 919
    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float v0, v0, p0

    add-float/2addr v0, v1

    float-to-int v1, v0

    mul-float v4, v4, p0

    float-to-int v0, v4

    mul-float p0, p0, v2

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 920
    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v6, p0, v2

    if-gez v6, :cond_2

    .line 921
    sub-float/2addr p0, v5

    div-float/2addr p0, v3

    .line 922
    const/high16 v2, 0x43200000    # 160.0f

    mul-float p0, p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 923
    move v0, p0

    const/4 p0, 0x0

    goto :goto_0

    .line 924
    :cond_2
    sub-float/2addr p0, v2

    div-float/2addr p0, v3

    .line 925
    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v0, v0, p0

    const/high16 v2, 0x43600000    # 224.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 927
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

    .line 966
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

    .line 967
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

    .line 968
    add-float/2addr v0, v3

    const/high16 v3, 0x40200000    # 2.5f

    add-float/2addr p0, v3

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 969
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

    .line 931
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

    .line 932
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

    .line 933
    sub-float/2addr v0, p0

    mul-float v0, v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v6

    float-to-int p0, p0

    .line 934
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

    .line 987
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    .line 988
    add-int/lit16 v0, p0, -0xc0

    mul-int/lit8 v0, v0, 0x4

    .line 989
    nop

    .line 990
    sub-int/2addr p0, v0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 991
    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 992
    const/high16 v1, -0x10000

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    .line 994
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

    .line 973
    const/16 v0, 0xda

    if-lt p0, v0, :cond_0

    .line 974
    const/high16 p0, -0x10000

    return p0

    .line 976
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

    .line 952
    const/high16 v0, 0x43000000    # 128.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 953
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 954
    const/high16 v2, 0x43070000    # 135.0f

    mul-float p0, p0, v2

    const/high16 v2, 0x42f00000    # 120.0f

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 955
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

    .line 1025
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 1026
    if-gtz v0, :cond_0

    const v0, 0x88b8

    .line 1027
    :cond_0
    sub-int v0, p1, v0

    .line 1028
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v1, v0

    sput v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 1030
    :try_start_0
    const-string v0, "user_manual_temp_offset"

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 1032
    if-eqz p0, :cond_1

    .line 1033
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 1034
    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 1035
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

    .line 1037
    :try_start_1
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1038
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 1040
    :cond_1
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    .line 998
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

    .line 734
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 735
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 737
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 738
    nop

    .line 739
    add-int/lit8 v1, v1, -0x1

    sub-int p0, v1, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 740
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 741
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 742
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 743
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 744
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 745
    move p1, p0

    move p0, v0

    goto :goto_2

    .line 747
    :cond_4
    nop

    .line 748
    nop

    .line 750
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static clientPos2ScreenXY(III)[I
    .locals 6

    .line 770
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 771
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 772
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

    .line 773
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq v5, v4, :cond_4

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v4, v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    div-int/2addr p0, v0

    .line 774
    invoke-static {v2, p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static clientXY2ScreenXY(IIII)[I
    .locals 4

    .line 754
    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 755
    :cond_0
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_1

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    .line 756
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_2

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x78

    .line 759
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 763
    :cond_3
    mul-int p0, p0, p2

    div-int/2addr p0, v0

    .line 764
    mul-int p1, p1, p3

    div-int/2addr p1, v1

    goto :goto_3

    .line 760
    :cond_4
    :goto_2
    mul-int p0, p0, p2

    div-int/2addr p0, v1

    .line 761
    mul-int p1, p1, p3

    div-int/2addr p1, v0

    .line 766
    :goto_3
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 754
    :cond_5
    :goto_4
    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static doFfcCycle()V
    .locals 15

    .line 296
    const-string v0, "DeviceController"

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    if-nez v1, :cond_0

    return-void

    .line 297
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 299
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "FFC: Step 1 - Closing shutter (state 0)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 301
    :try_start_1
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    goto :goto_0

    .line 302
    :catchall_0
    move-exception v3

    .line 303
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

    .line 306
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

    .line 308
    :goto_1
    :try_start_4
    const-string v3, "FFC: Step 2 - Accumulating 8 dark baseline frames..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int v3, v3, v4

    .line 310
    new-array v4, v3, [J

    .line 311
    nop

    .line 312
    nop

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 315
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v12, 0xfa0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 316
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 318
    :try_start_5
    sget-wide v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    if-eqz v10, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    array-length v10, v10

    if-ne v10, v3, :cond_2

    .line 319
    sget-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 320
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_1

    .line 321
    aget-wide v11, v4, v10

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aget v13, v13, v10

    int-to-long v13, v13

    add-long/2addr v11, v13

    aput-wide v11, v4, v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 320
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 323
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 328
    :cond_2
    :goto_4
    :try_start_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 329
    goto :goto_5

    .line 325
    :catchall_1
    move-exception v10

    .line 326
    :try_start_7
    const-string v11, "FFC acc error"

    invoke-static {v0, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 330
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

    .line 328
    :catchall_2
    move-exception v1

    :try_start_9
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 329
    throw v1

    .line 333
    :cond_3
    if-lez v9, :cond_7

    .line 334
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 336
    :try_start_a
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    if-eqz v5, :cond_4

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    array-length v5, v5

    if-eq v5, v3, :cond_5

    .line 337
    :cond_4
    new-array v5, v3, [I

    sput-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 339
    :cond_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    .line 340
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget-wide v7, v4, v5

    int-to-long v10, v9

    div-long/2addr v7, v10

    long-to-int v8, v7

    aput v8, v6, v5

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 342
    :cond_6
    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 343
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

    .line 344
    :catchall_3
    move-exception v3

    .line 345
    :try_start_b
    const-string v4, "FFC baseline error"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 347
    :goto_7
    :try_start_c
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 348
    goto :goto_8

    .line 347
    :catchall_4
    move-exception v1

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 348
    throw v1

    .line 351
    :cond_7
    :goto_8
    const-string v3, "FFC: Step 3 - Opening shutter (state 1)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 353
    :try_start_d
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 356
    goto :goto_9

    .line 354
    :catchall_5
    move-exception v1

    .line 355
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

    .line 358
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

    .line 359
    :goto_a
    :try_start_10
    const-string v1, "FFC: Calibration cycle finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_b

    .line 360
    :catchall_6
    move-exception v1

    .line 361
    :try_start_11
    const-string v3, "doFfcCycle general error"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 363
    :goto_b
    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_7
    move-exception v0

    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 364
    throw v0
.end method

.method public static doRecording(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 842
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 843
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->getInstance()Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->recordFrame(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public static getEX()I
    .locals 1

    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public static getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 2

    .line 864
    if-eqz p0, :cond_0

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->bIsothermal:Z

    .line 866
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 867
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intAutoEnlargeRange:I

    .line 868
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intBrightOffset:I

    .line 869
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intContrastOffset:I

    .line 870
    const/16 v1, 0x61a8

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intCurrentEnvTemperature:I

    .line 871
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intDetailRatio:I

    .line 873
    :cond_0
    return-void
.end method

.method public static getOutputBMPData(Landroid/graphics/Bitmap;I)Z
    .locals 17

    .line 631
    const-string v1, "DeviceController"

    const/4 v2, 0x0

    if-eqz p0, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 632
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 634
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 680
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 634
    return v2

    .line 635
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 636
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 637
    if-lez v6, :cond_13

    if-gtz v10, :cond_2

    goto/16 :goto_c

    .line 639
    :cond_2
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_3

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_3
    const/16 v0, 0xa0

    .line 640
    :goto_0
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v3, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_4
    const/16 v3, 0x78

    .line 641
    :goto_1
    mul-int v4, v0, v3

    .line 642
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    array-length v5, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v5, v4, :cond_5

    .line 680
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 642
    return v2

    .line 645
    :cond_5
    :try_start_2
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    const/4 v11, 0x1

    if-nez v5, :cond_6

    .line 646
    sget-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    nop

    .line 680
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 647
    return v11

    .line 650
    :cond_6
    :try_start_3
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    if-eqz v5, :cond_7

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    array-length v5, v5

    if-eq v5, v4, :cond_8

    .line 651
    :cond_7
    new-array v4, v4, [I

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    .line 654
    :cond_8
    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_a

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v4, 0x1

    .line 655
    :goto_3
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/2addr v5, v11

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 656
    :goto_4
    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    .line 658
    :goto_5
    if-eqz v4, :cond_d

    move v8, v7

    goto :goto_6

    :cond_d
    move v8, v5

    .line 659
    :goto_6
    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    move v5, v7

    .line 661
    :goto_7
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_12

    .line 662
    if-eqz v5, :cond_f

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v4

    goto :goto_9

    :cond_f
    move v7, v4

    .line 663
    :goto_9
    mul-int v9, v4, v0

    .line 664
    mul-int v7, v7, v0

    .line 665
    const/4 v12, 0x0

    :goto_a
    if-ge v12, v0, :cond_11

    .line 666
    if-eqz v8, :cond_10

    add-int/lit8 v13, v0, -0x1

    sub-int/2addr v13, v12

    goto :goto_b

    :cond_10
    move v13, v12

    .line 667
    :goto_b
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    add-int v15, v9, v12

    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    add-int/2addr v13, v7

    aget v13, v16, v13

    aput v13, v14, v15

    .line 665
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 661
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 670
    :cond_12
    sget-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    nop

    .line 680
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 671
    return v11

    .line 672
    :catchall_0
    move-exception v0

    .line 673
    :try_start_4
    const-string v3, "bmp.setPixels error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 674
    nop

    .line 680
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 674
    return v2

    .line 680
    :cond_13
    :goto_c
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 637
    return v2

    .line 676
    :catchall_1
    move-exception v0

    .line 677
    :try_start_5
    const-string v3, "getOutputBMPData error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 678
    nop

    .line 680
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 678
    return v2

    .line 680
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 681
    throw v0

    .line 631
    :cond_14
    :goto_d
    return v2
.end method

.method public static getOutputColorbarData(Landroid/graphics/Bitmap;I)Z
    .locals 12

    .line 685
    const/4 p1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 687
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 688
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 689
    if-lez v4, :cond_8

    if-gtz v8, :cond_1

    goto :goto_4

    .line 691
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

    .line 692
    :goto_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v0, v1, v0

    .line 693
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 695
    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v1, v8, :cond_7

    .line 696
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

    .line 697
    if-gez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 698
    :cond_4
    const/16 v5, 0xff

    if-le v3, v5, :cond_5

    const/16 v3, 0xff

    .line 699
    :cond_5
    :goto_2
    aget v3, v0, v3

    .line 700
    mul-int v5, v1, v4

    .line 701
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_6

    .line 702
    add-int v7, v5, v6

    aput v3, v2, v7

    .line 701
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 695
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 705
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    return v9

    .line 689
    :cond_8
    :goto_4
    return p1

    .line 707
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 708
    const-string v0, "DeviceController"

    const-string v1, "getOutputColorbarData error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    return p1

    .line 685
    :cond_9
    :goto_5
    return p1
.end method

.method public static getPreviewOrientation()I
    .locals 1

    .line 156
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    return v0
.end method

.method public static getRectTemperatureInfo(IIII[IZ)Z
    .locals 17

    .line 217
    move-object/from16 v0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/16 p5, 0x0

    goto/16 :goto_9

    .line 218
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 220
    :try_start_0
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 272
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 220
    return v1

    .line 221
    :cond_1
    :try_start_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    .line 222
    :goto_0
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v3, :cond_3

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x78

    .line 224
    :goto_1
    invoke-static/range {p0 .. p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v4

    .line 225
    invoke-static/range {p2 .. p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v5

    .line 227
    aget v6, v4, v1

    aget v7, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 228
    add-int/lit8 v7, v2, -0x1

    aget v8, v4, v1

    aget v9, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 229
    const/4 v8, 0x1

    aget v9, v4, v8

    aget v10, v5, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 230
    sub-int/2addr v3, v8

    aget v4, v4, v8

    aget v5, v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    if-gt v6, v7, :cond_d

    if-le v9, v3, :cond_4

    const/16 p5, 0x0

    goto/16 :goto_7

    .line 234
    :cond_4
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    mul-int v4, v9, v2

    add-int/2addr v4, v6

    .line 239
    nop

    .line 241
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

    .line 242
    mul-int v16, v11, v2

    .line 243
    move v8, v6

    const/16 p0, 0x1

    :goto_3
    if-gt v8, v7, :cond_8

    .line 244
    add-int v5, v16, v8

    .line 245
    if-ltz v5, :cond_7

    :try_start_2
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 246
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget v10, v10, v5

    .line 247
    if-ge v10, v15, :cond_5

    .line 248
    nop

    .line 249
    move v4, v5

    move v15, v10

    .line 251
    :cond_5
    if-le v10, v1, :cond_6

    .line 252
    nop

    .line 253
    move v9, v5

    move v1, v10

    .line 255
    :cond_6
    move/from16 p3, v1

    int-to-long v0, v10

    add-long/2addr v12, v0

    .line 256
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    .line 243
    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p4

    goto :goto_3

    .line 241
    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p4

    const/4 v8, 0x1

    goto :goto_2

    .line 261
    :cond_9
    const/16 p0, 0x1

    const/16 v0, 0x61a8

    if-lez v14, :cond_a

    int-to-long v2, v14

    div-long/2addr v12, v2

    long-to-int v2, v12

    goto :goto_4

    .line 268
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 261
    :cond_a
    const/16 v2, 0x61a8

    .line 262
    :goto_4
    const v3, 0x7fffffff

    if-eq v15, v3, :cond_b

    goto :goto_5

    :cond_b
    const/16 v15, 0x61a8

    :goto_5
    aput v15, p4, p5

    .line 263
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_c

    goto :goto_6

    :cond_c
    const/16 v1, 0x61a8

    :goto_6
    aput v1, p4, p0

    .line 264
    const/4 v0, 0x2

    aput v2, p4, v0

    .line 265
    const/4 v0, 0x3

    aput v4, p4, v0

    .line 266
    const/4 v0, 0x4

    aput v9, p4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    nop

    .line 272
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 267
    return p0

    .line 232
    :cond_d
    const/16 p5, 0x0

    .line 272
    :goto_7
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 232
    return p5

    .line 268
    :catchall_1
    move-exception v0

    const/16 p5, 0x0

    .line 269
    :goto_8
    :try_start_3
    const-string v1, "DeviceController"

    const-string v2, "getRectTemperatureInfo error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 270
    nop

    .line 272
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 270
    return p5

    .line 272
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 273
    throw v0

    .line 217
    :cond_e
    const/16 p5, 0x0

    :goto_9
    return p5
.end method

.method public static getState()Lcn/com/magnity/magnitycx/sdk/State;
    .locals 1

    .line 171
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 173
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 176
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 176
    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    :try_start_1
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 178
    return-object v0

    .line 180
    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 181
    throw v0
.end method

.method public static getTemperature(IIZ)I
    .locals 10

    .line 185
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 187
    const/16 p2, 0x61a8

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    if-eqz v0, :cond_5

    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v0, v0

    if-lez v0, :cond_5

    .line 188
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 189
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 192
    :goto_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 193
    div-int/lit8 p0, v0, 0x2

    .line 194
    div-int/lit8 v1, v1, 0x2

    .line 195
    nop

    .line 196
    const/4 p1, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    :goto_2
    if-gt v5, v2, :cond_3

    .line 197
    const/4 v6, -0x1

    :goto_3
    if-gt v6, v2, :cond_2

    .line 198
    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    add-int v8, v1, v5

    mul-int v8, v8, v0

    add-int v9, p0, v6

    add-int/2addr v8, v9

    aget v7, v7, v8

    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 196
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 201
    :cond_3
    const-wide/16 p0, 0x9

    div-long/2addr v3, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p0, v3

    .line 212
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 201
    return p0

    .line 204
    :cond_4
    if-ltz p0, :cond_5

    :try_start_1
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length p1, p1

    if-ge p0, p1, :cond_5

    .line 205
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget p0, p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 205
    return p0

    .line 208
    :cond_5
    :try_start_2
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz p0, :cond_6

    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 208
    return p2

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    nop

    .line 212
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 210
    return p2
.end method

.method private static initPalettes()V
    .locals 7

    .line 883
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 884
    int-to-float v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 886
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v3, v3, v0

    shl-int/lit8 v4, v1, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v1

    aput v4, v3, v1

    .line 888
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

    .line 890
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 892
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 894
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcGlowbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 896
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcAutumn(F)I

    move-result v4

    aput v4, v3, v1

    .line 898
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcWinter(F)I

    move-result v4

    aput v4, v3, v1

    .line 900
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v4

    aput v4, v3, v1

    .line 902
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v4

    aput v4, v3, v1

    .line 904
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedSaturation(I)I

    move-result v4

    aput v4, v3, v1

    .line 906
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHighContrast(F)I

    move-result v2

    aput v2, v3, v1

    .line 908
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedHot(I)I

    move-result v3

    aput v3, v2, v1

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 910
    :cond_0
    return-void
.end method

.method public static isOutputDataReady()Z
    .locals 1

    .line 148
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    return v0
.end method

.method public static isProcessImage()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .line 838
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->getInstance()Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static pushFrame([BII)Z
    .locals 28

    .line 368
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DeviceController"

    const/4 v3, 0x0

    if-eqz v0, :cond_38

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    goto/16 :goto_1f

    .line 369
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 371
    :try_start_0
    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v4, :cond_1

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v4, 0xa0

    .line 372
    :goto_0
    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v6, :cond_2

    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v6, 0x78

    .line 373
    :goto_1
    mul-int v7, v4, v6

    .line 375
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    if-eqz v8, :cond_3

    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    array-length v8, v8

    if-eq v8, v7, :cond_4

    .line 376
    :cond_3
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 377
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 378
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 379
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 380
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 381
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 382
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 385
    :cond_4
    nop

    .line 386
    array-length v8, v0

    const/4 v9, 0x3

    const/16 v10, 0x1c

    const/16 v11, 0xff

    const/4 v12, 0x1

    if-lt v8, v10, :cond_5

    .line 387
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

    .line 388
    const v13, 0x1bb1b11b

    if-ne v8, v13, :cond_5

    .line 389
    goto :goto_2

    .line 393
    :cond_5
    const/4 v10, 0x0

    :goto_2
    array-length v8, v0

    sub-int/2addr v8, v10

    div-int/2addr v8, v5

    .line 394
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 395
    if-gtz v8, :cond_6

    .line 626
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 395
    return v3

    .line 397
    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    .line 398
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v10

    .line 399
    :try_start_1
    aget-byte v15, v0, v14

    and-int/2addr v15, v11

    .line 400
    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v0, v14

    and-int/2addr v14, v11

    .line 401
    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v14, v15

    .line 402
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aput v14, v15, v13

    .line 403
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aput v14, v15, v13

    .line 397
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 405
    :cond_7
    sget-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    sput-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 406
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    add-int/2addr v0, v12

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 409
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    if-nez v0, :cond_8

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    const/16 v8, 0xf

    if-lt v0, v8, :cond_8

    .line 410
    sput-boolean v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 411
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 415
    :cond_8
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfc2Done:Z

    if-nez v0, :cond_9

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    const/16 v8, 0x258

    if-lt v0, v8, :cond_9

    .line 416
    sput-boolean v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfc2Done:Z

    .line 417
    const-string v0, "Triggering warm-up thermal equilibrium FFC at frame 600 (~30s)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 422
    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_b

    .line 423
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    sget-boolean v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aget v10, v10, v0

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget v13, v13, v0

    sub-int/2addr v10, v13

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    aput v10, v8, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 427
    :cond_b
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v6, :cond_20

    .line 428
    mul-int v8, v0, v4

    .line 429
    if-lt v0, v5, :cond_1e

    add-int/lit8 v10, v6, -0x2

    if-lt v0, v10, :cond_c

    move/from16 v20, v0

    move/from16 p0, v8

    const/16 p2, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x1

    goto/16 :goto_c

    .line 436
    :cond_c
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v13, v13, v8

    aput v13, v10, v8

    .line 437
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v8, 0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 438
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v13, v8, v4

    add-int/lit8 v14, v13, -0x2

    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v15, v15, v14

    aput v15, v10, v14

    .line 439
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v13, -0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 441
    const/4 v10, 0x2

    :goto_7
    add-int/lit8 v13, v4, -0x2

    if-ge v10, v13, :cond_1d

    .line 442
    add-int v13, v8, v10

    .line 443
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    .line 445
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    sub-int v16, v13, v4

    add-int/lit8 v17, v16, -0x1

    aget v15, v15, v17

    .line 446
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    const/16 p2, 0x2

    aget v5, v17, v16

    .line 447
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v16, v16, 0x1

    const/16 v18, 0x3

    aget v9, v17, v16

    .line 448
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, -0x1

    aget v11, v16, v17

    .line 449
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, 0x1

    const/16 v19, 0x1

    aget v12, v16, v17

    .line 450
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int v17, v13, v4

    add-int/lit8 v20, v17, -0x1

    aget v3, v16, v20

    .line 451
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    move/from16 v20, v0

    aget v0, v16, v17

    .line 452
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v17, 0x1

    move/from16 p0, v8

    aget v8, v16, v17

    .line 454
    nop

    .line 455
    move/from16 v16, v10

    if-ge v5, v15, :cond_d

    move v10, v5

    goto :goto_8

    :cond_d
    move v10, v15

    .line 456
    :goto_8
    if-ge v9, v10, :cond_e

    move v10, v9

    .line 457
    :cond_e
    if-ge v11, v10, :cond_f

    move v10, v11

    .line 458
    :cond_f
    if-ge v12, v10, :cond_10

    move v10, v12

    .line 459
    :cond_10
    if-ge v3, v10, :cond_11

    move v10, v3

    .line 460
    :cond_11
    if-ge v0, v10, :cond_12

    move v10, v0

    .line 461
    :cond_12
    if-ge v8, v10, :cond_13

    move v10, v8

    .line 463
    :cond_13
    nop

    .line 464
    move/from16 v17, v5

    if-le v5, v15, :cond_14

    goto :goto_9

    :cond_14
    move v5, v15

    .line 465
    :goto_9
    if-le v9, v5, :cond_15

    move v5, v9

    .line 466
    :cond_15
    if-le v11, v5, :cond_16

    move v5, v11

    .line 467
    :cond_16
    if-le v12, v5, :cond_17

    move v5, v12

    .line 468
    :cond_17
    if-le v3, v5, :cond_18

    move v5, v3

    .line 469
    :cond_18
    if-le v0, v5, :cond_19

    move v5, v0

    .line 470
    :cond_19
    if-le v8, v5, :cond_1a

    move v5, v8

    .line 472
    :cond_1a
    add-int v15, v15, v17

    add-int/2addr v15, v9

    add-int/2addr v15, v11

    add-int/2addr v15, v12

    add-int/2addr v15, v3

    add-int/2addr v15, v0

    add-int/2addr v15, v8

    shr-int/lit8 v0, v15, 0x3

    .line 475
    add-int/lit16 v5, v5, 0xfa

    if-gt v14, v5, :cond_1c

    add-int/lit16 v10, v10, -0xfa

    if-ge v14, v10, :cond_1b

    goto :goto_a

    .line 478
    :cond_1b
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v14, v0, v13

    goto :goto_b

    .line 476
    :cond_1c
    :goto_a
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v0, v3, v13

    .line 441
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

    :cond_1d
    move/from16 v20, v0

    const/16 p2, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x1

    goto :goto_e

    .line 429
    :cond_1e
    move/from16 v20, v0

    move/from16 p0, v8

    const/16 p2, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x1

    .line 430
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_1f

    .line 431
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v8, p0, v0

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v5, v5, v8

    aput v5, v3, v8

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 433
    :cond_1f
    nop

    .line 427
    :goto_e
    add-int/lit8 v0, v20, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/16 v11, 0xff

    const/4 v12, 0x1

    goto/16 :goto_6

    .line 485
    :cond_20
    const/16 p2, 0x2

    const/16 v19, 0x1

    div-int/lit8 v0, v4, 0x2

    .line 486
    div-int/lit8 v3, v6, 0x2

    .line 487
    mul-int v5, v0, v0

    mul-int v8, v3, v3

    add-int/2addr v5, v8

    .line 488
    const/4 v8, 0x0

    :goto_f
    if-ge v8, v6, :cond_23

    .line 489
    sub-int v9, v8, v3

    .line 490
    mul-int v9, v9, v9

    .line 491
    mul-int v10, v8, v4

    .line 492
    const/4 v11, 0x0

    :goto_10
    if-ge v11, v4, :cond_22

    .line 493
    sub-int v12, v11, v0

    .line 494
    mul-int v12, v12, v12

    add-int/2addr v12, v9

    .line 496
    const/16 v13, 0x4c9

    if-le v12, v13, :cond_21

    .line 497
    add-int/lit16 v12, v12, -0x4c9

    int-to-long v14, v12

    const-wide/16 v16, 0x1f4

    mul-long v14, v14, v16

    add-int/lit16 v12, v5, -0x4c9

    int-to-long v12, v12

    div-long/2addr v14, v12

    long-to-int v12, v14

    .line 498
    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v14, v10, v11

    aget v15, v13, v14

    sub-int/2addr v15, v12

    aput v15, v13, v14

    .line 492
    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 488
    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 506
    :cond_23
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_24

    .line 508
    :try_start_2
    const-string v0, "user_manual_temp_offset"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 509
    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z

    .line 510
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

    goto :goto_11

    .line 511
    :catchall_0
    move-exception v0

    :goto_11
    nop

    .line 513
    :cond_24
    :try_start_3
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_25

    .line 515
    :try_start_4
    const-string v0, "flipMode"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 516
    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipLoaded:Z

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded sFlipMode = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_12

    .line 518
    :catchall_1
    move-exception v0

    :goto_12
    nop

    .line 521
    :cond_25
    const/16 v0, 0x1388

    if-le v1, v0, :cond_26

    const v0, 0x186a0

    if-ge v1, v0, :cond_26

    move v0, v1

    goto :goto_13

    :cond_26
    const/16 v0, 0x6d60

    .line 522
    :goto_13
    nop

    .line 523
    add-int/lit8 v1, v0, 0x0

    :try_start_5
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v1, v3

    .line 525
    const/4 v3, 0x0

    :goto_14
    const-wide/16 v8, 0xa

    const-wide/16 v10, 0x4b

    if-ge v3, v7, :cond_27

    .line 526
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    sget-object v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v12, v12, v3

    int-to-long v12, v12

    mul-long v12, v12, v10

    div-long/2addr v12, v8

    long-to-int v8, v12

    add-int/2addr v8, v1

    aput v8, v5, v3

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 531
    :cond_27
    nop

    .line 532
    nop

    .line 533
    nop

    .line 534
    div-int/lit8 v3, v6, 0x2

    mul-int v3, v3, v4

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    .line 535
    nop

    .line 537
    nop

    .line 538
    nop

    .line 539
    nop

    .line 541
    const-wide/16 v12, 0x0

    const v14, 0x7fffffff

    const/high16 v15, -0x80000000

    move-wide/from16 p0, v8

    move-wide v8, v12

    move-wide v13, v8

    const/16 v5, 0xa

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const/high16 v17, -0x80000000

    move v12, v3

    :goto_15
    move-wide/from16 v22, v10

    add-int/lit8 v10, v6, -0xa

    if-ge v5, v10, :cond_2b

    .line 542
    mul-int v10, v5, v4

    .line 543
    move/from16 v20, v1

    move/from16 v11, v16

    move/from16 v1, v17

    move/from16 v16, v3

    const/16 v3, 0xa

    :goto_16
    move/from16 v24, v5

    add-int/lit8 v5, v4, -0xa

    if-ge v3, v5, :cond_2a

    .line 544
    add-int v5, v10, v3

    .line 545
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    move/from16 v25, v3

    aget v3, v17, v5

    .line 546
    if-ge v3, v11, :cond_28

    .line 547
    nop

    .line 548
    move v11, v3

    move/from16 v16, v5

    .line 550
    :cond_28
    if-le v3, v1, :cond_29

    .line 551
    nop

    .line 552
    move v1, v3

    move v12, v5

    .line 554
    :cond_29
    move-wide/from16 v26, v8

    int-to-long v8, v3

    add-long/2addr v13, v8

    .line 555
    mul-long v8, v8, v8

    add-long v8, v26, v8

    .line 556
    add-int/lit8 v15, v15, 0x1

    .line 543
    add-int/lit8 v3, v25, 0x1

    move/from16 v5, v24

    goto :goto_16

    .line 541
    :cond_2a
    move-wide/from16 v26, v8

    add-int/lit8 v5, v24, 0x1

    move/from16 v17, v1

    move/from16 v3, v16

    move/from16 v1, v20

    move/from16 v16, v11

    move-wide/from16 v10, v22

    goto :goto_15

    .line 560
    :cond_2b
    move/from16 v20, v1

    if-gtz v15, :cond_2c

    .line 561
    nop

    .line 562
    nop

    .line 563
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x1

    goto :goto_17

    .line 560
    :cond_2c
    move/from16 v1, v16

    move/from16 v5, v17

    .line 566
    :goto_17
    long-to-double v10, v13

    int-to-double v13, v15

    div-double/2addr v10, v13

    .line 567
    long-to-double v8, v8

    div-double/2addr v8, v13

    mul-double v13, v10, v10

    sub-double/2addr v8, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 568
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 571
    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    mul-double v13, v13, v8

    move-wide v15, v8

    sub-double v8, v10, v13

    double-to-int v8, v8

    .line 572
    add-double/2addr v13, v10

    double-to-int v9, v13

    .line 573
    sub-int/2addr v9, v8

    const/4 v13, 0x1

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 575
    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    if-ltz v13, :cond_2d

    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    const/16 v14, 0xc

    if-ge v13, v14, :cond_2d

    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    goto :goto_18

    :cond_2d
    const/4 v13, 0x2

    .line 576
    :goto_18
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v13, v14, v13

    .line 578
    const/4 v14, 0x0

    :goto_19
    if-ge v14, v7, :cond_30

    .line 579
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v17, v17, v14

    .line 580
    move/from16 v18, v3

    sub-int v3, v17, v8

    move/from16 v17, v7

    move/from16 v24, v8

    int-to-long v7, v3

    const-wide/16 v25, 0xff

    mul-long v7, v7, v25

    move-wide/from16 v25, v7

    int-to-long v7, v9

    div-long v7, v25, v7

    long-to-int v3, v7

    .line 581
    if-gez v3, :cond_2e

    const/4 v3, 0x0

    const/16 v7, 0xff

    goto :goto_1a

    .line 582
    :cond_2e
    const/16 v7, 0xff

    if-le v3, v7, :cond_2f

    const/16 v3, 0xff

    .line 583
    :cond_2f
    :goto_1a
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    aget v3, v13, v3

    aput v3, v8, v14

    .line 578
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v17

    move/from16 v3, v18

    move/from16 v8, v24

    goto :goto_19

    .line 587
    :cond_30
    move/from16 v18, v3

    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v1

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v1, v7

    add-int v1, v20, v1

    iput v1, v3, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    .line 588
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v5

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v3, v7

    add-int v3, v20, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    .line 589
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const-wide/high16 v7, 0x401e000000000000L    # 7.5

    mul-double v10, v10, v7

    double-to-int v3, v10

    add-int v3, v20, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 591
    rem-int v3, v18, v4

    div-int v1, v18, v4

    invoke-static {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v1

    .line 592
    rem-int v3, v12, v4

    div-int/2addr v12, v4

    invoke-static {v3, v12}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v3

    .line 594
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v9, 0x10e

    const/16 v10, 0x5a

    if-eq v5, v10, :cond_32

    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v5, v9, :cond_31

    goto :goto_1b

    :cond_31
    move v5, v4

    goto :goto_1c

    :cond_32
    :goto_1b
    move v5, v6

    .line 595
    :goto_1c
    sget v11, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq v11, v10, :cond_34

    sget v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v10, v9, :cond_33

    goto :goto_1d

    :cond_33
    move v9, v6

    goto :goto_1e

    :cond_34
    :goto_1d
    move v9, v4

    .line 597
    :goto_1e
    sget v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    const/16 v19, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_35

    .line 598
    add-int/lit8 v5, v5, -0x1

    const/16 v21, 0x0

    aget v10, v1, v21

    sub-int v10, v5, v10

    aput v10, v1, v21

    .line 599
    aget v10, v3, v21

    sub-int/2addr v5, v10

    aput v5, v3, v21

    .line 601
    :cond_35
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_36

    .line 602
    const/16 v19, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v5, v1, v19

    sub-int v5, v9, v5

    aput v5, v1, v19

    .line 603
    aget v5, v3, v19

    sub-int/2addr v9, v5

    aput v9, v3, v19

    .line 606
    :cond_36
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x0

    aget v9, v1, v21

    iput v9, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinX:I

    .line 607
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v19, 0x1

    aget v1, v1, v19

    iput v1, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinY:I

    .line 608
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x0

    aget v5, v3, v21

    iput v5, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    .line 609
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v19, 0x1

    aget v3, v3, v19

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    .line 610
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    mul-double v8, v15, v7

    double-to-int v3, v8

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intSTDTemperature:I

    .line 611
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v3, 0x32

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveNETDt:I

    .line 613
    const/16 v19, 0x1

    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 616
    sget-wide v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x7d0

    cmp-long v1, v9, v11

    if-lez v1, :cond_37

    .line 617
    sput-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 618
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 621
    :cond_37
    nop

    .line 626
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 621
    const/16 v19, 0x1

    return v19

    .line 622
    :catchall_2
    move-exception v0

    .line 623
    :try_start_6
    const-string v1, "pushFrame error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 624
    nop

    .line 626
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 624
    const/16 v21, 0x0

    return v21

    .line 626
    :catchall_3
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 627
    throw v0

    .line 368
    :cond_38
    :goto_1f
    const/16 v21, 0x0

    return v21
.end method

.method public static resetCalibration(Landroid/content/Context;)V
    .locals 2

    .line 1043
    const/4 v0, 0x0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 1045
    :try_start_0
    const-string v1, "user_manual_temp_offset"

    invoke-static {v1, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1046
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 1047
    if-eqz p0, :cond_0

    .line 1049
    :try_start_1
    const-string v1, "\u6eab\u5ea6\u6821\u6e96\u5df2\u91cd\u7f6e (0.0\u00b0C)"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1050
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 1052
    :cond_0
    return-void
.end method

.method public static saveDDT(Ljava/lang/String;)Z
    .locals 0

    .line 847
    const/4 p0, 0x1

    return p0
.end method

.method public static screenXY2ClientXY(IIII)[I
    .locals 6

    .line 778
    const/4 v0, 0x0

    if-lez p2, :cond_9

    if-gtz p3, :cond_0

    goto :goto_7

    .line 779
    :cond_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    .line 780
    :goto_0
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    .line 783
    :goto_1
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 787
    :cond_3
    mul-int p0, p0, v1

    div-int/2addr p0, p2

    .line 788
    mul-int p1, p1, v2

    div-int/2addr p1, p3

    goto :goto_3

    .line 784
    :cond_4
    :goto_2
    mul-int p0, p0, v2

    div-int/2addr p0, p2

    .line 785
    mul-int p1, p1, v1

    div-int/2addr p1, p3

    .line 790
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

    .line 791
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

    .line 792
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 778
    :cond_9
    :goto_7
    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static screenXY2SensorXY(IIII)[I
    .locals 2

    .line 801
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object p0

    .line 802
    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 p2, 0x10e

    const/16 p3, 0x5a

    if-eq p1, p3, :cond_1

    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_1

    :cond_1
    :goto_0
    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 803
    :goto_1
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq v0, p3, :cond_3

    sget p3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne p3, p2, :cond_2

    goto :goto_2

    :cond_2
    sget p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_3

    :cond_3
    :goto_2
    sget p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 804
    :goto_3
    sget p3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    const/4 v0, 0x1

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 805
    sub-int/2addr p1, v0

    aget p3, p0, v1

    sub-int/2addr p1, p3

    aput p1, p0, v1

    .line 807
    :cond_4
    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 808
    sub-int/2addr p2, v0

    aget p1, p0, v0

    sub-int/2addr p2, p1

    aput p2, p0, v0

    .line 810
    :cond_5
    aget p1, p0, v1

    aget p0, p0, v0

    invoke-static {p1, p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object p0

    return-object p0
.end method

.method public static sensorXY2ScreenXY(IIII)[I
    .locals 1

    .line 796
    invoke-static {p0, p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object p0

    .line 797
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

    .line 861
    return-void
.end method

.method public static setColorPalette(I)V
    .locals 1

    .line 160
    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 161
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 163
    :cond_0
    return-void
.end method

.method public static setColorbarSize(II)V
    .locals 0

    .line 166
    if-lez p0, :cond_0

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarWidth:I

    .line 167
    :cond_0
    if-lez p1, :cond_1

    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarHeight:I

    .line 168
    :cond_1
    return-void
.end method

.method public static setEX(III)V
    .locals 0

    .line 855
    return-void
.end method

.method public static setEmissivity(II)V
    .locals 0

    .line 858
    return-void
.end method

.method public static setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 1

    .line 876
    if-eqz p0, :cond_0

    .line 877
    iget p0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 878
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setExtParameter: dwFlip = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    return-void
.end method

.method public static setPreviewOrientation(I)V
    .locals 0

    .line 152
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    .line 153
    return-void
.end method

.method public static showCalibrationDialog(Landroid/app/Activity;)V
    .locals 1

    .line 1055
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1104
    return-void

    .line 1055
    :cond_1
    :goto_0
    return-void
.end method

.method public static startProcess(Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;IIIIIIIIIILjava/lang/String;)Z
    .locals 0

    .line 95
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 97
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

    .line 98
    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    .line 99
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 100
    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 101
    sput p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 103
    :cond_0
    if-ltz p9, :cond_1

    const/16 p0, 0xc

    if-ge p9, p0, :cond_1

    .line 104
    sput p9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 107
    :cond_1
    sget p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int p0, p0, p1

    .line 108
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 109
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 110
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 111
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 112
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 113
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 114
    new-array p0, p0, [I

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 115
    new-instance p0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 117
    const/4 p0, 0x0

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 118
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 119
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 120
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 121
    const-wide/16 p1, 0x0

    sput-wide p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 123
    const/4 p1, 0x1

    sput-boolean p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 124
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    nop

    .line 128
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 126
    return p1

    .line 128
    :catchall_0
    move-exception p0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 129
    throw p0
.end method

.method public static startRecording(Ljava/lang/String;IIIII)Z
    .locals 7

    .line 814
    const/4 p5, 0x1

    sput-boolean p5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 815
    nop

    .line 816
    nop

    .line 818
    const/16 p5, 0x3c

    if-le p4, p5, :cond_0

    if-gt p3, p5, :cond_0

    .line 819
    nop

    .line 820
    goto :goto_0

    .line 821
    :cond_0
    if-le p3, p5, :cond_1

    if-gt p4, p5, :cond_1

    .line 822
    nop

    .line 823
    nop

    .line 825
    :cond_1
    move v6, p4

    move p4, p3

    move p3, v6

    :goto_0
    const/4 v0, 0x5

    if-lt p3, v0, :cond_3

    if-le p3, p5, :cond_2

    goto :goto_1

    :cond_2
    move v4, p3

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p3, 0x14

    const/16 v4, 0x14

    .line 826
    :goto_2
    const/16 p3, 0xc8

    if-ge p4, p3, :cond_4

    const/16 p4, 0x7d0

    const/16 v5, 0x7d0

    goto :goto_3

    :cond_4
    move v5, p4

    .line 828
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startRecording: path="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", w="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", h="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", fps="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", bitrate="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "DeviceController"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->getInstance()Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->start(Ljava/lang/String;IIII)Z

    move-result p0

    return p0
.end method

.method public static stopProcess()V
    .locals 1

    .line 133
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 135
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 136
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 137
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 140
    throw v0
.end method

.method public static stopRecording()V
    .locals 1

    .line 833
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 834
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->getInstance()Lcn/com/magnity/magnitycx/sdk/VideoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->stop()V

    .line 835
    return-void
.end method

.method public static toggleHorizontalFlip(Landroid/content/Context;)V
    .locals 2

    .line 1106
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    xor-int/lit8 v0, v0, 0x1

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 1108
    :try_start_0
    const-string v0, "flipMode"

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 1111
    :try_start_1
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    iput v1, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1112
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 1113
    if-eqz p0, :cond_1

    .line 1114
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u958b\u555f\u6c34\u5e73\u7ffb\u8f49 (\u5de6\u53f3\u93e1\u50cf\u4fee\u6b63)"

    goto :goto_2

    :cond_0
    const-string v0, "\u5df2\u95dc\u9589\u6c34\u5e73\u7ffb\u8f49"

    .line 1116
    :goto_2
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 1117
    :catchall_2
    move-exception p0

    :goto_3
    nop

    .line 1119
    :cond_1
    return-void
.end method

.method public static triggerFFC()V
    .locals 3

    .line 277
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "DeviceController"

    const-string v1, "FFC already in progress, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;-><init>()V

    const-string v2, "FFC-Worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 293
    return-void
.end method
