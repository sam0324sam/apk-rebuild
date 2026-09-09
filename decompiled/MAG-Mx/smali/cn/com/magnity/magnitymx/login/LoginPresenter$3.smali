.class Lcn/com/magnity/magnitymx/login/LoginPresenter$3;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/login/LoginPresenter;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$3;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;)V
    .locals 14
    .param p1, "getUserDevicesResponse"    # Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 145
    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;->getCode()I

    move-result v8

    .line 130
    .local v8, "code":I
    const v1, 0x30d42

    if-ne v8, v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;->getData()Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;

    move-result-object v9

    .line 134
    .local v9, "data":Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Data;->getDevice_list()[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;

    move-result-object v11

    .line 136
    .local v11, "devices":[Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->cloudDeviceDao()Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;

    move-result-object v7

    .line 138
    .local v7, "cloudDeviceDao":Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$3;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$100(Lcn/com/magnity/magnitymx/login/LoginPresenter;)I

    move-result v1

    invoke-interface {v7, v1}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;->deleteUserDevices(I)V

    .line 139
    array-length v13, v11

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v10, v11, v12

    .line 140
    .local v10, "device":Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;
    new-instance v0, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->getId()I

    move-result v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$3;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$100(Lcn/com/magnity/magnitymx/login/LoginPresenter;)I

    move-result v2

    .line 141
    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->getDevice_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->getSerial_number()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse$Device;->isIs_online()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    .local v0, "item":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    invoke-interface {v7, v0}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;->insertDevice(Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;)V

    .line 139
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    check-cast p1, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/login/LoginPresenter$3;->accept(Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;)V

    return-void
.end method
