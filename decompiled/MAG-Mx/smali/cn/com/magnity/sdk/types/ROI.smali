.class public Lcn/com/magnity/sdk/types/ROI;
.super Ljava/lang/Object;
.source "ROI.java"


# static fields
.field public static final RoiCircle:I = 0x3

.field public static final RoiEllipse:I = 0x4

.field public static final RoiLine:I = 0x1

.field public static final RoiNone:I = -0x1

.field public static final RoiPoint:I = 0x0

.field public static final RoiRect:I = 0x2


# instance fields
.field public aveTemp:I

.field public color:I

.field public emissivity:F

.field public lowerAlarmTemp:I

.field public maxPos:I

.field public maxTemp:I

.field public minPos:I

.field public minTemp:I

.field public name:Ljava/lang/String;

.field public reserved1:I

.field public reserved2:I

.field public reserved3:I

.field public reserved4:I

.field public targetType:I

.field public type:I

.field public upperAlarmTemp:I

.field public x0:I

.field public x1:I

.field public y0:I

.field public y1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
