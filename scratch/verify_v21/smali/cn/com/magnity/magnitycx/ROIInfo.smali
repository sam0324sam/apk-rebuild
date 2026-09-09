.class public Lcn/com/magnity/magnitycx/ROIInfo;
.super Ljava/lang/Object;
.source "ROIInfo.java"


# static fields
.field public static final TYPE_POINT:I = 0x0

.field public static final TYPE_RECT:I = 0x1

.field private static volatile lock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private aveTemp_:I

.field private isBigEnouth_:Z

.field private isFinished_:Z

.field private isTempValid_:Z

.field private maxTempPos_:I

.field private maxTemp_:I

.field private minTempPos_:I

.field private minTemp_:I

.field public name:Ljava/lang/String;

.field private type_:I

.field private x0_:I

.field private x1_:I

.field private y0_:I

.field private y1_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/ROIInfo;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->type_:I

    .line 29
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isFinished_:Z

    .line 30
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth_:Z

    .line 31
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isTempValid_:Z

    .line 32
    return-void
.end method

.method public static lock()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcn/com/magnity/magnitycx/ROIInfo;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    return-void
.end method

.method public static unlock()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcn/com/magnity/magnitycx/ROIInfo;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    return-void
.end method


# virtual methods
.method public getBeginPointX()I
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    iget v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    goto :goto_0
.end method

.method public getBeginPointY()I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    iget v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    goto :goto_0
.end method

.method public getEndPointX()I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    iget v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    goto :goto_0
.end method

.method public getEndPointY()I
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    iget v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    goto :goto_0
.end method

.method public getMaxPos()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->maxTempPos_:I

    return v0
.end method

.method public getMaxTemp()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->maxTemp_:I

    return v0
.end method

.method public getMinPos()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->minTempPos_:I

    return v0
.end method

.method public getMinTemp()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->minTemp_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->type_:I

    return v0
.end method

.method public isBigEnouth()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth_:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isFinished_:Z

    return v0
.end method

.method public isPointIn(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 72
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    if-le p2, v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTempValid()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isTempValid_:Z

    return v0
.end method

.method public setBeginPoint(II)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "y0"    # I

    .prologue
    const/4 v0, 0x0

    .line 35
    iput p1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    .line 36
    iput p2, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    .line 38
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth_:Z

    .line 39
    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isFinished_:Z

    .line 40
    return-void
.end method

.method public setEndPoint(II)V
    .locals 3
    .param p1, "x1"    # I
    .param p2, "y1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    .line 51
    iput p2, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    .line 53
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    div-int/lit8 v0, v1, 0xc

    .line 55
    .local v0, "limit":I
    iget v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    iget v2, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_0

    iget v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    iget v2, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth_:Z

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isBigEnouth_:Z

    goto :goto_0
.end method

.method public setFinished()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isFinished_:Z

    .line 81
    return-void
.end method

.method public setTempInfo(IIIII)V
    .locals 1
    .param p1, "minTemp"    # I
    .param p2, "maxTemp"    # I
    .param p3, "aveTemp"    # I
    .param p4, "minPos"    # I
    .param p5, "maxPos"    # I

    .prologue
    .line 63
    iput p2, p0, Lcn/com/magnity/magnitycx/ROIInfo;->maxTemp_:I

    .line 64
    iput p1, p0, Lcn/com/magnity/magnitycx/ROIInfo;->minTemp_:I

    .line 65
    iput p3, p0, Lcn/com/magnity/magnitycx/ROIInfo;->aveTemp_:I

    .line 66
    iput p5, p0, Lcn/com/magnity/magnitycx/ROIInfo;->maxTempPos_:I

    .line 67
    iput p4, p0, Lcn/com/magnity/magnitycx/ROIInfo;->minTempPos_:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->isTempValid_:Z

    .line 69
    return-void
.end method

.method public translate(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 43
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x0_:I

    .line 44
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    add-int/2addr v0, p2

    iput v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y0_:I

    .line 45
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->x1_:I

    .line 46
    iget v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    add-int/2addr v0, p2

    iput v0, p0, Lcn/com/magnity/magnitycx/ROIInfo;->y1_:I

    .line 47
    return-void
.end method
