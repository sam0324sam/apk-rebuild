.class public Lcn/com/magnity/magnitycx/sdk/WaitCondition;
.super Ljava/lang/Object;
.source "WaitCondition.java"


# instance fields
.field public final cond:Ljava/lang/Object;

.field public volatile notified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->cond:Ljava/lang/Object;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitycx/sdk/WaitCondition;->notified:Z

    .line 10
    return-void
.end method
