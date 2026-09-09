.class Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "DeviceInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter",
        "<",
        "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$1;->this$0:Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 8
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/4 v4, 0x7

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 44
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 45
    const/4 v1, 0x3

    iget v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsOnlineDevice:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 47
    iget-boolean v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mIsCloud:Z

    if-eqz v1, :cond_1

    .line 48
    .local v0, "_tmp":I
    :goto_1
    const/4 v1, 0x4

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 49
    const/4 v1, 0x5

    iget v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mTerminalIp:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 50
    const/4 v1, 0x6

    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getControllerIp()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 51
    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 52
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 56
    :goto_2
    const/16 v1, 0x8

    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCommunicationType()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 57
    const/16 v1, 0x9

    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getUsbType()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 58
    const/16 v1, 0xa

    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getWidthPixels()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 59
    const/16 v1, 0xb

    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getHeightPixels()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 60
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 61
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 65
    :goto_3
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 66
    invoke-interface {p1, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 70
    :goto_4
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 71
    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 75
    :goto_5
    const/16 v1, 0xf

    iget v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamCmdPort:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 76
    const/16 v1, 0x10

    iget v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamImgPort:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 77
    const/16 v1, 0x11

    iget v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudIp:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 78
    const/16 v1, 0x12

    iget v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudCmdPort:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    const/16 v1, 0x13

    iget v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudImgPort:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 81
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 85
    :goto_6
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 86
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 90
    :goto_7
    return-void

    .line 42
    .end local v0    # "_tmp":I
    :cond_0
    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 54
    .restart local v0    # "_tmp":I
    :cond_2
    invoke-virtual {p2}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 63
    :cond_3
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamName:Ljava/lang/String;

    invoke-interface {p1, v5, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 68
    :cond_4
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamUser:Ljava/lang/String;

    invoke-interface {p1, v6, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 73
    :cond_5
    iget-object v1, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCamPwd:Ljava/lang/String;

    invoke-interface {p1, v7, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5

    .line 83
    :cond_6
    const/16 v1, 0x14

    iget-object v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudUser:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_6

    .line 88
    :cond_7
    const/16 v1, 0x15

    iget-object v2, p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;->mCloudPwd:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_7
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p2, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitymx/database/local/DeviceInfoDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "INSERT OR REPLACE INTO `local_device` (`name`,`serial_number`,`is_online`,`is_cloud`,`terminal_ip`,`controller_ip`,`mac`,`communication_type`,`usb_type`,`mWidthPixels`,`mHeightPixels`,`cam_name`,`cam_user`,`cam_pwd`,`cam_cmd_port`,`cam_img_port`,`cloud_ip`,`cloud_cmd_port`,`cloud_img_port`,`cloud_user`,`cloud_pwd`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
