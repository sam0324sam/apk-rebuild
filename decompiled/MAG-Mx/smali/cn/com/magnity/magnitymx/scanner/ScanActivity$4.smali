.class Lcn/com/magnity/magnitymx/scanner/ScanActivity$4;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/camera/CameraView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/scanner/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    .prologue
    .line 246
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$4;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 1

    .prologue
    .line 254
    const-string v0, "onCameraClosed"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public onCameraOpened()V
    .locals 1

    .prologue
    .line 249
    const-string v0, "onCameraOpened"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 285
    const-string v0, "onError"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public onFramePreview([BIII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$4;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->access$200(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$4;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->access$300(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Lcn/com/magnity/magnitymx/scanner/AsyncDecode;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->notifyDecode([BII)V

    .line 281
    :cond_0
    return-void
.end method

.method public onPictureTaken([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 259
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ".jpg"

    invoke-static {v3, v4, v5}, Lcn/com/magnity/magnitymx/util/FileUtils;->generateMediaStoragePathName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 260
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 262
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 264
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 267
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 268
    return-void

    .line 265
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public onVideoRecorded(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v0, "onVideoRecorded"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 273
    return-void
.end method
