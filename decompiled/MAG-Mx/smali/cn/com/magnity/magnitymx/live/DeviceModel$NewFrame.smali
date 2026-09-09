.class Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;
.super Ljava/lang/Object;
.source "DeviceModel.java"

# interfaces
.implements Lcn/com/magnity/sdk/MagDevice$IFrameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame$NewFrameThread;
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

.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/DeviceModel;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/live/DeviceModel;)V
    .locals 2

    .prologue
    .line 785
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->this$0:Lcn/com/magnity/magnitymx/live/DeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mFrameIndex:I

    .line 786
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 787
    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mReceivedTicks:[J

    .line 788
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mReceivedFps:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 791
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 792
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 794
    new-instance v0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame$NewFrameThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame$NewFrameThread;-><init>(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;Lcn/com/magnity/magnitymx/live/DeviceModel$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mThread:Ljava/lang/Thread;

    .line 795
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 796
    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .prologue
    .line 766
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mIsExitThread:Z

    return v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .prologue
    .line 766
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .prologue
    .line 766
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mIsSignaled:Z

    return v0
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 766
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mIsSignaled:Z

    return p1
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .prologue
    .line 766
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .prologue
    .line 766
    iget v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mFrameIndex:I

    return v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .prologue
    .line 766
    iget v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mCameraState:I

    return v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;

    .prologue
    .line 766
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mReceivedFps:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 813
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mIsSignaled:Z

    .line 815
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 816
    return-void
.end method

.method public newFrame(IIII)V
    .locals 10
    .param p1, "iCameraTemperature"    # I
    .param p2, "iFFCCounterdown"    # I
    .param p3, "iCamState"    # I
    .param p4, "iStreamType"    # I

    .prologue
    .line 827
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 828
    iget v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mFrameIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mFrameIndex:I

    .line 829
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mIsSignaled:Z

    .line 830
    iput p3, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mCameraState:I

    .line 831
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 832
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 834
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_2

    .line 835
    iget v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mFrameIndex:I

    if-nez v1, :cond_0

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mPrevTime:J

    .line 843
    :goto_0
    iget v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mFrameIndex:I

    const/16 v6, 0x13

    if-le v1, v6, :cond_2

    .line 844
    const-wide/16 v2, 0x0

    .line 845
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 846
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mReceivedTicks:[J

    aget-wide v6, v1, v0

    add-long/2addr v2, v6

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 838
    .end local v0    # "i":I
    .end local v2    # "sum":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 839
    .local v4, "t":J
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mReceivedTicks:[J

    iget v6, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mFrameIndex:I

    rem-int/lit8 v6, v6, 0x14

    iget-wide v8, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mPrevTime:J

    sub-long v8, v4, v8

    aput-wide v8, v1, v6

    .line 840
    iput-wide v4, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mPrevTime:J

    goto :goto_0

    .line 849
    .end local v4    # "t":J
    .restart local v0    # "i":I
    .restart local v2    # "sum":J
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mReceivedFps:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v6, 0x4e20

    div-long/2addr v6, v2

    long-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 852
    .end local v0    # "i":I
    .end local v2    # "sum":J
    :cond_2
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 799
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 800
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mIsExitThread:Z

    .line 801
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mIsSignaled:Z

    .line 802
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 803
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 806
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$NewFrame;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    goto :goto_0
.end method
