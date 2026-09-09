.class public Lcn/com/magnity/magnitymx/task/SqliteTask$Region;
.super Ljava/lang/Object;
.source "SqliteTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/task/SqliteTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# instance fields
.field private mId:J

.field private mName:Ljava/lang/String;

.field private mParentId:J

.field private mVoltageId:J


# direct methods
.method public constructor <init>(JJJLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "voltageId"    # J
    .param p5, "parentId"    # J
    .param p7, "name"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mId:J

    .line 397
    iput-wide p3, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mVoltageId:J

    .line 398
    iput-wide p5, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mParentId:J

    .line 399
    iput-object p7, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mName:Ljava/lang/String;

    .line 400
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mParentId:J

    return-wide v0
.end method

.method public getVoltageId()J
    .locals 2

    .prologue
    .line 407
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/SqliteTask$Region;->mVoltageId:J

    return-wide v0
.end method
