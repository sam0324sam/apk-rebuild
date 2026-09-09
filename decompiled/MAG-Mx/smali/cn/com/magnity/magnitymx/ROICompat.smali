.class public Lcn/com/magnity/magnitymx/ROICompat;
.super Ljava/lang/Object;
.source "ROICompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/com/magnity/magnitymx/ROICompat;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcn/com/magnity/magnitymx/ROICompat$1;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/ROICompat$1;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/ROICompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->targetType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->maxTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->minTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->aveTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->maxPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->minPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->emissivity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->lowerAlarmTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->upperAlarmTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->reserved1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->reserved2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->reserved3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcn/com/magnity/magnitymx/ROICompat;->reserved4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
