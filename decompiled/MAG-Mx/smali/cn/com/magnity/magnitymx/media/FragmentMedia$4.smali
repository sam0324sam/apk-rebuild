.class Lcn/com/magnity/magnitymx/media/FragmentMedia$4;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

.field final synthetic val$networkServiceListener:Lcn/com/magnity/magnitymx/media/NetworkServiceListener;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/NetworkServiceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 309
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->val$networkServiceListener:Lcn/com/magnity/magnitymx/media/NetworkServiceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 313
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$602(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)Z

    .line 314
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    check-cast p2, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    .end local p2    # "iBinder":Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$702(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    .line 315
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$700(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;->getService()Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$802(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .line 316
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$800(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->val$networkServiceListener:Lcn/com/magnity/magnitymx/media/NetworkServiceListener;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->addListener(Lcn/com/magnity/magnitymx/media/NetworkServiceListener;)V

    .line 317
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 321
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$4;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$602(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)Z

    .line 322
    return-void
.end method
