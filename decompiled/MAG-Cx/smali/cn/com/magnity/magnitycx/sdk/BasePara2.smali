.class public Lcn/com/magnity/magnitycx/sdk/BasePara2;
.super Ljava/lang/Object;
.source "BasePara2.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ATErrorSlope:F

.field public ATZeroErrorPoint:I

.field public baseLineAcc:I

.field public denoiseLevel:I

.field public enlargeRange:I

.field public ffcTriggerFrame:I

.field public ffcTriggerTemperature:I

.field public fpaTempFix:S

.field public laserPos:I

.field public reserved1:I

.field public reserved2:S

.field public reserved5:I

.field public reserved6:I

.field public shutterCloseSpeed:I

.field public shutterOpenSpeed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reset()V

    .line 27
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->baseLineAcc:I

    .line 31
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->denoiseLevel:I

    .line 32
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved1:I

    .line 33
    iput-short v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved2:S

    .line 34
    iput-short v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->fpaTempFix:S

    .line 35
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->shutterCloseSpeed:I

    .line 36
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->shutterOpenSpeed:I

    .line 37
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ffcTriggerFrame:I

    .line 38
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ffcTriggerTemperature:I

    .line 39
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->enlargeRange:I

    .line 40
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->laserPos:I

    .line 41
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ATZeroErrorPoint:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->ATErrorSlope:F

    .line 43
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved5:I

    .line 44
    iput v1, p0, Lcn/com/magnity/magnitycx/sdk/BasePara2;->reserved6:I

    .line 45
    return-void
.end method
