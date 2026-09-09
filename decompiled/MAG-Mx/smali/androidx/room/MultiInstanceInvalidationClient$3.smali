.class Landroidx/room/MultiInstanceInvalidationClient$3;
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
    .line 117
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$3;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$3;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v2, Landroidx/room/MultiInstanceInvalidationClient;->mService:Landroidx/room/IMultiInstanceInvalidationService;

    .line 122
    .local v1, "service":Landroidx/room/IMultiInstanceInvalidationService;
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$3;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationClient$3;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v3, v3, Landroidx/room/MultiInstanceInvalidationClient;->mCallback:Landroidx/room/IMultiInstanceInvalidationCallback;

    iget-object v4, p0, Landroidx/room/MultiInstanceInvalidationClient$3;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v4, v4, Landroidx/room/MultiInstanceInvalidationClient;->mName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroidx/room/IMultiInstanceInvalidationService;->registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroidx/room/MultiInstanceInvalidationClient;->mClientId:I

    .line 124
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$3;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationClient$3;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v3, v3, Landroidx/room/MultiInstanceInvalidationClient;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v3}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "service":Landroidx/room/IMultiInstanceInvalidationService;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ROOM"

    const-string v3, "Cannot register multi-instance invalidation callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
