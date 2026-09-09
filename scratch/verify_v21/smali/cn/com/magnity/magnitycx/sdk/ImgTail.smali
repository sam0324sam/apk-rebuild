.class public Lcn/com/magnity/magnitycx/sdk/ImgTail;
.super Ljava/lang/Object;
.source "ImgTail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public camTemp:I

.field public endCode:I

.field public fpaTemp:I

.field public frameIndex:I

.field public intDrop:I

.field public reserved:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/ImgTail;->reserved:[I

    return-void
.end method
