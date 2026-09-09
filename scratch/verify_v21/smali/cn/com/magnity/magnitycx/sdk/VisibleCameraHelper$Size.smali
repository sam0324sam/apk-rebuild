.class public Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;
.super Ljava/lang/Object;
.source "VisibleCameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field private height_:I

.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

.field private width_:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    .prologue
    .line 311
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->this$0:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method public constructor <init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 314
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->this$0:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->width_:I

    .line 316
    iput p3, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->height_:I

    .line 317
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->height_:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->width_:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 324
    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->height_:I

    .line 325
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 320
    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;->width_:I

    .line 321
    return-void
.end method
