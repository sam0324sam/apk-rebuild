.class Landroidx/room/MultiInstanceInvalidationClient$6;
.super Landroidx/room/InvalidationTracker$Observer;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/room/MultiInstanceInvalidationClient;
    .param p2, "tables"    # [Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$6;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0, p2}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method isRemote()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onInvalidated(Ljava/util/Set;)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$6;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationClient;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$6;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v2, Landroidx/room/MultiInstanceInvalidationClient;->mService:Landroidx/room/IMultiInstanceInvalidationService;

    .line 180
    .local v1, "service":Landroidx/room/IMultiInstanceInvalidationService;
    if-eqz v1, :cond_0

    .line 181
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient$6;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget v3, v2, Landroidx/room/MultiInstanceInvalidationClient;->mClientId:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroidx/room/IMultiInstanceInvalidationService;->broadcastInvalidation(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v1    # "service":Landroidx/room/IMultiInstanceInvalidationService;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ROOM"

    const-string v3, "Cannot broadcast invalidation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
