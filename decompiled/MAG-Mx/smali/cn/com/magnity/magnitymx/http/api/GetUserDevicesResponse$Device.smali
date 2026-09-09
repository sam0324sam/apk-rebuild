.class public Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;
.super Ljava/lang/Object;
.source "GetUserDevicesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Device"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private device_name:Ljava/lang/String;

.field private device_type:Ljava/lang/String;

.field private expired_date:D

.field private flow_limited:Ljava/math/BigInteger;

.field private flow_used:Ljava/math/BigInteger;

.field private group_id:I

.field private group_name:Ljava/lang/String;

.field private height_pixels:I

.field private id:I

.field private is_active:Z

.field private is_online:Z

.field private label:Ljava/lang/String;

.field private last_time:D

.field private serial_number:Ljava/lang/String;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;

.field private width_pixels:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;DLjava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;IILjava/math/BigInteger;DILjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;
    .param p2, "is_online"    # Z
    .param p3, "device_name"    # Ljava/lang/String;
    .param p4, "is_active"    # Z
    .param p5, "serial_number"    # Ljava/lang/String;
    .param p6, "group_id"    # I
    .param p7, "action"    # Ljava/lang/String;
    .param p8, "last_time"    # D
    .param p10, "group_name"    # Ljava/lang/String;
    .param p11, "flow_limited"    # Ljava/math/BigInteger;
    .param p12, "device_type"    # Ljava/lang/String;
    .param p13, "height_pixels"    # I
    .param p14, "width_pixels"    # I
    .param p15, "flow_used"    # Ljava/math/BigInteger;
    .param p16, "expired_date"    # D
    .param p18, "id"    # I
    .param p19, "label"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->this$0:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p2, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->is_online:Z

    .line 32
    iput-object p3, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->device_name:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->is_active:Z

    .line 34
    iput-object p5, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->serial_number:Ljava/lang/String;

    .line 35
    iput p6, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->group_id:I

    .line 36
    iput-object p7, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->action:Ljava/lang/String;

    .line 37
    iput-wide p8, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->last_time:D

    .line 38
    iput-object p10, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->group_name:Ljava/lang/String;

    .line 39
    iput-object p11, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->flow_limited:Ljava/math/BigInteger;

    .line 40
    iput-object p12, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->device_type:Ljava/lang/String;

    .line 41
    iput p13, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->height_pixels:I

    .line 42
    move/from16 v0, p14

    iput v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->width_pixels:I

    .line 43
    move-object/from16 v0, p15

    iput-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->flow_used:Ljava/math/BigInteger;

    .line 44
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->expired_date:D

    .line 45
    move/from16 v0, p18

    iput v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->id:I

    .line 46
    move-object/from16 v0, p19

    iput-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->label:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->device_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getExpired_date()D
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->expired_date:D

    return-wide v0
.end method

.method public getFlow_limited()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->flow_limited:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFlow_used()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->flow_used:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGroup_id()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->group_id:I

    return v0
.end method

.method public getGroup_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight_pixels()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->height_pixels:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_time()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->last_time:D

    return-wide v0
.end method

.method public getSerial_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->serial_number:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth_pixels()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->width_pixels:I

    return v0
.end method

.method public isIs_active()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->is_active:Z

    return v0
.end method

.method public isIs_online()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->is_online:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->action:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setDevice_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_name"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->device_name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_type"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->device_type:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setExpired_date(D)V
    .locals 1
    .param p1, "expired_date"    # D

    .prologue
    .line 158
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->expired_date:D

    .line 159
    return-void
.end method

.method public setFlow_limited(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "flow_limited"    # Ljava/math/BigInteger;

    .prologue
    .line 118
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->flow_limited:Ljava/math/BigInteger;

    .line 119
    return-void
.end method

.method public setFlow_used(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "flow_used"    # Ljava/math/BigInteger;

    .prologue
    .line 150
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->flow_used:Ljava/math/BigInteger;

    .line 151
    return-void
.end method

.method public setGroup_id(I)V
    .locals 0
    .param p1, "group_id"    # I

    .prologue
    .line 86
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->group_id:I

    .line 87
    return-void
.end method

.method public setGroup_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "group_name"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->group_name:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setHeight_pixels(I)V
    .locals 0
    .param p1, "height_pixels"    # I

    .prologue
    .line 134
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->height_pixels:I

    .line 135
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 166
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->id:I

    .line 167
    return-void
.end method

.method public setIs_active(Z)V
    .locals 0
    .param p1, "is_active"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->is_active:Z

    .line 71
    return-void
.end method

.method public setIs_online(Z)V
    .locals 0
    .param p1, "is_online"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->is_online:Z

    .line 55
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->label:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setLast_time(D)V
    .locals 1
    .param p1, "last_time"    # D

    .prologue
    .line 102
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->last_time:D

    .line 103
    return-void
.end method

.method public setSerial_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial_number"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->serial_number:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setWidth_pixels(I)V
    .locals 0
    .param p1, "width_pixels"    # I

    .prologue
    .line 142
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->width_pixels:I

    .line 143
    return-void
.end method
