.class public Lcn/com/magnity/magnitycx/sdk/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public intAveNETDt:I

.field public intAveTemperature:I

.field public intHistTemperature:[I

.field public intMaxTemperature:I

.field public intMaxX:I

.field public intMaxY:I

.field public intMinTemperature:I

.field public intMinX:I

.field public intMinY:I

.field public intSTDTemperature:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/State;->intHistTemperature:[I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/sdk/State;

    .line 20
    .local v0, "state":Lcn/com/magnity/magnitycx/sdk/State;
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/State;->intHistTemperature:[I

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/State;->intHistTemperature:[I

    iget-object v2, p0, Lcn/com/magnity/magnitycx/sdk/State;->intHistTemperature:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcn/com/magnity/magnitycx/sdk/State;->intHistTemperature:[I

    .line 23
    :cond_0
    return-object v0
.end method
