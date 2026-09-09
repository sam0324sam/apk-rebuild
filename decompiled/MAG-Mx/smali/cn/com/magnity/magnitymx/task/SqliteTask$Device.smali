.class public Lcn/com/magnity/magnitymx/task/SqliteTask$Device;
.super Ljava/lang/Object;
.source "SqliteTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/task/SqliteTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# instance fields
.field private mDeviceTypeId:J

.field private mId:J

.field private mName:Ljava/lang/String;

.field private mVoltageId:J


# direct methods
.method public constructor <init>(JJJLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "deviceTypeId"    # J
    .param p5, "voltageId"    # J
    .param p7, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mId:J

    .line 469
    iput-wide p3, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mDeviceTypeId:J

    .line 470
    iput-wide p5, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mVoltageId:J

    .line 471
    iput-object p7, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mName:Ljava/lang/String;

    .line 472
    return-void
.end method


# virtual methods
.method public getDeviceTypeId()J
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mDeviceTypeId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 475
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoltageId()J
    .locals 2

    .prologue
    .line 483
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Device;->mVoltageId:J

    return-wide v0
.end method
