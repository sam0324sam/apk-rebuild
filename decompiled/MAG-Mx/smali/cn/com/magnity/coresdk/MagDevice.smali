.class public Lcn/com/magnity/coresdk/MagDevice;
.super Ljava/lang/Object;
.source "MagDevice.java"

# interfaces
.implements Lcn/com/magnity/coresdk/MagUsb$IUSBCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/coresdk/MagDevice$IStitchingCallback;,
        Lcn/com/magnity/coresdk/MagDevice$IPrepareTransferCallback;,
        Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;,
        Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;,
        Lcn/com/magnity/coresdk/MagDevice$BodyTempConvertMode;,
        Lcn/com/magnity/coresdk/MagDevice$ElectronicZoom;,
        Lcn/com/magnity/coresdk/MagDevice$ColorPalette;
    }
.end annotation


# static fields
.field public static final CONN_DETACHED:I = -0x2

.field public static final CONN_FAIL:I = -0x1

.field public static final CONN_PENDING:I = 0x0

.field public static final CONN_SUCC:I = 0x1

.field public static final PREPARE_FAILED:I = -0x1

.field public static final PREPARE_PENDING:I = 0x1

.field public static final PREPARE_SUCC:I


# instance fields
.field private mChannel:I

.field private mContext:Landroid/content/Context;

.field private mHadler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mUsb:Lcn/com/magnity/coresdk/MagUsb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 912
    const-string v0, "coresdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    return-void
.end method

