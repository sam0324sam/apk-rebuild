.class public interface abstract Lcn/com/magnity/magnitymx/live/ILiveContract$IModel;
.super Ljava/lang/Object;
.source "ILiveContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/ILiveContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IModel"
.end annotation


# virtual methods
.method public abstract blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
.end method

.method public abstract calculateNewImagePos(II)I
.end method

.method public abstract copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method public abstract correctTemperature(IFI)I
.end method

.method public abstract correctTemperature(IFII)I
.end method

.method public abstract delayedStartPlay(I)V
.end method

.method public abstract getCameraInfo(Lcn/com/magnity/magnitymx/CameraInfoCompat;)Z
.end method

.method public abstract getCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;)Z
.end method

.method public abstract getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;
.end method

.method public abstract getFrameStatisticInfo(Lcn/com/magnity/magnitymx/StatisticInfoCompat;)Z
.end method

.method public abstract getLineTemperatureInfo(IIII[I)Z
.end method

.method public abstract getOutputColorBarImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getOutputTempImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getOutputVideoImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getRectTemperatureInfo(IIII[I)Z
.end method

.method public abstract getTemperatureProbe(III)I
.end method

.method public abstract isMgsRecording()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSameDevice(Lcn/com/magnity/magnitymx/data/DeviceInfo;)Z
.end method

.method public abstract isStitching()Z
.end method

.method public abstract loadMDT(Ljava/lang/String;Lcn/com/magnity/magnitymx/MDTCompat;)Z
.end method

.method public abstract lock()V
.end method

.method public abstract pause()V
.end method

.method public abstract postInvalidate()V
.end method

.method public abstract resume()V
.end method

.method public abstract saveDDT(Ljava/lang/String;)Z
.end method

.method public abstract saveDDT2Buffer()[B
.end method

.method public abstract saveMDT([B[B[B[Lcn/com/magnity/magnitymx/ROICompat;[B[BLjava/lang/String;)Z
.end method

.method public abstract setColorPalette(I)V
.end method

.method public abstract setCorrectionPara(Lcn/com/magnity/magnitymx/CorrectionParaCompat;Z)F
.end method

.method public abstract setDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
.end method

.method public abstract setEnhancementMethod(Ljava/lang/Object;)Z
.end method

.method public abstract startMgsRecording(Ljava/lang/String;)V
.end method

.method public abstract startPlay()Z
.end method

.method public abstract startStitching(IIII)Z
.end method

.method public abstract stopMgsRecording()V
.end method

.method public abstract stopPlay()V
.end method

.method public abstract stopStitching(Z)V
.end method

.method public abstract triggerFFC()V
.end method

.method public abstract triggrtStitching()Z
.end method

.method public abstract unlock()V
.end method
