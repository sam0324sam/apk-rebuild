.class final Lcn/com/magnity/magnitymx/ROICompat$1;
.super Ljava/lang/Object;
.source "ROICompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/ROICompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/com/magnity/magnitymx/ROICompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/com/magnity/magnitymx/ROICompat;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lcn/com/magnity/magnitymx/ROICompat;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/ROICompat;-><init>()V

    .line 69
    .local v0, "roiCompat":Lcn/com/magnity/magnitymx/ROICompat;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->type:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->targetType:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->maxTemp:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->minTemp:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->aveTemp:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->maxPos:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->minPos:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->x0:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->y0:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->x1:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->y1:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->color:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->emissivity:F

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->lowerAlarmTemp:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->upperAlarmTemp:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->reserved1:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->reserved2:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->reserved3:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcn/com/magnity/magnitymx/ROICompat;->reserved4:I

    .line 89
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/ROICompat$1;->createFromParcel(Landroid/os/Parcel;)Lcn/com/magnity/magnitymx/ROICompat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/com/magnity/magnitymx/ROICompat;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/com/magnity/magnitymx/ROICompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/ROICompat$1;->newArray(I)[Lcn/com/magnity/magnitymx/ROICompat;

    move-result-object v0

    return-object v0
.end method
