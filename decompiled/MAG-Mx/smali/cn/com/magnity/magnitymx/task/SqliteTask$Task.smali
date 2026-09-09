.class public Lcn/com/magnity/magnitymx/task/SqliteTask$Task;
.super Ljava/lang/Object;
.source "SqliteTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/task/SqliteTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field private mCaptureStatus:I

.field private mDeviceId:J

.field private mId:J

.field private mPartId:J

.field private mPhaseId:J

.field private mRegionId:J


# direct methods
.method public constructor <init>(JJJJJI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "regionId"    # J
    .param p5, "deviceId"    # J
    .param p7, "phaseId"    # J
    .param p9, "partId"    # J
    .param p11, "captureStatus"    # I

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mId:J

    .line 429
    iput-wide p3, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mRegionId:J

    .line 430
    iput-wide p5, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mDeviceId:J

    .line 431
    iput-wide p7, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mPhaseId:J

    .line 432
    iput-wide p9, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mPartId:J

    .line 433
    iput p11, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mCaptureStatus:I

    .line 434
    return-void
.end method


# virtual methods
.method public getCaptureStatus()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mCaptureStatus:I

    return v0
.end method

.method public getDeviceId()J
    .locals 2

    .prologue
    .line 445
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mDeviceId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 437
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mId:J

    return-wide v0
.end method

.method public getPartId()J
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mPartId:J

    return-wide v0
.end method

.method public getPhaseId()J
    .locals 2

    .prologue
    .line 449
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mPhaseId:J

    return-wide v0
.end method

.method public getRegionId()J
    .locals 2

    .prologue
    .line 441
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Task;->mRegionId:J

    return-wide v0
.end method
