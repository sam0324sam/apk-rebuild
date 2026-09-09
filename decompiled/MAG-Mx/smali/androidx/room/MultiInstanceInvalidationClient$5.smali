.class Landroidx/room/MultiInstanceInvalidationClient$5;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/MultiInstanceInvalidationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/room/MultiInstanceInvalidationClient;

    .prologue
    .line 141
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v3, v3, Landroidx/room/MultiInstanceInvalidationClient;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v3}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 146
    :try_start_0
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v2, Landroidx/room/MultiInstanceInvalidationClient;->mService:Landroidx/room/IMultiInstanceInvalidationService;

    .line 147
    .local v1, "service":Landroidx/room/IMultiInstanceInvalidationService;
    if-eqz v1, :cond_0

    .line 148
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationClient;->mCallback:Landroidx/room/IMultiInstanceInvalidationCallback;

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget v3, v3, Landroidx/room/MultiInstanceInvalidationClient;->mClientId:I

    invoke-interface {v1, v2, v3}, Landroidx/room/IMultiInstanceInvalidationService;->unregisterCallback(Landroidx/room/IMultiInstanceInvalidationCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "service":Landroidx/room/IMultiInstanceInvalidationService;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationClient;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationClient$5;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v3, v3, Landroidx/room/MultiInstanceInvalidationClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 154
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ROOM"

    const-string v3, "Cannot unregister multi-instance invalidation callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
