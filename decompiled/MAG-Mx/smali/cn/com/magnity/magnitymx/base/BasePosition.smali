.class public Lcn/com/magnity/magnitymx/base/BasePosition;
.super Ljava/lang/Object;
.source "BasePosition.java"


# instance fields
.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcn/com/magnity/magnitymx/base/BasePosition;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcn/com/magnity/magnitymx/base/BasePosition;->mY:I

    return v0
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 7
    iput p1, p0, Lcn/com/magnity/magnitymx/base/BasePosition;->mX:I

    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 9
    iput p1, p0, Lcn/com/magnity/magnitymx/base/BasePosition;->mY:I

    return-void
.end method
