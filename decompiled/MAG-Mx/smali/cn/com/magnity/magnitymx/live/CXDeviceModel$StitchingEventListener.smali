.class Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;
.super Ljava/lang/Object;
.source "CXDeviceModel.java"

# interfaces
.implements Lcn/com/magnity/coresdk/MagDevice$IStitchingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/CXDeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StitchingEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V

    return-void
.end method


# virtual methods
.method public stitching(Landroid/graphics/Bitmap;IIIII)V
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I
    .param p6, "result"    # I

    .prologue
    .line 919
    and-int/lit8 v9, p6, 0x1

    .line 920
    .local v9, "status":I
    const/4 v0, 0x1

    if-eq v9, v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 924
    :cond_0
    shr-int/lit8 v0, p6, 0x1

    and-int/lit8 v2, v0, 0x1

    .line 926
    .local v2, "ret":I
    sub-int v0, p4, p2

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p5, p3

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 928
    .local v6, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/magnity/stitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 929
    .local v8, "out":Ljava/io/FileOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 930
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 940
    .end local v8    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    ushr-int/lit8 v0, p6, 0x2

    and-int/lit16 v3, v0, 0x3ff

    .line 941
    .local v3, "received":I
    ushr-int/lit8 v0, p6, 0xc

    and-int/lit16 v4, v0, 0x3ff

    .line 942
    .local v4, "handled":I
    ushr-int/lit8 v0, p6, 0x16

    and-int/lit16 v5, v0, 0x3ff

    .line 944
    .local v5, "succeeded":I
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$1300(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener$1;-><init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel$StitchingEventListener;IIII)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 931
    .end local v3    # "received":I
    .end local v4    # "handled":I
    .end local v5    # "succeeded":I
    :catch_0
    move-exception v7

    .line 932
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capture photo fail ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 932
    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 935
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 936
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v0
.end method
