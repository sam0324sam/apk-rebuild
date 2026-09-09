.class public Lcn/com/magnity/sdk/MagService;
.super Ljava/lang/Object;
.source "MagService.java"


# static fields
.field public static final TYPE_NET:I = 0x0

.field public static final TYPE_USB:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "thermogroupsdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native EnumCameras()Z
.end method

.method private static native GetTerminalCount()I
.end method

.method private static native GetTerminalList([Lcn/com/magnity/sdk/types/EnumerationInfo;)I
.end method

.method private static native IsInitialized()Z
.end method

.method public static enumCameras()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcn/com/magnity/sdk/MagService;->EnumCameras()Z

    move-result v0

    return v0
.end method

.method public static getDevices(Landroid/content/Context;II[Lcn/com/magnity/sdk/types/EnumerationInfo;)I
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I
    .param p3, "infos"    # [Lcn/com/magnity/sdk/types/EnumerationInfo;

    .prologue
    const/4 v11, 0x0

    .line 50
    if-nez p3, :cond_1

    .line 51
    const/4 v6, -0x1

    .line 89
    :cond_0
    :goto_0
    return v6

    .line 53
    :cond_1
    array-length v7, p3

    .line 55
    .local v7, "num":I
    invoke-static {p3}, Lcn/com/magnity/sdk/MagService;->GetTerminalList([Lcn/com/magnity/sdk/types/EnumerationInfo;)I

    move-result v6

    .line 56
    .local v6, "n1":I
    if-lt v6, v7, :cond_2

    .line 57
    move v6, v7

    .line 60
    :cond_2
    if-eqz p0, :cond_0

    .line 64
    const-string v9, "usb"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbManager;

    .line 65
    .local v8, "usbMgr":Landroid/hardware/usb/UsbManager;
    if-eqz v8, :cond_0

    .line 69
    move v3, v6

    .line 70
    .local v3, "i":I
    invoke-virtual {v8}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 71
    .local v1, "devices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 72
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 73
    .local v0, "dev":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 74
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v10

    if-ne v10, p2, :cond_3

    .line 75
    new-instance v5, Lcn/com/magnity/sdk/types/EnumerationInfo;

    invoke-direct {v5}, Lcn/com/magnity/sdk/types/EnumerationInfo;-><init>()V

    .line 76
    .local v5, "info":Lcn/com/magnity/sdk/types/EnumerationInfo;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcn/com/magnity/sdk/types/EnumerationInfo;->charCameraName:Ljava/lang/String;

    .line 77
    iput v11, v5, Lcn/com/magnity/sdk/types/EnumerationInfo;->intVersion:I

    .line 78
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v10

    iput v10, v5, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraIpOrUsbId:I

    .line 79
    iput v11, v5, Lcn/com/magnity/sdk/types/EnumerationInfo;->intControllerIp:I

    .line 80
    const-string v10, ""

    iput-object v10, v5, Lcn/com/magnity/sdk/types/EnumerationInfo;->charCameraMAC:Ljava/lang/String;

    .line 81
    const/4 v10, 0x1

    iput v10, v5, Lcn/com/magnity/sdk/types/EnumerationInfo;->intCameraType:I

    .line 82
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-object v5, p3, v3

    .line 84
    if-ne v4, v7, :cond_5

    move v3, v4

    .end local v0    # "dev":Landroid/hardware/usb/UsbDevice;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "i":I
    .end local v5    # "info":Lcn/com/magnity/sdk/types/EnumerationInfo;
    .restart local v3    # "i":I
    :cond_4
    move v6, v3

    .line 89
    goto :goto_0

    .end local v3    # "i":I
    .restart local v0    # "dev":Landroid/hardware/usb/UsbDevice;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v4    # "i":I
    .restart local v5    # "info":Lcn/com/magnity/sdk/types/EnumerationInfo;
    :cond_5
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcn/com/magnity/sdk/MagService;->IsInitialized()Z

    move-result v0

    return v0
.end method
