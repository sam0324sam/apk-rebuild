.class public Lcn/com/magnity/magnitymx/scanner/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x2a3

.field private static final MAX_FRAME_WIDTH:I = 0x4b0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0


# instance fields
.field private mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

.field private mFramingRect:Landroid/graphics/Rect;

.field private mFramingRectInPreview:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/camera/CameraView;)V
    .locals 0
    .param p1, "cameraView"    # Lcn/com/magnity/magnitymx/camera/CameraView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    .line 27
    return-void
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 2
    .param p0, "resolution"    # I
    .param p1, "hardMin"    # I
    .param p2, "hardMax"    # I

    .prologue
    .line 85
    mul-int/lit8 v1, p0, 0x5

    div-int/lit8 v0, v1, 0x8

    .line 86
    .local v0, "dim":I
    if-ge v0, p1, :cond_0

    .line 92
    .end local p1    # "hardMin":I
    :goto_0
    return p1

    .line 89
    .restart local p1    # "hardMin":I
    :cond_0
    if-le v0, p2, :cond_1

    move p1, p2

    .line 90
    goto :goto_0

    :cond_1
    move p1, v0

    .line 92
    goto :goto_0
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v9

    .line 189
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 194
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 66
    iget-object v6, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 69
    :cond_1
    :try_start_1
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v6

    invoke-static {v6}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 70
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    if-eqz v2, :cond_0

    .line 74
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0xf0

    const/16 v7, 0x4b0

    invoke-static {v5, v6, v7}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v4

    .line 75
    .local v4, "width":I
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0xf0

    const/16 v7, 0x2a3

    invoke-static {v5, v6, v7}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v0

    .line 77
    .local v0, "height":I
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 78
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 79
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRect:Landroid/graphics/Rect;

    .line 81
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_2
    iget-object v5, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v13, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRectInPreview:Landroid/graphics/Rect;

    if-nez v13, :cond_3

    .line 103
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 104
    .local v1, "framingRect":Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 153
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v12

    .line 107
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 108
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v13

    invoke-static {v13}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 109
    .local v10, "screenResolution":Landroid/util/DisplayMetrics;
    iget-object v13, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/camera/CameraView;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 110
    .local v4, "previewResolution":Landroid/util/Size;
    if-eqz v4, :cond_0

    if-eqz v10, :cond_0

    .line 114
    iget-object v12, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v12}, Lcn/com/magnity/magnitymx/camera/CameraView;->getPreviewRotation()I

    move-result v5

    .line 115
    .local v5, "previewRotation":I
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    .local v6, "previewWidth":I
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 118
    .local v3, "previewHeight":I
    if-eqz v5, :cond_2

    const/16 v12, 0xb4

    if-ne v5, v12, :cond_6

    .line 119
    :cond_2
    iget v12, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v12, v6

    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v13, v3

    if-le v12, v13, :cond_4

    .line 120
    int-to-float v12, v3

    iget v13, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    div-float v7, v12, v13

    .line 124
    .local v7, "ratio":F
    :goto_1
    iget v12, v8, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v2, v12

    .line 125
    .local v2, "left":I
    iget v12, v8, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v9, v12

    .line 126
    .local v9, "right":I
    if-nez v5, :cond_5

    .line 127
    iget v12, v8, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v11, v12

    .line 128
    .local v11, "top":I
    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v0, v12

    .line 151
    .local v0, "bottom":I
    :goto_2
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v2, v11, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRectInPreview:Landroid/graphics/Rect;

    .line 153
    .end local v0    # "bottom":I
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "left":I
    .end local v3    # "previewHeight":I
    .end local v4    # "previewResolution":Landroid/util/Size;
    .end local v5    # "previewRotation":I
    .end local v6    # "previewWidth":I
    .end local v7    # "ratio":F
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "right":I
    .end local v10    # "screenResolution":Landroid/util/DisplayMetrics;
    .end local v11    # "top":I
    :cond_3
    iget-object v12, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0

    .line 122
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    .restart local v3    # "previewHeight":I
    .restart local v4    # "previewResolution":Landroid/util/Size;
    .restart local v5    # "previewRotation":I
    .restart local v6    # "previewWidth":I
    .restart local v8    # "rect":Landroid/graphics/Rect;
    .restart local v10    # "screenResolution":Landroid/util/DisplayMetrics;
    :cond_4
    int-to-float v12, v6

    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    div-float v7, v12, v13

    .restart local v7    # "ratio":F
    goto :goto_1

    .line 130
    .restart local v2    # "left":I
    .restart local v9    # "right":I
    :cond_5
    int-to-float v12, v3

    div-float/2addr v12, v7

    iget v13, v8, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    float-to-int v0, v12

    .line 131
    .restart local v0    # "bottom":I
    int-to-float v12, v3

    div-float/2addr v12, v7

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    float-to-int v11, v12

    .restart local v11    # "top":I
    goto :goto_2

    .line 134
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v7    # "ratio":F
    .end local v9    # "right":I
    .end local v11    # "top":I
    :cond_6
    iget v12, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v12, v3

    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v13, v6

    if-le v12, v13, :cond_7

    .line 135
    int-to-float v12, v6

    iget v13, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    div-float v7, v12, v13

    .line 139
    .restart local v7    # "ratio":F
    :goto_3
    const/16 v12, 0x5a

    if-ne v5, v12, :cond_8

    .line 140
    iget v12, v8, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v2, v12

    .line 141
    .restart local v2    # "left":I
    int-to-float v12, v3

    div-float/2addr v12, v7

    iget v13, v8, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    float-to-int v11, v12

    .line 142
    .restart local v11    # "top":I
    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v9, v12

    .line 143
    .restart local v9    # "right":I
    int-to-float v12, v3

    div-float/2addr v12, v7

    iget v13, v8, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    float-to-int v0, v12

    .restart local v0    # "bottom":I
    goto :goto_2

    .line 137
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v7    # "ratio":F
    .end local v9    # "right":I
    .end local v11    # "top":I
    :cond_7
    int-to-float v12, v3

    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    div-float v7, v12, v13

    .restart local v7    # "ratio":F
    goto :goto_3

    .line 145
    :cond_8
    int-to-float v12, v6

    div-float/2addr v12, v7

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    float-to-int v2, v12

    .line 146
    .restart local v2    # "left":I
    iget v12, v8, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v11, v12

    .line 147
    .restart local v11    # "top":I
    int-to-float v12, v6

    div-float/2addr v12, v7

    iget v13, v8, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    float-to-int v9, v12

    .line 148
    .restart local v9    # "right":I
    iget v12, v8, Landroid/graphics/Rect;->right:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v0, v12

    .restart local v0    # "bottom":I
    goto :goto_2

    .line 102
    .end local v0    # "bottom":I
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "left":I
    .end local v3    # "previewHeight":I
    .end local v4    # "previewResolution":Landroid/util/Size;
    .end local v5    # "previewRotation":I
    .end local v6    # "previewWidth":I
    .end local v7    # "ratio":F
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "right":I
    .end local v10    # "screenResolution":Landroid/util/DisplayMetrics;
    .end local v11    # "top":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method public init(Lcn/com/magnity/magnitymx/camera/CameraView$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/camera/CameraView;->setCallback(Lcn/com/magnity/magnitymx/camera/CameraView$Callback;)V

    .line 32
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/camera/CameraView;->setPreviewCallbackAllowed(Z)V

    .line 34
    :cond_0
    return-void
.end method

.method public isCameraOpened()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->isCameraOpened()Z

    move-result v0

    goto :goto_0
.end method

.method public pausePreview()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->pausePreview()Z

    goto :goto_0
.end method

.method public resumePreview()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->resumePreview()Z

    goto :goto_0
.end method

.method public setFlashMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/camera/CameraView;->setFlash(I)V

    goto :goto_0
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 166
    .local v1, "screenResolution":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p1, v3, :cond_0

    .line 167
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    :cond_0
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p2, v3, :cond_1

    .line 170
    iget p2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 172
    :cond_1
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 173
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 174
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRect:Landroid/graphics/Rect;

    .line 175
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 165
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/util/DisplayMetrics;
    .end local v2    # "topOffset":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public start()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->start()Z

    .line 40
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->stop()V

    .line 46
    :cond_0
    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRect:Landroid/graphics/Rect;

    .line 47
    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mFramingRectInPreview:Landroid/graphics/Rect;

    .line 48
    return-void
.end method

.method public takePicture()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/CameraManager;->mCameraView:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->takePicture()Z

    goto :goto_0
.end method
