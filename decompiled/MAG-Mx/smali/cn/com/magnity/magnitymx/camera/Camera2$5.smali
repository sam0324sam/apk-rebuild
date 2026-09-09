.class Lcn/com/magnity/magnitymx/camera/Camera2$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/camera/Camera2;->createCameraPreviewSession()V
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
    .line 646
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 676
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    const-string v1, "Failed"

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1500(Lcn/com/magnity/magnitymx/camera/Camera2;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$100(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 671
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v1, p1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$902(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 659
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1000(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    .line 660
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 659
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 662
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1000(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1100(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 665
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1000(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1202(Lcn/com/magnity/magnitymx/camera/Camera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 666
    iget-object v1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$900(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1200(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    .line 667
    invoke-static {v3}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1300(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2$5;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1400(Lcn/com/magnity/magnitymx/camera/Camera2;)Landroid/os/Handler;

    move-result-object v4

    .line 666
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method
