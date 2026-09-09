.class public Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;
.super Ljava/lang/Object;
.source "MagParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/MagParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field private height_:I

.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/MagParameter;

.field private width_:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitycx/sdk/MagParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/MagParameter;

    .prologue
    .line 234
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->this$0:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public constructor <init>(Lcn/com/magnity/magnitycx/sdk/MagParameter;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/MagParameter;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 237
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->this$0:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p2, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->width_:I

    .line 239
    iput p3, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->height_:I

    .line 240
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->height_:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->width_:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 247
    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->height_:I

    .line 248
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 243
    iput p1, p0, Lcn/com/magnity/magnitycx/sdk/MagParameter$Size;->width_:I

    .line 244
    return-void
.end method
