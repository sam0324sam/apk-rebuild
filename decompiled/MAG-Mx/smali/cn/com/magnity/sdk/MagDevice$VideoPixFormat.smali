.class public Lcn/com/magnity/sdk/MagDevice$VideoPixFormat;
.super Ljava/lang/Object;
.source "MagDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/sdk/MagDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoPixFormat"
.end annotation


# static fields
.field public static final pixFmtABGR:I = 0x1b

.field public static final pixFmtARGB:I = 0x19

.field public static final pixFmtBGRA:I = 0x1c

.field public static final pixFmtRGB24:I = 0x2

.field public static final pixFmtRGBA:I = 0x1a

.field public static final pixFmtYUV420P:I = 0x0

.field public static final pixFmtYUV422P:I = 0x4

.field public static final pixfmtUnknown:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
