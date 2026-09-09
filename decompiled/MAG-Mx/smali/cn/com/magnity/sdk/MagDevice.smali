.class public Lcn/com/magnity/sdk/MagDevice;
.super Ljava/lang/Object;
.source "MagDevice.java"

# interfaces
.implements Lcn/com/magnity/sdk/MagUsb$IUSBCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/sdk/MagDevice$decodeThread;,
        Lcn/com/magnity/sdk/MagDevice$IVisibleReconnectCallBack;,
        Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;,
        Lcn/com/magnity/sdk/MagDevice$IObjRecoCallBack;,
        Lcn/com/magnity/sdk/MagDevice$IRectROICallBack;,
        Lcn/com/magnity/sdk/MagDevice$IReconnectCallBack;,
        Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;,
        Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;,
        Lcn/com/magnity/sdk/MagDevice$VideoPixFormat;,
        Lcn/com/magnity/sdk/MagDevice$PTZProtocol;,
        Lcn/com/magnity/sdk/MagDevice$PTZQueryCmd;,
        Lcn/com/magnity/sdk/MagDevice$PTZCmd;,
        Lcn/com/magnity/sdk/MagDevice$ElectronicZoom;,
        Lcn/com/magnity/sdk/MagDevice$AnalogPlot;,
        Lcn/com/magnity/sdk/MagDevice$ColorPalette;,
        Lcn/com/magnity/sdk/MagDevice$StreamType;
    }
.end annotation


# static fields
.field public static final CONN_DETACHED:I = -0x2

.field public static final CONN_FAIL:I = -0x1

.field public static final CONN_PENDING:I = 0x0

.field public static final CONN_SUCC:I = 0x1

.field private static final MAG_DEFAULT_TIMEOUT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "magnity"


# instance fields
.field private mChannel:I

.field private mContext:Landroid/content/Context;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mIsDecoderRunning:Z

.field private mRenderView:Landroid/view/View;

.field private mUsb:Lcn/com/magnity/sdk/MagUsb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2165
    const-string v0, "thermogroupsdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2166
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 1929
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    .line 1931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/sdk/MagDevice;->mIsDecoderRunning:Z

    return-void
.end method

.method private native AutoFocus(I)Z
.end method

