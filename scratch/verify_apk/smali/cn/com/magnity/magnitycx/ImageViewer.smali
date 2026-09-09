.class public Lcn/com/magnity/magnitycx/ImageViewer;
.super Landroid/view/SurfaceView;
.source "ImageViewer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/com/magnity/magnitycx/sdk/UsbCommunication$DelegateNewFrame;
.implements Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;,
        Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;,
        Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;,
        Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;
    }
.end annotation


# static fields
.field private static final MAX_ROI_NUM:I = 0x1

.field private static imgViewerList_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitycx/ImageViewer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lock_:Ljava/util/concurrent/locks/Lock;

.field private static syncNotifyNewFrame_:Ljava/lang/Object;

.field private static volatile ticks_:[J


# instance fields
.field private aimOrientation_:I

.field private aimX_:I

.field private aimY_:I

.field private bmpIr_:Landroid/graphics/Bitmap;

.field private cachedCanvas_:Landroid/graphics/Canvas;

.field private cachedbmp_:Landroid/graphics/Bitmap;

.field private condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

.field private dx_:I

.field private dy_:I

.field private volatile fpaHeight_:I

.field private volatile fpaWidth_:I

.field private frameIndex_:I

.field private height_:I

.field private holder_:Landroid/view/SurfaceHolder;

.field private volatile imageStableCounter_:I

.field private isAimDrag_:Z

.field private volatile isExitThreadRecording_:Z

.field private volatile isExitThreadRender_:Z

.field private volatile isTempStable_:Z

.field private listRoi_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitycx/ROIInfo;",
            ">;"
        }
    .end annotation
.end field

.field private matrixVGA_:Landroid/graphics/Matrix;

.field private matrix_:Landroid/graphics/Matrix;

.field private paintROIVGA_:Landroid/graphics/Paint;

.field private paintROI_:Landroid/graphics/Paint;

.field private paintVGA_:Landroid/graphics/Paint;

.field private paint_:Landroid/graphics/Paint;

.field private pfd_:Landroid/graphics/PaintFlagsDrawFilter;

.field private recordingTimeElapsed_:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile threadLocalParam_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

.field private threadRecording_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;

.field private threadRender_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;

.field private timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

