.class Lcn/com/magnity/magnitymx/camera/Camera2$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2.java"


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
    .line 275
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x4

    .line 278
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$600(Lcn/com/magnity/magnitymx/camera/Camera2;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 284
    :pswitch_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 285
    .local v1, "afState":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 286
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$602(Lcn/com/magnity/magnitymx/camera/Camera2;I)I

    .line 287
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$700(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v4, v2, :cond_3

    .line 289
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 291
    :cond_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 292
    .local v0, "aeState":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 294
    :cond_4
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$602(Lcn/com/magnity/magnitymx/camera/Camera2;I)I

    .line 295
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$700(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    goto :goto_0

    .line 297
    :cond_5
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$800(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    goto :goto_0

    .line 304
    .end local v0    # "aeState":Ljava/lang/Integer;
    .end local v1    # "afState":Ljava/lang/Integer;
    :pswitch_2
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 305
    .restart local v0    # "aeState":Ljava/lang/Integer;
    if-eqz v0, :cond_6

    .line 306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 307
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 308
    :cond_6
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$602(Lcn/com/magnity/magnitymx/camera/Camera2;I)I

    goto :goto_0

    .line 314
    .end local v0    # "aeState":Ljava/lang/Integer;
    :pswitch_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 315
    .restart local v0    # "aeState":Ljava/lang/Integer;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 316
    :cond_7
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$602(Lcn/com/magnity/magnitymx/camera/Camera2;I)I

    .line 317
    iget-object v2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$4;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/camera/Camera2;->access$700(Lcn/com/magnity/magnitymx/camera/Camera2;)V

    goto/16 :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 335
    invoke-direct {p0, p3}, Lcn/com/magnity/magnitymx/camera/Camera2$4;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 336
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 328
    invoke-direct {p0, p3}, Lcn/com/magnity/magnitymx/camera/Camera2$4;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 329
    return-void
.end method
