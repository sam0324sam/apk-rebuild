.class public Lcn/com/magnity/magnitymx/live/CachedValue;
.super Ljava/lang/Object;
.source "CachedValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mMaxPos:I

.field public mMaxTemp:I

.field public mMinPos:I

.field public mMinTemp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/live/CachedValue;

    .line 12
    .local v0, "cachedValue":Lcn/com/magnity/magnitymx/live/CachedValue;
    return-object v0
.end method
