.class Lcn/com/magnity/magnitymx/camera/Camera2$6;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/camera/Camera2;->captureStillPicture()V
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
    .line 885
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$6;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 891
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$6;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1600(Lcn/com/magnity/magnitymx/camera/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$6;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1700(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    .line 897
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$6;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1602(Lcn/com/magnity/magnitymx/camera/Camera2;Z)Z

    .line 895
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$6;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$1802(Lcn/com/magnity/magnitymx/camera/Camera2;Z)Z

    goto :goto_0
.end method
