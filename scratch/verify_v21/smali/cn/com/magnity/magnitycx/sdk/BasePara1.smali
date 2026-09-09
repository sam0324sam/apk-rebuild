.class public Lcn/com/magnity/magnitycx/sdk/BasePara1;
.super Ljava/lang/Object;
.source "BasePara1.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public devType:I

.field public fpaFlip:I

.field public fpaGain:I

.field public fpaHeight:I

.field public fpaWidth:I

.field public fps:I

.field public gfid:I

.field public gsk:I

.field public hwVersion:I

.field public interFrame:I

.field public interLine:I

.field public reserved1:I

.field public reserved2:I

.field public serialNumber:I

.field public swVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/sdk/BasePara1;->reset()V

    .line 26
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
    .line 48
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->serialNumber:I

    .line 30
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->hwVersion:I

    .line 31
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    .line 32
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->swVersion:I

    .line 33
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->reserved1:I

    .line 34
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    .line 35
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    .line 36
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fps:I

    .line 37
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->reserved2:I

    .line 38
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaGain:I

    .line 39
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaFlip:I

    .line 40
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interFrame:I

    .line 41
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->interLine:I

    .line 42
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->gfid:I

    .line 43
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->gsk:I

    .line 44
    return-void
.end method
