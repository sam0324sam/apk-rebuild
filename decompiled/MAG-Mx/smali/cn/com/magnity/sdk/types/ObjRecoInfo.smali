.class public Lcn/com/magnity/sdk/types/ObjRecoInfo;
.super Ljava/lang/Object;
.source "ObjRecoInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public alarmLevel:S

.field public bodyTemp:I

.field public confidence:S

.field public irBottom:S

.field public irLeft:S

.field public irRight:S

.field public irTop:S

.field public maskStatus:B

.field public objId:I

.field public objType:S

.field public quality:B

.field public reserved2:I

.field public reserved3:I

.field public reserved4:I

.field public samplePointIrX:S

.field public samplePointIrY:S

.field public samplePointVisX:S

.field public samplePointVisY:S

.field public temperature:I

.field public visBottom:S

.field public visLeft:S

.field public visRight:S

.field public visTop:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/com/magnity/sdk/types/ObjRecoInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 33
    new-instance v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;

    invoke-direct {v0}, Lcn/com/magnity/sdk/types/ObjRecoInfo;-><init>()V

    .line 34
    .local v0, "obj":Lcn/com/magnity/sdk/types/ObjRecoInfo;
    iget v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->objId:I

    iput v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->objId:I

    .line 35
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->objType:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->objType:S

    .line 36
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->confidence:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->confidence:S

    .line 37
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irLeft:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irLeft:S

    .line 38
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irTop:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irTop:S

    .line 39
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irRight:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irRight:S

    .line 40
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irBottom:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->irBottom:S

    .line 41
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointIrX:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointIrX:S

    .line 42
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointIrY:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointIrY:S

    .line 43
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visLeft:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visLeft:S

    .line 44
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visTop:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visTop:S

    .line 45
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visRight:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visRight:S

    .line 46
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visBottom:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->visBottom:S

    .line 47
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointVisX:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointVisX:S

    .line 48
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointVisY:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->samplePointVisY:S

    .line 49
    iget v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->temperature:I

    iput v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->temperature:I

    .line 50
    iget v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->bodyTemp:I

    iput v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->bodyTemp:I

    .line 51
    iget-short v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->alarmLevel:S

    iput-short v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->alarmLevel:S

    .line 52
    iget-byte v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->maskStatus:B

    iput-byte v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->maskStatus:B

    .line 53
    iget-byte v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->quality:B

    iput-byte v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->quality:B

    .line 54
    iget v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->reserved2:I

    iput v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->reserved2:I

    .line 55
    iget v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->reserved3:I

    iput v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->reserved3:I

    .line 56
    iget v1, p0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->reserved4:I

    iput v1, v0, Lcn/com/magnity/sdk/types/ObjRecoInfo;->reserved4:I

    .line 57
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0}, Lcn/com/magnity/sdk/types/ObjRecoInfo;->clone()Lcn/com/magnity/sdk/types/ObjRecoInfo;

    move-result-object v0

    return-object v0
.end method
