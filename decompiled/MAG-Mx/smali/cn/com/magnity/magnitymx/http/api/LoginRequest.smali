.class public Lcn/com/magnity/magnitymx/http/api/LoginRequest;
.super Ljava/lang/Object;
.source "LoginRequest.java"


# instance fields
.field private gps_altitude:Ljava/lang/String;

.field private gps_latitude:Ljava/lang/String;

.field private gps_longitude:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "gps_latitude"    # Ljava/lang/String;
    .param p4, "gps_longitude"    # Ljava/lang/String;
    .param p5, "gps_altitude"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->password:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_latitude:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_longitude:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_altitude:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->location:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getGps_altitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_altitude:Ljava/lang/String;

    return-object v0
.end method

.method public getGps_latitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getGps_longitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setGps_altitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps_altitude"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_altitude:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setGps_latitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps_latitude"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_latitude:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setGps_longitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps_longitude"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->gps_longitude:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->location:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;->password:Ljava/lang/String;

    .line 35
    return-void
.end method
