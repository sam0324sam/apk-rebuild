.class public Lcn/com/magnity/magnitymx/scanner/AsyncDecode;
.super Ljava/lang/Object;
.source "AsyncDecode.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"

.field public static final BARCODE_SCALED_FACTOR:Ljava/lang/String; = "barcode_scaled_factor"

.field static final MSG_DECODE:I


# instance fields
.field private mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

.field private mDecodeHandler:Landroid/os/Handler;

.field private mDecodeHandlerThread:Landroid/os/HandlerThread;

.field private final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/zxing/ResultPointCallback;)V
    .locals 2
    .param p1, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 43
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->getHints(Lcom/google/zxing/ResultPointCallback;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method private bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "source"    # Lcom/google/zxing/PlanarYUVLuminanceSource;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 117
    .local v0, "pixels":[I
    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v2

    .line 118
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 119
    .local v4, "height":I
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 120
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v6, v1, v3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    const-string v1, "barcode_bitmap"

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 123
    const-string v1, "barcode_scaled_factor"

    int-to-float v3, v2

    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 124
    return-void
.end method

.method private getHints(Lcom/google/zxing/ResultPointCallback;)Ljava/util/Map;
    .locals 3
    .param p1, "callback"    # Lcom/google/zxing/ResultPointCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/ResultPointCallback;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    const-class v2, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 129
    .local v0, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v2, Lcn/com/magnity/magnitymx/scanner/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 130
    sget-object v2, Lcn/com/magnity/magnitymx/scanner/DecodeFormatManager;->INDUSTRIAL_FORMATS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 131
    sget-object v2, Lcn/com/magnity/magnitymx/scanner/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 132
    sget-object v2, Lcn/com/magnity/magnitymx/scanner/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 133
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 76
    .local v8, "start":J
    const/4 v5, 0x0

    .line 77
    .local v5, "rawResult":Lcom/google/zxing/Result;
    iget-object v10, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v7, v11, v12}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v6

    .line 78
    .local v6, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v6, :cond_0

    .line 79
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v7, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v7, v6}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 87
    .local v0, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    iget-object v7, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v7, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 91
    iget-object v7, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v7}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 95
    .end local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 98
    .local v2, "end":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found barcode in "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v10, v2, v8

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ms"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->t(Ljava/lang/Object;)V

    .line 99
    iget-object v7, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mUIHandler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    .line 100
    iget-object v7, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mUIHandler:Landroid/os/Handler;

    const v10, 0x7f08004a

    invoke-static {v7, v10, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 101
    .local v4, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v6, v1}, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "end":J
    .end local v4    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 88
    .restart local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v7

    .line 91
    iget-object v7, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v7}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v7

    iget-object v10, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v10}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v7

    .line 107
    .end local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_2
    iget-object v7, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mUIHandler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    .line 108
    iget-object v7, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mUIHandler:Landroid/os/Handler;

    const v10, 0x7f080049

    invoke-static {v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 109
    .restart local v4    # "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public notifyDecode([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    return-void
.end method

.method public start(Landroid/os/Handler;Lcn/com/magnity/magnitymx/scanner/CameraManager;)V
    .locals 2
    .param p1, "uiHnadler"    # Landroid/os/Handler;
    .param p2, "cameraManager"    # Lcn/com/magnity/magnitymx/scanner/CameraManager;

    .prologue
    .line 47
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mUIHandler:Landroid/os/Handler;

    .line 48
    iput-object p2, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "decode thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 57
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iput-object v3, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mUIHandler:Landroid/os/Handler;

    .line 63
    iput-object v3, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    .line 64
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iput-object v3, p0, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->mDecodeHandler:Landroid/os/Handler;

    .line 66
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
