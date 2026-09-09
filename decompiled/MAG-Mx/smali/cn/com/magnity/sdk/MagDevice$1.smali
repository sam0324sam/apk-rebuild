.class Lcn/com/magnity/sdk/MagDevice$1;
.super Ljava/lang/Object;
.source "MagDevice.java"

# interfaces
.implements Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/sdk/MagDevice;->visPlay_no_decode(Ljava/lang/String;Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;IILandroid/view/View;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field frameCount:I

.field recvBuffer:[B

.field final synthetic this$0:Lcn/com/magnity/sdk/MagDevice;

.field final synthetic val$frameCallback:Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;


# direct methods
.method constructor <init>(Lcn/com/magnity/sdk/MagDevice;Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;)V
    .locals 1
    .param p1, "this$0"    # Lcn/com/magnity/sdk/MagDevice;

    .prologue
    .line 1776
    iput-object p1, p0, Lcn/com/magnity/sdk/MagDevice$1;->this$0:Lcn/com/magnity/sdk/MagDevice;

    iput-object p2, p0, Lcn/com/magnity/sdk/MagDevice$1;->val$frameCallback:Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1777
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->recvBuffer:[B

    .line 1778
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->frameCount:I

    return-void
.end method


# virtual methods
.method public newFrame(III)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelFormat"    # I

    .prologue
    .line 1782
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->recvBuffer:[B

    if-nez v0, :cond_0

    .line 1783
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->recvBuffer:[B

    .line 1787
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->this$0:Lcn/com/magnity/sdk/MagDevice;

    iget-object v2, p0, Lcn/com/magnity/sdk/MagDevice$1;->recvBuffer:[B

    invoke-virtual {v0, v2}, Lcn/com/magnity/sdk/MagDevice;->visGetData_no_decode([B)I

    move-result v3

    .line 1788
    .local v3, "length":I
    if-gtz v3, :cond_1

    .line 1815
    :goto_0
    return-void

    .line 1792
    :cond_1
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->frameCount:I

    if-nez v0, :cond_2

    .line 1794
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1801
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->this$0:Lcn/com/magnity/sdk/MagDevice;

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->access$100(Lcn/com/magnity/sdk/MagDevice;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1802
    .local v1, "freeIndex":I
    if-gez v1, :cond_3

    .line 1813
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->val$frameCallback:Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;->newFrame(III)V

    goto :goto_0

    .line 1805
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->this$0:Lcn/com/magnity/sdk/MagDevice;

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->access$100(Lcn/com/magnity/sdk/MagDevice;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1806
    .local v8, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1807
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->recvBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1808
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->this$0:Lcn/com/magnity/sdk/MagDevice;

    invoke-static {v0}, Lcn/com/magnity/sdk/MagDevice;->access$100(Lcn/com/magnity/sdk/MagDevice;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    iget v4, p0, Lcn/com/magnity/sdk/MagDevice$1;->frameCount:I

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1809
    iget v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->frameCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1813
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->val$frameCallback:Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;->newFrame(III)V

    goto :goto_0

    .line 1810
    .end local v1    # "freeIndex":I
    .end local v8    # "inputBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    .line 1811
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1813
    iget-object v0, p0, Lcn/com/magnity/sdk/MagDevice$1;->val$frameCallback:Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;->newFrame(III)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcn/com/magnity/sdk/MagDevice$1;->val$frameCallback:Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;

    invoke-interface {v2, p1, p2, p3}, Lcn/com/magnity/sdk/MagDevice$IVisibleFrameCallBack;->newFrame(III)V

    .line 1814
    throw v0

    .line 1795
    :catch_1
    move-exception v0

    goto :goto_1
.end method
