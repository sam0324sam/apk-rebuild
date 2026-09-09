.class public Lcn/com/magnity/magnitymx/camera/Camera2;
.super Ljava/lang/Object;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;,
        Lcn/com/magnity/magnitymx/camera/Camera2$CompareSizesByArea;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_IMAGE_HEIGHT:I = 0x438

.field private static final MAX_IMAGE_WIDTH:I = 0x780

.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH:I = 0x780

.field private static final STATE_PICTURE_TAKEN:I = 0x4

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final STATE_WAITING_NON_PRECAPTURE:I = 0x3

.field private static final STATE_WAITING_PRECAPTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Camera2"


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mDisplayOrientation:I

.field private final mFacing:I

.field private mFlash:I

.field private mFlashSupported:Z

.field private volatile mIsPaused:Z

.field private volatile mIsPausing:Z

.field private mIsPreviewCallbackAllowed:Z

.field private final mOnPreviewImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mOnStillImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewBuffer:[B

.field private mPreviewImageReader:Landroid/media/ImageReader;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private mSensorOrientation:I

.field private volatile mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mStillImageReader:Landroid/media/ImageReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcn/com/magnity/magnitymx/camera/Camera2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcn/com/magnity/magnitymx/camera/CameraViewImpl;)V
    .locals 2
    .param p1, "cameraViewImpl"    # Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    .prologue
    const/4 v1, 0x1

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFacing:I

    .line 135
    new-instance v0, Lcn/com/magnity/magnitymx/camera/Camera2$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/camera/Camera2$1;-><init>(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 196
    new-instance v0, Lcn/com/magnity/magnitymx/camera/Camera2$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/camera/Camera2$2;-><init>(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mOnStillImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewBuffer:[B

    .line 216
    new-instance v0, Lcn/com/magnity/magnitymx/camera/Camera2$3;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/camera/Camera2$3;-><init>(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mOnPreviewImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    .line 257
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 274
    new-instance v0, Lcn/com/magnity/magnitymx/camera/Camera2$4;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/camera/Camera2$4;-><init>(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 399
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/camera/Camera2;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/camera/Camera2;->setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method static synthetic access$1202(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/com/magnity/magnitymx/camera/Camera2;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/camera/Camera2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/com/magnity/magnitymx/camera/Camera2;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    return v0
.end method

.method static synthetic access$1602(Lcn/com/magnity/magnitymx/camera/Camera2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    return p1
.end method

.method static synthetic access$1700(Lcn/com/magnity/magnitymx/camera/Camera2;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->unlockFocus()V

    return-void
.end method

.method static synthetic access$1802(Lcn/com/magnity/magnitymx/camera/Camera2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/camera/Camera2;)Lcn/com/magnity/magnitymx/camera/CameraViewImpl;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/camera/Camera2;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/camera/Camera2;)[B
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewBuffer:[B

    return-object v0
.end method

.method static synthetic access$402(Lcn/com/magnity/magnitymx/camera/Camera2;[B)[B
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # [B

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewBuffer:[B

    return-object p1
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/camera/Camera2;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/camera/Camera2;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    return v0
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/camera/Camera2;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    return p1
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/camera/Camera2;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->captureStillPicture()V

    return-void
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/camera/Camera2;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->runPrecaptureSequence()V

    return-void
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$902(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/camera/Camera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method private captureStillPicture()V
    .locals 6

    .prologue
    .line 868
    :try_start_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v3, :cond_0

    .line 906
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x2

    .line 873
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 874
    .local v0, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 877
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    .line 878
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 877
    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 879
    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 882
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    invoke-direct {p0, v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->getOrientation(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 884
    new-instance v1, Lcn/com/magnity/magnitymx/camera/Camera2$6;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/camera/Camera2$6;-><init>(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    .line 900
    .local v1, "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 902
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    .end local v0    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v1    # "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :catch_0
    move-exception v2

    .line 904
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private static chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .locals 10
    .param p0, "choices"    # [Landroid/util/Size;
    .param p1, "textureViewWidth"    # I
    .param p2, "textureViewHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "aspectRatio"    # Landroid/util/Size;

    .prologue
    const/4 v6, 0x0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "bigEnough":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v2, "notBigEnough":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 373
    .local v4, "w":I
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 374
    .local v1, "h":I
    array-length v7, p0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, p0, v5

    .line 375
    .local v3, "option":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-gt v8, p3, :cond_0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-gt v8, p4, :cond_0

    .line 376
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v9

    mul-int/2addr v9, v1

    div-int/2addr v9, v4

    if-ne v8, v9, :cond_0

    .line 377
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-lt v8, p1, :cond_1

    .line 378
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-lt v8, p2, :cond_1

    .line 379
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 381
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    .end local v3    # "option":Landroid/util/Size;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 389
    new-instance v5, Lcn/com/magnity/magnitymx/camera/Camera2$CompareSizesByArea;

    invoke-direct {v5}, Lcn/com/magnity/magnitymx/camera/Camera2$CompareSizesByArea;-><init>()V

    invoke-static {v0, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 394
    :goto_2
    return-object v5

    .line 390
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 391
    new-instance v5, Lcn/com/magnity/magnitymx/camera/Camera2$CompareSizesByArea;

    invoke-direct {v5}, Lcn/com/magnity/magnitymx/camera/Camera2$CompareSizesByArea;-><init>()V

    invoke-static {v2, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    goto :goto_2

    .line 393
    :cond_4
    const-string v5, "Camera2"

    const-string v7, "Couldn\'t find any suitable preview size"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    aget-object v5, p0, v6

    goto :goto_2
.end method

.method private createCameraPreviewSession()V
    .locals 8

    .prologue
    .line 623
    :try_start_0
    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    invoke-interface {v5}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->getSurfaceTextureInternal()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    .line 624
    .local v4, "texture":Landroid/graphics/SurfaceTexture;
    sget-boolean v5, Lcn/com/magnity/magnitymx/camera/Camera2;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v4    # "texture":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 683
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 627
    .restart local v4    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 630
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 633
    .local v2, "surface":Landroid/view/Surface;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    .line 634
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 635
    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 637
    iget-boolean v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPreviewCallbackAllowed:Z

    if-eqz v5, :cond_1

    .line 638
    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 639
    .local v1, "previewDataSurface":Landroid/view/Surface;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 640
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 646
    .end local v1    # "previewDataSurface":Landroid/view/Surface;
    .local v3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_1
    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v6, Lcn/com/magnity/magnitymx/camera/Camera2$5;

    invoke-direct {v6, p0}, Lcn/com/magnity/magnitymx/camera/Camera2$5;-><init>(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 642
    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    goto :goto_1
.end method

.method private getOrientation(I)I
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 919
    iget v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mSensorOrientation:I

    iget v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    mul-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private lockFocus()V
    .locals 5

    .prologue
    .line 833
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 834
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 833
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 836
    const/4 v1, 0x1

    iput v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    .line 837
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private runPrecaptureSequence()V
    .locals 5

    .prologue
    .line 851
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 852
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 851
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 854
    const/4 v1, 0x2

    iput v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    .line 855
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .param p1, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 945
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFlashSupported:Z

    if-eqz v0, :cond_0

    .line 946
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    .line 947
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 946
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 949
    :cond_0
    return-void
.end method

.method private setUpCameraOutputs(II)V
    .locals 24
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->getContextInternal()Landroid/content/Context;

    move-result-object v11

    .line 411
    .local v11, "context":Landroid/content/Context;
    const-string v2, "camera"

    invoke-virtual {v11, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/camera2/CameraManager;

    .line 413
    .local v15, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v15}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    move/from16 v21, v0

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v2, v0, :cond_7

    aget-object v9, v7, v2

    .line 415
    .local v9, "cameraId":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 418
    .local v10, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 419
    .local v13, "facing":Ljava/lang/Integer;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 413
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :cond_1
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 425
    .local v16, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-eqz v16, :cond_0

    .line 433
    const/16 v2, 0x100

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x300

    const/16 v5, 0x780

    const/16 v6, 0x438

    new-instance v7, Landroid/util/Size;

    const/16 v21, 0x4

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static/range {v2 .. v7}, Lcn/com/magnity/magnitymx/camera/Camera2;->chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object v14

    .line 436
    .local v14, "imageSize":Landroid/util/Size;
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v21, 0x100

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v2, v7, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mOnStillImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 444
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mSensorOrientation:I

    .line 445
    const/16 v19, 0x0

    .line 446
    .local v19, "swappedDimensions":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    div-int/lit8 v2, v2, 0x5a

    packed-switch v2, :pswitch_data_0

    .line 460
    const-string v2, "Camera2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Display rotation is invalid: "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    :goto_1
    const-string v2, "window"

    invoke-virtual {v11, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 464
    .local v20, "windowManager":Landroid/view/WindowManager;
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 465
    .local v17, "metric":Landroid/util/DisplayMetrics;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 466
    move/from16 v3, p1

    .line 467
    .local v3, "rotatedPreviewWidth":I
    move/from16 v4, p2

    .line 468
    .local v4, "rotatedPreviewHeight":I
    move-object/from16 v0, v17

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 469
    .local v5, "maxPreviewWidth":I
    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 471
    .local v6, "maxPreviewHeight":I
    if-eqz v19, :cond_3

    .line 472
    move/from16 v3, p2

    .line 473
    move/from16 v4, p1

    .line 474
    move-object/from16 v0, v17

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 475
    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 478
    :cond_3
    const/16 v2, 0x780

    if-le v5, v2, :cond_4

    .line 479
    const/16 v5, 0x780

    .line 482
    :cond_4
    const/16 v2, 0x438

    if-le v6, v2, :cond_5

    .line 483
    const/16 v6, 0x438

    .line 489
    :cond_5
    const-class v2, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    new-instance v7, Landroid/util/Size;

    const/16 v21, 0x4

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static/range {v2 .. v7}, Lcn/com/magnity/magnitymx/camera/Camera2;->chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPreviewCallbackAllowed:Z

    if-eqz v2, :cond_6

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v21, 0x23

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v2, v7, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mOnPreviewImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 501
    :cond_6
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    .line 502
    .local v18, "orientation":I
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_a

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 504
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v21

    .line 503
    move/from16 v0, v21

    invoke-interface {v2, v7, v0}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->setAspectRatio(II)V

    .line 511
    :goto_2
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 512
    .local v8, "available":Ljava/lang/Boolean;
    if-nez v8, :cond_b

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFlashSupported:Z

    .line 514
    move-object/from16 v0, p0

    iput-object v9, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraId:Ljava/lang/String;

    .line 524
    .end local v3    # "rotatedPreviewWidth":I
    .end local v4    # "rotatedPreviewHeight":I
    .end local v5    # "maxPreviewWidth":I
    .end local v6    # "maxPreviewHeight":I
    .end local v8    # "available":Ljava/lang/Boolean;
    .end local v9    # "cameraId":Ljava/lang/String;
    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v13    # "facing":Ljava/lang/Integer;
    .end local v14    # "imageSize":Landroid/util/Size;
    .end local v16    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v17    # "metric":Landroid/util/DisplayMetrics;
    .end local v18    # "orientation":I
    .end local v19    # "swappedDimensions":Z
    .end local v20    # "windowManager":Landroid/view/WindowManager;
    :cond_7
    :goto_4
    return-void

    .line 449
    .restart local v9    # "cameraId":Ljava/lang/String;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v13    # "facing":Ljava/lang/Integer;
    .restart local v14    # "imageSize":Landroid/util/Size;
    .restart local v16    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v19    # "swappedDimensions":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mSensorOrientation:I

    const/16 v7, 0x5a

    if-eq v2, v7, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mSensorOrientation:I

    const/16 v7, 0x10e

    if-ne v2, v7, :cond_2

    .line 450
    :cond_8
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 455
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mSensorOrientation:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mSensorOrientation:I

    const/16 v7, 0xb4

    if-ne v2, v7, :cond_2

    .line 456
    :cond_9
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 506
    .restart local v3    # "rotatedPreviewWidth":I
    .restart local v4    # "rotatedPreviewHeight":I
    .restart local v5    # "maxPreviewWidth":I
    .restart local v6    # "maxPreviewHeight":I
    .restart local v17    # "metric":Landroid/util/DisplayMetrics;
    .restart local v18    # "orientation":I
    .restart local v20    # "windowManager":Landroid/view/WindowManager;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 507
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v21

    .line 506
    move/from16 v0, v21

    invoke-interface {v2, v7, v0}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->setAspectRatio(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 517
    .end local v3    # "rotatedPreviewWidth":I
    .end local v4    # "rotatedPreviewHeight":I
    .end local v5    # "maxPreviewWidth":I
    .end local v6    # "maxPreviewHeight":I
    .end local v9    # "cameraId":Ljava/lang/String;
    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v13    # "facing":Ljava/lang/Integer;
    .end local v14    # "imageSize":Landroid/util/Size;
    .end local v16    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v17    # "metric":Landroid/util/DisplayMetrics;
    .end local v18    # "orientation":I
    .end local v19    # "swappedDimensions":Z
    .end local v20    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v12

    .line 518
    .local v12, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v12}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_4

    .line 512
    .end local v12    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v3    # "rotatedPreviewWidth":I
    .restart local v4    # "rotatedPreviewHeight":I
    .restart local v5    # "maxPreviewWidth":I
    .restart local v6    # "maxPreviewHeight":I
    .restart local v8    # "available":Ljava/lang/Boolean;
    .restart local v9    # "cameraId":Ljava/lang/String;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v13    # "facing":Ljava/lang/Integer;
    .restart local v14    # "imageSize":Landroid/util/Size;
    .restart local v16    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v17    # "metric":Landroid/util/DisplayMetrics;
    .restart local v18    # "orientation":I
    .restart local v19    # "swappedDimensions":Z
    .restart local v20    # "windowManager":Landroid/view/WindowManager;
    :cond_b
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_3

    .line 519
    .end local v3    # "rotatedPreviewWidth":I
    .end local v4    # "rotatedPreviewHeight":I
    .end local v5    # "maxPreviewWidth":I
    .end local v6    # "maxPreviewHeight":I
    .end local v8    # "available":Ljava/lang/Boolean;
    .end local v9    # "cameraId":Ljava/lang/String;
    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v13    # "facing":Ljava/lang/Integer;
    .end local v14    # "imageSize":Landroid/util/Size;
    .end local v16    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v17    # "metric":Landroid/util/DisplayMetrics;
    .end local v18    # "orientation":I
    .end local v19    # "swappedDimensions":Z
    .end local v20    # "windowManager":Landroid/view/WindowManager;
    :catch_1
    move-exception v12

    .line 522
    .local v12, "e":Ljava/lang/NullPointerException;
    const v2, 0x7f0e003f

    invoke-virtual {v11, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->getContextInternal()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 597
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 598
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    .line 600
    :cond_0
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    .line 606
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 609
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 610
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 611
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private unlockFocus()V
    .locals 5

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 931
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 930
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 932
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 933
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 936
    const/4 v1, 0x0

    iput v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    .line 937
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method closeCamera()V
    .locals 3

    .prologue
    .line 563
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 564
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 566
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 568
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 570
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 572
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 574
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    .line 576
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    .line 577
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 578
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 580
    :cond_3
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->stopBackgroundThread()V

    .line 581
    const/4 v1, 0x0

    iput v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    .line 582
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    .line 583
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 589
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method configureTransform(II)V
    .locals 10
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 767
    iget-object v7, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    if-nez v7, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget v7, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    div-int/lit8 v4, v7, 0x5a

    .line 771
    .local v4, "rotation":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 772
    .local v3, "matrix":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, p1

    int-to-float v8, p2

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 773
    .local v6, "viewRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget-object v7, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 774
    .local v0, "bufferRect":Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 775
    .local v1, "centerX":F
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 776
    .local v2, "centerY":F
    const/4 v7, 0x1

    if-eq v7, v4, :cond_2

    const/4 v7, 0x3

    if-ne v7, v4, :cond_4

    .line 777
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float v7, v1, v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v2, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 778
    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v6, v0, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 779
    int-to-float v7, p2

    iget-object v8, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 780
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, p1

    iget-object v9, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 781
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 779
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 782
    .local v5, "scale":F
    invoke-virtual {v3, v5, v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 783
    add-int/lit8 v7, v4, -0x2

    mul-int/lit8 v7, v7, 0x5a

    int-to-float v7, v7

    invoke-virtual {v3, v7, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 787
    .end local v5    # "scale":F
    :cond_3
    :goto_1
    iget-object v7, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    invoke-interface {v7, v3}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->setTransformInternal(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 784
    :cond_4
    const/4 v7, 0x2

    if-ne v7, v4, :cond_3

    .line 785
    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v3, v7, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1
.end method

.method getPreviewRotation()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method getPreviewSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method isCameraOpened()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPaused()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPaused:Z

    return v0
.end method

.method isPausing()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    return v0
.end method

.method openCamera(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 530
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraViewImpl:Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->getContextInternal()Landroid/content/Context;

    move-result-object v0

    .line 531
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.CAMERA"

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->startBackgroundThread()V

    .line 535
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitymx/camera/Camera2;->setUpCameraOutputs(II)V

    .line 536
    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/camera/Camera2;->configureTransform(II)V

    .line 537
    const-string v3, "camera"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 538
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    if-eqz v2, :cond_0

    .line 542
    :try_start_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 543
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Time out waiting to lock camera opening."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 545
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 554
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 548
    :catch_1
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Interrupted while trying to lock camera opening."

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3

    .line 550
    :catch_2
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 552
    const v3, 0x7f0e003c

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 554
    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method pause()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 791
    iget v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    if-eqz v1, :cond_1

    .line 792
    :cond_0
    const/4 v0, 0x0

    .line 796
    :goto_0
    return v0

    .line 794
    :cond_1
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    .line 795
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->lockFocus()V

    goto :goto_0
.end method

.method resume()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 800
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    if-eqz v1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPaused:Z

    .line 804
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->unlockFocus()V

    .line 805
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 170
    iput p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mDisplayOrientation:I

    .line 171
    return-void
.end method

.method setFlash(I)V
    .locals 6
    .param p1, "flash"    # I

    .prologue
    .line 702
    iget v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFlash:I

    if-ne v2, p1, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFlash:I

    .line 706
    .local v1, "saved":I
    iput p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFlash:I

    .line 707
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_0

    .line 708
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->updateFlash()V

    .line 709
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_0

    .line 711
    :try_start_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iput v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFlash:I

    goto :goto_0
.end method

.method setPreviewCallbackAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPreviewCallbackAllowed:Z

    .line 691
    return-void
.end method

.method takePicture()Z
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    const/4 v0, 0x0

    .line 824
    :goto_0
    return v0

    .line 823
    :cond_1
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/camera/Camera2;->lockFocus()V

    .line 824
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateFlash()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 724
    iget v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mFlash:I

    packed-switch v0, :pswitch_data_0

    .line 756
    :goto_0
    return-void

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 727
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 726
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 729
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 728
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 732
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    .line 733
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 732
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 735
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 734
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 738
    :pswitch_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 739
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 738
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 741
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 740
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 744
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 745
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 744
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 746
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 747
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 746
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 750
    :pswitch_4
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 751
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 750
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 752
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 753
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 752
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
