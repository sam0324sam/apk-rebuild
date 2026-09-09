.class public Lcn/com/magnity/magnitymx/http/api/LogoutRequest;
.super Ljava/lang/Object;
.source "LogoutRequest.java"


# instance fields
.field private gps_altitude:Ljava/lang/String;

.field private gps_latitude:Ljava/lang/String;

.field private gps_longitude:Ljava/lang/String;

.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gps_latitude"    # Ljava/lang/String;
    .param p2, "gps_longitude"    # Ljava/lang/String;
    .param p3, "gps_altitude"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_latitude:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_longitude:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_altitude:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->location:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getGps_altitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_altitude:Ljava/lang/String;

    return-object v0
.end method

.method public getGps_latitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getGps_longitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->location:Ljava/lang/String;

    return-object v0
.end method

.method public setGps_altitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps_altitude"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_altitude:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setGps_latitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps_latitude"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_latitude:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setGps_longitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "gps_longitude"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->gps_longitude:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;->location:Ljava/lang/String;

    .line 47
    return-void
.end method
