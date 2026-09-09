.class public Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;
.super Landroid/os/Binder;
.source "UDPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/service/UDPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UDPServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/service/UDPService;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/service/UDPService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/service/UDPService;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;->this$0:Lcn/com/magnity/magnitymx/service/UDPService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcn/com/magnity/magnitymx/service/UDPService;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/UDPService$UDPServiceBinder;->this$0:Lcn/com/magnity/magnitymx/service/UDPService;

    return-object v0
.end method