.field private waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/ImageViewer;->lock_:Ljava/util/concurrent/locks/Lock;

    .line 74
    const/16 v0, 0x14

    new-array v0, v0, [J

    sput-object v0, Lcn/com/magnity/magnitycx/ImageViewer;->ticks_:[J

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/ImageViewer;->syncNotifyNewFrame_:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/ImageViewer;->imgViewerList_:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/WaitCondition;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    .line 44
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/WaitCondition;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    .line 47
    new-instance v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadLocalParam_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->matrix_:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->matrixVGA_:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROI_:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROIVGA_:Landroid/graphics/Paint;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->recordingTimeElapsed_:Ljava/util/concurrent/atomic/AtomicLong;

    .line 196
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->holder_:Landroid/view/SurfaceHolder;

    .line 197
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->holder_:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 198
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 200
    new-instance v0, Lcn/com/magnity/magnitycx/ImageViewer$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/ImageViewer$1;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitycx/ImageViewer;->setZOrderMediaOverlay(Z)V

    .line 206
    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/ImageViewer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->recordingTimeElapsed_:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->matrixVGA_:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitycx/ImageViewer;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Matrix;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/graphics/Paint;
    .param p3, "x3"    # Landroid/graphics/Paint;
    .param p4, "x4"    # Landroid/graphics/Matrix;
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Matrix;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/com/magnity/magnitycx/ImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isExitThreadRender_:Z

    return v0
.end method

.method static synthetic access$1500(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;
    .param p1, "x1"    # Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/ImageViewer;->doDraw(Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcn/com/magnity/magnitycx/ImageViewer;->lock_:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$1800()[J
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcn/com/magnity/magnitycx/ImageViewer;->ticks_:[J

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitycx/ImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isExitThreadRecording_:Z

    return v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitycx/ImageViewer;)Lcn/com/magnity/magnitycx/sdk/WaitCondition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    return-object v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedCanvas_:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitycx/ImageViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/ImageViewer;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROIVGA_:Landroid/graphics/Paint;

    return-object v0
.end method

.method private calculateScreenFit()V
    .locals 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v1

    .local v1, "width":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v0

    .line 305
    .local v0, "height":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 306
    mul-int/lit8 v2, v1, 0x4

    mul-int/lit8 v3, v0, 0x3

    if-le v2, v3, :cond_0

    .line 307
    div-int/lit8 v2, v0, 0xc

    mul-int/lit8 v0, v2, 0xc

    .line 308
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v2, 0x4

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    .line 324
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    .line 325
    iput v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    .line 326
    iput v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    .line 327
    return-void

    .line 310
    :cond_0
    div-int/lit8 v2, v1, 0xc

    mul-int/lit8 v1, v2, 0xc

    .line 311
    mul-int/lit8 v2, v1, 0x4

    div-int/lit8 v0, v2, 0x3

    goto :goto_0

    .line 314
    :cond_1
    mul-int/lit8 v2, v1, 0x3

    mul-int/lit8 v3, v0, 0x4

    if-le v2, v3, :cond_2

    .line 315
    div-int/lit8 v2, v0, 0xc

    mul-int/lit8 v0, v2, 0xc

    .line 316
    mul-int/lit8 v2, v0, 0x4

    div-int/lit8 v1, v2, 0x3

    goto :goto_0

    .line 318
    :cond_2
    div-int/lit8 v2, v1, 0xc

    mul-int/lit8 v1, v2, 0xc

    .line 319
    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v0, v2, 0x4

    goto :goto_0
.end method

.method private doDraw(Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    .locals 12
    .param p1, "param"    # Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    .prologue
    .line 634
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 635
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz v2, :cond_4

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->calculateScreenFit()V

    :goto_0
    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    if-gtz v8, :cond_1

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v8

    iput v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v8

    iput v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    const/4 v8, 0x0

    iput v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    iput v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    .line 636
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROI_:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/com/magnity/magnitycx/ImageViewer;->matrix_:Landroid/graphics/Matrix;

    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    iget v7, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcn/com/magnity/magnitycx/ImageViewer;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Matrix;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    .line 637
    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    iget v4, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    iget v5, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    iget v7, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/com/magnity/magnitycx/ImageViewer;->drawMarginBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 638
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 639
    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    iget v4, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    iget v5, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    iget v7, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->recordingTimeElapsed_:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcn/com/magnity/magnitycx/ImageViewer;->drawRecordingTime(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIJ)V

    .line 643
    :cond_2
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 644
    invoke-virtual {p1}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getMovingCrossLogo()Landroid/graphics/Bitmap;

    move-result-object v11

    .local v11, "crossLogo":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_3

    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowMovingCross:Z

    if-eqz v1, :cond_3

    .line 645
    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 648
    .end local v11    # "crossLogo":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 650
    :cond_4
    return-void
.end method

.method private drawFps(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "recvFps"    # I
    .param p8, "showFps"    # I

    .prologue
    .line 653
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 654
    .local v0, "p":Landroid/graphics/Paint;
    const v3, -0xff0100

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 655
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 657
    const-string v3, "\u63a5\u6536\u5e27\u7387:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "s":Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 659
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 660
    add-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, p4

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 662
    const-string v3, "\u663e\u793a\u5e27\u7387:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 663
    add-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 664
    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Matrix;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "paintROI"    # Landroid/graphics/Paint;
    .param p4, "matrix"    # Landroid/graphics/Matrix;
    .param p5, "dx"    # I
    .param p6, "dy"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "osdParam"    # Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    .prologue
    .line 850
    const/16 v24, 0x0

    .local v24, "ratioX":F
    const/16 v25, 0x0

    .line 851
    .local v25, "ratioY":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Matrix;->reset()V

    .line 852
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 853
    .local v8, "rect":Landroid/graphics/Rect;
    const/16 v23, 0x0

    .line 855
    .local v23, "param":Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getPreviewOrientation()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 885
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->pfd_:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 887
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 890
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->threadLocalParam_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

    move-object/from16 v23, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 895
    :goto_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 897
    sget-object v21, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    .line 900
    .local v21, "magParameter":Lcn/com/magnity/magnitycx/sdk/MagParameter;
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    if-eqz v4, :cond_0

    invoke-virtual/range {p9 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getCrossLogo()Landroid/graphics/Bitmap;

    move-result-object v18

    .local v18, "crossLogo":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_0

    .line 901
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p7, v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, p5

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, p8, v5

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, p6

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 902
    const-string v27, ""

    .line 903
    .local v27, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->isTempStable_:Z

    if-eqz v4, :cond_8

    .line 904
    const-string v4, "%.1f\u2103"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    iget v7, v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->centerTemp:I

    int-to-float v7, v7

    const v9, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 908
    :goto_2
    const/4 v4, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4, v5, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 909
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v22, v4, 0x6

    .line 910
    .local v22, "offset":I
    div-int/lit8 v4, p7, 0x2

    add-int v4, v4, p5

    add-int v4, v4, v22

    int-to-float v4, v4

    div-int/lit8 v5, p8, 0x2

    add-int v5, v5, p6

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    add-int v5, v5, v22

    int-to-float v5, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 914
    .end local v18    # "crossLogo":Landroid/graphics/Bitmap;
    .end local v22    # "offset":I
    .end local v27    # "str":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isLaserOn:Z

    if-eqz v4, :cond_3

    invoke-virtual/range {p9 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getLaserLogo()Landroid/graphics/Bitmap;

    move-result-object v19

    .local v19, "laserLogo":Landroid/graphics/Bitmap;
    if-eqz v19, :cond_3

    .line 915
    move-object/from16 v0, v21

    iget-object v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara2:Lcn/com/magnity/magnitycx/sdk/BasePara2;

    iget v0, v4, Lcn/com/magnity/magnitycx/sdk/BasePara2;->laserPos:I

    move/from16 v20, v0

    .line 916
    .local v20, "laserPos":I
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    .line 917
    .local v29, "x":I
    shr-int/lit8 v30, v20, 0x10

    .line 919
    .local v30, "y":I
    move-object/from16 v0, v21

    iget v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    packed-switch v4, :pswitch_data_0

    .line 941
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->sensorXY2ScreenXY(IIII)[I

    move-result-object v26

    .line 943
    .local v26, "screenCoor":[I
    move-object/from16 v0, v21

    iget v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 944
    const/4 v4, 0x0

    add-int/lit8 v5, p7, -0x1

    const/4 v6, 0x0

    aget v6, v26, v6

    sub-int/2addr v5, v6

    aput v5, v26, v4

    .line 946
    :cond_1
    move-object/from16 v0, v21

    iget v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageFlip:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 947
    const/4 v4, 0x1

    add-int/lit8 v5, p8, -0x1

    const/4 v6, 0x1

    aget v6, v26, v6

    sub-int/2addr v5, v6

    aput v5, v26, v4

    .line 950
    :cond_2
    const/4 v4, 0x0

    aget v4, v26, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p5

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v26, v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int v5, v5, p6

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 957
    .end local v19    # "laserLogo":Landroid/graphics/Bitmap;
    .end local v20    # "laserPos":I
    .end local v26    # "screenCoor":[I
    .end local v29    # "x":I
    .end local v30    # "y":I
    :cond_3
    move-object/from16 v0, v21

    iget v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, v23

    iget-object v4, v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->state:Lcn/com/magnity/magnitycx/sdk/State;

    if-eqz v4, :cond_4

    .line 959
    move-object/from16 v0, v23

    iget-object v7, v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->state:Lcn/com/magnity/magnitycx/sdk/State;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcn/com/magnity/magnitycx/ImageViewer;->drawMaxMin(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcn/com/magnity/magnitycx/sdk/State;Landroid/graphics/Rect;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    .line 962
    :cond_4
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    .line 963
    invoke-direct/range {v4 .. v13}, Lcn/com/magnity/magnitycx/ImageViewer;->drawROIs(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Rect;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    .line 966
    :cond_5
    invoke-virtual/range {p9 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getWaterMark()Landroid/graphics/Bitmap;

    move-result-object v28

    .line 967
    .local v28, "waterMark":Landroid/graphics/Bitmap;
    if-eqz v28, :cond_6

    .line 968
    add-int v4, p5, p7

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x8

    int-to-float v4, v4

    add-int/lit8 v5, p6, 0x8

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 971
    :cond_6
    sget-boolean v4, Lcn/com/magnity/magnitycx/MagApplication;->isShowFps:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->frameIndex_:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_7

    .line 972
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->getReceivedFps()I

    move-result v16

    invoke-static {}, Lcn/com/magnity/magnitycx/ImageViewer;->getShowFps()I

    move-result v17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    invoke-direct/range {v9 .. v17}, Lcn/com/magnity/magnitycx/ImageViewer;->drawFps(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIII)V

    .line 974
    :cond_7
    return-void

    .line 857
    .end local v21    # "magParameter":Lcn/com/magnity/magnitycx/sdk/MagParameter;
    .end local v28    # "waterMark":Landroid/graphics/Bitmap;
    :sswitch_0
    move/from16 v0, p7

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 858
    move/from16 v0, p8

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 859
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 860
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 863
    :sswitch_1
    move/from16 v0, p7

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 864
    move/from16 v0, p8

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 865
    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 866
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    add-int v4, v4, p5

    int-to-float v4, v4

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 867
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v0, p4

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 870
    :sswitch_2
    move/from16 v0, p7

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 871
    move/from16 v0, p8

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 872
    const/high16 v4, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 873
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 874
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v0, p4

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 877
    :sswitch_3
    move/from16 v0, p7

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 878
    move/from16 v0, p8

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 879
    const/high16 v4, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 880
    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    add-int v5, v5, p6

    int-to-float v5, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 881
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v0, p4

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 891
    :catch_0
    move-exception v4

    .line 893
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    throw v4

    .line 906
    .restart local v18    # "crossLogo":Landroid/graphics/Bitmap;
    .restart local v21    # "magParameter":Lcn/com/magnity/magnitycx/sdk/MagParameter;
    .restart local v27    # "str":Ljava/lang/String;
    :cond_8
    const-string v4, "~%.1f\u2103"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    iget v7, v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->centerTemp:I

    int-to-float v7, v7

    const v9, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 924
    .end local v18    # "crossLogo":Landroid/graphics/Bitmap;
    .end local v27    # "str":Ljava/lang/String;
    .restart local v19    # "laserLogo":Landroid/graphics/Bitmap;
    .restart local v20    # "laserPos":I
    .restart local v29    # "x":I
    .restart local v30    # "y":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v29, v4

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v5, v5, 0x2

    add-int v29, v4, v5

    .line 925
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v30, v4

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v5, v5, 0x2

    add-int v30, v4, v5

    .line 926
    goto/16 :goto_3

    .line 928
    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v29, v4

    mul-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v5, v5, 0x2

    add-int v29, v4, v5

    .line 929
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v30, v4

    mul-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v5, v5, 0x2

    add-int v30, v4, v5

    .line 930
    goto/16 :goto_3

    .line 932
    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v29, v4

    mul-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v5, v5, 0x2

    add-int v29, v4, v5

    .line 933
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v30, v4

    mul-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v5, v5, 0x2

    add-int v30, v4, v5

    .line 934
    goto/16 :goto_3

    .line 936
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v29, v4

    mul-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    div-int/lit8 v5, v5, 0x2

    add-int v29, v4, v5

    .line 937
    move-object/from16 v0, p0

    iget v4, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v30, v4

    mul-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iget v5, v0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    div-int/lit8 v5, v5, 0x2

    add-int v30, v4, v5

    goto/16 :goto_3

    .line 855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawMarginBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    if-gtz p5, :cond_0

    if-gtz p6, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 689
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 690
    .local v8, "oldColor":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    int-to-float v3, p3

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 692
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, p4

    move-object v0, p1

    move v2, v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 693
    add-int v0, p3, p5

    int-to-float v3, v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v2, p1

    move v4, v1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 694
    add-int v0, p4, p6

    int-to-float v2, v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 695
    invoke-virtual {p2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 696
    return-void
.end method

.method private drawMaxMin(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcn/com/magnity/magnitycx/sdk/State;Landroid/graphics/Rect;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "state"    # Lcn/com/magnity/magnitycx/sdk/State;
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "dx"    # I
    .param p6, "dy"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "osdParam"    # Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    .prologue
    .line 780
    invoke-virtual/range {p9 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getMaxTrace()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 781
    .local v6, "maxTrace":Landroid/graphics/Bitmap;
    invoke-virtual/range {p9 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getMinTrace()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 784
    .local v7, "minTrace":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/com/magnity/magnitycx/ImageViewer;->isTempStable_:Z

    if-eqz v13, :cond_1

    .line 785
    const-string v5, "%.1f\u2103"

    .line 790
    .local v5, "format":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 846
    :cond_0
    :goto_1
    return-void

    .line 787
    .end local v5    # "format":Ljava/lang/String;
    :cond_1
    const-string v5, "~%.1f\u2103"

    .restart local v5    # "format":Ljava/lang/String;
    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v8, v13, 0x6

    .line 797
    .local v8, "pad":I
    sget-object v13, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v10, v13, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    .line 799
    .local v10, "traceType":I
    if-eqz v10, :cond_3

    const/4 v13, 0x2

    if-ne v10, v13, :cond_6

    .line 801
    :cond_3
    move-object/from16 v0, p3

    iget v13, v0, Lcn/com/magnity/magnitycx/sdk/State;->intMaxX:I

    move-object/from16 v0, p3

    iget v14, v0, Lcn/com/magnity/magnitycx/sdk/State;->intMaxY:I

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v13, v14, v0, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object v2

    .line 802
    .local v2, "coor":[I
    if-eqz v2, :cond_6

    .line 803
    const/4 v13, 0x0

    aget v13, v2, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    add-int v13, v13, p5

    int-to-float v13, v13

    const/4 v14, 0x1

    aget v14, v2, v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int v14, v14, p6

    int-to-float v14, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v13, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 804
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    iget v15, v0, Lcn/com/magnity/magnitycx/sdk/State;->intMaxTemperature:I

    int-to-float v15, v15

    const v16, 0x3a83126f    # 0.001f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v5, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 805
    .local v9, "str":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v9, v13, v14, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 806
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 807
    .local v3, "cx":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 808
    .local v4, "cy":I
    const/4 v13, 0x0

    aget v13, v2, v13

    add-int v11, v13, v8

    .line 809
    .local v11, "x":I
    const/4 v13, 0x1

    aget v13, v2, v13

    add-int/2addr v13, v4

    add-int v12, v13, v8

    .line 810
    .local v12, "y":I
    sub-int v13, p7, v3

    if-le v11, v13, :cond_4

    .line 811
    const/4 v13, 0x0

    aget v13, v2, v13

    sub-int/2addr v13, v8

    sub-int v11, v13, v3

    .line 813
    :cond_4
    move/from16 v0, p8

    if-le v12, v0, :cond_5

    .line 814
    const/4 v13, 0x1

    aget v13, v2, v13

    sub-int/2addr v13, v8

    sub-int v12, v13, v4

    .line 816
    :cond_5
    add-int v13, v11, p5

    int-to-float v13, v13

    add-int v14, v12, p6

    int-to-float v14, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v13, v14, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 821
    .end local v2    # "coor":[I
    .end local v3    # "cx":I
    .end local v4    # "cy":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_6
    const/4 v13, 0x1

    if-eq v10, v13, :cond_7

    const/4 v13, 0x2

    if-ne v10, v13, :cond_0

    .line 823
    :cond_7
    move-object/from16 v0, p3

    iget v13, v0, Lcn/com/magnity/magnitycx/sdk/State;->intMinX:I

    move-object/from16 v0, p3

    iget v14, v0, Lcn/com/magnity/magnitycx/sdk/State;->intMinY:I

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v13, v14, v0, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object v2

    .line 824
    .restart local v2    # "coor":[I
    if-eqz v2, :cond_0

    .line 825
    const/4 v13, 0x0

    aget v13, v2, v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    add-int v13, v13, p5

    int-to-float v13, v13

    const/4 v14, 0x1

    aget v14, v2, v14

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int v14, v14, p6

    int-to-float v14, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v13, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 826
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    iget v15, v0, Lcn/com/magnity/magnitycx/sdk/State;->intMinTemperature:I

    int-to-float v15, v15

    const v16, 0x3a83126f    # 0.001f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v5, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 827
    .restart local v9    # "str":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v9, v13, v14, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 828
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 829
    .restart local v3    # "cx":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 830
    .restart local v4    # "cy":I
    const/4 v13, 0x0

    aget v13, v2, v13

    add-int v11, v13, v8

    .line 831
    .restart local v11    # "x":I
    const/4 v13, 0x1

    aget v13, v2, v13

    add-int/2addr v13, v4

    add-int v12, v13, v8

    .line 832
    .restart local v12    # "y":I
    sub-int v13, p7, v3

    if-le v11, v13, :cond_8

    .line 833
    const/4 v13, 0x0

    aget v13, v2, v13

    sub-int/2addr v13, v8

    sub-int v11, v13, v3

    .line 835
    :cond_8
    move/from16 v0, p8

    if-le v12, v0, :cond_9

    .line 836
    const/4 v13, 0x1

    aget v13, v2, v13

    sub-int/2addr v13, v8

    sub-int v12, v13, v4

    .line 838
    :cond_9
    add-int v13, v11, p5

    int-to-float v13, v13

    add-int v14, v12, p6

    int-to-float v14, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v13, v14, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private drawROIs(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Rect;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "paintROI"    # Landroid/graphics/Paint;
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "dx"    # I
    .param p6, "dy"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "osdParam"    # Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    .prologue
    .line 699
    invoke-virtual/range {p9 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getMaxTrace()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 700
    .local v14, "maxTrace":Landroid/graphics/Bitmap;
    invoke-virtual/range {p9 .. p9}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->getMinTrace()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 701
    .local v15, "minTrace":Landroid/graphics/Bitmap;
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->maxMinTrace:I

    move/from16 v19, v0

    .line 704
    .local v19, "traceType":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/com/magnity/magnitycx/ImageViewer;->isTempStable_:Z

    if-eqz v3, :cond_8

    .line 705
    const-string v13, "%.1f\u2103"

    .line 710
    .local v13, "format":Ljava/lang/String;
    :goto_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v16, v3, 0x6

    .line 712
    .local v16, "pad":I
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->lock()V

    .line 715
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/com/magnity/magnitycx/ROIInfo;

    .line 716
    .local v17, "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 720
    :pswitch_1
    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getBeginPointX()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getBeginPointY()I

    move-result v4

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v3, v4, v0, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object v9

    .line 721
    .local v9, "coor":[I
    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getEndPointX()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getEndPointY()I

    move-result v4

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v3, v4, v0, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientXY2ScreenXY(IIII)[I

    move-result-object v10

    .line 722
    .local v10, "coor2":[I
    const/4 v3, 0x0

    aget v3, v9, v3

    add-int v3, v3, p5

    int-to-float v4, v3

    const/4 v3, 0x1

    aget v3, v9, v3

    add-int v3, v3, p6

    int-to-float v5, v3

    const/4 v3, 0x0

    aget v3, v10, v3

    add-int v3, v3, p5

    int-to-float v6, v3

    const/4 v3, 0x1

    aget v3, v10, v3

    add-int v3, v3, p6

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 724
    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->isTempValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    if-eqz v19, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v19

    if-eq v0, v3, :cond_1

    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    .line 730
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getMaxPos()I

    move-result v3

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v3, v0, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientPos2ScreenXY(III)[I

    move-result-object v9

    .line 731
    if-eqz v9, :cond_4

    .line 732
    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p5

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p6

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 733
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getMaxTemp()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3a83126f    # 0.001f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 734
    .local v18, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 735
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 736
    .local v11, "cx":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 737
    .local v12, "cy":I
    const/4 v3, 0x0

    aget v3, v9, v3

    add-int v20, v3, v16

    .line 738
    .local v20, "x":I
    const/4 v3, 0x1

    aget v3, v9, v3

    add-int/2addr v3, v12

    add-int v21, v3, v16

    .line 739
    .local v21, "y":I
    sub-int v3, p7, v11

    move/from16 v0, v20

    if-le v0, v3, :cond_2

    .line 740
    const/4 v3, 0x0

    aget v3, v9, v3

    sub-int v3, v3, v16

    sub-int v20, v3, v11

    .line 742
    :cond_2
    move/from16 v0, v21

    move/from16 v1, p8

    if-le v0, v1, :cond_3

    .line 743
    const/4 v3, 0x1

    aget v3, v9, v3

    sub-int v3, v3, v16

    sub-int v21, v3, v12

    .line 745
    :cond_3
    add-int v3, v20, p5

    int-to-float v3, v3

    add-int v4, v21, p6

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 749
    .end local v11    # "cx":I
    .end local v12    # "cy":I
    .end local v18    # "str":Ljava/lang/String;
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_0

    .line 751
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getMinPos()I

    move-result v3

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v3, v0, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->clientPos2ScreenXY(III)[I

    move-result-object v9

    .line 752
    if-eqz v9, :cond_0

    .line 753
    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p5

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int v4, v4, p6

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 754
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitycx/ROIInfo;->getMinTemp()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3a83126f    # 0.001f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 755
    .restart local v18    # "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 756
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 757
    .restart local v11    # "cx":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 758
    .restart local v12    # "cy":I
    const/4 v3, 0x0

    aget v3, v9, v3

    add-int v20, v3, v16

    .line 759
    .restart local v20    # "x":I
    const/4 v3, 0x1

    aget v3, v9, v3

    add-int/2addr v3, v12

    add-int v21, v3, v16

    .line 760
    .restart local v21    # "y":I
    sub-int v3, p7, v11

    move/from16 v0, v20

    if-le v0, v3, :cond_6

    .line 761
    const/4 v3, 0x0

    aget v3, v9, v3

    sub-int v3, v3, v16

    sub-int v20, v3, v11

    .line 763
    :cond_6
    move/from16 v0, v21

    move/from16 v1, p8

    if-le v0, v1, :cond_7

    .line 764
    const/4 v3, 0x1

    aget v3, v9, v3

    sub-int v3, v3, v16

    sub-int v21, v3, v12

    .line 766
    :cond_7
    add-int v3, v20, p5

    int-to-float v3, v3

    add-int v4, v21, p6

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 774
    .end local v9    # "coor":[I
    .end local v10    # "coor2":[I
    .end local v11    # "cx":I
    .end local v12    # "cy":I
    .end local v17    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    .end local v18    # "str":Ljava/lang/String;
    .end local v20    # "x":I
    .end local v21    # "y":I
    :catchall_0
    move-exception v3

    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    throw v3

    .line 707
    .end local v13    # "format":Ljava/lang/String;
    .end local v16    # "pad":I
    :cond_8
    const-string v13, "~%.1f\u2103"

    .restart local v13    # "format":Ljava/lang/String;
    goto/16 :goto_0

    .line 774
    .restart local v16    # "pad":I
    :cond_9
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    .line 776
    return-void

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawRecordingTime(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIJ)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "seconds"    # J

    .prologue
    .line 667
    const-wide/16 v12, 0xe10

    div-long v4, p7, v12

    .line 668
    .local v4, "hour":J
    const-wide/16 v12, 0xe10

    mul-long/2addr v12, v4

    sub-long v12, p7, v12

    const-wide/16 v14, 0x3c

    div-long v6, v12, v14

    .line 669
    .local v6, "min":J
    const-wide/16 v12, 0xe10

    mul-long/2addr v12, v4

    sub-long v12, p7, v12

    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v6

    sub-long v10, v12, v14

    .line 671
    .local v10, "sec":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 672
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 673
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "hms":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    .line 676
    .local v8, "oldFontSize":F
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900ad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    .line 678
    .local v3, "oldFontColor":I
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d002e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 680
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 681
    .local v9, "rect":Landroid/graphics/Rect;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "8"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int v12, v12, p3

    int-to-float v12, v12

    add-int v13, p4, p6

    add-int/lit8 v13, v13, -0x14

    int-to-float v13, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v12, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 684
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 685
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 686
    return-void
.end method

.method private static getShowFps()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1073
    sget-object v3, Lcn/com/magnity/magnitycx/ImageViewer;->ticks_:[J

    array-length v3, v3

    new-array v2, v3, [J

    .line 1074
    .local v2, "ticks":[J
    sget-object v3, Lcn/com/magnity/magnitycx/ImageViewer;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1075
    sget-object v3, Lcn/com/magnity/magnitycx/ImageViewer;->ticks_:[J

    sget-object v4, Lcn/com/magnity/magnitycx/ImageViewer;->ticks_:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1076
    sget-object v3, Lcn/com/magnity/magnitycx/ImageViewer;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1078
    const/4 v1, 0x0

    .line 1079
    .local v1, "sum":I
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1080
    int-to-long v4, v1

    aget-wide v6, v2, v0

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 1079
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1082
    :cond_0
    sget-object v3, Lcn/com/magnity/magnitycx/ImageViewer;->ticks_:[J

    array-length v3, v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/2addr v3, v1

    return v3
.end method

.method private invalidate_()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 211
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 212
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recordingOneFrame()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 218
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateUiTemps(II)V
    .locals 14
    .param p1, "fpaWidth"    # I
    .param p2, "fpaHeight"    # I

    .prologue
    .line 224
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getPreviewOrientation()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 232
    add-int/lit8 v0, p1, 0x1

    mul-int v0, v0, p2

    div-int/lit8 v11, v0, 0x2

    .line 237
    .local v11, "pos":I
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadLocalParam_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v11, v1, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getTemperature(IIZ)I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->centerTemp:I

    .line 238
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadLocalParam_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getState()Lcn/com/magnity/magnitycx/sdk/State;

    move-result-object v1

    iput-object v1, v0, Lcn/com/magnity/magnitycx/ImageViewer$ThreadLocalParam;->state:Lcn/com/magnity/magnitycx/sdk/State;

    .line 240
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->lock()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/com/magnity/magnitycx/ROIInfo;

    .line 243
    .local v12, "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    invoke-virtual {v12}, Lcn/com/magnity/magnitycx/ROIInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 247
    :pswitch_1
    const/4 v0, 0x5

    new-array v4, v0, [I

    .line 248
    .local v4, "info":[I
    invoke-virtual {v12}, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v12}, Lcn/com/magnity/magnitycx/ROIInfo;->getBeginPointX()I

    move-result v0

    invoke-virtual {v12}, Lcn/com/magnity/magnitycx/ROIInfo;->getBeginPointY()I

    move-result v1

    .line 253
    invoke-virtual {v12}, Lcn/com/magnity/magnitycx/ROIInfo;->getEndPointX()I

    move-result v2

    invoke-virtual {v12}, Lcn/com/magnity/magnitycx/ROIInfo;->getEndPointY()I

    move-result v3

    const/4 v5, 0x0

    .line 251
    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getRectTemperatureInfo(IIII[IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    aget v6, v4, v0

    const/4 v0, 0x1

    aget v7, v4, v0

    const/4 v0, 0x2

    aget v8, v4, v0

    const/4 v0, 0x3

    aget v9, v4, v0

    const/4 v0, 0x4

    aget v10, v4, v0

    move-object v5, v12

    invoke-virtual/range {v5 .. v10}, Lcn/com/magnity/magnitycx/ROIInfo;->setTempInfo(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 262
    .end local v4    # "info":[I
    .end local v12    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    throw v0

    .line 227
    .end local v11    # "pos":I
    :sswitch_0
    add-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p1

    div-int/lit8 v11, v0, 0x2

    .line 228
    .restart local v11    # "pos":I
    goto :goto_0

    .line 262
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    .line 264
    return-void

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb4 -> :sswitch_0
    .end sparse-switch

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getImageStableCounter()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->imageStableCounter_:I

    return v0
.end method

.method public getTempStableFlag()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isTempStable_:Z

    return v0
.end method

.method public initData(II)V
    .locals 1
    .param p1, "fpaWidth"    # I
    .param p2, "fpaHeight"    # I

    .prologue
    .line 267
    iput p1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    .line 268
    iput p2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    .line 270
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 271
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onCapture()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 482
    new-instance v9, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V

    .line 483
    .local v9, "osdParam":Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;
    const v0, 0x7f030007

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setCrossLogo(I)V

    .line 484
    const v0, 0x7f03003c

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setWaterMark(I)V

    .line 485
    const v0, 0x7f030020

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setMinTrace(I)V

    .line 486
    const v0, 0x7f030019

    invoke-virtual {v9, v0}, Lcn/com/magnity/magnitycx/ImageViewer$OSDParam;->setMaxTrace(I)V

    .line 489
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 490
    iget v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    invoke-direct {p0, v0, v1}, Lcn/com/magnity/magnitycx/ImageViewer;->updateUiTemps(II)V

    .line 491
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 493
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedCanvas_:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROIVGA_:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/com/magnity/magnitycx/ImageViewer;->matrixVGA_:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    .line 494
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v0, p0

    move v6, v5

    .line 493
    invoke-direct/range {v0 .. v9}, Lcn/com/magnity/magnitycx/ImageViewer;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Matrix;IIIILcn/com/magnity/magnitycx/ImageViewer$OSDParam;)V

    .line 495
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onCaptureFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 500
    return-void
.end method

.method public onNewFrameReceived(II)V
    .locals 3
    .param p1, "fpaTemp"    # I
    .param p2, "camTemp"    # I

    .prologue
    .line 282
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 283
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->bmpIr_:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    iget v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getOutputBMPData(Landroid/graphics/Bitmap;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->frameIndex_:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->frameIndex_:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_1

    .line 289
    iget v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaWidth_:I

    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->fpaHeight_:I

    invoke-direct {p0, v0, v1}, Lcn/com/magnity/magnitycx/ImageViewer;->updateUiTemps(II)V

    .line 291
    :cond_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 294
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->recordingOneFrame()V

    .line 299
    :cond_2
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->invalidate_()V

    goto :goto_0
.end method

.method public onStartRecording(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 466
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x800

    const/16 v4, 0x14

    const/4 v5, 0x5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->startRecording(Ljava/lang/String;IIIII)Z

    move-result v6

    .line 467
    .local v6, "ret":Z
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->recordingTimeElapsed_:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 468
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    invoke-virtual {v0, v8, v9, v8, v9}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->start(JJ)V

    .line 469
    return v6
.end method

.method public onStopRecording()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->stop()V

    .line 475
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->stopRecording()V

    .line 478
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 504
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isProcessImage()Z

    move-result v8

    if-nez v8, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v6

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 510
    :pswitch_0
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    if-eqz v8, :cond_5

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    sub-int/2addr v8, v9

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    iget v11, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    .line 511
    invoke-static {v8, v9, v10, v11}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object v0

    .line 513
    .local v0, "coor":[I
    const/4 v1, 0x0

    .line 515
    .local v1, "isPointInROI":Z
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->lock()V

    .line 517
    :try_start_0
    iget-object v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 518
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/com/magnity/magnitycx/ROIInfo;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 519
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitycx/ROIInfo;

    .line 520
    .local v5, "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v9, 0x1

    aget v9, v0, v9

    invoke-virtual {v5, v8, v9}, Lcn/com/magnity/magnitycx/ROIInfo;->isPointIn(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 521
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 522
    const/4 v1, 0x1

    .line 526
    .end local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    :cond_3
    if-nez v1, :cond_4

    .line 527
    iget-object v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 528
    iget-object v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :cond_4
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    .line 535
    new-instance v5, Lcn/com/magnity/magnitycx/ROIInfo;

    invoke-direct {v5, v7}, Lcn/com/magnity/magnitycx/ROIInfo;-><init>(I)V

    .line 536
    .restart local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    aget v8, v0, v6

    aget v9, v0, v7

    invoke-virtual {v5, v8, v9}, Lcn/com/magnity/magnitycx/ROIInfo;->setBeginPoint(II)V

    .line 537
    aget v6, v0, v6

    aget v8, v0, v7

    invoke-virtual {v5, v6, v8}, Lcn/com/magnity/magnitycx/ROIInfo;->setEndPoint(II)V

    .line 539
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->lock()V

    .line 541
    :try_start_1
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 543
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    move v6, v7

    .line 546
    goto :goto_0

    .line 532
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/com/magnity/magnitycx/ROIInfo;>;"
    .end local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    :catchall_0
    move-exception v6

    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    throw v6

    .line 543
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/com/magnity/magnitycx/ROIInfo;>;"
    .restart local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    :catchall_1
    move-exception v6

    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    throw v6

    .line 547
    .end local v0    # "coor":[I
    .end local v1    # "isPointInROI":Z
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/com/magnity/magnitycx/ROIInfo;>;"
    .end local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    :cond_5
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v8, v8, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-ne v8, v7, :cond_0

    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowMovingCross:Z

    if-eqz v8, :cond_0

    .line 549
    const/16 v4, 0x30

    .line 550
    .local v4, "offset":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    add-int/lit8 v9, v9, -0x30

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    add-int/lit8 v9, v9, 0x30

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    add-int/lit8 v9, v9, -0x30

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    add-int/lit8 v9, v9, 0x30

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 552
    iput-boolean v7, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isAimDrag_:Z

    move v6, v7

    .line 553
    goto/16 :goto_0

    .line 559
    .end local v4    # "offset":I
    :pswitch_1
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    if-eqz v8, :cond_7

    .line 560
    iget-object v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 561
    .local v3, "num":I
    if-lt v3, v7, :cond_0

    .line 564
    iget-object v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitycx/ROIInfo;

    .line 565
    .restart local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    sub-int/2addr v6, v8

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    iget v10, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    .line 565
    invoke-static {v6, v8, v9, v10}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object v0

    .line 567
    .restart local v0    # "coor":[I
    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/ROIInfo;->isFinished()Z

    move-result v6

    if-nez v6, :cond_6

    .line 568
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->lock()V

    .line 570
    const/4 v6, 0x0

    :try_start_2
    aget v6, v0, v6

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-virtual {v5, v6, v8}, Lcn/com/magnity/magnitycx/ROIInfo;->setEndPoint(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 572
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    :cond_6
    move v6, v7

    .line 576
    goto/16 :goto_0

    .line 572
    :catchall_2
    move-exception v6

    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    throw v6

    .line 577
    .end local v0    # "coor":[I
    .end local v3    # "num":I
    .end local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    :cond_7
    iget-boolean v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isAimDrag_:Z

    if-eqz v8, :cond_0

    .line 578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    .line 581
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    if-ge v6, v8, :cond_a

    .line 582
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    iput v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    .line 587
    :cond_8
    :goto_1
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    if-ge v6, v8, :cond_b

    .line 588
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    iput v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    .line 593
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->invalidate_()V

    move v6, v7

    .line 594
    goto/16 :goto_0

    .line 583
    :cond_a
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    add-int/2addr v8, v9

    if-le v6, v8, :cond_8

    .line 584
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    add-int/2addr v6, v8

    iput v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    goto :goto_1

    .line 589
    :cond_b
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    add-int/2addr v8, v9

    if-le v6, v8, :cond_9

    .line 590
    iget v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    iget v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    add-int/2addr v6, v8

    iput v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    goto :goto_2

    .line 599
    :pswitch_2
    sget-object v8, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v8, v8, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    if-eqz v8, :cond_d

    .line 600
    iget-object v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 601
    .restart local v3    # "num":I
    if-lt v3, v7, :cond_0

    .line 604
    iget-object v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitycx/ROIInfo;

    .line 605
    .restart local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dx_:I

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcn/com/magnity/magnitycx/ImageViewer;->dy_:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcn/com/magnity/magnitycx/ImageViewer;->width_:I

    iget v11, p0, Lcn/com/magnity/magnitycx/ImageViewer;->height_:I

    invoke-static {v8, v9, v10, v11}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->screenXY2ClientXY(IIII)[I

    move-result-object v0

    .line 607
    .restart local v0    # "coor":[I
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->lock()V

    .line 610
    const/4 v8, 0x0

    :try_start_3
    aget v8, v0, v8

    const/4 v9, 0x1

    aget v9, v0, v9

    invoke-virtual {v5, v8, v9}, Lcn/com/magnity/magnitycx/ROIInfo;->setEndPoint(II)V

    .line 611
    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth()Z

    move-result v8

    if-nez v8, :cond_c

    .line 612
    iget-object v7, p0, Lcn/com/magnity/magnitycx/ImageViewer;->listRoi_:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 617
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    goto/16 :goto_0

    .line 615
    :cond_c
    :try_start_4
    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/ROIInfo;->setFinished()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 617
    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    .line 619
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->invalidate_()V

    move v6, v7

    .line 620
    goto/16 :goto_0

    .line 617
    :catchall_3
    move-exception v6

    invoke-static {}, Lcn/com/magnity/magnitycx/ROIInfo;->unlock()V

    throw v6

    .line 622
    .end local v0    # "coor":[I
    .end local v3    # "num":I
    .end local v5    # "roiInfo":Lcn/com/magnity/magnitycx/ROIInfo;
    :cond_d
    iget-boolean v8, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isAimDrag_:Z

    if-eqz v8, :cond_0

    .line 623
    iput-boolean v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isAimDrag_:Z

    .line 624
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->invalidate_()V

    move v6, v7

    .line 625
    goto/16 :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImageStableCounter(I)V
    .locals 0
    .param p1, "counter"    # I

    .prologue
    .line 186
    iput p1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->imageStableCounter_:I

    .line 187
    return-void
.end method

.method public setTempStableFlag(Z)V
    .locals 0
    .param p1, "isStable"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isTempStable_:Z

    .line 179
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->calculateScreenFit()V

    .line 419
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 10
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v8, 0x40000000    # 2.0f

    const v7, 0x7f0d000c

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 331
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 332
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->getPreviewOrientation()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 343
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedCanvas_:Landroid/graphics/Canvas;

    if-nez v2, :cond_1

    .line 344
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedCanvas_:Landroid/graphics/Canvas;

    .line 345
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedCanvas_:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 349
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_2

    .line 351
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 352
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 353
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 354
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 356
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->holder_:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 357
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paint_:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 362
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 363
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 364
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 366
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 369
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintVGA_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v9, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 371
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROI_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROI_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROI_:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 374
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROI_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v9, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 376
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROIVGA_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROIVGA_:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROIVGA_:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    iget-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->paintROIVGA_:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v8, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 382
    :cond_2
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v6, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->pfd_:Landroid/graphics/PaintFlagsDrawFilter;

    .line 384
    sget-object v2, Lcn/com/magnity/magnitycx/ImageViewer;->syncNotifyNewFrame_:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    :try_start_0
    sget-object v1, Lcn/com/magnity/magnitycx/ImageViewer;->imgViewerList_:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->calculateScreenFit()V

    .line 390
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimOrientation_:I

    .line 391
    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimOrientation_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 392
    const-string v1, "aimX_portrait"

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    .line 393
    const-string v1, "aimY_portrait"

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    .line 399
    :goto_1
    const/16 v1, 0x64

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorbarSize(II)V

    .line 400
    const-string v1, "paletteIndex"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setColorPalette(I)V

    .line 405
    new-instance v1, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRender_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;

    .line 406
    iput-boolean v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isExitThreadRender_:Z

    .line 407
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iput-boolean v6, v1, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 408
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRender_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->start()V

    .line 410
    new-instance v1, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;-><init>(Lcn/com/magnity/magnitycx/ImageViewer;Lcn/com/magnity/magnitycx/ImageViewer$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRecording_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;

    .line 411
    iput-boolean v6, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isExitThreadRecording_:Z

    .line 412
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iput-boolean v6, v1, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 413
    iget-object v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRecording_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->start()V

    .line 414
    return-void

    .line 335
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :sswitch_0
    const/16 v2, 0x280

    const/16 v3, 0x1e0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 339
    :sswitch_1
    const/16 v2, 0x1e0

    const/16 v3, 0x280

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 386
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 395
    :cond_3
    const-string v1, "aimX_landscape"

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    .line 396
    const-string v1, "aimY_landscape"

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/ImageViewer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    goto :goto_1

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 423
    iget v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimOrientation_:I

    if-ne v0, v3, :cond_1

    .line 424
    const-string v0, "aimX_portrait"

    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    const-string v0, "aimY_portrait"

    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    .line 431
    :goto_0
    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isExitThreadRender_:Z

    .line 432
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 434
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->waitCondition_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 435
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRender_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;->join()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRender_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRender;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    :goto_1
    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/ImageViewer;->isExitThreadRecording_:Z

    .line 443
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v1, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 445
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->condRecording_:Lcn/com/magnity/magnitycx/sdk/WaitCondition;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 446
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    :try_start_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRecording_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;->join()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->threadRecording_:Lcn/com/magnity/magnitycx/ImageViewer$ThreadRecording;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 453
    :goto_2
    sget-object v1, Lcn/com/magnity/magnitycx/ImageViewer;->syncNotifyNewFrame_:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_4
    sget-object v0, Lcn/com/magnity/magnitycx/ImageViewer;->imgViewerList_:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 457
    iput-object v4, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedCanvas_:Landroid/graphics/Canvas;

    .line 458
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 460
    iput-object v4, p0, Lcn/com/magnity/magnitycx/ImageViewer;->cachedbmp_:Landroid/graphics/Bitmap;

    .line 462
    :cond_0
    return-void

    .line 427
    :cond_1
    const-string v0, "aimX_landscape"

    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimX_:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string v0, "aimY_landscape"

    iget v1, p0, Lcn/com/magnity/magnitycx/ImageViewer;->aimY_:I

    invoke-static {v0, v1}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 446
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 455
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 450
    :catch_0
    move-exception v0

    goto :goto_2

    .line 439
    :catch_1
    move-exception v0

    goto :goto_1
.end method
