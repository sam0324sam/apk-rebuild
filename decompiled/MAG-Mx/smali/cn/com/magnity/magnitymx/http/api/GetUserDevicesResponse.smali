.class public Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;
.super Lcn/com/magnity/magnitymx/http/api/CommonResponse;
.source "GetUserDevicesResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;,
        Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;
    }
.end annotation


# instance fields
.field private data:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "data"    # Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/http/api/CommonResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;->data:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;

    .line 197
    return-void
.end method


# virtual methods
.method public getData()Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;->data:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;

    return-object v0
.end method

.method public setData(Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;)V
    .locals 0
    .param p1, "data"    # Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;

    .prologue
    .line 204
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;->data:Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;

    .line 205
    return-void
.end method
