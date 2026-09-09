.class public Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
.super Ljava/lang/Object;
.source "CloudDevice.java"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "serial_number"
            }
        .end subannotation
    }
    tableName = "cloud_device"
.end annotation


# instance fields
.field public deviceId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "device_id"
    .end annotation
.end field

.field public id:I
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public isOnline:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_online"
    .end annotation
.end field

.field public label:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "label"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "name"
    .end annotation
.end field

.field public serialNumber:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "serial_number"
    .end annotation
.end field

.field public userId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "isOnline"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->deviceId:I

    .line 36
    iput p2, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->userId:I

    .line 37
    iput-object p3, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->name:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->serialNumber:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->label:Ljava/lang/String;

    .line 40
    iput-boolean p6, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->isOnline:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->userId:I

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->isOnline:Z

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->label:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setOnline(Z)V
    .locals 0
    .param p1, "online"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->isOnline:Z

    .line 81
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->serialNumber:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 64
    iput p1, p0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->userId:I

    .line 65
    return-void
.end method
