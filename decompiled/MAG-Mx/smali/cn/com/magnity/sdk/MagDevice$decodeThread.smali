.class Lcn/com/magnity/sdk/MagDevice$decodeThread;
.super Ljava/lang/Object;
.source "MagDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/sdk/MagDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "decodeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/sdk/MagDevice;


# direct methods
.method private constructor <init>(Lcn/com/magnity/sdk/MagDevice;)V
    .locals 0

    .prologue
    .line 1717
    iput-object p1, p0, Lcn/com/magnity/sdk/MagDevice$decodeThread;->this$0:Lcn/com/magnity/sdk/MagDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/sdk/MagDevice;Lcn/com/magnity/sdk/MagDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/sdk/MagDevice;
    .param p2, "x1"    # Lcn/com/magnity/sdk/MagDevice$1;

    .prologue
    .line 1717
    invoke-direct {p0, p1}, Lcn/com/magnity/sdk/MagDevice$decodeThread;-><init>(Lcn/com/magnity/sdk/MagDevice;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1720
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1721
    .local v2, "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcn/com/magnity/sdk/MagDevice$decodeThread;->this$0:Lcn/com/magnity/sdk/MagDevice;

    invoke-static {v4}, Lcn/com/magnity/sdk/MagDevice;->access$000(Lcn/com/magnity/sdk/MagDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1723
    :try_start_0
    iget-object v4, p0, Lcn/com/magnity/sdk/MagDevice$decodeThread;->this$0:Lcn/com/magnity/sdk/MagDevice;

    invoke-static {v4}, Lcn/com/magnity/sdk/MagDevice;->access$100(Lcn/com/magnity/sdk/MagDevice;)Landroid/media/MediaCodec;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v2, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 1724
    .local v3, "outputBufferIndex":I
    if-lez v3, :cond_0

    .line 1725
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 1726
    .local v0, "doRender":Z
    :goto_1
    iget-object v4, p0, Lcn/com/magnity/sdk/MagDevice$decodeThread;->this$0:Lcn/com/magnity/sdk/MagDevice;

    invoke-static {v4}, Lcn/com/magnity/sdk/MagDevice;->access$100(Lcn/com/magnity/sdk/MagDevice;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1728
    .end local v0    # "doRender":Z
    .end local v3    # "outputBufferIndex":I
    :catch_0
    move-exception v1

    .line 1729
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1725
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "outputBufferIndex":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1732
    .end local v3    # "outputBufferIndex":I
    :cond_2
    return-void
.end method