.method private native ConvertVisCorr2IrCorr(IIIIIII[I)Z
.end method

.method private native DislinkCamera(I)V
.end method

.method private native EstimateUnderArmTempFromForeheadRect(IIIII)I
.end method

.method private native FindDetectTarget(I[BII[Lcn/com/magnity/coresdk/types/JRect;)I
.end method

.method private native FixTemperature(IIFI)I
.end method

.method private native FixTemperature(IIFII)I
.end method

.method private native GetCameraInfo(ILcn/com/magnity/coresdk/types/CameraInfo;)Z
.end method

.method private native GetCameraTemperature(I)I
.end method

.method private native GetCurrentCameraInnerTemperature(I)I
.end method

.method private native GetDetectSuggestedParameter(ILcn/com/magnity/coresdk/types/FilterPara;)Z
.end method

.method private native GetEXLevel(I)I
.end method

.method private native GetEllipseTemperatureInfo(IIIII[I)Z
.end method

.method private native GetEstimateUnderArmTempMode(I)I
.end method

.method private native GetEstimatedEnvTemp(I)I
.end method

.method private native GetFixPara(ILcn/com/magnity/coresdk/types/CorrectionPara;)Z
.end method

.method private native GetFrameStatisticalData(ILcn/com/magnity/coresdk/types/StatisticInfo;)Z
.end method

.method private native GetLineTemperatureInfo(IIIII[I)Z
.end method

.method private native GetOutputColorBarImage(I)Landroid/graphics/Bitmap;
.end method

.method private native GetOutputColorBarRGBAData(I[II)Z
.end method

.method private native GetOutputGrayData(I[B)Z
.end method

.method private native GetOutputImage(I)Landroid/graphics/Bitmap;
.end method

.method private native GetOutputImage2(I)Landroid/graphics/Bitmap;
.end method

.method private native GetOutputRGBAData(I[II)Z
.end method

.method private native GetOutputRawData(I[S)Z
.end method

.method private native GetOutputYUVData(I[BI)Z
.end method

.method private native GetRectTemperatureInfo(IIIII[I)Z
.end method

.method private native GetRemoteInfo(ILcn/com/magnity/coresdk/types/RemoteInfo;)Z
.end method

.method private native GetRgnTemperatureInfo(I[I[I)Z
.end method

.method private native GetSenorTemperature(I)I
.end method

.method private native GetTemperatureData(I[IZZ)Z
.end method

.method private native GetTemperatureProbe(III)I
.end method

.method private native GetTemperatureProbe(IIII)I
.end method

.method private static native Init(Ljava/lang/String;)Z
.end method

.method private native IsLinked(I)Z
.end method

.method private native IsPause(I)Z
.end method

.method private native IsProcessingImage(I)Z
.end method

.method private native LinkCamera(I)I
.end method

.method private native LoadBufferedDDT(II[BLcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)I
.end method

.method private native LoadDDT(Ljava/lang/String;IILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)I
.end method

.method private native Lock(I)V
.end method

.method private native Pause(I)V
.end method

.method private native PrepareProcessImage(ILcn/com/magnity/coresdk/MagDevice$IPrepareTransferCallback;)I
.end method

.method private native Resume(I)V
.end method

.method private native SaveBMP(IILjava/lang/String;)Z
.end method

.method private native SaveDDT(ILjava/lang/String;)Z
.end method

.method private native SaveDDT2Buffer(I[B)I
.end method

.method private native SetAutoEnlargePara(IIII)V
.end method

.method private native SetColorPalette(II)V
.end method

.method private native SetDetailEnhancement(IIZ)V
.end method

.method private native SetDetectMaskPoints(I[I)Z
.end method

.method private native SetDetectParameter(ILcn/com/magnity/coresdk/types/FilterPara;)Z
.end method

.method private native SetEXLevel(IIII)V
.end method

.method private native SetEnvTempEstimateMode(III)I
.end method

.method private native SetEstimateUnderArmTempMode(II)I
.end method

.method private native SetFFCMode(IZ)Z
.end method

.method private static native SetFilter(I)V
.end method

.method private native SetFixPara(ILcn/com/magnity/coresdk/types/CorrectionPara;)F
.end method

.method private native SetImageTransform(III)Z
.end method

.method private native SetIoAlarmState(IZ)Z
.end method

.method private native SetIsothermalPara(III)V
.end method

.method private native SetSubsectionEnlargePara(IIIII)Z
.end method

.method private native StartProcessImage(ILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;II)Z
.end method

.method private native StartProcessImage_v2(ILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;IIII)Z
.end method

.method private native StartStitching(IIIIILcn/com/magnity/coresdk/MagDevice$IStitchingCallback;)Z
.end method

.method private native StopProcessImage(I)V
.end method

.method private native StopStitching(IZ)V
.end method

.method private native TriggerFFC(I)Z
.end method

.method private native TriggerStitching(I)Z
.end method

.method private native UnloadDDT(I)V
.end method

.method private native Unlock(I)V
.end method

.method public static blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
    .locals 1
    .param p0, "dst"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "alpha"    # I

    .prologue
    .line 644
    invoke-static {p0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->nativeBlendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "dst"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 640
    invoke-static {p0, p1}, Lcn/com/magnity/coresdk/MagDevice;->nativeCopyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static getDevices(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/coresdk/types/EnumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p3, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/coresdk/types/EnumInfo;>;"
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 119
    :cond_0
    return-void

    .line 99
    :cond_1
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 100
    .local v4, "usbMgr":Landroid/hardware/usb/UsbManager;
    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 108
    :cond_2
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 110
    .local v1, "devList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 112
    .local v0, "dev":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    if-ne v6, p1, :cond_3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    if-ne v6, p2, :cond_3

    .line 113
    new-instance v3, Lcn/com/magnity/coresdk/types/EnumInfo;

    invoke-direct {v3}, Lcn/com/magnity/coresdk/types/EnumInfo;-><init>()V

    .line 114
    .local v3, "info":Lcn/com/magnity/coresdk/types/EnumInfo;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcn/com/magnity/coresdk/types/EnumInfo;->name:Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    iput v6, v3, Lcn/com/magnity/coresdk/types/EnumInfo;->id:I

    .line 116
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/coresdk/MagDevice;->Init(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private native isStitching(I)Z
.end method

.method private static native nativeBlendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
.end method

.method private static native nativeCopyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method private static native nativeLoadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z
.end method

.method private static native nativeSaveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z
.end method

.method private postResult(Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;I)V
    .locals 4
    .param p1, "cb"    # Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;
    .param p2, "result"    # I

    .prologue
    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mHadler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcn/com/magnity/coresdk/MagDevice$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice$1;-><init>(Lcn/com/magnity/coresdk/MagDevice;Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;I)V

    iput-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mRunnable:Ljava/lang/Runnable;

    .line 184
    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mHadler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method public static setFilter(I)V
    .locals 0
    .param p0, "filter"    # I

    .prologue
    .line 136
    invoke-static {p0}, Lcn/com/magnity/coresdk/MagDevice;->SetFilter(I)V

    .line 137
    return-void
.end method


# virtual methods
.method public convertVisCorr2IrCorr(IIIIII[I)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "horOffset"    # I
    .param p4, "verOffset"    # I
    .param p5, "faceWidth"    # I
    .param p6, "faceHeight"    # I
    .param p7, "xy"    # [I

    .prologue
    .line 744
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 745
    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/com/magnity/coresdk/MagDevice;->ConvertVisCorr2IrCorr(IIIIIII[I)Z

    move-result v0

    goto :goto_0
.end method

.method public dislinkCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_1

    .line 218
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->IsProcessingImage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->StopProcessImage(I)V

    .line 221
    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->DislinkCamera(I)V

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    .line 224
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mUsb:Lcn/com/magnity/coresdk/MagUsb;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mUsb:Lcn/com/magnity/coresdk/MagUsb;

    iget-object v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/com/magnity/coresdk/MagUsb;->exit(Landroid/content/Context;)V

    .line 226
    iput-object v2, p0, Lcn/com/magnity/coresdk/MagDevice;->mUsb:Lcn/com/magnity/coresdk/MagUsb;

    .line 229
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mHadler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mHadler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iput-object v2, p0, Lcn/com/magnity/coresdk/MagDevice;->mHadler:Landroid/os/Handler;

    .line 232
    iput-object v2, p0, Lcn/com/magnity/coresdk/MagDevice;->mRunnable:Ljava/lang/Runnable;

    .line 235
    :cond_3
    iput-object v2, p0, Lcn/com/magnity/coresdk/MagDevice;->mContext:Landroid/content/Context;

    .line 236
    return-void
.end method

.method public estimateUnderArmTempFromForeheadRect(IIII)I
    .locals 6
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 709
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 712
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->EstimateUnderArmTempFromForeheadRect(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method public findDetectTarget([BII[Lcn/com/magnity/coresdk/types/JRect;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "regions"    # [Lcn/com/magnity/coresdk/types/JRect;

    .prologue
    .line 701
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 702
    const/4 v0, -0x1

    .line 704
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->FindDetectTarget(I[BII[Lcn/com/magnity/coresdk/types/JRect;)I

    move-result v0

    goto :goto_0
.end method

.method public fixTemperature(IFI)I
    .locals 1
    .param p1, "t"    # I
    .param p2, "emissivity"    # F
    .param p3, "pos"    # I

    .prologue
    .line 490
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 493
    .end local p1    # "t":I
    :goto_0
    return p1

    .restart local p1    # "t":I
    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->FixTemperature(IIFI)I

    move-result p1

    goto :goto_0
.end method

.method public fixTemperature(IFII)I
    .locals 6
    .param p1, "t"    # I
    .param p2, "emissivity"    # F
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 483
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 486
    .end local p1    # "t":I
    :goto_0
    return p1

    .restart local p1    # "t":I
    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->FixTemperature(IIFII)I

    move-result p1

    goto :goto_0
.end method

.method public getCameraInfo(Lcn/com/magnity/coresdk/types/CameraInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/com/magnity/coresdk/types/CameraInfo;

    .prologue
    .line 312
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-ltz v0, :cond_0

    if-nez p1, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->GetCameraInfo(ILcn/com/magnity/coresdk/types/CameraInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCameraTemperature()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 627
    const/high16 v0, -0x80000000

    .line 629
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetCameraTemperature(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentCameraInnerTemperature()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 620
    const/high16 v0, -0x80000000

    .line 622
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetCurrentCameraInnerTemperature(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDetectSuggestedParameter(Lcn/com/magnity/coresdk/types/FilterPara;)Z
    .locals 1
    .param p1, "filterPara"    # Lcn/com/magnity/coresdk/types/FilterPara;

    .prologue
    .line 687
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 690
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->GetDetectSuggestedParameter(ILcn/com/magnity/coresdk/types/FilterPara;)Z

    move-result v0

    goto :goto_0
.end method

.method public getEllipseTemperatureInfo(IIII[I)Z
    .locals 7
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "info"    # [I

    .prologue
    .line 525
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/coresdk/MagDevice;->GetEllipseTemperatureInfo(IIIII[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getEstimateUnderArmTempMode()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 724
    const/4 v0, 0x0

    .line 726
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetEstimateUnderArmTempMode(I)I

    move-result v0

    goto :goto_0
.end method

.method public getEstimatedEnvTemp()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 733
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetEstimatedEnvTemp(I)I

    move-result v0

    goto :goto_0
.end method

.method public getExLevel()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetEXLevel(I)I

    move-result v0

    goto :goto_0
.end method

.method public getFixPara(Lcn/com/magnity/coresdk/types/CorrectionPara;)Z
    .locals 1
    .param p1, "para"    # Lcn/com/magnity/coresdk/types/CorrectionPara;

    .prologue
    .line 392
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-ltz v0, :cond_0

    if-nez p1, :cond_1

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->GetFixPara(ILcn/com/magnity/coresdk/types/CorrectionPara;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFrameStatisticInfo(Lcn/com/magnity/coresdk/types/StatisticInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/com/magnity/coresdk/types/StatisticInfo;

    .prologue
    .line 462
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-ltz v0, :cond_0

    if-nez p1, :cond_1

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->GetFrameStatisticalData(ILcn/com/magnity/coresdk/types/StatisticInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getLineTemperatureInfo(IIII[I)Z
    .locals 7
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "info"    # [I

    .prologue
    .line 511
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 512
    const/4 v0, 0x0

    .line 514
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/coresdk/MagDevice;->GetLineTemperatureInfo(IIIII[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputColorBarImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputColorBarImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputColorBarRGBA([I)Z
    .locals 2
    .param p1, "data"    # [I

    .prologue
    const/4 v0, 0x0

    .line 448
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v1, :cond_0

    .line 451
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v1, p1, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputColorBarRGBAData(I[II)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputGrayData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 427
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputGrayData(I[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputImage2()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputImage2(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputRGBAData([I)Z
    .locals 2
    .param p1, "data"    # [I

    .prologue
    const/4 v0, 0x0

    .line 420
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v1, :cond_0

    .line 423
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v1, p1, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputRGBAData(I[II)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputRawData([S)Z
    .locals 1
    .param p1, "data"    # [S

    .prologue
    .line 455
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputRawData(I[S)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputYUVData([BI)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "format"    # I

    .prologue
    .line 434
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->GetOutputYUVData(I[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public getRectTemperatureInfo(IIII[I)Z
    .locals 7
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "info"    # [I

    .prologue
    .line 518
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/coresdk/MagDevice;->GetRectTemperatureInfo(IIIII[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getRemoteInfo(Lcn/com/magnity/coresdk/types/RemoteInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/com/magnity/coresdk/types/RemoteInfo;

    .prologue
    .line 469
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-ltz v0, :cond_0

    if-nez p1, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x0

    .line 472
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->GetRemoteInfo(ILcn/com/magnity/coresdk/types/RemoteInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRgnTemperatureInfo([I[I)Z
    .locals 1
    .param p1, "pos"    # [I
    .param p2, "info"    # [I

    .prologue
    .line 532
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->GetRgnTemperatureInfo(I[I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getSenorTemperature()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 634
    const/high16 v0, -0x80000000

    .line 636
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->GetSenorTemperature(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTemperatureData([IZZ)Z
    .locals 1
    .param p1, "temp"    # [I
    .param p2, "accurate"    # Z
    .param p3, "enableCorrect"    # Z

    .prologue
    .line 476
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->GetTemperatureData(I[IZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public getTemperatureProbe(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .prologue
    .line 504
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 505
    const/high16 v0, -0x80000000

    .line 507
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->GetTemperatureProbe(III)I

    move-result v0

    goto :goto_0
.end method

.method public getTemperatureProbe(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # I

    .prologue
    .line 497
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 498
    const/high16 v0, -0x80000000

    .line 500
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->GetTemperatureProbe(IIII)I

    move-result v0

    goto :goto_0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->IsLinked(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->IsPause(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isProcessingImage()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->IsProcessingImage(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isStitching()Z
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 675
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->isStitching(I)Z

    move-result v0

    goto :goto_0
.end method

.method public linkCamera(Landroid/content/Context;ILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "cb"    # Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 188
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mUsb:Lcn/com/magnity/coresdk/MagUsb;

    if-nez v3, :cond_0

    iget v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mContext:Landroid/content/Context;

    .line 193
    new-instance v3, Lcn/com/magnity/coresdk/MagUsb;

    invoke-direct {v3}, Lcn/com/magnity/coresdk/MagUsb;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mUsb:Lcn/com/magnity/coresdk/MagUsb;

    .line 194
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mUsb:Lcn/com/magnity/coresdk/MagUsb;

    iget-object v4, p0, Lcn/com/magnity/coresdk/MagDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcn/com/magnity/coresdk/MagUsb;->init(Landroid/content/Context;)V

    .line 196
    iget-object v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mUsb:Lcn/com/magnity/coresdk/MagUsb;

    iget-object v4, p0, Lcn/com/magnity/coresdk/MagDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p2, p0, p3}, Lcn/com/magnity/coresdk/MagUsb;->requestPermission(Landroid/content/Context;ILcn/com/magnity/coresdk/MagUsb$IUSBCallback;Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;)I

    move-result v0

    .line 197
    .local v0, "r":I
    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 198
    invoke-virtual {p0}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 199
    invoke-direct {p0, p3, v1}, Lcn/com/magnity/coresdk/MagDevice;->postResult(Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;I)V

    goto :goto_0

    .line 201
    :cond_2
    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    .line 202
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :cond_3
    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->LinkCamera(I)I

    move-result v3

    iput v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    .line 205
    iget v3, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v3, :cond_4

    .line 206
    invoke-virtual {p0}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 207
    invoke-direct {p0, p3, v1}, Lcn/com/magnity/coresdk/MagDevice;->postResult(Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;I)V

    goto :goto_0

    .line 210
    :cond_4
    invoke-direct {p0, p3, v2}, Lcn/com/magnity/coresdk/MagDevice;->postResult(Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;I)V

    move v1, v2

    .line 211
    goto :goto_0
.end method

.method public loadBufferedDDT(II[BLcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)Z
    .locals 2
    .param p1, "colorbarWidth"    # I
    .param p2, "colorbarHeight"    # I
    .param p3, "buffer"    # [B
    .param p4, "cb"    # Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;
    .param p5, "para"    # Lcn/com/magnity/coresdk/types/DDTPara;

    .prologue
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0}, Lcn/com/magnity/coresdk/MagDevice;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcn/com/magnity/coresdk/MagDevice;->LoadBufferedDDT(II[BLcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    .line 565
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-ltz v1, :cond_0

    .line 568
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDDT(Ljava/lang/String;IILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "colorbarWidth"    # I
    .param p3, "colorbarHeight"    # I
    .param p4, "cb"    # Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;
    .param p5, "para"    # Lcn/com/magnity/coresdk/types/DDTPara;

    .prologue
    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0}, Lcn/com/magnity/coresdk/MagDevice;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcn/com/magnity/coresdk/MagDevice;->LoadDDT(Ljava/lang/String;IILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;Lcn/com/magnity/coresdk/types/DDTPara;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    .line 579
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-ltz v1, :cond_0

    .line 582
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mdt"    # Lcn/com/magnity/coresdk/types/MDT;

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->nativeLoadMDT(Ljava/lang/String;Lcn/com/magnity/coresdk/types/MDT;)Z

    move-result v0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 608
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->Lock(I)V

    .line 610
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->Pause(I)V

    goto :goto_0
.end method

.method public prepareProcessImage(Lcn/com/magnity/coresdk/MagDevice$IPrepareTransferCallback;)I
    .locals 1
    .param p1, "cb"    # Lcn/com/magnity/coresdk/MagDevice$IPrepareTransferCallback;

    .prologue
    .line 269
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 270
    const/4 v0, -0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->PrepareProcessImage(ILcn/com/magnity/coresdk/MagDevice$IPrepareTransferCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->Resume(I)V

    goto :goto_0
.end method

.method public saveBMP(ILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 539
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->SaveBMP(IILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveDDT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 546
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SaveDDT(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveDDT2Buffer([B)I
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 553
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 554
    const/4 v0, -0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SaveDDT2Buffer(I[B)I

    move-result v0

    goto :goto_0
.end method

.method public saveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mdt"    # Lcn/com/magnity/coresdk/types/MDT;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    .line 596
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->nativeSaveMDT(Lcn/com/magnity/coresdk/types/MDT;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAutoEnlargePara(III)V
    .locals 1
    .param p1, "range"    # I
    .param p2, "brightness"    # I
    .param p3, "contrast"    # I

    .prologue
    .line 354
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 355
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->SetAutoEnlargePara(IIII)V

    .line 357
    :cond_0
    return-void
.end method

.method public setColorPalette(I)V
    .locals 1
    .param p1, "palette"    # I

    .prologue
    .line 340
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 341
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SetColorPalette(II)V

    .line 343
    :cond_0
    return-void
.end method

.method public setDetailEnhancement(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "simplified"    # Z

    .prologue
    .line 386
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 387
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->SetDetailEnhancement(IIZ)V

    .line 389
    :cond_0
    return-void
.end method

.method public setDetectMaskPoints([I)Z
    .locals 1
    .param p1, "maskPoints"    # [I

    .prologue
    .line 694
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SetDetectMaskPoints(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public setDetectParameter(Lcn/com/magnity/coresdk/types/FilterPara;)Z
    .locals 1
    .param p1, "filterPara"    # Lcn/com/magnity/coresdk/types/FilterPara;

    .prologue
    .line 680
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 683
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SetDetectParameter(ILcn/com/magnity/coresdk/types/FilterPara;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEnvTempEstimateMode(II)I
    .locals 1
    .param p1, "intTempOffset"    # I
    .param p2, "bApplyOffsetSimply"    # I

    .prologue
    .line 737
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 738
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->SetEnvTempEstimateMode(III)I

    move-result v0

    goto :goto_0
.end method

.method public setEstimateUnderArmTempMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 716
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 717
    const/4 v0, 0x0

    .line 719
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SetEstimateUnderArmTempMode(II)I

    move-result v0

    goto :goto_0
.end method

.method public setExLevel(III)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 373
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 374
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->SetEXLevel(IIII)V

    .line 376
    :cond_0
    return-void
.end method

.method public setFFCMode(Z)Z
    .locals 1
    .param p1, "isManual"    # Z

    .prologue
    .line 333
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SetFFCMode(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setFixPara(Lcn/com/magnity/coresdk/types/CorrectionPara;)F
    .locals 1
    .param p1, "para"    # Lcn/com/magnity/coresdk/types/CorrectionPara;

    .prologue
    .line 399
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SetFixPara(ILcn/com/magnity/coresdk/types/CorrectionPara;)F

    move-result v0

    goto :goto_0
.end method

.method public setImageTransform(II)Z
    .locals 1
    .param p1, "flip"    # I
    .param p2, "rotate"    # I

    .prologue
    .line 366
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->SetImageTransform(III)Z

    move-result v0

    goto :goto_0
.end method

.method public setIoAlarmState(Z)Z
    .locals 1
    .param p1, "isAlarm"    # Z

    .prologue
    .line 319
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->SetIoAlarmState(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsothermalPara(II)V
    .locals 1
    .param p1, "temp1"    # I
    .param p2, "temp2"    # I

    .prologue
    .line 360
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 361
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/coresdk/MagDevice;->SetIsothermalPara(III)V

    .line 363
    :cond_0
    return-void
.end method

.method public setSubsectionEnlargePara(IIII)Z
    .locals 6
    .param p1, "temp1"    # I
    .param p2, "temp2"    # I
    .param p3, "gray1"    # I
    .param p4, "gray2"    # I

    .prologue
    .line 346
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/coresdk/MagDevice;->SetSubsectionEnlargePara(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public startProcessImage(Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;II)Z
    .locals 1
    .param p1, "cb"    # Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;
    .param p2, "colorBarW"    # I
    .param p3, "colorBarH"    # I

    .prologue
    .line 251
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/coresdk/MagDevice;->StartProcessImage(ILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;II)Z

    move-result v0

    goto :goto_0
.end method

.method public startProcessImage(Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;IIII)Z
    .locals 7
    .param p1, "cb"    # Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;
    .param p2, "colorBarW"    # I
    .param p3, "colorBarH"    # I
    .param p4, "videoWidth"    # I
    .param p5, "videoHeight"    # I

    .prologue
    .line 258
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/coresdk/MagDevice;->StartProcessImage_v2(ILcn/com/magnity/coresdk/MagDevice$INewFrameCallback;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public startStitching(IIIILcn/com/magnity/coresdk/MagDevice$IStitchingCallback;)Z
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "focusLength"    # I
    .param p4, "pixelSize"    # I
    .param p5, "cb"    # Lcn/com/magnity/coresdk/MagDevice$IStitchingCallback;

    .prologue
    .line 652
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 655
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/coresdk/MagDevice;->StartStitching(IIIIILcn/com/magnity/coresdk/MagDevice$IStitchingCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public stopProcessImage()V
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 277
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->IsProcessingImage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->StopProcessImage(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public stopStitching(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 666
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 667
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/coresdk/MagDevice;->StopStitching(IZ)V

    .line 669
    :cond_0
    return-void
.end method

.method public triggerStitching()Z
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->TriggerStitching(I)Z

    move-result v0

    goto :goto_0
.end method

.method public triggrtFFC()Z
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->TriggerFFC(I)Z

    move-result v0

    goto :goto_0
.end method

.method public unloadDDT()V
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 587
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->UnloadDDT(I)V

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    .line 590
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 614
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/coresdk/MagDevice;->Unlock(I)V

    .line 616
    :cond_0
    return-void
.end method

.method public usbResult(Landroid/content/Context;IILcn/com/magnity/coresdk/MagDevice$ILinkCallback;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "status"    # I
    .param p3, "fd"    # I
    .param p4, "cb"    # Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;

    .prologue
    const/4 v1, -0x1

    .line 145
    packed-switch p2, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 147
    :pswitch_1
    invoke-direct {p0, p3}, Lcn/com/magnity/coresdk/MagDevice;->LinkCamera(I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    .line 148
    iget v0, p0, Lcn/com/magnity/coresdk/MagDevice;->mChannel:I

    if-lez v0, :cond_1

    .line 149
    if-eqz p4, :cond_0

    .line 150
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;->linkResult(I)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 154
    if-eqz p4, :cond_0

    .line 155
    invoke-interface {p4, v1}, Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;->linkResult(I)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-virtual {p0}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 161
    if-eqz p4, :cond_0

    .line 162
    invoke-interface {p4, v1}, Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;->linkResult(I)V

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-virtual {p0}, Lcn/com/magnity/coresdk/MagDevice;->dislinkCamera()V

    .line 167
    if-eqz p4, :cond_0

    .line 168
    const/4 v0, -0x2

    invoke-interface {p4, v0}, Lcn/com/magnity/coresdk/MagDevice$ILinkCallback;->linkResult(I)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
