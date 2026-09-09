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
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 37
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z

    .line 38
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 39
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipLoaded:Z

    .line 40
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    .line 41
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 42
    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 43
    const-wide/16 v5, 0x0

    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 45
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 46
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 47
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 48
    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 49
    new-instance v4, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v4}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 50
    sput-wide v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 52
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

    .line 55
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->initPalettes()V

    .line 56
    invoke-static {v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorbarSize(II)V

    .line 57
    const-string v0, "paletteIndex"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorPalette(I)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static Lock()V
    .locals 1

    .line 66
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 69
    :goto_0
    return-void
.end method

.method public static Unlock()V
    .locals 1

    .line 73
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 78
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

    .line 937
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v0, p1

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 939
    :try_start_0
    const-string p1, "user_manual_temp_offset"

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    invoke-static {p1, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 940
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 941
    if-eqz p0, :cond_0

    .line 942
    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 943
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 944
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

    .line 946
    :try_start_1
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 947
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 949
    :cond_0
    return-void
.end method

.method public static adjustTempOffsetDown(Landroid/content/Context;)V
    .locals 1

    .line 956
    const/16 v0, -0x1f4

    invoke-static {p0, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffset(Landroid/content/Context;I)V

    .line 957
    return-void
.end method

.method public static adjustTempOffsetUp(Landroid/content/Context;)V
    .locals 1

    .line 952
    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->adjustTempOffset(Landroid/content/Context;I)V

    .line 953
    return-void
.end method

.method public static buffer2ClientXY(II)[I
    .locals 5

    .line 673
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 674
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 676
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 677
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 678
    move p1, p0

    move p0, v1

    goto :goto_2

    .line 679
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 680
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 681
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 682
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 683
    nop

    .line 684
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 686
    :cond_4
    nop

    .line 687
    nop

    .line 689
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method private static calcAutumn(F)I
    .locals 2

    .line 880
    nop

    .line 881
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 882
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    const/high16 p0, 0x42200000    # 40.0f

    mul-float v1, v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 883
    shl-int/lit8 v0, v0, 0x8

    const/high16 v1, -0x10000

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static calcGlowbow(F)I
    .locals 4

    .line 873
    const/high16 v0, 0x43a00000    # 320.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 874
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

    .line 875
    const v3, 0x3f333333    # 0.7f

    sub-float/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 876
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

    .line 915
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

    .line 916
    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v6

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v2

    .line 917
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v6

    add-double/2addr v0, v8

    double-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 918
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

    .line 894
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 895
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

    .line 896
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

    .line 897
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

    .line 849
    const/4 v0, 0x0

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    .line 850
    div-float/2addr p0, v3

    .line 851
    mul-float v1, v1, p0

    float-to-int v1, v1

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 852
    goto :goto_0

    :cond_0
    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v6, p0, v5

    if-gez v6, :cond_1

    .line 853
    sub-float/2addr p0, v3

    div-float/2addr p0, v3

    .line 854
    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float v0, v0, p0

    add-float/2addr v0, v1

    float-to-int v1, v0

    mul-float v4, v4, p0

    float-to-int v0, v4

    mul-float p0, p0, v2

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 855
    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v6, p0, v2

    if-gez v6, :cond_2

    .line 856
    sub-float/2addr p0, v5

    div-float/2addr p0, v3

    .line 857
    const/high16 v2, 0x43200000    # 160.0f

    mul-float p0, p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 858
    move v0, p0

    const/4 p0, 0x0

    goto :goto_0

    .line 859
    :cond_2
    sub-float/2addr p0, v2

    div-float/2addr p0, v3

    .line 860
    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v0, v0, p0

    const/high16 v2, 0x43600000    # 224.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 862
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

    .line 901
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

    .line 902
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

    .line 903
    add-float/2addr v0, v3

    const/high16 v3, 0x40200000    # 2.5f

    add-float/2addr p0, v3

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float p0, p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 904
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

    .line 866
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

    .line 867
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

    .line 868
    sub-float/2addr v0, p0

    mul-float v0, v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, v6

    float-to-int p0, p0

    .line 869
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

    .line 922
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    .line 923
    add-int/lit16 v0, p0, -0xc0

    mul-int/lit8 v0, v0, 0x4

    .line 924
    nop

    .line 925
    sub-int/2addr p0, v0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 926
    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 927
    const/high16 v1, -0x10000

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    .line 929
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

    .line 908
    const/16 v0, 0xda

    if-lt p0, v0, :cond_0

    .line 909
    const/high16 p0, -0x10000

    return p0

    .line 911
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

    .line 887
    const/high16 v0, 0x43000000    # 128.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v0

    .line 888
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result v1

    .line 889
    const/high16 v2, 0x43070000    # 135.0f

    mul-float p0, p0, v2

    const/high16 v2, 0x42f00000    # 120.0f

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-static {p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clamp(I)I

    move-result p0

    .line 890
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

    .line 960
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 961
    if-gtz v0, :cond_0

    const v0, 0x88b8

    .line 962
    :cond_0
    sub-int v0, p1, v0

    .line 963
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v1, v0

    sput v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 965
    :try_start_0
    const-string v0, "user_manual_temp_offset"

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 967
    if-eqz p0, :cond_1

    .line 968
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 969
    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 970
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

    .line 972
    :try_start_1
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 973
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 975
    :cond_1
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    .line 933
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

    .line 693
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 694
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 696
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 697
    nop

    .line 698
    add-int/lit8 v1, v1, -0x1

    sub-int p0, v1, p0

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    .line 699
    :cond_2
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 700
    add-int/lit8 v0, v0, -0x1

    sub-int p0, v0, p0

    .line 701
    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_2

    .line 702
    :cond_3
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 703
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 704
    move p1, p0

    move p0, v0

    goto :goto_2

    .line 706
    :cond_4
    nop

    .line 707
    nop

    .line 709
    :goto_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static clientPos2ScreenXY(III)[I
    .locals 6

    .line 729
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 730
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 731
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

    .line 732
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-eq v5, v4, :cond_4

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v4, v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    div-int/2addr p0, v0

    .line 733
    invoke-static {v2, p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static clientXY2ScreenXY(IIII)[I
    .locals 4

    .line 713
    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_4

    .line 714
    :cond_0
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_1

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    .line 715
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_2

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x78

    .line 718
    :goto_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 722
    :cond_3
    mul-int p0, p0, p2

    div-int/2addr p0, v0

    .line 723
    mul-int p1, p1, p3

    div-int/2addr p1, v1

    goto :goto_3

    .line 719
    :cond_4
    :goto_2
    mul-int p0, p0, p2

    div-int/2addr p0, v1

    .line 720
    mul-int p1, p1, p3

    div-int/2addr p1, v0

    .line 725
    :goto_3
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 713
    :cond_5
    :goto_4
    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static doFfcCycle()V
    .locals 15

    .line 295
    const-string v0, "DeviceController"

    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    if-nez v1, :cond_0

    return-void

    .line 296
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 298
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "FFC: Step 1 - Closing shutter (state 0)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 300
    :try_start_1
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    goto :goto_0

    .line 301
    :catchall_0
    move-exception v3

    .line 302
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

    .line 305
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

    .line 307
    :goto_1
    :try_start_4
    const-string v3, "FFC: Step 2 - Accumulating 8 dark baseline frames..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int v3, v3, v4

    .line 309
    new-array v4, v3, [J

    .line 310
    nop

    .line 311
    nop

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 314
    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v12, 0xfa0

    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 315
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 317
    :try_start_5
    sget-wide v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    if-eqz v10, :cond_2

    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    array-length v10, v10

    if-ne v10, v3, :cond_2

    .line 318
    sget-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 319
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_1

    .line 320
    aget-wide v11, v4, v10

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aget v13, v13, v10

    int-to-long v13, v13

    add-long/2addr v11, v13

    aput-wide v11, v4, v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 322
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 327
    :cond_2
    :goto_4
    :try_start_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 328
    goto :goto_5

    .line 324
    :catchall_1
    move-exception v10

    .line 325
    :try_start_7
    const-string v11, "FFC acc error"

    invoke-static {v0, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 329
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

    .line 327
    :catchall_2
    move-exception v1

    :try_start_9
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 328
    throw v1

    .line 332
    :cond_3
    if-lez v9, :cond_7

    .line 333
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 335
    :try_start_a
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    if-eqz v5, :cond_4

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    array-length v5, v5

    if-eq v5, v3, :cond_5

    .line 336
    :cond_4
    new-array v5, v3, [I

    sput-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 338
    :cond_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    .line 339
    sget-object v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    aget-wide v7, v4, v5

    int-to-long v10, v9

    div-long/2addr v7, v10

    long-to-int v8, v7

    aput v8, v6, v5

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 341
    :cond_6
    sput-boolean v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 342
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

    .line 343
    :catchall_3
    move-exception v3

    .line 344
    :try_start_b
    const-string v4, "FFC baseline error"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 346
    :goto_7
    :try_start_c
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 347
    goto :goto_8

    .line 346
    :catchall_4
    move-exception v1

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 347
    throw v1

    .line 350
    :cond_7
    :goto_8
    const-string v3, "FFC: Step 3 - Opening shutter (state 1)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 352
    :try_start_d
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    invoke-interface {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;->setShutterState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 355
    goto :goto_9

    .line 353
    :catchall_5
    move-exception v1

    .line 354
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

    .line 357
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

    .line 358
    :goto_a
    :try_start_10
    const-string v1, "FFC: Calibration cycle finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_b

    .line 359
    :catchall_6
    move-exception v1

    .line 360
    :try_start_11
    const-string v3, "doFfcCycle general error"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 362
    :goto_b
    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 363
    nop

    .line 364
    return-void

    .line 362
    :catchall_7
    move-exception v0

    sput-boolean v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 363
    throw v0
.end method

.method public static doRecording(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 778
    sget-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return p0
.end method

.method public static getEX()I
    .locals 1

    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public static getExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 2

    .line 799
    if-eqz p0, :cond_0

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->bIsothermal:Z

    .line 801
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    .line 802
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intAutoEnlargeRange:I

    .line 803
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intBrightOffset:I

    .line 804
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intContrastOffset:I

    .line 805
    const/16 v1, 0x61a8

    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intCurrentEnvTemperature:I

    .line 806
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->intDetailRatio:I

    .line 808
    :cond_0
    return-void
.end method

.method public static getOutputBMPData(Landroid/graphics/Bitmap;I)Z
    .locals 17

    .line 590
    const-string v1, "DeviceController"

    const/4 v2, 0x0

    if-eqz p0, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 591
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 593
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 639
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 593
    return v2

    .line 594
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 596
    if-lez v6, :cond_13

    if-gtz v10, :cond_2

    goto/16 :goto_c

    .line 598
    :cond_2
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_3

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_3
    const/16 v0, 0xa0

    .line 599
    :goto_0
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v3, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_4
    const/16 v3, 0x78

    .line 600
    :goto_1
    mul-int v4, v0, v3

    .line 601
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    array-length v5, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v5, v4, :cond_5

    .line 639
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 601
    return v2

    .line 604
    :cond_5
    :try_start_2
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    const/4 v11, 0x1

    if-nez v5, :cond_6

    .line 605
    sget-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    nop

    .line 639
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 606
    return v11

    .line 609
    :cond_6
    :try_start_3
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    if-eqz v5, :cond_7

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    array-length v5, v5

    if-eq v5, v4, :cond_8

    .line 610
    :cond_7
    new-array v4, v4, [I

    sput-object v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    .line 613
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

    .line 614
    :goto_3
    sget v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/2addr v5, v11

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 615
    :goto_4
    sget v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    .line 617
    :goto_5
    if-eqz v4, :cond_d

    move v8, v7

    goto :goto_6

    :cond_d
    move v8, v5

    .line 618
    :goto_6
    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    move v5, v7

    .line 620
    :goto_7
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_12

    .line 621
    if-eqz v5, :cond_f

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v4

    goto :goto_9

    :cond_f
    move v7, v4

    .line 622
    :goto_9
    mul-int v9, v4, v0

    .line 623
    mul-int v7, v7, v0

    .line 624
    const/4 v12, 0x0

    :goto_a
    if-ge v12, v0, :cond_11

    .line 625
    if-eqz v8, :cond_10

    add-int/lit8 v13, v0, -0x1

    sub-int/2addr v13, v12

    goto :goto_b

    :cond_10
    move v13, v12

    .line 626
    :goto_b
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlippedArgbPixels:[I

    add-int v15, v9, v12

    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    add-int/2addr v13, v7

    aget v13, v16, v13

    aput v13, v14, v15

    .line 624
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 620
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 629
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

    .line 630
    nop

    .line 639
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 630
    return v11

    .line 631
    :catchall_0
    move-exception v0

    .line 632
    :try_start_4
    const-string v3, "bmp.setPixels error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    nop

    .line 639
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 633
    return v2

    .line 639
    :cond_13
    :goto_c
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 596
    return v2

    .line 635
    :catchall_1
    move-exception v0

    .line 636
    :try_start_5
    const-string v3, "getOutputBMPData error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 637
    nop

    .line 639
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 637
    return v2

    .line 639
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 640
    throw v0

    .line 590
    :cond_14
    :goto_d
    return v2
.end method

.method public static getOutputColorbarData(Landroid/graphics/Bitmap;I)Z
    .locals 12

    .line 644
    const/4 p1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 646
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 647
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 648
    if-lez v4, :cond_8

    if-gtz v8, :cond_1

    goto :goto_4

    .line 650
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

    .line 651
    :goto_0
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v0, v1, v0

    .line 652
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 654
    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v1, v8, :cond_7

    .line 655
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

    .line 656
    if-gez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 657
    :cond_4
    const/16 v5, 0xff

    if-le v3, v5, :cond_5

    const/16 v3, 0xff

    .line 658
    :cond_5
    :goto_2
    aget v3, v0, v3

    .line 659
    mul-int v5, v1, v4

    .line 660
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_6

    .line 661
    add-int v7, v5, v6

    aput v3, v2, v7

    .line 660
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 654
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 664
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    return v9

    .line 648
    :cond_8
    :goto_4
    return p1

    .line 666
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 667
    const-string v0, "DeviceController"

    const-string v1, "getOutputColorbarData error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    return p1

    .line 644
    :cond_9
    :goto_5
    return p1
.end method

.method public static getPreviewOrientation()I
    .locals 1

    .line 155
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    return v0
.end method

.method public static getRectTemperatureInfo(IIII[IZ)Z
    .locals 17

    .line 216
    move-object/from16 v0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/16 p5, 0x0

    goto/16 :goto_9

    .line 217
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 219
    :try_start_0
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 271
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 219
    return v1

    .line 220
    :cond_1
    :try_start_1
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    .line 221
    :goto_0
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v3, :cond_3

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x78

    .line 223
    :goto_1
    invoke-static/range {p0 .. p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v4

    .line 224
    invoke-static/range {p2 .. p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->client2BufferXY(II)[I

    move-result-object v5

    .line 226
    aget v6, v4, v1

    aget v7, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 227
    add-int/lit8 v7, v2, -0x1

    aget v8, v4, v1

    aget v9, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 228
    const/4 v8, 0x1

    aget v9, v4, v8

    aget v10, v5, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 229
    sub-int/2addr v3, v8

    aget v4, v4, v8

    aget v5, v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    if-gt v6, v7, :cond_d

    if-le v9, v3, :cond_4

    const/16 p5, 0x0

    goto/16 :goto_7

    .line 233
    :cond_4
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    mul-int v4, v9, v2

    add-int/2addr v4, v6

    .line 238
    nop

    .line 240
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

    .line 241
    mul-int v16, v11, v2

    .line 242
    move v8, v6

    const/16 p0, 0x1

    :goto_3
    if-gt v8, v7, :cond_8

    .line 243
    add-int v5, v16, v8

    .line 244
    if-ltz v5, :cond_7

    :try_start_2
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 245
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget v10, v10, v5

    .line 246
    if-ge v10, v15, :cond_5

    .line 247
    nop

    .line 248
    move v4, v5

    move v15, v10

    .line 250
    :cond_5
    if-le v10, v1, :cond_6

    .line 251
    nop

    .line 252
    move v9, v5

    move v1, v10

    .line 254
    :cond_6
    move/from16 p3, v1

    int-to-long v0, v10

    add-long/2addr v12, v0

    .line 255
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    .line 242
    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p4

    goto :goto_3

    .line 240
    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p4

    const/4 v8, 0x1

    goto :goto_2

    .line 260
    :cond_9
    const/16 p0, 0x1

    const/16 v0, 0x61a8

    if-lez v14, :cond_a

    int-to-long v2, v14

    div-long/2addr v12, v2

    long-to-int v2, v12

    goto :goto_4

    .line 267
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 260
    :cond_a
    const/16 v2, 0x61a8

    .line 261
    :goto_4
    const v3, 0x7fffffff

    if-eq v15, v3, :cond_b

    goto :goto_5

    :cond_b
    const/16 v15, 0x61a8

    :goto_5
    aput v15, p4, p5

    .line 262
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_c

    goto :goto_6

    :cond_c
    const/16 v1, 0x61a8

    :goto_6
    aput v1, p4, p0

    .line 263
    const/4 v0, 0x2

    aput v2, p4, v0

    .line 264
    const/4 v0, 0x3

    aput v4, p4, v0

    .line 265
    const/4 v0, 0x4

    aput v9, p4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    nop

    .line 271
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 266
    return p0

    .line 231
    :cond_d
    const/16 p5, 0x0

    .line 271
    :goto_7
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 231
    return p5

    .line 267
    :catchall_1
    move-exception v0

    const/16 p5, 0x0

    .line 268
    :goto_8
    :try_start_3
    const-string v1, "DeviceController"

    const-string v2, "getRectTemperatureInfo error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 269
    nop

    .line 271
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 269
    return p5

    .line 271
    :catchall_2
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 272
    throw v0

    .line 216
    :cond_e
    const/16 p5, 0x0

    :goto_9
    return p5
.end method

.method public static getState()Lcn/com/magnity/magnitycx/sdk/State;
    .locals 1

    .line 170
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 172
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 175
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 175
    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    :try_start_1
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 177
    return-object v0

    .line 179
    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 180
    throw v0
.end method

.method public static getTemperature(IIZ)I
    .locals 10

    .line 184
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 186
    const/16 p2, 0x61a8

    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    if-eqz v0, :cond_5

    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length v0, v0

    if-lez v0, :cond_5

    .line 187
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v0, :cond_0

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 188
    :goto_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x78

    .line 191
    :goto_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 192
    div-int/lit8 p0, v0, 0x2

    .line 193
    div-int/lit8 v1, v1, 0x2

    .line 194
    nop

    .line 195
    const/4 p1, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    :goto_2
    if-gt v5, v2, :cond_3

    .line 196
    const/4 v6, -0x1

    :goto_3
    if-gt v6, v2, :cond_2

    .line 197
    sget-object v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    add-int v8, v1, v5

    mul-int v8, v8, v0

    add-int v9, p0, v6

    add-int/2addr v8, v9

    aget v7, v7, v8

    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 195
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 200
    :cond_3
    const-wide/16 p0, 0x9

    div-long/2addr v3, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p0, v3

    .line 211
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 200
    return p0

    .line 203
    :cond_4
    if-ltz p0, :cond_5

    :try_start_1
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    array-length p1, p1

    if-ge p0, p1, :cond_5

    .line 204
    sget-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    aget p0, p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 204
    return p0

    .line 207
    :cond_5
    :try_start_2
    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz p0, :cond_6

    sget-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    iget p2, p0, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :cond_6
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 207
    return p2

    .line 208
    :catchall_0
    move-exception p0

    .line 209
    nop

    .line 211
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 209
    return p2
.end method

.method private static initPalettes()V
    .locals 7

    .line 818
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 819
    int-to-float v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 821
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v3, v3, v0

    shl-int/lit8 v4, v1, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v1

    aput v4, v3, v1

    .line 823
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

    .line 825
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcIronbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 827
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRainbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 829
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcGlowbow(F)I

    move-result v4

    aput v4, v3, v1

    .line 831
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcAutumn(F)I

    move-result v4

    aput v4, v3, v1

    .line 833
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcWinter(F)I

    move-result v4

    aput v4, v3, v1

    .line 835
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHotMetal(F)I

    move-result v4

    aput v4, v3, v1

    .line 837
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcJet(F)I

    move-result v4

    aput v4, v3, v1

    .line 839
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedSaturation(I)I

    move-result v4

    aput v4, v3, v1

    .line 841
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcHighContrast(F)I

    move-result v2

    aput v2, v3, v1

    .line 843
    sget-object v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->calcRedHot(I)I

    move-result v3

    aput v3, v2, v1

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 845
    :cond_0
    return-void
.end method

.method public static isOutputDataReady()Z
    .locals 1

    .line 147
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    return v0
.end method

.method public static isProcessImage()Z
    .locals 1

    .line 143
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .line 774
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    return v0
.end method

.method public static pushFrame([BII)Z
    .locals 28

    .line 367
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DeviceController"

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    goto/16 :goto_19

    .line 368
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 370
    :try_start_0
    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v4, :cond_1

    sget v4, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v4, 0xa0

    .line 371
    :goto_0
    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v6, :cond_2

    sget v6, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v6, 0x78

    .line 372
    :goto_1
    mul-int v7, v4, v6

    .line 374
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    if-eqz v8, :cond_3

    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    array-length v8, v8

    if-eq v8, v7, :cond_4

    .line 375
    :cond_3
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 376
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 377
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 378
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 379
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 380
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 381
    new-array v8, v7, [I

    sput-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 384
    :cond_4
    nop

    .line 385
    array-length v8, v0

    const/4 v9, 0x3

    const/16 v10, 0x1c

    const/16 v11, 0xff

    const/4 v12, 0x1

    if-lt v8, v10, :cond_5

    .line 386
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

    .line 387
    const v13, 0x1bb1b11b

    if-ne v8, v13, :cond_5

    .line 388
    goto :goto_2

    .line 392
    :cond_5
    const/4 v10, 0x0

    :goto_2
    array-length v8, v0

    sub-int/2addr v8, v10

    div-int/2addr v8, v5

    .line 393
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 394
    if-gtz v8, :cond_6

    .line 585
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 394
    return v3

    .line 396
    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    .line 397
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v10

    .line 398
    :try_start_1
    aget-byte v15, v0, v14

    and-int/2addr v15, v11

    .line 399
    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v0, v14

    and-int/2addr v14, v11

    .line 400
    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v14, v15

    .line 401
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    aput v14, v15, v13

    .line 402
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    aput v14, v15, v13

    .line 396
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 404
    :cond_7
    sget-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    sput-wide v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 405
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    add-int/2addr v0, v12

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 408
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    if-nez v0, :cond_8

    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    const/16 v8, 0xf

    if-lt v0, v8, :cond_8

    .line 409
    sput-boolean v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 410
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 414
    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_a

    .line 415
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

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 419
    :cond_a
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v6, :cond_1f

    .line 420
    mul-int v8, v0, v4

    .line 421
    if-lt v0, v5, :cond_1d

    add-int/lit8 v10, v6, -0x2

    if-lt v0, v10, :cond_b

    move/from16 v20, v0

    move/from16 p0, v8

    const/16 v18, 0x3

    const/16 v19, 0x1

    goto/16 :goto_c

    .line 428
    :cond_b
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    sget-object v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v13, v13, v8

    aput v13, v10, v8

    .line 429
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v8, 0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 430
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v13, v8, v4

    add-int/lit8 v14, v13, -0x2

    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v15, v15, v14

    aput v15, v10, v14

    .line 431
    sget-object v10, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int/lit8 v13, v13, -0x1

    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    aput v14, v10, v13

    .line 433
    const/4 v10, 0x2

    :goto_7
    add-int/lit8 v13, v4, -0x2

    if-ge v10, v13, :cond_1c

    .line 434
    add-int v13, v8, v10

    .line 435
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v14, v14, v13

    .line 437
    sget-object v15, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    sub-int v16, v13, v4

    add-int/lit8 v17, v16, -0x1

    aget v15, v15, v17

    .line 438
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v5, v17, v16

    .line 439
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v16, v16, 0x1

    const/16 v18, 0x3

    aget v9, v17, v16

    .line 440
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, -0x1

    aget v11, v16, v17

    .line 441
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v13, 0x1

    const/16 v19, 0x1

    aget v12, v16, v17

    .line 442
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int v17, v13, v4

    add-int/lit8 v20, v17, -0x1

    aget v3, v16, v20

    .line 443
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    move/from16 v20, v0

    aget v0, v16, v17

    .line 444
    sget-object v16, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    add-int/lit8 v17, v17, 0x1

    move/from16 p0, v8

    aget v8, v16, v17

    .line 446
    nop

    .line 447
    move/from16 v16, v10

    if-ge v5, v15, :cond_c

    move v10, v5

    goto :goto_8

    :cond_c
    move v10, v15

    .line 448
    :goto_8
    if-ge v9, v10, :cond_d

    move v10, v9

    .line 449
    :cond_d
    if-ge v11, v10, :cond_e

    move v10, v11

    .line 450
    :cond_e
    if-ge v12, v10, :cond_f

    move v10, v12

    .line 451
    :cond_f
    if-ge v3, v10, :cond_10

    move v10, v3

    .line 452
    :cond_10
    if-ge v0, v10, :cond_11

    move v10, v0

    .line 453
    :cond_11
    if-ge v8, v10, :cond_12

    move v10, v8

    .line 455
    :cond_12
    nop

    .line 456
    move/from16 v17, v5

    if-le v5, v15, :cond_13

    goto :goto_9

    :cond_13
    move v5, v15

    .line 457
    :goto_9
    if-le v9, v5, :cond_14

    move v5, v9

    .line 458
    :cond_14
    if-le v11, v5, :cond_15

    move v5, v11

    .line 459
    :cond_15
    if-le v12, v5, :cond_16

    move v5, v12

    .line 460
    :cond_16
    if-le v3, v5, :cond_17

    move v5, v3

    .line 461
    :cond_17
    if-le v0, v5, :cond_18

    move v5, v0

    .line 462
    :cond_18
    if-le v8, v5, :cond_19

    move v5, v8

    .line 464
    :cond_19
    add-int v15, v15, v17

    add-int/2addr v15, v9

    add-int/2addr v15, v11

    add-int/2addr v15, v12

    add-int/2addr v15, v3

    add-int/2addr v15, v0

    add-int/2addr v15, v8

    shr-int/lit8 v0, v15, 0x3

    .line 467
    add-int/lit16 v5, v5, 0xfa

    if-gt v14, v5, :cond_1b

    add-int/lit16 v10, v10, -0xfa

    if-ge v14, v10, :cond_1a

    goto :goto_a

    .line 470
    :cond_1a
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v14, v0, v13

    goto :goto_b

    .line 468
    :cond_1b
    :goto_a
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aput v0, v3, v13

    .line 433
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

    .line 421
    :cond_1d
    move/from16 v20, v0

    move/from16 p0, v8

    const/16 v18, 0x3

    const/16 v19, 0x1

    .line 422
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_1e

    .line 423
    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    add-int v8, p0, v0

    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    aget v5, v5, v8

    aput v5, v3, v8

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 425
    :cond_1e
    nop

    .line 419
    :goto_e
    add-int/lit8 v0, v20, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/16 v11, 0xff

    const/4 v12, 0x1

    goto/16 :goto_6

    .line 478
    :cond_1f
    const/16 v19, 0x1

    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_20

    .line 480
    :try_start_2
    const-string v0, "user_manual_temp_offset"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 481
    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sOffsetLoaded:Z

    .line 482
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

    .line 483
    :catchall_0
    move-exception v0

    :goto_f
    nop

    .line 485
    :cond_20
    :try_start_3
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_21

    .line 487
    :try_start_4
    const-string v0, "flipMode"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 488
    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipLoaded:Z

    .line 489
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

    goto :goto_10

    .line 490
    :catchall_1
    move-exception v0

    :goto_10
    nop

    .line 493
    :cond_21
    const/16 v0, 0x1388

    if-le v1, v0, :cond_22

    const v0, 0x186a0

    if-ge v1, v0, :cond_22

    move v0, v1

    goto :goto_11

    :cond_22
    const/16 v0, 0x6d60

    .line 494
    :goto_11
    nop

    .line 495
    add-int/lit8 v1, v0, 0x0

    :try_start_5
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    add-int/2addr v1, v3

    .line 497
    const/4 v3, 0x0

    :goto_12
    const-wide/16 v8, 0xa

    const-wide/16 v10, 0x4b

    if-ge v3, v7, :cond_23

    .line 498
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    sget-object v12, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v12, v12, v3

    int-to-long v12, v12

    mul-long v12, v12, v10

    div-long/2addr v12, v8

    long-to-int v8, v12

    add-int/2addr v8, v1

    aput v8, v5, v3

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 502
    :cond_23
    nop

    .line 503
    nop

    .line 504
    nop

    .line 505
    div-int/lit8 v3, v6, 0x2

    mul-int v3, v3, v4

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    .line 506
    nop

    .line 508
    nop

    .line 509
    nop

    .line 510
    nop

    .line 512
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

    :goto_13
    move-wide/from16 v22, v10

    add-int/lit8 v10, v6, -0x4

    if-ge v5, v10, :cond_27

    .line 513
    mul-int v10, v5, v4

    .line 514
    move/from16 v20, v1

    move/from16 v11, v16

    move/from16 v1, v17

    move/from16 v16, v3

    const/4 v3, 0x4

    :goto_14
    move/from16 v24, v5

    add-int/lit8 v5, v4, -0x4

    if-ge v3, v5, :cond_26

    .line 515
    add-int v5, v10, v3

    .line 516
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    move/from16 v25, v3

    aget v3, v17, v5

    .line 517
    if-ge v3, v11, :cond_24

    .line 518
    nop

    .line 519
    move v11, v3

    move/from16 v16, v5

    .line 521
    :cond_24
    if-le v3, v1, :cond_25

    .line 522
    nop

    .line 523
    move v1, v3

    move v12, v5

    .line 525
    :cond_25
    move-wide/from16 v26, v8

    int-to-long v8, v3

    add-long/2addr v13, v8

    .line 526
    mul-long v8, v8, v8

    add-long v8, v26, v8

    .line 527
    add-int/lit8 v15, v15, 0x1

    .line 514
    add-int/lit8 v3, v25, 0x1

    move/from16 v5, v24

    goto :goto_14

    .line 512
    :cond_26
    move-wide/from16 v26, v8

    add-int/lit8 v5, v24, 0x1

    move/from16 v17, v1

    move/from16 v3, v16

    move/from16 v1, v20

    move/from16 v16, v11

    move-wide/from16 v10, v22

    goto :goto_13

    .line 531
    :cond_27
    move/from16 v20, v1

    if-gtz v15, :cond_28

    .line 532
    nop

    .line 533
    nop

    .line 534
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x1

    goto :goto_15

    .line 531
    :cond_28
    move/from16 v1, v16

    move/from16 v5, v17

    .line 537
    :goto_15
    long-to-double v10, v13

    int-to-double v13, v15

    div-double/2addr v10, v13

    .line 538
    long-to-double v8, v8

    div-double/2addr v8, v13

    mul-double v13, v10, v10

    sub-double/2addr v8, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 539
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 542
    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    mul-double v13, v13, v8

    move-wide v15, v8

    sub-double v8, v10, v13

    double-to-int v8, v8

    .line 543
    add-double/2addr v13, v10

    double-to-int v9, v13

    .line 544
    sub-int/2addr v9, v8

    const/4 v13, 0x1

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 546
    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    if-ltz v13, :cond_29

    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    const/16 v14, 0xc

    if-ge v13, v14, :cond_29

    sget v13, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    goto :goto_16

    :cond_29
    const/4 v13, 0x2

    .line 547
    :goto_16
    sget-object v14, Lcn/com/magnity/magnitycx/sdk/DeviceController;->PALETTES:[[I

    aget-object v13, v14, v13

    .line 549
    const/4 v14, 0x0

    :goto_17
    if-ge v14, v7, :cond_2c

    .line 550
    sget-object v17, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    aget v17, v17, v14

    .line 551
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

    .line 552
    if-gez v3, :cond_2a

    const/4 v3, 0x0

    const/16 v7, 0xff

    goto :goto_18

    .line 553
    :cond_2a
    const/16 v7, 0xff

    if-le v3, v7, :cond_2b

    const/16 v3, 0xff

    .line 554
    :cond_2b
    :goto_18
    sget-object v8, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    aget v3, v13, v3

    aput v3, v8, v14

    .line 549
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p2

    move/from16 v7, v17

    move/from16 v8, v18

    goto :goto_17

    .line 558
    :cond_2c
    move/from16 p2, v3

    sget-object v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v1

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v1, v7

    add-int v1, v20, v1

    iput v1, v3, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    .line 559
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    int-to-long v7, v5

    mul-long v7, v7, v22

    div-long v7, v7, p0

    long-to-int v3, v7

    add-int v3, v20, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    .line 560
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const-wide/high16 v7, 0x401e000000000000L    # 7.5

    mul-double v10, v10, v7

    double-to-int v3, v10

    add-int v3, v20, v3

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveTemperature:I

    .line 562
    rem-int v3, p2, v4

    div-int v1, p2, v4

    invoke-static {v3, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v1

    .line 563
    rem-int v3, v12, v4

    div-int/2addr v12, v4

    invoke-static {v3, v12}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object v3

    .line 565
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x0

    aget v9, v1, v21

    iput v9, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinX:I

    .line 566
    sget-object v5, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v19, 0x1

    aget v1, v1, v19

    iput v1, v5, Lcn/com/magnity/magnitycx/sdk/State;->intMinY:I

    .line 567
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v21, 0x0

    aget v5, v3, v21

    iput v5, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    .line 568
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v19, 0x1

    aget v3, v3, v19

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    .line 569
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    mul-double v8, v15, v7

    double-to-int v3, v8

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intSTDTemperature:I

    .line 570
    sget-object v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    const/16 v3, 0x32

    iput v3, v1, Lcn/com/magnity/magnitycx/sdk/State;->intAveNETDt:I

    .line 572
    const/16 v19, 0x1

    sput-boolean v19, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 575
    sget-wide v9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x7d0

    cmp-long v1, v9, v11

    if-lez v1, :cond_2d

    .line 576
    sput-wide v7, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLastLogTime:J

    .line 577
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

    .line 580
    :cond_2d
    nop

    .line 585
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 580
    const/16 v19, 0x1

    return v19

    .line 581
    :catchall_2
    move-exception v0

    .line 582
    :try_start_6
    const-string v1, "pushFrame error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 583
    nop

    .line 585
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 583
    const/16 v21, 0x0

    return v21

    .line 585
    :catchall_3
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 586
    throw v0

    .line 367
    :cond_2e
    :goto_19
    const/16 v21, 0x0

    return v21
.end method

.method public static resetCalibration(Landroid/content/Context;)V
    .locals 2

    .line 978
    const/4 v0, 0x0

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sManualTempOffset:I

    .line 980
    :try_start_0
    const-string v1, "user_manual_temp_offset"

    invoke-static {v1, v0}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 982
    if-eqz p0, :cond_0

    .line 984
    :try_start_1
    const-string v1, "\u6eab\u5ea6\u6821\u6e96\u5df2\u91cd\u7f6e (0.0\u00b0C)"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 985
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 987
    :cond_0
    return-void
.end method

.method public static saveDDT(Ljava/lang/String;)Z
    .locals 0

    .line 782
    const/4 p0, 0x1

    return p0
.end method

.method public static screenXY2ClientXY(IIII)[I
    .locals 6

    .line 737
    const/4 v0, 0x0

    if-lez p2, :cond_9

    if-gtz p3, :cond_0

    goto :goto_7

    .line 738
    :cond_0
    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    if-lez v1, :cond_1

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    .line 739
    :goto_0
    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    if-lez v2, :cond_2

    sget v2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    .line 742
    :goto_1
    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_4

    sget v3, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 746
    :cond_3
    mul-int p0, p0, v1

    div-int/2addr p0, p2

    .line 747
    mul-int p1, p1, v2

    div-int/2addr p1, p3

    goto :goto_3

    .line 743
    :cond_4
    :goto_2
    mul-int p0, p0, v2

    div-int/2addr p0, p2

    .line 744
    mul-int p1, p1, v1

    div-int/2addr p1, p3

    .line 749
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

    .line 750
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

    .line 751
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 737
    :cond_9
    :goto_7
    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static screenXY2SensorXY(IIII)[I
    .locals 0

    .line 760
    invoke-static {p0, p1, p2, p3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object p0

    .line 761
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

    .line 755
    invoke-static {p0, p1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->buffer2ClientXY(II)[I

    move-result-object p0

    .line 756
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

    .line 796
    return-void
.end method

.method public static setColorPalette(I)V
    .locals 1

    .line 159
    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 160
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 162
    :cond_0
    return-void
.end method

.method public static setColorbarSize(II)V
    .locals 0

    .line 165
    if-lez p0, :cond_0

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarWidth:I

    .line 166
    :cond_0
    if-lez p1, :cond_1

    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sColorbarHeight:I

    .line 167
    :cond_1
    return-void
.end method

.method public static setEX(III)V
    .locals 0

    .line 790
    return-void
.end method

.method public static setEmissivity(II)V
    .locals 0

    .line 793
    return-void
.end method

.method public static setExtParameter(Lcn/com/magnity/magnitycx/sdk/ExtPara;)V
    .locals 1

    .line 811
    if-eqz p0, :cond_0

    .line 812
    iget p0, p0, Lcn/com/magnity/magnitycx/sdk/ExtPara;->dwFlip:I

    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 813
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

    .line 815
    :cond_0
    return-void
.end method

.method public static setPreviewOrientation(I)V
    .locals 0

    .line 151
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPreviewOrientation:I

    .line 152
    return-void
.end method

.method public static showCalibrationDialog(Landroid/app/Activity;)V
    .locals 1

    .line 990
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/sdk/DeviceController$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1039
    return-void

    .line 990
    :cond_1
    :goto_0
    return-void
.end method

.method public static startProcess(Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;IIIIIIIIIILjava/lang/String;)Z
    .locals 0

    .line 94
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 96
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

    .line 97
    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sShutterCallBack:Lcn/com/magnity/magnitycx/sdk/DeviceController$ShutterCallBack;

    .line 98
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 99
    sput p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    .line 100
    sput p2, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    .line 102
    :cond_0
    if-ltz p9, :cond_1

    const/16 p0, 0xc

    if-ge p9, p0, :cond_1

    .line 103
    sput p9, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPaletteIndex:I

    .line 106
    :cond_1
    sget p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaWidth:I

    sget p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFpaHeight:I

    mul-int p0, p0, p1

    .line 107
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sRawAD:[I

    .line 108
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sLatestRawAD:[I

    .line 109
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sBaseline:[I

    .line 110
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sDiff:[I

    .line 111
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFilteredDiff:[I

    .line 112
    new-array p1, p0, [I

    sput-object p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sPixelTemps:[I

    .line 113
    new-array p0, p0, [I

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sArgbPixels:[I

    .line 114
    new-instance p0, Lcn/com/magnity/magnitycx/sdk/State;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/State;-><init>()V

    sput-object p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sState:Lcn/com/magnity/magnitycx/sdk/State;

    .line 116
    const/4 p0, 0x0

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasBaseline:Z

    .line 117
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sAutoFfcDone:Z

    .line 118
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    .line 119
    sput p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameCount:I

    .line 120
    const-wide/16 p1, 0x0

    sput-wide p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFrameSeq:J

    .line 122
    const/4 p1, 0x1

    sput-boolean p1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 123
    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    nop

    .line 127
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 125
    return p1

    .line 127
    :catchall_0
    move-exception p0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 128
    throw p0
.end method

.method public static startRecording(Ljava/lang/String;IIIII)Z
    .locals 0

    .line 765
    const/4 p0, 0x1

    sput-boolean p0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 766
    return p0
.end method

.method public static stopProcess()V
    .locals 1

    .line 132
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 134
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsProcessing:Z

    .line 135
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sHasFrame:Z

    .line 136
    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 139
    throw v0
.end method

.method public static stopRecording()V
    .locals 1

    .line 770
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsRecording:Z

    .line 771
    return-void
.end method

.method public static toggleHorizontalFlip(Landroid/content/Context;)V
    .locals 2

    .line 1041
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    xor-int/lit8 v0, v0, 0x1

    sput v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    .line 1043
    :try_start_0
    const-string v0, "flipMode"

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1044
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 1046
    :try_start_1
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    sget v1, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    iput v1, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1047
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 1048
    if-eqz p0, :cond_1

    .line 1049
    sget v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sFlipMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u958b\u555f\u6c34\u5e73\u7ffb\u8f49 (\u5de6\u53f3\u93e1\u50cf\u4fee\u6b63)"

    goto :goto_2

    :cond_0
    const-string v0, "\u5df2\u95dc\u9589\u6c34\u5e73\u7ffb\u8f49"

    .line 1051
    :goto_2
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 1052
    :catchall_2
    move-exception p0

    :goto_3
    nop

    .line 1054
    :cond_1
    return-void
.end method

.method public static triggerFFC()V
    .locals 3

    .line 276
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sIsCalibrating:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "DeviceController"

    const-string v1, "FFC already in progress, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;

    invoke-direct {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController$1;-><init>()V

    const-string v2, "FFC-Worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 292
    return-void
.end method
