.class public Lcn/com/magnity/magnitymx/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static volatile mUniqueInstance:Lcn/com/magnity/magnitymx/util/LocationUtils;


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mContext:Ljava/lang/ref/WeakReference;

    .line 31
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/util/LocationUtils;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/util/LocationUtils;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 22
    iput-object p1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method private bestProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string v0, "network"

    .line 50
    .local v0, "provider":Ljava/lang/String;
    sget-boolean v2, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "NETWORK_PROVIDER"

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 53
    .end local v0    # "provider":Ljava/lang/String;
    :cond_1
    const-string v2, "gps"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    const-string v0, "gps"

    .line 55
    .restart local v0    # "provider":Ljava/lang/String;
    sget-boolean v2, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "GPS_PROVIDER"

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v0    # "provider":Ljava/lang/String;
    :cond_2
    const-string v0, "gps"

    .restart local v0    # "provider":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    sget-object v0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mUniqueInstance:Lcn/com/magnity/magnitymx/util/LocationUtils;

    if-nez v0, :cond_1

    .line 126
    const-class v1, Lcn/com/magnity/magnitymx/util/LocationUtils;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mUniqueInstance:Lcn/com/magnity/magnitymx/util/LocationUtils;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcn/com/magnity/magnitymx/util/LocationUtils;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/util/LocationUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mUniqueInstance:Lcn/com/magnity/magnitymx/util/LocationUtils;

    .line 130
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    sget-object v0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mUniqueInstance:Lcn/com/magnity/magnitymx/util/LocationUtils;

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isLocationOpened()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    .line 140
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public openLocationSwitch()V
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 145
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->isLocationOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f00a1

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0e007d

    .line 160
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e007e

    .line 161
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcn/com/magnity/magnitymx/util/LocationUtils$3;

    invoke-direct {v3, p0, v0}, Lcn/com/magnity/magnitymx/util/LocationUtils$3;-><init>(Lcn/com/magnity/magnitymx/util/LocationUtils;Landroid/content/Context;)V

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcn/com/magnity/magnitymx/util/LocationUtils$2;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitymx/util/LocationUtils$2;-><init>(Lcn/com/magnity/magnitymx/util/LocationUtils;)V

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public registerListener()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 70
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 74
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 75
    .local v8, "perm":I
    if-nez v8, :cond_0

    .line 79
    new-instance v1, Lcn/com/magnity/magnitymx/util/LocationUtils$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/util/LocationUtils$1;-><init>(Lcn/com/magnity/magnitymx/util/LocationUtils;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    .line 103
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 104
    .local v5, "criteria":Landroid/location/Criteria;
    invoke-virtual {v5, v9}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 105
    invoke-virtual {v5, v9}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 106
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x1388

    const/high16 v4, 0x40400000    # 3.0f

    iget-object v6, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_2
    move v1, v9

    .line 109
    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 119
    iput-object v2, p0, Lcn/com/magnity/magnitymx/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    .line 121
    :cond_0
    sput-object v2, Lcn/com/magnity/magnitymx/util/LocationUtils;->mUniqueInstance:Lcn/com/magnity/magnitymx/util/LocationUtils;

    .line 122
    return-void
.end method
