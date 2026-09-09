.class public Lcn/com/magnity/magnitymx/camera/CameraView;
.super Landroid/view/TextureView;
.source "CameraView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcn/com/magnity/magnitymx/camera/CameraViewImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/camera/CameraView$Callback;
    }
.end annotation


# static fields
.field public static final FLASH_AUTO:I = 0x3

.field public static final FLASH_OFF:I = 0x0

.field public static final FLASH_ON:I = 0x1

.field public static final FLASH_RED_EYE:I = 0x4

.field public static final FLASH_TORCH:I = 0x2


# instance fields
.field private mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

.field private mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

.field private final mDisplayOrientationDetector:Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;

.field private mRatioHeight:I

.field private mRatioWidth:I

.field private mShouldOpenCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/com/magnity/magnitymx/camera/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/com/magnity/magnitymx/camera/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioWidth:I

    .line 42
    iput v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioHeight:I

    .line 59
    invoke-virtual {p0, p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 60
    new-instance v0, Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/camera/Camera2;-><init>(Lcn/com/magnity/magnitymx/camera/CameraViewImpl;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    .line 61
    new-instance v0, Lcn/com/magnity/magnitymx/camera/CameraView$1;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/camera/CameraView$1;-><init>(Lcn/com/magnity/magnitymx/camera/CameraView;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mDisplayOrientationDetector:Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/camera/CameraView;)Lcn/com/magnity/magnitymx/camera/Camera2;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/CameraView;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    return-object v0
.end method


# virtual methods
.method public getContextInternal()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewRotation()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->getPreviewRotation()I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTextureInternal()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public isCameraOpened()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->isCameraOpened()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->isPausing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 76
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mDisplayOrientationDetector:Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;->enable(Landroid/view/Display;)V

    .line 77
    const-string v0, "mDisplayOrientationDetector enable"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public onCameraClosed()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/camera/CameraView$Callback;->onCameraClosed()V

    .line 174
    :cond_0
    return-void
.end method

.method public onCameraOpened()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/camera/CameraView$Callback;->onCameraOpened()V

    .line 167
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mDisplayOrientationDetector:Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;->disable()V

    .line 83
    const-string v0, "mDisplayOrientationDetector disable"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 84
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 85
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/camera/CameraView$Callback;->onError(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public onFramePreview([BIII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/camera/CameraView$Callback;->onFramePreview([BIII)V

    .line 199
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 109
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 110
    .local v0, "height":I
    iget v2, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioHeight:I

    if-nez v2, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->setMeasuredDimension(II)V

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v2, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioHeight:I

    div-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 114
    iget v2, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioWidth:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcn/com/magnity/magnitymx/camera/CameraView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 116
    :cond_2
    iget v2, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioHeight:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPictureTaken([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 182
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/camera/CameraView$Callback;->onPictureTaken([B)V

    .line 185
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 124
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mShouldOpenCamera:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0, p2, p3}, Lcn/com/magnity/magnitymx/camera/Camera2;->openCamera(II)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mShouldOpenCamera:Z

    .line 128
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->closeCamera()V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0, p2, p3}, Lcn/com/magnity/magnitymx/camera/Camera2;->configureTransform(II)V

    .line 133
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 145
    return-void
.end method

.method public onVideoRecorded(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/camera/CameraView$Callback;->onVideoRecorded(Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public pausePreview()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->pause()Z

    move-result v0

    return v0
.end method

.method public resumePreview()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->resume()Z

    move-result v0

    return v0
.end method

.method public setAspectRatio(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 97
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iput p1, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioWidth:I

    .line 101
    iput p2, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mRatioHeight:I

    .line 102
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->requestLayout()V

    .line 103
    return-void
.end method

.method public setCallback(Lcn/com/magnity/magnitymx/camera/CameraView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    .line 71
    return-void
.end method

.method public setFlash(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/camera/Camera2;->setFlash(I)V

    .line 210
    return-void
.end method

.method public setPreviewCallbackAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/camera/Camera2;->setPreviewCallbackAllowed(Z)V

    .line 214
    return-void
.end method

.method public setTransformInternal(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/camera/CameraView;->setTransform(Landroid/graphics/Matrix;)V

    .line 160
    return-void
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mShouldOpenCamera:Z

    .line 240
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/CameraView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/camera/Camera2;->openCamera(II)V

    .line 241
    const-string v1, "start1"

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 246
    :goto_0
    return v0

    .line 244
    :cond_0
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mShouldOpenCamera:Z

    .line 245
    const-string v0, "start2"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    move v0, v1

    .line 246
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->closeCamera()V

    .line 251
    return-void
.end method

.method public takePicture()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView;->mCamera:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->takePicture()Z

    .line 218
    const/4 v0, 0x1

    return v0
.end method
