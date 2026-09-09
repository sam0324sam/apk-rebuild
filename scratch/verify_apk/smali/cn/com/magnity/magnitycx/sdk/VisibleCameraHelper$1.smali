.class Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$1;
.super Ljava/lang/Object;
.source "VisibleCameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$1;->this$0:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 33
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p1

    invoke-static {p1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v4, v4, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    const-string v5, "1.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v3, "myCaptureFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 40
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 42
    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V

    .line 43
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "myCaptureFile":Ljava/io/File;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
