.class public interface abstract Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;
.super Ljava/lang/Object;
.source "ILiveContract.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/ILiveContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract addRoi(Lcn/com/magnity/magnitymx/live/RoiInfo;Z)Z
.end method

.method public abstract autoPlayUsbDeviceIfCan()V
.end method

.method public abstract blendBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Z
.end method

.method public abstract calculateNewImagePos()I
.end method

.method public abstract capturePhoto(Z)V
.end method

.method public abstract captureVideo(Z)Z
.end method

.method public abstract copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method public abstract correctTemperature(IFI)I
.end method

.method public abstract correctTemperature(IFII)I
.end method

.method public abstract delRoi(II)Z
.end method

.method public abstract delayedStartPlay(I)V
.end method

.method public abstract fillSignedPicture(Landroid/graphics/Bitmap;)V
.end method

.method public abstract getCachedValueModel()Lcn/com/magnity/magnitymx/live/CachedValue;
.end method

.method public abstract getCameraInfo()Lcn/com/magnity/magnitymx/CameraInfoCompat;
.end method

.method public abstract getChildFragmentPos(I)Landroid/graphics/Rect;
.end method

.method public abstract getColorBarImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;
.end method

.method public abstract getDeviceState()Ljava/lang/Object;
.end method

.method public abstract getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;
.end method

.method public abstract getOutputTempImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getOutputVideoImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getReferenceBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getRoiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/live/RoiInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaskData()Lcn/com/magnity/magnitymx/task/TaskData;
.end method

.method public abstract hideChildFragment(I)V
.end method

.method public abstract isChildFragmentVisible(I)Z
.end method

.method public abstract isMgsRecording()Z
.end method

.method public abstract isPause()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isStitching()Z
.end method

.method public abstract isSurfaceCreated()Z
.end method

.method public abstract lock()V
.end method

.method public abstract onDeviceConnectedChanged(Z)V
.end method

.method public abstract onNewFrameCome(IIII)V
.end method

.method public abstract onNewImagePosCalculated([I)V
.end method

.method public abstract onPrepareProgressInBackground(II)V
.end method

.method public abstract openAlarm(Z)V
.end method

.method public abstract openIso(Z)[I
.end method

.method public abstract openManualEnlarge(Z)[I
.end method

.method public abstract openRef(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract postInvalidate(Z)V
.end method

.method public abstract resume()V
.end method

.method public abstract saveDeviceInfo(Landroid/os/Bundle;)V
.end method

.method public abstract screenXY2SensorXY(II)[I
.end method

.method public abstract sensorPos2ScreenXY(III)[I
.end method

.method public abstract sensorXY2ScreenXY(IIII)[I
.end method

.method public abstract setAlarmTemp(I)V
.end method

.method public abstract setCaptureMode(I)V
.end method

.method public abstract setDeviceInfo(Landroid/os/Bundle;)V
.end method

.method public abstract setEmissivity(F)V
.end method

.method public abstract setEnlargeParam(II)V
.end method

.method public abstract setIsoParam(II)V
.end method

.method public abstract setRefAlpha(F)V
.end method

.method public abstract setRoiAlarmTemp(ILjava/lang/String;II)Z
.end method

.method public abstract setRoiType(I)V
.end method

.method public abstract setStreamType(I)V
.end method

.method public abstract setSurfaceView(Lcn/com/magnity/magnitymx/live/ILiveContract$ISurfaceView;Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;)V
.end method

.method public abstract setTaskData(Lcn/com/magnity/magnitymx/task/TaskData;)V
.end method

.method public abstract setView(Lcn/com/magnity/magnitymx/live/ILiveContract$IMainView;Lcn/com/magnity/magnitymx/live/ILiveContract$IView;)V
.end method

.method public abstract setVisibleAlpha(F)V
.end method

.method public abstract showChildFragment(I)V
.end method

.method public abstract showWaitMessage()V
.end method

.method public abstract startMgsRecording()V
.end method

.method public abstract startPlay()Z
.end method

.method public abstract startStitching(IIII)Z
.end method

.method public abstract startVisibleCamera()V
.end method

.method public abstract stopMgsRecording()V
.end method

.method public abstract stopPlay()V
.end method

.method public abstract stopStitching(Z)V
.end method

.method public abstract stopVisibleCamera()V
.end method

.method public abstract surfaceCreated()V
.end method

.method public abstract surfaceDestroyed()V
.end method

.method public abstract timeElapsedBegin()V
.end method

.method public abstract timeElapsedEnd()J
.end method

.method public abstract timeElapsedEnd(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
.end method

.method public abstract triggerFFC()V
.end method

.method public abstract triggrtStitching()Z
.end method

.method public abstract unlock()V
.end method

.method public abstract updateOrderForTaskData(I)V
.end method
