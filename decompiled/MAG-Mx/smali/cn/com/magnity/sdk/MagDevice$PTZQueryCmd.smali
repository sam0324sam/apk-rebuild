.class public Lcn/com/magnity/sdk/MagDevice$PTZQueryCmd;
.super Ljava/lang/Object;
.source "MagDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/sdk/MagDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PTZQueryCmd"
.end annotation


# static fields
.field public static final PTZQueryFocusPosition:I = 0x4

.field public static final PTZQueryFocusState:I = 0x5

.field public static final PTZQueryPan:I = 0x0

.field public static final PTZQueryTilt:I = 0x1

.field public static final PTZQueryZoomPosition:I = 0x2

.field public static final PTZQueryZoomState:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
