.class public Lcn/com/magnity/magnitycx/sdk/ImgHeader;
.super Ljava/lang/Object;
.source "ImgHeader.java"


# instance fields
.field public frameIndex:I

.field public reserved:[I

.field public sendBytes:I

.field public startCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/ImgHeader;->reserved:[I

    return-void
.end method
