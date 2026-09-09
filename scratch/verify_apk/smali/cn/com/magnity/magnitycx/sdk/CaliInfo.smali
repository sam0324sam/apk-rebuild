.class public Lcn/com/magnity/magnitycx/sdk/CaliInfo;
.super Ljava/lang/Object;
.source "CaliInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public date:J

.field public reserved:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->reset()V

    .line 10
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
    .line 20
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->size:I

    .line 14
    iput v0, p0, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->reserved:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/magnity/magnitycx/sdk/CaliInfo;->date:J

    .line 16
    return-void
.end method
