.class public Lcn/com/magnity/coresdk/types/JRect;
.super Ljava/lang/Object;
.source "JRect.java"


# instance fields
.field private x1:I

.field private x2:I

.field private y1:I

.field private y2:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcn/com/magnity/coresdk/types/JRect;->x1:I

    .line 11
    iput v1, p0, Lcn/com/magnity/coresdk/types/JRect;->y1:I

    .line 12
    iput v0, p0, Lcn/com/magnity/coresdk/types/JRect;->x2:I

    .line 13
    iput v0, p0, Lcn/com/magnity/coresdk/types/JRect;->y2:I

    .line 14
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcn/com/magnity/coresdk/types/JRect;->x1:I

    .line 18
    iput p2, p0, Lcn/com/magnity/coresdk/types/JRect;->y1:I

    .line 19
    add-int v0, p1, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/com/magnity/coresdk/types/JRect;->x2:I

    .line 20
    add-int v0, p2, p4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/com/magnity/coresdk/types/JRect;->y2:I

    .line 21
    return-void
.end method


# virtual methods
.method public bottom()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcn/com/magnity/coresdk/types/JRect;->y2:I

    return v0
.end method

.method public left()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/com/magnity/coresdk/types/JRect;->x1:I

    return v0
.end method

.method public right()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcn/com/magnity/coresdk/types/JRect;->x2:I

    return v0
.end method

.method public top()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcn/com/magnity/coresdk/types/JRect;->y1:I

    return v0
.end method
