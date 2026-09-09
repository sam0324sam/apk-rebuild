.class Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;
.super Ljava/lang/Object;
.source "CXDeviceModel.java"

# interfaces
.implements Lcn/com/magnity/coresdk/MagDevice$INewFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/CXDeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;
    }
.end annotation


# static fields
.field private static final STAT_FRAME_NUM:I = 0x14


# instance fields
.field private volatile mCameraState:I

.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private volatile mFrameIndex:I

.field private volatile mIsExitThread:Z

.field private volatile mIsSignaled:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mPrevTime:J

.field private mReceivedFps:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReceivedTicks:[J

.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V
    .locals 2

    .prologue
    .line 799
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mFrameIndex:I

    .line 800
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 801
    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mReceivedTicks:[J

    .line 802
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mReceivedFps:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 805
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 806
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 808
    new-instance v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame$NewFrameThread;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mThread:Ljava/lang/Thread;

    .line 809
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 810
    return-void
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .prologue
    .line 780
    iget v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mFrameIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .prologue
    .line 780
    iget v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mCameraState:I

    return v0
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .prologue
    .line 780
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mReceivedFps:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .prologue
    .line 780
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mIsExitThread:Z

    return v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .prologue
    .line 780
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .prologue
    .line 780
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mIsSignaled:Z

    return v0
.end method

.method static synthetic access$802(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 780
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mIsSignaled:Z

    return p1
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;

    .prologue
    .line 780
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 827
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mIsSignaled:Z

    .line 829
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 830
    return-void
.end method

.method public newFrame(II)V
    .locals 10
    .param p1, "iCamState"    # I
    .param p2, "iStreamType"    # I

    .prologue
    .line 834
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 835
    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mFrameIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mFrameIndex:I

    .line 836
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mIsSignaled:Z

    .line 837
    iput p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mCameraState:I

    .line 838
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 839
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 841
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_2

    .line 842
    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mFrameIndex:I

    if-nez v1, :cond_0

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mPrevTime:J

    .line 850
    :goto_0
    iget v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mFrameIndex:I

    const/16 v6, 0x13

    if-le v1, v6, :cond_2

    .line 851
    const-wide/16 v2, 0x0

    .line 852
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 853
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mReceivedTicks:[J

    aget-wide v6, v1, v0

    add-long/2addr v2, v6

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 845
    .end local v0    # "i":I
    .end local v2    # "sum":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 846
    .local v4, "t":J
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mReceivedTicks:[J

    iget v6, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mFrameIndex:I

    rem-int/lit8 v6, v6, 0x14

    iget-wide v8, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mPrevTime:J

    sub-long v8, v4, v8

    aput-wide v8, v1, v6

    .line 847
    iput-wide v4, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mPrevTime:J

    goto :goto_0

    .line 856
    .end local v4    # "t":J
    .restart local v0    # "i":I
    .restart local v2    # "sum":J
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mReceivedFps:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v6, 0x4e20

    div-long/2addr v6, v2

    long-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 859
    .end local v0    # "i":I
    .end local v2    # "sum":J
    :cond_2
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 813
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 814
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mIsExitThread:Z

    .line 815
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mIsSignaled:Z

    .line 816
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 817
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 820
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$NewFrame;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    goto :goto_0
.end method
