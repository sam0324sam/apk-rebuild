.class final Lcn/com/magnity/magnitymx/data/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/data/DeviceInfo;
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
        "Lcn/com/magnity/magnitymx/data/DeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 27
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .local v3, "serialNo":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 288
    .local v25, "isOnlineDevice":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 289
    .local v4, "terminalIp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 290
    .local v5, "controllerIp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "mac":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 292
    .local v7, "communicationType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 293
    .local v8, "usbType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 294
    .local v26, "widthPixels":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 295
    .local v24, "heightPixels":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 298
    .local v23, "cameraName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 300
    .local v22, "isCloud":Z
    if-eqz v25, :cond_0

    .line 301
    new-instance v1, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-direct/range {v1 .. v8}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;II)V

    .line 303
    .local v1, "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    move/from16 v0, v26

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setWidthPixels(I)V

    .line 304
    move/from16 v0, v24

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setHeightPixels(I)V

    .line 305
    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->setCameraName(Ljava/lang/String;)V

    .line 320
    .end local v1    # "devInfo":Lcn/com/magnity/magnitymx/data/DeviceInfo;
    :goto_0
    return-object v1

    .line 308
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 309
    .local v12, "camIp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 310
    .local v13, "camCmdPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 311
    .local v14, "camImgPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 312
    .local v15, "camUser":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 314
    .local v16, "camPwd":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 315
    .local v17, "cloudIp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 316
    .local v18, "cloudCmdPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 317
    .local v19, "cloudImgPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 318
    .local v20, "cloudUser":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 320
    .local v21, "cloudPwd":Ljava/lang/String;
    new-instance v9, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-object v10, v2

    move v11, v3

    invoke-direct/range {v9 .. v22}, Lcn/com/magnity/magnitymx/data/DeviceInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v9

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 328
    new-array v0, p1, [Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo$1;->newArray(I)[Lcn/com/magnity/magnitymx/data/DeviceInfo;

    move-result-object v0

    return-object v0
.end method
