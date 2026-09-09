.class Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;
.super Ljava/lang/Object;
.source "MagnityNetworkService.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 182
    iput-object p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 192
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iget-boolean v1, v1, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isNetworkErrorToasted:Z

    if-nez v1, :cond_0

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2$1;-><init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "total"    # I

    .prologue
    .line 185
    return-void
.end method
