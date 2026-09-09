.class public Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;
.super Ljava/lang/Object;
.source "GetUserDevicesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private device_list:[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;
    .param p2, "device_list"    # [Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;

    .prologue
    .line 181
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;->this$0:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;->device_list:[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;

    .line 183
    return-void
.end method


# virtual methods
.method public getDevice_list()[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;->device_list:[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;

    return-object v0
.end method

.method public setDevice_list([Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;)V
    .locals 0
    .param p1, "device_list"    # [Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;

    .prologue
    .line 190
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;->device_list:[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;

    .line 191
    return-void
.end method
