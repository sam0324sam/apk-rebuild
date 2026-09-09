.class public Lcn/com/magnity/magnitycx/sdk/VisibleCamera;
.super Ljava/lang/Object;
.source "VisibleCamera.java"


# static fields
.field private static camera_:Landroid/hardware/Camera;

.field private static isPreview_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinitCamera()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->camera_:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 46
    sget-boolean v0, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->isPreview_:Z

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->isPreview_:Z

    .line 50
    :cond_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->camera_:Landroid/hardware/Camera;

    .line 53
    :cond_1
    return-void
.end method

.method public static initCamera(ILandroid/view/SurfaceHolder;I)V
    .locals 0

    return-void
.end method

.method public static isCameraPermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static setPreviewOrientation(I)V
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 74
    sget-object v4, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->camera_:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 97
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 79
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 80
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 81
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 82
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 90
    :goto_1
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 91
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 92
    .local v2, "result":I
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 96
    :goto_2
    sget-object v4, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 83
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 85
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    .line 86
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 94
    :cond_1
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "result":I
    goto :goto_2

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setPreviewSize(Landroid/hardware/Camera$Parameters;I)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "size"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 59
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 61
    .local v3, "s":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-le v4, v5, :cond_0

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit8 v4, v4, 0x3

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/lit8 v5, v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-ge v4, v5, :cond_2

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit8 v4, v4, 0x4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/lit8 v5, v5, 0x3

    if-eq v4, v5, :cond_2

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lt v4, p1, :cond_1

    .line 67
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 71
    .end local v3    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    return-void
.end method
