.class public Lcn/com/magnity/magnitymx/service/UDPService;
.super Landroid/app/Service;
.source "UDPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;
    }
.end annotation


# static fields
.field public static final PTZ_COMMAND:Ljava/lang/String; = "ptz_command"

.field public static final PTZ_COMMAND_MODE:I = 0x1

.field public static final PTZ_COMMAND_SNAP:I = 0x2

.field public static final PTZ_COMMAND_VALUE:Ljava/lang/String; = "ptz_command_value"

.field private static final TAG:Ljava/lang/String; = "UDPService"


# instance fields
.field private mBinder:Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;

.field private mUDPHelper:Lcn/com/magnity/magnitymx/util/UDPHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;-><init>(Lcn/com/magnity/magnitymx/service/UDPService;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/service/UDPService;->mBinder:Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/service/UDPService;->mUDPHelper:Lcn/com/magnity/magnitymx/util/UDPHelper;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 42
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/UDPService;->mUDPHelper:Lcn/com/magnity/magnitymx/util/UDPHelper;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/UDPService;->mUDPHelper:Lcn/com/magnity/magnitymx/util/UDPHelper;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/util/UDPHelper;->killThread()V

    .line 45
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 32
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/service/UDPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 33
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Lcn/com/magnity/magnitymx/util/UDPHelper;

    invoke-direct {v2, p0, v1}, Lcn/com/magnity/magnitymx/util/UDPHelper;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/service/UDPService;->mUDPHelper:Lcn/com/magnity/magnitymx/util/UDPHelper;

    .line 34
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/UDPService;->mUDPHelper:Lcn/com/magnity/magnitymx/util/UDPHelper;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2
.end method
