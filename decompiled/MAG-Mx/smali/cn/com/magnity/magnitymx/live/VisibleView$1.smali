.class Lcn/com/magnity/magnitymx/live/VisibleView$1;
.super Ljava/lang/Object;
.source "VisibleView.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/camera/CameraView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/VisibleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/VisibleView;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/VisibleView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/live/VisibleView;

    .prologue
    .line 109
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/VisibleView$1;->this$0:Lcn/com/magnity/magnitymx/live/VisibleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "onCameraClosed"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public onCameraOpened()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "onCameraOpened"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onFramePreview([BIII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onPictureTaken([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureTaken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView$1;->this$0:Lcn/com/magnity/magnitymx/live/VisibleView;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->access$000(Lcn/com/magnity/magnitymx/live/VisibleView;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView$1;->this$0:Lcn/com/magnity/magnitymx/live/VisibleView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView$1;->this$0:Lcn/com/magnity/magnitymx/live/VisibleView;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->access$100(Lcn/com/magnity/magnitymx/live/VisibleView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/live/VisibleView$1$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/live/VisibleView$1$1;-><init>(Lcn/com/magnity/magnitymx/live/VisibleView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    invoke-static {p1}, Lcn/com/magnity/magnitymx/live/VisibleView;->access$202([B)[B

    .line 133
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView$1;->this$0:Lcn/com/magnity/magnitymx/live/VisibleView;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->access$300(Lcn/com/magnity/magnitymx/live/VisibleView;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 134
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/VisibleView$1;->this$0:Lcn/com/magnity/magnitymx/live/VisibleView;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/VisibleView;->access$000(Lcn/com/magnity/magnitymx/live/VisibleView;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    return-void
.end method

.method public onVideoRecorded(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method
