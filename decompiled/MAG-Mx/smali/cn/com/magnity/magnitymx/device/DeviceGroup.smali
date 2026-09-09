.class public Lcn/com/magnity/magnitymx/device/DeviceGroup;
.super Ljava/lang/Object;
.source "DeviceGroup.java"


# instance fields
.field private isDevice:Z

.field private mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

.field private mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 1
    .param p1, "currentDeviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice:Z

    .line 27
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 28
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mSerialNumber:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mDevices:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mDevices:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice:Z

    .line 21
    iput-object v1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 22
    iput-object v1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mSerialNumber:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getmCurrentDeviceInfo()Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object v0
.end method

.method public getmDevices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getmSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isDevice()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice:Z

    return v0
.end method

.method public setDevice(Z)V
    .locals 0
    .param p1, "device"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice:Z

    .line 63
    return-void
.end method

.method public setmCurrentDeviceInfo(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 1
    .param p1, "info"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->isDevice:Z

    .line 72
    return-void
.end method

.method public setmDevices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/device/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "mDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/device/DeviceItem;>;"
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mDevices:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setmSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSerialNumber"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceGroup;->mSerialNumber:Ljava/lang/String;

    .line 55
    return-void
.end method