.method private native ConvertIrCorr2VisCorr(IIIF[I)Z
.end method

.method private native ConvertVisCorr2IrCorr(IIIF[I)Z
.end method

.method private native DislinkCamera(I)V
.end method

.method private native EstimateUnderArmTempFromForeheadRect(IIIII)I
.end method

.method private native FindDetectTarget(I[BII[Lcn/com/magnity/sdk/types/JRect;)I
.end method

.method private native FixTemperature(IIFI)I
.end method

.method private native FixTemperature(IIFII)I
.end method

.method private native GetCameraInfo(ILcn/com/magnity/sdk/types/CameraInfo;)Z
.end method

.method private native GetCameraInfoEx(ILcn/com/magnity/sdk/types/CameraInfoEx;)Z
.end method

.method private native GetCorrectionPara(ILcn/com/magnity/sdk/types/CorrectionPara;)Z
.end method

.method private native GetDetectSuggestedParameter(ILcn/com/magnity/sdk/types/FilterPara;)Z
.end method

.method private native GetElectronicZoom(I)I
.end method

.method private native GetEllipseTemperatureInfo(IIIII[I)Z
.end method

.method private native GetFrameStatisticalData(ILcn/com/magnity/sdk/types/StatisticInfo;)Z
.end method

.method private static native GetLastError()Ljava/lang/String;
.end method

.method private native GetLineTemperatureInfo(IIIII[I)Z
.end method

.method private native GetOutputColorBarData(I[I)Z
.end method

.method private native GetOutputColorBarImage(I)Landroid/graphics/Bitmap;
.end method

.method private native GetOutputImage(I)Landroid/graphics/Bitmap;
.end method

.method private native GetOutputImageData(I[B)Z
.end method

.method private native GetOutputImageData(I[I)Z
.end method

.method private native GetOutputVideoData(I[I)Z
.end method

.method private native GetOutputVideoImage(I)Landroid/graphics/Bitmap;
.end method

.method private native GetRecentHeartBeat(I)I
.end method

.method private native GetRectTemperatureInfo(IIIII[I)Z
.end method

.method private native GetRemoteInfo(ILcn/com/magnity/sdk/types/RemoteInfo;)Z
.end method

.method private native GetRgnTemperatureInfo(I[I[I)Z
.end method

.method private native GetTemperatureData(I[IZ)Z
.end method

.method private native GetTemperatureData_Raw(I[IZ)Z
.end method

.method private native GetTemperatureProbe(III)I
.end method

.method private native GetTemperatureProbe(IIII)I
.end method

.method private native IsLinked(I)Z
.end method

.method private native IsLocalMgsPlaying(I)Z
.end method

.method private native IsLocalMgsRecording(I)Z
.end method

.method private native IsPause(I)Z
.end method

.method private native IsProcessingImage(I)Z
.end method

.method private native LinkCamera(III)I
.end method

.method private native LinkCamera(Ljava/lang/String;I)I
.end method

.method private native LinkCamera(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method private native LinkCamera(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method private native LoadBufferedDDT(II[BLcn/com/magnity/sdk/MagDevice$IFrameCallBack;Lcn/com/magnity/sdk/types/DDTPara;)I
.end method

.method private native LoadDDT(Ljava/lang/String;IILcn/com/magnity/sdk/MagDevice$IFrameCallBack;Lcn/com/magnity/sdk/types/DDTPara;)I
.end method

.method private native LocalStorageMgsPlay(ILjava/lang/String;)I
.end method

.method private native LocalStorageMgsPopFrame(I)Z
.end method

.method private native LocalStorageMgsRecord(ILjava/lang/String;I)Z
.end method

.method private native LocalStorageMgsSeekFrame(II)Z
.end method

.method private native LocalStorageMgsStop(I)V
.end method

.method private native Lock(I)V
.end method

.method private native Pause(I)V
.end method

.method private native QueryPTZState(III)I
.end method

.method private native ResetCamera(I)Z
.end method

.method private native Resume(I)V
.end method

.method private native SDStorageAviStart(I)Z
.end method

.method private native SDStorageAviStop(I)Z
.end method

.method private native SDStorageBMP(I)Z
.end method

.method private native SDStorageMGSStart(I)Z
.end method

.method private native SDStorageMGSStop(I)Z
.end method

.method private native SDStorageMGT(I)Z
.end method

.method private native SaveBMP(IILjava/lang/String;)Z
.end method

.method private native SaveDDT(ILjava/lang/String;)Z
.end method

.method private native SaveDDT2Buffer(I[B)I
.end method

.method private native SaveMGT(ILjava/lang/String;)Z
.end method

.method private native SetAutoEnlargePara(IIII)V
.end method

.method private native SetColorPalette(II)V
.end method

.method private native SetCorrectionPara(ILcn/com/magnity/sdk/types/CorrectionPara;Z)F
.end method

.method private native SetDetailEnhancement(IIZ)V
.end method

.method private native SetDetectMaskPoints(I[I)Z
.end method

.method private native SetDetectParameter(ILcn/com/magnity/sdk/types/FilterPara;)Z
.end method

.method private native SetElectronicZoom(IIII)V
.end method

.method private native SetEnhancementMethod(ILcn/com/magnity/sdk/types/ImageEnhancement;)Z
.end method

.method private static native SetFilter(I)V
.end method

.method private native SetImageTransform(III)Z
.end method

.method private native SetIoAlarmState(IZ)Z
.end method

.method private native SetIsothermalPara(III)V
.end method

.method private native SetObjRecoCallBack(ILcn/com/magnity/sdk/MagDevice$IObjRecoCallBack;)Z
.end method

.method private native SetPTZCmd(III)Z
.end method

.method private native SetReConnectCallBack(ILcn/com/magnity/sdk/MagDevice$IReconnectCallBack;)Z
.end method

.method private native SetRemoteInfo(ILcn/com/magnity/sdk/types/RemoteInfo;)Z
.end method

.method private native SetRemoteROI(I[Lcn/com/magnity/sdk/types/RectROI;)Z
.end method

.method private native SetRemoteROICallBack(ILcn/com/magnity/sdk/MagDevice$IRectROICallBack;)Z
.end method

.method private native SetSerialCmd(I[BI)Z
.end method

.method private native SetSubsectionEnlargePara(IIIII)Z
.end method

.method private native SetVideoBrightness(II)Z
.end method

.method private native SetVideoContrast(II)Z
.end method

.method private native StartProcessImage(ILcn/com/magnity/sdk/MagDevice$IFrameCallBack;III)Z
.end method

.method private native StartProcessPulseImage(ILcn/com/magnity/sdk/MagDevice$IFrameCallBack;III)Z
.end method

.method private native StopProcessImage(I)V
.end method

.method private native TransferPulseImage(I)Z
.end method

.method private native TriggerFFC(I)Z
.end method

.method private native UnloadDDT(I)V
.end method

.method private native Unlock(I)V
.end method

.method private static native VisGetData(I[I)I
.end method

.method private static native VisGetData2(I[B)I
.end method

.method private static native VisGetData_no_decode(I[B)I
.end method

.method private static native VisGetExtraData_no_decode(II[B)I
.end method

.method private static native VisGetHeight(I)I
.end method

.method private native VisGetImage(I)Landroid/graphics/Bitmap;
.end method

.method private static native VisGetWidth(I)I
.end method

.method private static native VisIsPlaying(I)Z
.end method

.method private static native VisLock(I)V
.end method

.method private static native VisPlay(ILjava/lang/String;ILcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;II)I
.end method

.method private static native VisPlay_no_decode(ILjava/lang/String;Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;II)I
.end method

.method private static native VisSaveBMP(ILjava/lang/String;)I
.end method

.method private static native VisSetReconnectCallback(ILcn/com/magnity/sdk/MagDevice$IVisibleReconnectCallBack;)V
.end method

.method private static native VisStop(I)V
.end method

.method private static native VisUnlock(I)V
.end method

.method static synthetic access$000(Lcn/com/magnity/sdk/MagDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/sdk/MagDevice;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcn/com/magnity/sdk/MagDevice;->mIsDecoderRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcn/com/magnity/sdk/MagDevice;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/sdk/MagDevice;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public static blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
    .locals 1
    .param p0, "dst"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "alpha"    # I

    .prologue
    .line 1540
    invoke-static {p0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->nativeBlendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method private byteBufferClone(Ljava/nio/ByteBuffer;[B)[B
    .locals 3
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .param p2, "data"    # [B

    .prologue
    .line 1702
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1703
    .local v1, "sourceP":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1705
    .local v0, "sourceL":I
    if-nez p2, :cond_0

    .line 1706
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array p2, v2, [B

    .line 1710
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1712
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1713
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1714
    return-object p2
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "dst"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1536
    invoke-static {p0, p1}, Lcn/com/magnity/sdk/MagDevice;->nativeCopyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private createMediaDecoder()I
    .locals 15

    .prologue
    const/16 v11, 0x400

    const/4 v12, 0x0

    .line 1645
    new-array v7, v11, [B

    .line 1646
    .local v7, "sps":[B
    invoke-virtual {p0, v12, v7}, Lcn/com/magnity/sdk/MagDevice;->visGetExtraData_no_decode(I[B)I

    move-result v8

    .line 1648
    .local v8, "spsLength":I
    new-array v5, v11, [B

    .line 1649
    .local v5, "pps":[B
    const/4 v11, 0x1

    invoke-virtual {p0, v11, v5}, Lcn/com/magnity/sdk/MagDevice;->visGetExtraData_no_decode(I[B)I

    move-result v6

    .line 1651
    .local v6, "ppsLength":I
    if-ltz v8, :cond_0

    if-gez v6, :cond_1

    .line 1652
    :cond_0
    const/4 v11, -0x2

    .line 1687
    :goto_0
    return v11

    .line 1655
    :cond_1
    const-string v0, "video/avc"

    .line 1657
    .local v0, "MIME_TYPE":Ljava/lang/String;
    const-string v11, "video/avc"

    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->visGetWidth()I

    move-result v13

    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->visGetHeight()I

    move-result v14

    invoke-static {v11, v13, v14}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 1658
    .local v3, "mediaFormat":Landroid/media/MediaFormat;
    const-string v11, "mime"

    const-string v13, "video/avc"

    invoke-virtual {v3, v11, v13}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    const-string v11, "csd-0"

    invoke-static {v7, v12, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v3, v11, v13}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1660
    const-string v11, "csd-1"

    invoke-static {v5, v12, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v3, v11, v13}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1662
    const/4 v9, 0x0

    .line 1664
    .local v9, "surface":Landroid/view/Surface;
    iget-object v11, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    instance-of v11, v11, Landroid/view/SurfaceView;

    if-eqz v11, :cond_3

    .line 1665
    iget-object v11, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    check-cast v11, Landroid/view/SurfaceView;

    invoke-virtual {v11}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 1666
    .local v2, "holder":Landroid/view/SurfaceHolder;
    if-eqz v2, :cond_2

    .line 1667
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    .line 1677
    .end local v2    # "holder":Landroid/view/SurfaceHolder;
    :cond_2
    :goto_1
    :try_start_0
    const-string v11, "video/avc"

    invoke-static {v11}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v11

    iput-object v11, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    .line 1678
    iget-object v11, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v3, v9, v13, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1679
    iget-object v11, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v12

    .line 1687
    goto :goto_0

    .line 1669
    :cond_3
    iget-object v11, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    instance-of v11, v11, Landroid/view/TextureView;

    if-eqz v11, :cond_2

    .line 1670
    iget-object v11, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    check-cast v11, Landroid/view/TextureView;

    invoke-virtual {v11}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    .line 1671
    .local v10, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v10, :cond_2

    .line 1672
    new-instance v9, Landroid/view/Surface;

    .end local v9    # "surface":Landroid/view/Surface;
    invoke-direct {v9, v10}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .restart local v9    # "surface":Landroid/view/Surface;
    goto :goto_1

    .line 1680
    .end local v10    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v1

    .line 1681
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 1682
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1683
    const-string v11, "magnity"

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_4
    const/16 v11, -0x14

    goto :goto_0
.end method

.method private destroyMediaDecoder()V
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 1693
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1697
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    .line 1699
    :cond_0
    return-void

    .line 1694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1544
    invoke-static {}, Lcn/com/magnity/sdk/MagDevice;->GetLastError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeBlendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
.end method

.method private static native nativeCopyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method private static native nativeLoadMDT(Ljava/lang/String;Lcn/com/magnity/sdk/types/MDT;)Z
.end method

.method private static native nativeSaveMDT(Lcn/com/magnity/sdk/types/MDT;Ljava/lang/String;)Z
.end method

.method public static setFilter(I)V
    .locals 0
    .param p0, "filter"    # I

    .prologue
    .line 256
    invoke-static {p0}, Lcn/com/magnity/sdk/MagDevice;->SetFilter(I)V

    .line 257
    return-void
.end method

.method private startDecodeThreading()V
    .locals 3

    .prologue
    .line 1736
    iget-boolean v1, p0, Lcn/com/magnity/sdk/MagDevice;->mIsDecoderRunning:Z

    if-eqz v1, :cond_0

    .line 1745
    :goto_0
    return-void

    .line 1740
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/sdk/MagDevice;->mIsDecoderRunning:Z

    .line 1741
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MagDeviceHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/com/magnity/sdk/MagDevice;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1742
    iget-object v1, p0, Lcn/com/magnity/sdk/MagDevice;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1743
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/sdk/MagDevice;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1744
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcn/com/magnity/sdk/MagDevice$decodeThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/sdk/MagDevice$decodeThread;-><init>(Lcn/com/magnity/sdk/MagDevice;Lcn/com/magnity/sdk/MagDevice$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopDecodeThreading()V
    .locals 3

    .prologue
    .line 1748
    iget-boolean v2, p0, Lcn/com/magnity/sdk/MagDevice;->mIsDecoderRunning:Z

    if-nez v2, :cond_0

    .line 1762
    :goto_0
    return-void

    .line 1752
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/com/magnity/sdk/MagDevice;->mIsDecoderRunning:Z

    .line 1753
    iget-object v2, p0, Lcn/com/magnity/sdk/MagDevice;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1754
    .local v1, "loop":Landroid/os/Looper;
    if-eqz v1, :cond_1

    .line 1755
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 1758
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcn/com/magnity/sdk/MagDevice;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1759
    :catch_0
    move-exception v0

    .line 1760
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SDStorageAviStart()Z
    .locals 1

    .prologue
    .line 1468
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1469
    const/4 v0, 0x0

    .line 1471
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->SDStorageAviStart(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SDStorageAviStop()Z
    .locals 1

    .prologue
    .line 1481
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1482
    const/4 v0, 0x0

    .line 1484
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->SDStorageAviStop(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SDStorageBMP()Z
    .locals 1

    .prologue
    .line 1429
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1430
    const/4 v0, 0x0

    .line 1432
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->SDStorageBMP(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SDStorageMGSStart()Z
    .locals 1

    .prologue
    .line 1442
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1443
    const/4 v0, 0x0

    .line 1445
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->SDStorageMGSStart(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SDStorageMGSStop()Z
    .locals 1

    .prologue
    .line 1455
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1456
    const/4 v0, 0x0

    .line 1458
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->SDStorageMGSStop(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SDStorageMGT()Z
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1417
    const/4 v0, 0x0

    .line 1419
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->SDStorageMGT(I)Z

    move-result v0

    goto :goto_0
.end method

.method public autoFocus()Z
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    .line 781
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->AutoFocus(I)Z

    move-result v0

    goto :goto_0
.end method

.method public connect(I)I
    .locals 1
    .param p1, "ipaddr"    # I

    .prologue
    .line 282
    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/sdk/MagDevice;->connect(II)I

    move-result v0

    return v0
.end method

.method public connect(II)I
    .locals 2
    .param p1, "ipaddr"    # I
    .param p2, "timeout"    # I

    .prologue
    const/4 v0, -0x1

    .line 295
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->LinkCamera(III)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 299
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-ltz v1, :cond_0

    .line 302
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connect(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10
    .param p1, "ipAddr"    # I
    .param p2, "cmdPort"    # I
    .param p3, "imgPort"    # I
    .param p4, "cloudUser"    # Ljava/lang/String;
    .param p5, "cloudPwd"    # Ljava/lang/String;
    .param p6, "camUser"    # Ljava/lang/String;
    .param p7, "camPwd"    # Ljava/lang/String;
    .param p8, "serialNo"    # I
    .param p9, "timeout"    # I

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "sIpAddr":Ljava/lang/String;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 508
    invoke-virtual/range {v0 .. v9}, Lcn/com/magnity/sdk/MagDevice;->connect(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public connect(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "cloudIpAddr"    # I
    .param p2, "cloudPort"    # I
    .param p3, "cloudUser"    # Ljava/lang/String;
    .param p4, "cloudPwd"    # Ljava/lang/String;
    .param p5, "camUser"    # Ljava/lang/String;
    .param p6, "camPwd"    # Ljava/lang/String;
    .param p7, "serialNo"    # I

    .prologue
    .line 455
    const/16 v8, 0x7d0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcn/com/magnity/sdk/MagDevice;->connect(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public connect(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "cloudIpAddr"    # I
    .param p2, "cloudPort"    # I
    .param p3, "cloudUser"    # Ljava/lang/String;
    .param p4, "cloudPwd"    # Ljava/lang/String;
    .param p5, "camUser"    # Ljava/lang/String;
    .param p6, "camPwd"    # Ljava/lang/String;
    .param p7, "serialNo"    # I
    .param p8, "timeout"    # I

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "sIpAddr":Ljava/lang/String;
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 434
    invoke-virtual/range {v0 .. v8}, Lcn/com/magnity/sdk/MagDevice;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;)I
    .locals 1
    .param p1, "ipaddr"    # Ljava/lang/String;

    .prologue
    .line 269
    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/sdk/MagDevice;->connect(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;I)I
    .locals 2
    .param p1, "ipaddr"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    const/4 v0, -0x1

    .line 382
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 385
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->LinkCamera(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 386
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-ltz v1, :cond_0

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "cmdPort"    # I
    .param p3, "imgPort"    # I
    .param p4, "cloudUser"    # Ljava/lang/String;
    .param p5, "cloudPwd"    # Ljava/lang/String;
    .param p6, "camUser"    # Ljava/lang/String;
    .param p7, "camPwd"    # Ljava/lang/String;
    .param p8, "serialNo"    # I
    .param p9, "timeout"    # I

    .prologue
    .line 527
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 528
    const/4 v0, -0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p8

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 530
    invoke-direct/range {v0 .. v9}, Lcn/com/magnity/sdk/MagDevice;->LinkCamera(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 531
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_1

    .line 532
    const/4 v0, -0x1

    goto :goto_0

    .line 534
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "cloudIpAddr"    # Ljava/lang/String;
    .param p2, "cloudPort"    # I
    .param p3, "cloudUser"    # Ljava/lang/String;
    .param p4, "cloudPwd"    # Ljava/lang/String;
    .param p5, "camUser"    # Ljava/lang/String;
    .param p6, "camPwd"    # Ljava/lang/String;
    .param p7, "serialNo"    # I

    .prologue
    .line 409
    const/16 v8, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcn/com/magnity/sdk/MagDevice;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "cloudIpAddr"    # Ljava/lang/String;
    .param p2, "cloudPort"    # I
    .param p3, "cloudUser"    # Ljava/lang/String;
    .param p4, "cloudPwd"    # Ljava/lang/String;
    .param p5, "camUser"    # Ljava/lang/String;
    .param p6, "camPwd"    # Ljava/lang/String;
    .param p7, "serialNo"    # I
    .param p8, "timeout"    # I

    .prologue
    .line 477
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 478
    const/4 v0, -0x1

    .line 485
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p7

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p8

    .line 480
    invoke-direct/range {v0 .. v8}, Lcn/com/magnity/sdk/MagDevice;->LinkCamera(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 482
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_1

    .line 483
    const/4 v0, -0x1

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connectUsb(Landroid/content/Context;ILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "cb"    # Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 347
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcn/com/magnity/sdk/MagDevice;->mUsb:Lcn/com/magnity/sdk/MagUsb;

    if-nez v3, :cond_0

    iget v3, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v3, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v1

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/sdk/MagDevice;->mContext:Landroid/content/Context;

    .line 352
    new-instance v3, Lcn/com/magnity/sdk/MagUsb;

    invoke-direct {v3}, Lcn/com/magnity/sdk/MagUsb;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/sdk/MagDevice;->mUsb:Lcn/com/magnity/sdk/MagUsb;

    .line 353
    iget-object v3, p0, Lcn/com/magnity/sdk/MagDevice;->mUsb:Lcn/com/magnity/sdk/MagUsb;

    iget-object v4, p0, Lcn/com/magnity/sdk/MagDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcn/com/magnity/sdk/MagUsb;->init(Landroid/content/Context;)V

    .line 355
    iget-object v3, p0, Lcn/com/magnity/sdk/MagDevice;->mUsb:Lcn/com/magnity/sdk/MagUsb;

    iget-object v4, p0, Lcn/com/magnity/sdk/MagDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p2, p0, p3}, Lcn/com/magnity/sdk/MagUsb;->requestPermission(Landroid/content/Context;ILcn/com/magnity/sdk/MagUsb$IUSBCallback;Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)I

    move-result v0

    .line 356
    .local v0, "r":I
    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 357
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    goto :goto_0

    .line 359
    :cond_2
    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    .line 360
    const/4 v1, 0x0

    goto :goto_0

    .line 362
    :cond_3
    const/16 v3, 0x7d0

    invoke-direct {p0, v2, v0, v3}, Lcn/com/magnity/sdk/MagDevice;->LinkCamera(III)I

    move-result v3

    iput v3, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 363
    iget v3, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v3, :cond_4

    .line 364
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 367
    goto :goto_0
.end method

.method public convertIrCorr2VisCorr(IIF[I)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "distance"    # F
    .param p4, "xy"    # [I

    .prologue
    .line 1912
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1913
    const/4 v0, 0x0

    .line 1915
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->ConvertIrCorr2VisCorr(IIIF[I)Z

    move-result v0

    goto :goto_0
.end method

.method public convertVisCorr2IrCorr(IIF[I)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "distance"    # F
    .param p4, "xy"    # [I

    .prologue
    .line 1897
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1898
    const/4 v0, 0x0

    .line 1900
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->ConvertVisCorr2IrCorr(IIIF[I)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v0, :cond_1

    .line 543
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->IsProcessingImage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->StopProcessImage(I)V

    .line 546
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->DislinkCamera(I)V

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 549
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mUsb:Lcn/com/magnity/sdk/MagUsb;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mUsb:Lcn/com/magnity/sdk/MagUsb;

    iget-object v1, p0, Lcn/com/magnity/sdk/MagDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/com/magnity/sdk/MagUsb;->exit(Landroid/content/Context;)V

    .line 551
    iput-object v2, p0, Lcn/com/magnity/sdk/MagDevice;->mUsb:Lcn/com/magnity/sdk/MagUsb;

    .line 553
    :cond_2
    iput-object v2, p0, Lcn/com/magnity/sdk/MagDevice;->mContext:Landroid/content/Context;

    .line 554
    return-void
.end method

.method public estimateUnderArmTempFromForeheadRect(IIII)I
    .locals 6
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 1882
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1883
    const/4 v0, 0x0

    .line 1885
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->EstimateUnderArmTempFromForeheadRect(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method public findDetectTarget([BII[Lcn/com/magnity/sdk/types/JRect;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "regions"    # [Lcn/com/magnity/sdk/types/JRect;

    .prologue
    .line 1874
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1875
    const/4 v0, -0x1

    .line 1877
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->FindDetectTarget(I[BII[Lcn/com/magnity/sdk/types/JRect;)I

    move-result v0

    goto :goto_0
.end method

.method public fixTemperature(IFI)I
    .locals 1
    .param p1, "t"    # I
    .param p2, "emissivity"    # F
    .param p3, "pos"    # I

    .prologue
    .line 1125
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1128
    .end local p1    # "t":I
    :goto_0
    return p1

    .restart local p1    # "t":I
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice;->FixTemperature(IIFI)I

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
    .line 1118
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1121
    .end local p1    # "t":I
    :goto_0
    return p1

    .restart local p1    # "t":I
    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->FixTemperature(IIFII)I

    move-result p1

    goto :goto_0
.end method

.method public getCameraInfo(Lcn/com/magnity/sdk/types/CameraInfo;)Z
    .locals 1
    .param p1, "cameraInfo"    # Lcn/com/magnity/sdk/types/CameraInfo;

    .prologue
    .line 684
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 685
    const/4 v0, 0x0

    .line 687
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetCameraInfo(ILcn/com/magnity/sdk/types/CameraInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCameraInfoEx(Lcn/com/magnity/sdk/types/CameraInfoEx;)Z
    .locals 1
    .param p1, "cameraInfo"    # Lcn/com/magnity/sdk/types/CameraInfoEx;

    .prologue
    .line 691
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 694
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetCameraInfoEx(ILcn/com/magnity/sdk/types/CameraInfoEx;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCorrectionPara(Lcn/com/magnity/sdk/types/CorrectionPara;)Z
    .locals 1
    .param p1, "para"    # Lcn/com/magnity/sdk/types/CorrectionPara;

    .prologue
    .line 1013
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1014
    const/4 v0, 0x0

    .line 1016
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetCorrectionPara(ILcn/com/magnity/sdk/types/CorrectionPara;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDetectSuggestedParameter(Lcn/com/magnity/sdk/types/FilterPara;)Z
    .locals 1
    .param p1, "filterPara"    # Lcn/com/magnity/sdk/types/FilterPara;

    .prologue
    .line 1860
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1861
    const/4 v0, 0x0

    .line 1863
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetDetectSuggestedParameter(ILcn/com/magnity/sdk/types/FilterPara;)Z

    move-result v0

    goto :goto_0
.end method

.method public getElectronicZoom()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 972
    const/4 v0, 0x0

    .line 974
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->GetElectronicZoom(I)I

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
    .line 1249
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1250
    const/4 v0, 0x0

    .line 1252
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/sdk/MagDevice;->GetEllipseTemperatureInfo(IIIII[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getFrameStatisticInfo(Lcn/com/magnity/sdk/types/StatisticInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/com/magnity/sdk/types/StatisticInfo;

    .prologue
    .line 1111
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1112
    const/4 v0, 0x0

    .line 1114
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetFrameStatisticalData(ILcn/com/magnity/sdk/types/StatisticInfo;)Z

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
    .line 1201
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1202
    const/4 v0, 0x0

    .line 1204
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/sdk/MagDevice;->GetLineTemperatureInfo(IIIII[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputColorBarImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1070
    const/4 v0, 0x0

    .line 1072
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->GetOutputColorBarImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputColorBarImage([I)Z
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 1076
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    .line 1079
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetOutputColorBarData(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputTempImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1043
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->GetOutputImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputTempImage([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 1056
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1057
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetOutputImageData(I[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputTempImage([I)Z
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 1049
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1050
    const/4 v0, 0x0

    .line 1052
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetOutputImageData(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getOutputVideoImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1093
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->GetOutputVideoImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputVideoImage([I)Z
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 1097
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1098
    const/4 v0, 0x0

    .line 1100
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetOutputVideoData(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getRecentHeartBeat()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 718
    const/4 v0, -0x1

    .line 720
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->GetRecentHeartBeat(I)I

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
    .line 1225
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1226
    const/4 v0, 0x0

    .line 1228
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/sdk/MagDevice;->GetRectTemperatureInfo(IIIII[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getRemoteInfo(Lcn/com/magnity/sdk/types/RemoteInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/com/magnity/sdk/types/RemoteInfo;

    .prologue
    .line 704
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 705
    const/4 v0, 0x0

    .line 707
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->GetRemoteInfo(ILcn/com/magnity/sdk/types/RemoteInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRgnTemperatureInfo([I[I)Z
    .locals 1
    .param p1, "pos"    # [I
    .param p2, "info"    # [I

    .prologue
    .line 1268
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    .line 1271
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->GetRgnTemperatureInfo(I[I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getTemperatureData([I)Z
    .locals 2
    .param p1, "temp"    # [I

    .prologue
    .line 1142
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1143
    const/4 v0, 0x0

    .line 1145
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcn/com/magnity/sdk/MagDevice;->GetTemperatureData(I[IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public getTemperatureProbe(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "r"    # I

    .prologue
    .line 1177
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1178
    const/high16 v0, -0x80000000

    .line 1180
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->GetTemperatureProbe(III)I

    move-result v0

    goto :goto_0
.end method

.method public getTemperatureProbe(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I

    .prologue
    .line 1160
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1161
    const/high16 v0, -0x80000000

    .line 1163
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice;->GetTemperatureProbe(IIII)I

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 562
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLocalMgsPlaying()Z
    .locals 1

    .prologue
    .line 1512
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->IsLocalMgsPlaying(I)Z

    move-result v0

    return v0
.end method

.method public isLocalMgsRecording()Z
    .locals 1

    .prologue
    .line 1508
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->IsLocalMgsRecording(I)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 657
    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->IsPause(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 673
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->IsProcessingImage(I)Z

    move-result v0

    goto :goto_0
.end method

.method public loadBufferedDDT(II[BLcn/com/magnity/sdk/MagDevice$IFrameCallBack;Lcn/com/magnity/sdk/types/DDTPara;)Z
    .locals 2
    .param p1, "colorbarWidth"    # I
    .param p2, "colorbarHeight"    # I
    .param p3, "buffer"    # [B
    .param p4, "cb"    # Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;
    .param p5, "para"    # Lcn/com/magnity/sdk/types/DDTPara;

    .prologue
    const/4 v0, 0x0

    .line 1354
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v0

    .line 1358
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcn/com/magnity/sdk/MagDevice;->LoadBufferedDDT(II[BLcn/com/magnity/sdk/MagDevice$IFrameCallBack;Lcn/com/magnity/sdk/types/DDTPara;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 1359
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-ltz v1, :cond_0

    .line 1362
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDDT(Ljava/lang/String;IILcn/com/magnity/sdk/MagDevice$IFrameCallBack;Lcn/com/magnity/sdk/types/DDTPara;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "colorbarWidth"    # I
    .param p3, "colorbarHeight"    # I
    .param p4, "cb"    # Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;
    .param p5, "para"    # Lcn/com/magnity/sdk/types/DDTPara;

    .prologue
    const/4 v0, 0x0

    .line 1315
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v0

    .line 1319
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcn/com/magnity/sdk/MagDevice;->LoadDDT(Ljava/lang/String;IILcn/com/magnity/sdk/MagDevice$IFrameCallBack;Lcn/com/magnity/sdk/types/DDTPara;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 1320
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-ltz v1, :cond_0

    .line 1323
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadMDT(Ljava/lang/String;Lcn/com/magnity/sdk/types/MDT;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mdt"    # Lcn/com/magnity/sdk/types/MDT;

    .prologue
    .line 1296
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    const/4 v0, 0x0

    .line 1299
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcn/com/magnity/sdk/MagDevice;->nativeLoadMDT(Ljava/lang/String;Lcn/com/magnity/sdk/types/MDT;)Z

    move-result v0

    goto :goto_0
.end method

.method public localStorageMgsPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1492
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->LocalStorageMgsPlay(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public localStorageMgsPopFrame()Z
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->LocalStorageMgsPopFrame(I)Z

    move-result v0

    return v0
.end method

.method public localStorageMgsRecord(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "samplePeriod"    # I

    .prologue
    .line 1488
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->LocalStorageMgsRecord(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public localStorageMgsSeekFrame(I)Z
    .locals 1
    .param p1, "frameIndex"    # I

    .prologue
    .line 1500
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->LocalStorageMgsSeekFrame(II)Z

    move-result v0

    return v0
.end method

.method public localStorageMgsStop()V
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->LocalStorageMgsStop(I)V

    .line 1505
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1519
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1522
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->Lock(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->Pause(I)V

    goto :goto_0
.end method

.method public play(Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;III)Z
    .locals 6
    .param p1, "cb"    # Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;
    .param p2, "colorbarWidth"    # I
    .param p3, "colorbarHeight"    # I
    .param p4, "streamType"    # I

    .prologue
    .line 580
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->StartProcessImage(ILcn/com/magnity/sdk/MagDevice$IFrameCallBack;III)Z

    move-result v0

    goto :goto_0
.end method

.method public playPulse(Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;III)Z
    .locals 6
    .param p1, "cb"    # Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;
    .param p2, "colorbarWidth"    # I
    .param p3, "colorbarHeight"    # I
    .param p4, "streamType"    # I

    .prologue
    .line 599
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 600
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->StartProcessPulseImage(ILcn/com/magnity/sdk/MagDevice$IFrameCallBack;III)Z

    move-result v0

    goto :goto_0
.end method

.method public queryPTZState(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 823
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 824
    const/high16 v0, -0x80000000

    .line 826
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcn/com/magnity/sdk/MagDevice;->queryPTZState(II)I

    move-result v0

    goto :goto_0
.end method

.method public queryPTZState(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 808
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 809
    const/high16 v0, -0x80000000

    .line 811
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->QueryPTZState(III)I

    move-result v0

    goto :goto_0
.end method

.method public resetCamera()Z
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 746
    const/4 v0, 0x0

    .line 748
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->ResetCamera(I)Z

    move-result v0

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->Resume(I)V

    goto :goto_0
.end method

.method public saveBMP(ILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1389
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1390
    const/4 v0, 0x0

    .line 1392
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->SaveBMP(IILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveBMP(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1403
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v1, :cond_0

    .line 1406
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->saveBMP(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveDDT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1282
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1283
    const/4 v0, 0x0

    .line 1285
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SaveDDT(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveDDT2Buffer([B)I
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 1335
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1336
    const/4 v0, -0x1

    .line 1338
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SaveDDT2Buffer(I[B)I

    move-result v0

    goto :goto_0
.end method

.method public saveMDT(Lcn/com/magnity/sdk/types/MDT;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mdt"    # Lcn/com/magnity/sdk/types/MDT;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1289
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcn/com/magnity/sdk/MagDevice;->nativeSaveMDT(Lcn/com/magnity/sdk/types/MDT;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setColorPalette(I)V
    .locals 1
    .param p1, "palette"    # I

    .prologue
    .line 900
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetColorPalette(II)V

    goto :goto_0
.end method

.method public setCorrectionPara(Lcn/com/magnity/sdk/types/CorrectionPara;Z)F
    .locals 1
    .param p1, "param"    # Lcn/com/magnity/sdk/types/CorrectionPara;
    .param p2, "bEnableCameraCorrect"    # Z

    .prologue
    .line 1028
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1031
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->SetCorrectionPara(ILcn/com/magnity/sdk/types/CorrectionPara;Z)F

    move-result v0

    goto :goto_0
.end method

.method public setDetectMaskPoints([I)Z
    .locals 1
    .param p1, "maskPoints"    # [I

    .prologue
    .line 1867
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1868
    const/4 v0, 0x0

    .line 1870
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetDetectMaskPoints(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public setDetectParameter(Lcn/com/magnity/sdk/types/FilterPara;)Z
    .locals 1
    .param p1, "filterPara"    # Lcn/com/magnity/sdk/types/FilterPara;

    .prologue
    .line 1853
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1854
    const/4 v0, 0x0

    .line 1856
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetDetectParameter(ILcn/com/magnity/sdk/types/FilterPara;)Z

    move-result v0

    goto :goto_0
.end method

.method public setElectronicZoom(III)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I

    .prologue
    .line 958
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 961
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice;->SetElectronicZoom(IIII)V

    goto :goto_0
.end method

.method public setEnhancementMethod(Lcn/com/magnity/sdk/types/ImageEnhancement;)Z
    .locals 1
    .param p1, "para"    # Lcn/com/magnity/sdk/types/ImageEnhancement;

    .prologue
    .line 928
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 929
    const/4 v0, 0x0

    .line 931
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetEnhancementMethod(ILcn/com/magnity/sdk/types/ImageEnhancement;)Z

    move-result v0

    goto :goto_0
.end method

.method public setImageTransform(II)Z
    .locals 1
    .param p1, "flip"    # I
    .param p2, "rotate"    # I

    .prologue
    .line 943
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 944
    const/4 v0, 0x0

    .line 946
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->SetImageTransform(III)Z

    move-result v0

    goto :goto_0
.end method

.method public setIoAlarmState(Z)Z
    .locals 1
    .param p1, "isAlarm"    # Z

    .prologue
    .line 752
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 753
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetIoAlarmState(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setObjRecoCallBack(Lcn/com/magnity/sdk/MagDevice$IObjRecoCallBack;)Z
    .locals 1
    .param p1, "cb"    # Lcn/com/magnity/sdk/MagDevice$IObjRecoCallBack;

    .prologue
    .line 887
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 888
    const/4 v0, 0x0

    .line 890
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetObjRecoCallBack(ILcn/com/magnity/sdk/MagDevice$IObjRecoCallBack;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPTZCmd(II)Z
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "val"    # I

    .prologue
    .line 793
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 796
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->SetPTZCmd(III)Z

    move-result v0

    goto :goto_0
.end method

.method public setReConnectCallBack(Lcn/com/magnity/sdk/MagDevice$IReconnectCallBack;)Z
    .locals 1
    .param p1, "cb"    # Lcn/com/magnity/sdk/MagDevice$IReconnectCallBack;

    .prologue
    .line 732
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 735
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetReConnectCallBack(ILcn/com/magnity/sdk/MagDevice$IReconnectCallBack;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRemoteInfo(Lcn/com/magnity/sdk/types/RemoteInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/com/magnity/sdk/types/RemoteInfo;

    .prologue
    .line 852
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 853
    const/4 v0, 0x0

    .line 855
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetRemoteInfo(ILcn/com/magnity/sdk/types/RemoteInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRemoteROI([Lcn/com/magnity/sdk/types/RectROI;)Z
    .locals 1
    .param p1, "rois"    # [Lcn/com/magnity/sdk/types/RectROI;

    .prologue
    .line 866
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 867
    const/4 v0, 0x0

    .line 869
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetRemoteROI(I[Lcn/com/magnity/sdk/types/RectROI;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRemoteROICallBack(Lcn/com/magnity/sdk/MagDevice$IRectROICallBack;)Z
    .locals 1
    .param p1, "cb"    # Lcn/com/magnity/sdk/MagDevice$IRectROICallBack;

    .prologue
    .line 880
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 881
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetRemoteROICallBack(ILcn/com/magnity/sdk/MagDevice$IRectROICallBack;)Z

    move-result v0

    goto :goto_0
.end method

.method public setSerialCmd([BI)Z
    .locals 1
    .param p1, "cmd"    # [B
    .param p2, "size"    # I

    .prologue
    .line 838
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 839
    const/4 v0, 0x0

    .line 841
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->SetSerialCmd(I[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public setVideoBrightness(I)Z
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 999
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1000
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetVideoBrightness(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setVideoContrast(I)Z
    .locals 1
    .param p1, "contrast"    # I

    .prologue
    .line 985
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 986
    const/4 v0, 0x0

    .line 988
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0, p1}, Lcn/com/magnity/sdk/MagDevice;->SetVideoContrast(II)Z

    move-result v0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 625
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->StopProcessImage(I)V

    goto :goto_0
.end method

.method public transferPulseImage()Z
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 613
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->TransferPulseImage(I)Z

    move-result v0

    goto :goto_0
.end method

.method public triggerFFC()Z
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 766
    const/4 v0, 0x0

    .line 768
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->TriggerFFC(I)Z

    move-result v0

    goto :goto_0
.end method

.method public unloadDDT()V
    .locals 1

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v0, :cond_0

    .line 1375
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->UnloadDDT(I)V

    .line 1376
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1529
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1533
    :goto_0
    return-void

    .line 1532
    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->Unlock(I)V

    goto :goto_0
.end method

.method public usbResult(Landroid/content/Context;IILcn/com/magnity/sdk/MagDevice$IUsbConnCallback;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "status"    # I
    .param p3, "fd"    # I
    .param p4, "cb"    # Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 307
    packed-switch p2, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 309
    :pswitch_1
    const/16 v0, 0x7d0

    invoke-direct {p0, v2, p3, v0}, Lcn/com/magnity/sdk/MagDevice;->LinkCamera(III)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    .line 310
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-lez v0, :cond_1

    .line 311
    if-eqz p4, :cond_0

    .line 312
    invoke-interface {p4, v2}, Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;->connectResult(I)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    .line 316
    if-eqz p4, :cond_0

    .line 317
    invoke-interface {p4, v1}, Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;->connectResult(I)V

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    .line 323
    if-eqz p4, :cond_0

    .line 324
    invoke-interface {p4, v1}, Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;->connectResult(I)V

    goto :goto_0

    .line 328
    :pswitch_3
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->disconnect()V

    .line 329
    if-eqz p4, :cond_0

    .line 330
    const/4 v0, -0x2

    invoke-interface {p4, v0}, Lcn/com/magnity/sdk/MagDevice$IUsbConnCallback;->connectResult(I)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public visGetData([I)I
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 1617
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 1618
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0, p1}, Lcn/com/magnity/sdk/MagDevice;->VisGetData(I[I)I

    move-result v0

    .line 1620
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x5

    goto :goto_0
.end method

.method public visGetData2([B)I
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 1625
    if-nez p1, :cond_1

    .line 1626
    const/4 v0, -0x2

    .line 1636
    :cond_0
    :goto_0
    return v0

    .line 1629
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_2

    .line 1630
    iget v1, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v1, p1}, Lcn/com/magnity/sdk/MagDevice;->VisGetData2(I[B)I

    move-result v0

    .line 1631
    .local v0, "ret":I
    if-ltz v0, :cond_0

    .line 1634
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->visGetWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->visGetHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x4

    goto :goto_0

    .line 1636
    .end local v0    # "ret":I
    :cond_2
    const/4 v0, -0x5

    goto :goto_0
.end method

.method public visGetData_no_decode([B)I
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 1832
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1833
    const/4 v0, -0x2

    .line 1835
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0, p1}, Lcn/com/magnity/sdk/MagDevice;->VisGetData_no_decode(I[B)I

    move-result v0

    goto :goto_0
.end method

.method public visGetExtraData_no_decode(I[B)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 1845
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v0, :cond_0

    .line 1846
    const/4 v0, -0x2

    .line 1848
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0, p1, p2}, Lcn/com/magnity/sdk/MagDevice;->VisGetExtraData_no_decode(II[B)I

    move-result v0

    goto :goto_0
.end method

.method public visGetHeight()I
    .locals 1

    .prologue
    .line 1557
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->VisGetHeight(I)I

    move-result v0

    return v0
.end method

.method public visGetImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1641
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-direct {p0, v0}, Lcn/com/magnity/sdk/MagDevice;->VisGetImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public visGetWidth()I
    .locals 1

    .prologue
    .line 1553
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->VisGetWidth(I)I

    move-result v0

    return v0
.end method

.method public visIsPlaying()Z
    .locals 1

    .prologue
    .line 1567
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->VisIsPlaying(I)Z

    move-result v0

    return v0
.end method

.method public visLock()V
    .locals 1

    .prologue
    .line 1609
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->VisLock(I)V

    .line 1610
    return-void
.end method

.method public visPlay(Ljava/lang/String;ILcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;II)I
    .locals 6
    .param p1, "rtspURL"    # Ljava/lang/String;
    .param p2, "pixelFormat"    # I
    .param p3, "frameCallback"    # Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;
    .param p4, "protocol"    # I
    .param p5, "timeout"    # I

    .prologue
    .line 1549
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/com/magnity/sdk/MagDevice;->VisPlay(ILjava/lang/String;ILcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;II)I

    move-result v0

    return v0
.end method

.method public visPlay_no_decode(Ljava/lang/String;Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;IILandroid/view/View;)I
    .locals 3
    .param p1, "rtspURL"    # Ljava/lang/String;
    .param p2, "frameCallback"    # Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;
    .param p3, "protocol"    # I
    .param p4, "timeout"    # I
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 1766
    iget-object v2, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_1

    .line 1767
    const/4 v1, 0x0

    .line 1828
    :cond_0
    :goto_0
    return v1

    .line 1770
    :cond_1
    if-eqz p5, :cond_0

    instance-of v2, p5, Landroid/view/SurfaceView;

    if-nez v2, :cond_2

    instance-of v2, p5, Landroid/view/TextureView;

    if-eqz v2, :cond_0

    .line 1774
    :cond_2
    iput-object p5, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    .line 1776
    new-instance v0, Lcn/com/magnity/sdk/MagDevice$1;

    invoke-direct {v0, p0, p2}, Lcn/com/magnity/sdk/MagDevice$1;-><init>(Lcn/com/magnity/sdk/MagDevice;Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;)V

    .line 1818
    .local v0, "callback":Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;
    iget v2, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    if-gez v2, :cond_3

    .line 1819
    .local v1, "ret":I
    :goto_1
    if-nez v1, :cond_0

    .line 1822
    invoke-direct {p0}, Lcn/com/magnity/sdk/MagDevice;->createMediaDecoder()I

    move-result v1

    .line 1823
    if-eqz v1, :cond_4

    .line 1824
    invoke-virtual {p0}, Lcn/com/magnity/sdk/MagDevice;->visStop()V

    goto :goto_0

    .line 1818
    .end local v1    # "ret":I
    :cond_3
    iget v2, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v2, p1, v0, p3, p4}, Lcn/com/magnity/sdk/MagDevice;->VisPlay_no_decode(ILjava/lang/String;Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;II)I

    move-result v1

    goto :goto_1

    .line 1827
    .restart local v1    # "ret":I
    :cond_4
    invoke-direct {p0}, Lcn/com/magnity/sdk/MagDevice;->startDecodeThreading()V

    goto :goto_0
.end method

.method public visSaveImage(Ljava/lang/String;)I
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x2

    .line 1571
    iget-object v5, p0, Lcn/com/magnity/sdk/MagDevice;->mDecoder:Landroid/media/MediaCodec;

    if-nez v5, :cond_0

    .line 1572
    iget v5, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v5, p1}, Lcn/com/magnity/sdk/MagDevice;->VisSaveBMP(ILjava/lang/String;)I

    move-result v5

    .line 1600
    :goto_0
    return v5

    .line 1574
    :cond_0
    iget-object v5, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    if-nez v5, :cond_1

    move v5, v6

    .line 1575
    goto :goto_0

    .line 1578
    :cond_1
    iget-object v5, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/TextureView;

    if-nez v5, :cond_2

    .line 1579
    const/4 v5, -0x5

    goto :goto_0

    .line 1582
    :cond_2
    iget-object v5, p0, Lcn/com/magnity/sdk/MagDevice;->mRenderView:Landroid/view/View;

    check-cast v5, Landroid/view/TextureView;

    move-object v4, v5

    check-cast v4, Landroid/view/TextureView;

    .line 1583
    .local v4, "textureView":Landroid/view/TextureView;
    invoke-virtual {v4}, Landroid/view/TextureView;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    .line 1584
    goto :goto_0

    .line 1587
    :cond_3
    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1589
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1590
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1591
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1592
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    const/4 v5, 0x0

    goto :goto_0

    .line 1593
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1594
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1595
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1596
    const-string v5, "magnity"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_4
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public visSetReconnectCallback(Lcn/com/magnity/sdk/MagDevice$IVisibleReconnectCallBack;)V
    .locals 1
    .param p1, "reconnectCallback"    # Lcn/com/magnity/sdk/MagDevice$IVisibleReconnectCallBack;

    .prologue
    .line 1605
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0, p1}, Lcn/com/magnity/sdk/MagDevice;->VisSetReconnectCallback(ILcn/com/magnity/sdk/MagDevice$IVisibleReconnectCallBack;)V

    .line 1606
    return-void
.end method

.method public visStop()V
    .locals 1

    .prologue
    .line 1561
    invoke-direct {p0}, Lcn/com/magnity/sdk/MagDevice;->stopDecodeThreading()V

    .line 1562
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->VisStop(I)V

    .line 1563
    invoke-direct {p0}, Lcn/com/magnity/sdk/MagDevice;->destroyMediaDecoder()V

    .line 1564
    return-void
.end method

.method public visUnlock()V
    .locals 1

    .prologue
    .line 1613
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice;->mChannel:I

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->VisUnlock(I)V

    .line 1614
    return-void
.end method
