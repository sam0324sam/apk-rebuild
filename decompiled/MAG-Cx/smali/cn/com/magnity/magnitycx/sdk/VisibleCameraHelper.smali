.class public Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;
.super Ljava/lang/Object;
.source "VisibleCameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;,
        Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;
    }
.end annotation


# static fields
.field private static volatile instance_:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;


# instance fields
.field private camera_:Landroid/hardware/Camera;

.field private jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final sizeComparator:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;-><init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->sizeComparator:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;

    .line 29
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$1;-><init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method private equalRate(Landroid/hardware/Camera$Size;F)Z
    .locals 6
    .param p1, "s"    # Landroid/hardware/Camera$Size;
    .param p2, "rate"    # F

    .prologue
    .line 199
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 200
    .local v0, "r":F
    sub-float v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 201
    const/4 v1, 0x1

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->instance_:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    if-nez v0, :cond_1

    .line 93
    const-class v1, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->instance_:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    invoke-direct {v0}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;-><init>()V

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->instance_:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->instance_:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public closeCamera()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    .line 130
    :cond_0
    return-void
.end method

.method public getExifOrientation(Ljava/lang/String;)I
    .locals 7
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 67
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 71
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 72
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 73
    .local v4, "orientation":I
    if-eq v4, v6, :cond_0

    .line 74
    packed-switch v4, :pswitch_data_0

    .line 88
    .end local v4    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 77
    goto :goto_1

    .line 79
    :pswitch_2
    const/16 v0, 0xb4

    .line 80
    goto :goto_1

    .line 82
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v7

    const/4 v1, 0x1

    const-string v4, "orientation"

    aput-object v4, v2, v1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 53
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 60
    :goto_0
    return v7

    .line 57
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    const-string v0, "orientation"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 59
    .local v7, "orientation":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public openCamera(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPictureSize(IF)Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;
    .locals 8
    .param p1, "expectedWidth"    # I
    .param p2, "rate"    # F

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    if-nez v6, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v5

    .line 170
    :cond_1
    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 171
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->sizeComparator:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, "size":Landroid/hardware/Camera$Size;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 181
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 182
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "size":Landroid/hardware/Camera$Size;
    check-cast v4, Landroid/hardware/Camera$Size;

    .line 183
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    if-le v6, p1, :cond_3

    invoke-direct {p0, v4, p2}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->equalRate(Landroid/hardware/Camera$Size;F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    :cond_2
    if-eq v0, v2, :cond_0

    .line 192
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 193
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v5, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 195
    new-instance v5, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, p0, v6, v7}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;-><init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;II)V

    goto :goto_0

    .line 181
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setPreviewOrientation(I)I
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    .line 258
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 259
    const/4 v2, 0x0

    .line 281
    :goto_0
    return v2

    .line 262
    :cond_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 263
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 264
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 265
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 266
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 274
    :goto_1
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 275
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 276
    .local v2, "result":I
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 280
    :goto_2
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 267
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 268
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 269
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    .line 270
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 278
    :cond_1
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "result":I
    goto :goto_2

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPreviewSize(IF)Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;
    .locals 8
    .param p1, "expectedWidth"    # I
    .param p2, "rate"    # F

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    if-nez v6, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v5

    .line 137
    :cond_1
    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 138
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->sizeComparator:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, "size":Landroid/hardware/Camera$Size;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 148
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "size":Landroid/hardware/Camera$Size;
    check-cast v4, Landroid/hardware/Camera$Size;

    .line 150
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    if-le v6, p1, :cond_3

    invoke-direct {p0, v4, p2}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->equalRate(Landroid/hardware/Camera$Size;F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 155
    :cond_2
    if-eq v0, v2, :cond_0

    .line 159
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 160
    iget-object v5, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v5, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 162
    new-instance v5, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, p0, v6, v7}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$Size;-><init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;II)V

    goto :goto_0

    .line 148
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public startPreview(Landroid/view/SurfaceHolder;I)Z
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "flashMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 248
    :goto_0
    return v3

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->stopPreview()V

    .line 215
    :try_start_0
    iget-object v4, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 221
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_1

    .line 223
    packed-switch p2, :pswitch_data_0

    .line 240
    const-string v1, "off"

    .line 243
    .local v1, "mode":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 247
    .end local v1    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 248
    const/4 v3, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 225
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :pswitch_0
    const-string v1, "off"

    .line 226
    .restart local v1    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 228
    .end local v1    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v1, "auto"

    .line 229
    .restart local v1    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 231
    .end local v1    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string v1, "on"

    .line 232
    .restart local v1    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 234
    .end local v1    # "mode":Ljava/lang/String;
    :pswitch_3
    const-string v1, "red-eye"

    .line 235
    .restart local v1    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 237
    .end local v1    # "mode":Ljava/lang/String;
    :pswitch_4
    const-string v1, "torch"

    .line 238
    .restart local v1    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 255
    :cond_0
    return-void
.end method

.method public takePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->camera_:Landroid/hardware/Camera;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method
