.class Lcn/com/magnity/magnitymx/camera/Camera2$3;
.super Ljava/lang/Object;
.source "Camera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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
    .line 217
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 11
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 220
    const-string v4, "magnity"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    .local v1, "image":Landroid/media/Image;
    const/4 v5, 0x0

    .line 222
    :try_start_0
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 223
    .local v3, "planes":[Landroid/media/Image$Plane;
    array-length v4, v3

    if-lez v4, :cond_2

    .line 224
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 225
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 226
    .local v2, "len":I
    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$400(Lcn/com/magnity/magnitymx/camera/Camera2;)[B

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$400(Lcn/com/magnity/magnitymx/camera/Camera2;)[B

    move-result-object v4

    array-length v4, v4

    if-eq v4, v2, :cond_1

    .line 227
    :cond_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    new-array v6, v2, [B

    invoke-static {v4, v6}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$402(Lcn/com/magnity/magnitymx/camera/Camera2;[B)[B

    .line 229
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$400(Lcn/com/magnity/magnitymx/camera/Camera2;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v4, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$200(Lcn/com/magnity/magnitymx/camera/Camera2;)Lcn/com/magnity/magnitymx/camera/CameraViewImpl;

    move-result-object v4

    iget-object v6, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$400(Lcn/com/magnity/magnitymx/camera/Camera2;)[B

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcn/com/magnity/magnitymx/camera/Camera2$3;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$500(Lcn/com/magnity/magnitymx/camera/Camera2;)I

    move-result v9

    invoke-interface {v4, v6, v7, v8, v9}, Lcn/com/magnity/magnitymx/camera/CameraViewImpl;->onFramePreview([BIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "len":I
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    :cond_3
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 221
    .end local v3    # "planes":[Landroid/media/Image$Plane;
    :catch_1
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_1
    if-eqz v1, :cond_5

    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    throw v4

    :catch_2
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method
