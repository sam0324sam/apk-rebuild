.class public Lcn/com/magnity/magnitymx/data/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


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
    tableName = "local_device"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CAM_CMD_PORT:I = 0x833c

.field public static final DEFAULT_CAM_IMG_PORT:I = 0x833d

.field public static final DEFAULT_CAM_USERNAME:Ljava/lang/String; = "admin"

.field public static final DEFAULT_CAM_USERPWD:Ljava/lang/String; = "admin123"

.field public static final DEFAULT_CLOUD_CMD_PORT:I = 0x833c

.field public static final DEFAULT_CLOUD_IMG_PORT:I = 0x833d

.field public static final DEFAULT_CLOUD_IP_STR:Ljava/lang/String; = "121.43.190.114"

.field public static final DEFAULT_CLOUD_USERNAME:Ljava/lang/String; = "magnity"

.field public static final DEFAULT_CLOUD_USERPWD:Ljava/lang/String; = "any123"

.field public static final INVALID_IP:I = -0x1

.field public static final INVALID_SN:I = -0x1

.field public static final USBTYPE_CX_160CORE:I = 0x1

.field public static final USBTYPE_MX:I = 0x2

.field public static final USBTYPE_NONE:I


# instance fields
.field public mCamCmdPort:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "cam_cmd_port"
    .end annotation
.end field

.field public mCamImgPort:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "cam_img_port"
    .end annotation
.end field

.field public mCamName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "cam_name"
    .end annotation
.end field

.field public mCamPwd:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "cam_pwd"
    .end annotation
.end field

.field public mCamUser:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "cam_user"
    .end annotation
.end field

.field public mCloudCmdPort:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "cloud_cmd_port"
    .end annotation
.end field

.field public mCloudImgPort:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "cloud_img_port"
    .end annotation
.end field

.field public mCloudIp:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "cloud_ip"
    .end annotation
.end field

.field public mCloudPwd:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "cloud_pwd"
    .end annotation
.end field

.field public mCloudUser:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "cloud_user"
    .end annotation
.end field

.field private mCommunicationType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "communication_type"
    .end annotation
.end field

.field private mControllerIp:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "controller_ip"
    .end annotation
.end field

.field private mHeightPixels:I

.field public mIsCloud:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_cloud"
    .end annotation
.end field

.field public mIsOnlineDevice:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_online"
    .end annotation
.end field

.field private mMac:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mac"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "name"
    .end annotation
.end field

.field private mSerialNo:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "serial_number"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field public mTerminalIp:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "terminal_ip"
    .end annotation
.end field

.field private mUsbType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "usb_type"
    .end annotation
.end field

