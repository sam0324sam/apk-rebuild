.class public Lcn/com/magnity/magnitymx/live/VisibleView;
.super Lcn/com/magnity/magnitymx/camera/CameraView;
.source "VisibleView.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/live/ILiveContract$IVisibleView;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MAX_SIZE:I = 0x1000

.field private static final MIN_SIZE:I = 0x140

.field private static final MODE_DRAG:I = 0x0

.field private static final MODE_NONE:I = -0x1

.field private static final MODE_ZOOM:I = 0x1

.field private static final MSG_PAUSE:I

.field private static volatile mBytes:[B


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mMode:I

.field private mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

.field private mStartHeight:I

.field private mStartWidth:I

.field private mStartX0:I

.field private mStartX1:I

.field private mStartY0:I

.field private mStartY1:I

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcn/com/magnity/magnitymx/camera/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 41
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 109
    new-instance v0, Lcn/com/magnity/magnitymx/live/VisibleView$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/live/VisibleView$1;-><init>(Lcn/com/magnity/magnitymx/live/VisibleView;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mMode:I

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mUiHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/live/VisibleView;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VisibleView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/live/VisibleView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VisibleView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 31
    sput-object p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    return-object p0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/live/VisibleView;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/VisibleView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private calDistance(IIII)I
    .locals 4
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 432
    sub-int v0, p3, p1

    .line 433
    .local v0, "dx":I
    sub-int v1, p4, p2

    .line 434
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private savePosition()V
    .locals 9

    .prologue
    .line 319
    iget-object v4, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v4}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 321
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 324
    .local v3, "viewParent":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 325
    .local v2, "orientation":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 326
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    .line 326
    invoke-virtual {v1, v4, v5, v6, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setVisibleWindowLandscape(IIII)V

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    .line 334
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    .line 331
    invoke-virtual {v1, v4, v5, v6, v7}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setVisibleWindowPortrait(IIII)V

    goto :goto_0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "visiblePauseThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 55
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundHandler:Landroid/os/Handler;

    .line 58
    :cond_0
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 63
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 65
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static writeToFile(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    if-eqz v2, :cond_2

    .line 163
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 169
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 164
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 166
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 159
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v1, :cond_0

    .line 163
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 164
    :catch_2
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 163
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 166
    :cond_1
    :goto_3
    throw v3

    .line 164
    :catch_3
    move-exception v0

    .line 165
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 158
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public calculateNewImagePos(IIII)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 173
    return-void
.end method

.method public capturePicture(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public capturePicture()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 209
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 186
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capturePicture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "data":[B
    :try_start_0
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 191
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    sget-object v3, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    sget-object v4, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 206
    :goto_1
    sput-object v2, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    .line 207
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 194
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->takePicture()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 206
    sput-object v2, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    .line 207
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    sget-object v3, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    sget-object v4, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_3
    const-string v3, "wait visible snap timeout"

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visible snap error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    sput-object v2, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    .line 207
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 206
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sput-object v2, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    .line 207
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 234
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 217
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 218
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->pausePreview()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 221
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    sget-object v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    sget-object v2, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    sput-object v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :goto_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 224
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mBytes:[B

    .line 225
    const-string v1, "wait visible snap timeout"

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visible pause error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public loadAndSetPosition()V
    .locals 11

    .prologue
    .line 286
    iget-object v10, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-interface {v10}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v4

    .line 288
    .local v4, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v5, v10, Landroid/content/res/Configuration;->orientation:I

    .line 289
    .local v5, "orientation":I
    const/4 v10, 0x2

    if-ne v5, v10, :cond_2

    .line 290
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowLandscapeLeft()I

    move-result v3

    .line 291
    .local v3, "left":I
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowLandscapeTop()I

    move-result v7

    .line 292
    .local v7, "top":I
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowLandscapeRight()I

    move-result v6

    .line 293
    .local v6, "right":I
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowLandscapeBottom()I

    move-result v0

    .line 301
    .local v0, "bottom":I
    :goto_0
    if-nez v3, :cond_0

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-ge v3, v6, :cond_1

    if-lt v7, v0, :cond_3

    .line 316
    :cond_1
    :goto_1
    return-void

    .line 295
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_2
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowPortraitLeft()I

    move-result v3

    .line 296
    .restart local v3    # "left":I
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowPortraitTop()I

    move-result v7

    .line 297
    .restart local v7    # "top":I
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowPortraitRight()I

    move-result v6

    .line 298
    .restart local v6    # "right":I
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleWindowPortraitBottom()I

    move-result v0

    .restart local v0    # "bottom":I
    goto :goto_0

    .line 306
    :cond_3
    sub-int v9, v6, v3

    .line 307
    .local v9, "width":I
    sub-int v1, v0, v7

    .line 309
    .local v1, "height":I
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 310
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 311
    .local v8, "viewParent":Landroid/view/View;
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 312
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 313
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v10, v3

    sub-int/2addr v10, v9

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 314
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v10, v7

    sub-int/2addr v10, v1

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 315
    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/live/VisibleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/com/magnity/magnitymx/data/LocalConfig;->isInVisibleAdjustingMode()Z

    move-result v17

    if-nez v17, :cond_0

    .line 341
    invoke-super/range {p0 .. p1}, Lcn/com/magnity/magnitymx/camera/CameraView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 428
    :goto_0
    return v17

    .line 344
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 428
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 346
    :pswitch_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mMode:I

    .line 347
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartX0:I

    .line 348
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartY0:I

    goto :goto_1

    .line 352
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 353
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mMode:I

    .line 354
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartX1:I

    .line 355
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartY1:I

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    .local v7, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 359
    .local v16, "viewParent":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartWidth:I

    .line 361
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartHeight:I

    goto/16 :goto_1

    .line 367
    .end local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "viewParent":Landroid/view/View;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 368
    .restart local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 369
    .restart local v16    # "viewParent":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartX0:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 371
    .local v10, "offsetX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartY0:I

    move/from16 v18, v0

    sub-int v11, v17, v18

    .line 372
    .local v11, "offsetY":I
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v8, v17, v10

    .line 373
    .local v8, "leftMargin":I
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v15, v17, v11

    .line 374
    .local v15, "topMargin":I
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v17, v0

    sub-int v13, v17, v10

    .line 375
    .local v13, "rightMargin":I
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    sub-int v5, v17, v11

    .line 376
    .local v5, "bottomMargin":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v8, v0, :cond_2

    .line 377
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v8, v17, v18

    .line 378
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v17, v0

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    sub-int v13, v17, v18

    .line 381
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v15, v0, :cond_3

    .line 382
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v15, v17, v18

    .line 383
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    sub-int v5, v17, v18

    .line 386
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v13, v0, :cond_4

    .line 387
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v13, v17, v18

    .line 388
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    sub-int v8, v17, v18

    .line 391
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v5, v0, :cond_5

    .line 392
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v5, v17, v18

    .line 393
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v5, v18

    sub-int v15, v17, v18

    .line 396
    :cond_5
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 397
    iput v15, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 398
    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 399
    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcn/com/magnity/magnitymx/live/VisibleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 401
    .end local v5    # "bottomMargin":I
    .end local v8    # "leftMargin":I
    .end local v10    # "offsetX":I
    .end local v11    # "offsetY":I
    .end local v13    # "rightMargin":I
    .end local v15    # "topMargin":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 402
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    .line 403
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/live/VisibleView;->calDistance(IIII)I

    move-result v9

    .line 404
    .local v9, "newDist":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartX0:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartY0:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartX1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartY1:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/live/VisibleView;->calDistance(IIII)I

    move-result v6

    .line 405
    .local v6, "initialDist":I
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 407
    .local v12, "ratio":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v14, v0

    .line 408
    .local v14, "size":I
    const/16 v17, 0x140

    move/from16 v0, v17

    if-lt v14, v0, :cond_1

    const/16 v17, 0x1000

    move/from16 v0, v17

    if-gt v14, v0, :cond_1

    .line 412
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartX0:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 413
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartY0:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 414
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v17

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 416
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/magnity/magnitymx/live/VisibleView;->mStartHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 418
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcn/com/magnity/magnitymx/live/VisibleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 424
    .end local v6    # "initialDist":I
    .end local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "newDist":I
    .end local v12    # "ratio":F
    .end local v14    # "size":I
    .end local v16    # "viewParent":Landroid/view/View;
    :pswitch_4
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/magnity/magnitymx/live/VisibleView;->mMode:I

    .line 425
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->savePosition()V

    goto/16 :goto_1

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public pause()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return v2

    .line 242
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public resume()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 250
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return v3

    .line 253
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 256
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 257
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->resumePreview()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 263
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visible resume error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mPresenter:Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    .line 83
    invoke-interface {p1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 84
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->setAlpha(F)V

    .line 85
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/live/VisibleView;->setPresenter(Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;)V

    return-void
.end method

.method public setVisibleAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/live/VisibleView;->setAlpha(F)V

    .line 77
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setVisibleAlpha(F)V

    .line 78
    return-void
.end method

.method public show(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 107
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show visible: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 93
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/live/VisibleView;->setVisibility(I)V

    .line 95
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->startBackgroundThread()V

    .line 96
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->loadAndSetPosition()V

    .line 97
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->setCallback(Lcn/com/magnity/magnitymx/camera/CameraView$Callback;)V

    .line 98
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->setFlash(I)V

    .line 99
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->start()Z

    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->stop()V

    .line 103
    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitymx/live/VisibleView;->setCallback(Lcn/com/magnity/magnitymx/camera/CameraView$Callback;)V

    .line 104
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/live/VisibleView;->stopBackgroundThread()V

    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->setVisibility(I)V

    goto :goto_1
.end method
