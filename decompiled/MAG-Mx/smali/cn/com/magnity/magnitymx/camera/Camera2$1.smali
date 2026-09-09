.class Lcn/com/magnity/magnitymx/camera/Camera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/camera/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/camera/Camera2;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/camera/Camera2;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/camera/Camera2;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 149
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$200(Lcn/com/magnity/magnitymx/camera/Camera2;)Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->onCameraClosed()V

    .line 150
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$000(Lcn/com/magnity/magnitymx/camera/Camera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 155
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 156
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$102(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 157
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$000(Lcn/com/magnity/magnitymx/camera/Camera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 162
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$102(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 164
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$200(Lcn/com/magnity/magnitymx/camera/Camera2;)Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->onError(I)V

    .line 165
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$000(Lcn/com/magnity/magnitymx/camera/Camera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 141
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$102(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 142
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$200(Lcn/com/magnity/magnitymx/camera/Camera2;)Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->onCameraOpened()V

    .line 143
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$300(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    .line 144
    return-void
.end method