.field private mWidthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcn/com/magnity/magnitymx/data/DeviceInfo$1;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo$1;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const v3, 0x833d

    const v2, 0x833c

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    .line 50
    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    .line 53
    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mControllerIp:I

    .line 73
    const-string v0, "admin"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    .line 76
    const-string v0, "admin123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    .line 82
    iput v3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    .line 85
    const-string v0, "121.43.190.114"

    .line 86
    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    .line 88
    iput v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    .line 91
    iput v3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    .line 94
    const-string v0, "magnity"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    .line 97
    const-string v0, "any123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    .line 103
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    .line 104
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsOnlineDevice:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mMac:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCommunicationType:I

    .line 107
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mUsbType:I

    .line 108
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mWidthPixels:I

    .line 109
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mHeightPixels:I

    .line 111
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    .line 113
    const-string v0, "admin"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    .line 114
    const-string v0, "admin123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    .line 115
    iput v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    .line 116
    iput v3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    .line 118
    const-string v0, "121.43.190.114"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    .line 119
    iput v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    .line 120
    iput v3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    .line 121
    const-string v0, "magnity"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    .line 122
    const-string v0, "any123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "serialNo"    # I
    .param p3, "camIp"    # I
    .param p4, "camCmdPort"    # I
    .param p5, "camImgPort"    # I
    .param p6, "camUser"    # Ljava/lang/String;
    .param p7, "camPwd"    # Ljava/lang/String;
    .param p8, "cloudIp"    # I
    .param p9, "cloudCmdPort"    # I
    .param p10, "cloudImgPort"    # I
    .param p11, "cloudUser"    # Ljava/lang/String;
    .param p12, "cloudPwd"    # Ljava/lang/String;
    .param p13, "isCloud"    # Z
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mControllerIp:I

    .line 73
    const-string v0, "admin"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    .line 76
    const-string v0, "admin123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    .line 79
    const v0, 0x833c

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    .line 82
    const v0, 0x833d

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    .line 85
    const-string v0, "121.43.190.114"

    .line 86
    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    .line 88
    const v0, 0x833c

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    .line 91
    const v0, 0x833d

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    .line 94
    const-string v0, "magnity"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    .line 97
    const-string v0, "any123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    .line 145
    iput p2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsOnlineDevice:I

    .line 148
    iput p3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    .line 149
    if-nez p4, :cond_0

    const p4, 0x833c

    .end local p4    # "camCmdPort":I
    :cond_0
    iput p4, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    .line 150
    if-nez p5, :cond_1

    const p5, 0x833d

    .end local p5    # "camImgPort":I
    :cond_1
    iput p5, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    .line 151
    const-string v0, ""

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p6, "admin"

    .end local p6    # "camUser":Ljava/lang/String;
    :cond_2
    iput-object p6, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    .line 152
    const-string v0, ""

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p7, "admin123"

    .end local p7    # "camPwd":Ljava/lang/String;
    :cond_3
    iput-object p7, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    .line 154
    if-nez p8, :cond_4

    const-string v0, "121.43.190.114"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(Ljava/lang/String;)I

    move-result p8

    .end local p8    # "cloudIp":I
    :cond_4
    iput p8, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    .line 155
    if-nez p9, :cond_5

    const p9, 0x833c

    .end local p9    # "cloudCmdPort":I
    :cond_5
    iput p9, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    .line 156
    if-nez p10, :cond_6

    const p10, 0x833d

    .end local p10    # "cloudImgPort":I
    :cond_6
    iput p10, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    .line 157
    const-string v0, ""

    invoke-virtual {p11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p11, "magnity"

    .end local p11    # "cloudUser":Ljava/lang/String;
    :cond_7
    iput-object p11, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    .line 158
    const-string v0, ""

    invoke-virtual {p12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p12, "any123"

    .end local p12    # "cloudPwd":Ljava/lang/String;
    :cond_8
    iput-object p12, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    .line 160
    iput-boolean p13, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCommunicationType:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mUsbType:I

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "serialNo"    # I
    .param p3, "terminalIp"    # I
    .param p4, "controllerIp"    # I
    .param p5, "mac"    # Ljava/lang/String;
    .param p6, "communicationType"    # I
    .param p7, "usbType"    # I
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .prologue
    const v3, 0x833d

    const v2, 0x833c

    const/4 v1, -0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    .line 50
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    .line 53
    iput v1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mControllerIp:I

    .line 73
    const-string v0, "admin"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    .line 76
    const-string v0, "admin123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    .line 82
    iput v3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    .line 85
    const-string v0, "121.43.190.114"

    .line 86
    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    .line 88
    iput v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    .line 91
    iput v3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    .line 94
    const-string v0, "magnity"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    .line 97
    const-string v0, "any123"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsOnlineDevice:I

    .line 132
    iput p3, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    .line 133
    iput p4, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mControllerIp:I

    .line 134
    iput-object p5, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mMac:Ljava/lang/String;

    .line 135
    iput p6, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCommunicationType:I

    .line 136
    iput p7, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mUsbType:I

    .line 137
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudIp()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    return v0
.end method

.method public getCloudPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunicationType()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCommunicationType:I

    return v0
.end method

.method public getControllerIp()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mControllerIp:I

    return v0
.end method

.method public getDeviceIp()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    return v0
.end method

.method public getDevicePwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mHeightPixels:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    return v0
.end method

.method public getUsbType()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mUsbType:I

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mWidthPixels:I

    return v0
.end method

.method public getmCamCmdPort()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    return v0
.end method

.method public getmCamImgPort()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    return v0
.end method

.method public getmCloudCmdPort()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    return v0
.end method

.method public getmCloudImgPort()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    return v0
.end method

.method public isOnlineDevice()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsOnlineDevice:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameDevice(Lcn/com/magnity/magnitymx/data/DeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 334
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    iget-object v1, p1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    iget v2, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    if-ne v1, v2, :cond_0

    .line 339
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ismIsCloud()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    return v0
.end method

.method public setCameraName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    return-void
.end method

.method public setCommunicationType(I)V
    .locals 0
    .param p1, "communicationType"    # I

    .prologue
    .line 188
    iput p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCommunicationType:I

    return-void
.end method

.method public setControllerIp(I)V
    .locals 0
    .param p1, "ip"    # I

    .prologue
    .line 182
    iput p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mControllerIp:I

    return-void
.end method

.method public setDeviceIp(I)V
    .locals 0
    .param p1, "ip"    # I

    .prologue
    .line 177
    iput p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    return-void
.end method

.method public setHeightPixels(I)V
    .locals 0
    .param p1, "heightPixels"    # I

    .prologue
    .line 197
    iput p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mHeightPixels:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mMac:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSerialNo(I)V
    .locals 0
    .param p1, "serialNo"    # I

    .prologue
    .line 170
    iput p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    return-void
.end method

.method public setUsbType(I)V
    .locals 0
    .param p1, "usbType"    # I

    .prologue
    .line 191
    iput p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mUsbType:I

    return-void
.end method

.method public setWidthPixels(I)V
    .locals 0
    .param p1, "widthPixels"    # I

    .prologue
    .line 194
    iput p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mWidthPixels:I

    return-void
.end method

.method public setmIsCloud(Z)V
    .locals 0
    .param p1, "mIsCloud"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    .line 226
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mSerialNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsOnlineDevice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mControllerIp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCommunicationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mUsbType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mWidthPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mHeightPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    return-void
.end method
