.class public Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;
.super Landroid/os/Binder;
.source "MagnityNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnityNetworkServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    return-object v0
.end method
