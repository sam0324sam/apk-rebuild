.class public Lcn/com/magnity/magnitymx/device/DeviceItem;
.super Ljava/lang/Object;
.source "DeviceItem.java"


# instance fields
.field private action:Ljava/lang/String;

.field private device_name:Ljava/lang/String;

.field private device_type:Ljava/lang/String;

.field private expired_date:D

.field private flow_limited:I

.field private flow_used:I

.field private group_id:I

.field private group_name:Ljava/lang/String;

.field private height_pixels:I

.field private id:I

.field private is_active:Z

.field private is_online:Z

.field private last_time:D

.field private serial_number:Ljava/lang/String;

.field private width_pixels:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;DLjava/lang/String;ILjava/lang/String;IIIDI)V
    .locals 3
    .param p1, "is_online"    # Z
    .param p2, "device_name"    # Ljava/lang/String;
    .param p3, "is_active"    # Z
    .param p4, "serial_number"    # Ljava/lang/String;
    .param p5, "group_id"    # I
    .param p6, "action"    # Ljava/lang/String;
    .param p7, "last_time"    # D
    .param p9, "group_name"    # Ljava/lang/String;
    .param p10, "flow_limited"    # I
    .param p11, "device_type"    # Ljava/lang/String;
    .param p12, "height_pixels"    # I
    .param p13, "width_pixels"    # I
    .param p14, "flow_used"    # I
    .param p15, "expired_date"    # D
    .param p17, "id"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->is_online:Z

    .line 28
    iput-object p2, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->device_name:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->is_active:Z

    .line 30
    iput-object p4, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->serial_number:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->group_id:I

    .line 32
    iput-object p6, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->action:Ljava/lang/String;

    .line 33
    iput-wide p7, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->last_time:D

    .line 34
    iput-object p9, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->group_name:Ljava/lang/String;

    .line 35
    iput p10, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->flow_limited:I

    .line 36
    iput-object p11, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->device_type:Ljava/lang/String;

    .line 37
    iput p12, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->height_pixels:I

    .line 38
    move/from16 v0, p13

    iput v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->width_pixels:I

    .line 39
    move/from16 v0, p14

    iput v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->flow_used:I

    .line 40
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->expired_date:D

    .line 41
    move/from16 v0, p17

    iput v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->id:I

    .line 42
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->device_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getExpired_date()D
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->expired_date:D

    return-wide v0
.end method

.method public getFlow_limited()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->flow_limited:I

    return v0
.end method

.method public getFlow_used()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->flow_used:I

    return v0
.end method

.method public getGroup_id()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->group_id:I

    return v0
.end method

.method public getGroup_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight_pixels()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->height_pixels:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->id:I

    return v0
.end method

.method public getLast_time()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->last_time:D

    return-wide v0
.end method

.method public getSerial_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->serial_number:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth_pixels()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->width_pixels:I

    return v0
.end method

.method public isIs_active()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->is_active:Z

    return v0
.end method

.method public isIs_online()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->is_online:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->action:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDevice_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_name"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->device_name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_type"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->device_type:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setExpired_date(D)V
    .locals 1
    .param p1, "expired_date"    # D

    .prologue
    .line 153
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->expired_date:D

    .line 154
    return-void
.end method

.method public setFlow_limited(I)V
    .locals 0
    .param p1, "flow_limited"    # I

    .prologue
    .line 113
    iput p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->flow_limited:I

    .line 114
    return-void
.end method

.method public setFlow_used(I)V
    .locals 0
    .param p1, "flow_used"    # I

    .prologue
    .line 145
    iput p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->flow_used:I

    .line 146
    return-void
.end method

.method public setGroup_id(I)V
    .locals 0
    .param p1, "group_id"    # I

    .prologue
    .line 81
    iput p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->group_id:I

    .line 82
    return-void
.end method

.method public setGroup_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "group_name"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->group_name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setHeight_pixels(I)V
    .locals 0
    .param p1, "height_pixels"    # I

    .prologue
    .line 129
    iput p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->height_pixels:I

    .line 130
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 161
    iput p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->id:I

    .line 162
    return-void
.end method

.method public setIs_active(Z)V
    .locals 0
    .param p1, "is_active"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->is_active:Z

    .line 66
    return-void
.end method

.method public setIs_online(Z)V
    .locals 0
    .param p1, "is_online"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->is_online:Z

    .line 50
    return-void
.end method

.method public setLast_time(D)V
    .locals 1
    .param p1, "last_time"    # D

    .prologue
    .line 97
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->last_time:D

    .line 98
    return-void
.end method

.method public setSerial_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial_number"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->serial_number:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setWidth_pixels(I)V
    .locals 0
    .param p1, "width_pixels"    # I

    .prologue
    .line 137
    iput p1, p0, Lcn/com/magnity/magnitymx/device/DeviceItem;->width_pixels:I

    .line 138
    return-void
.end method
