.class Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;
.super Landroid/os/Handler;
.source "UsbCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/UsbCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    .line 83
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;->progressStart(I)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;->progressChanged(II)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;->progressFinished(I)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$000(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;->progressCancel(I)V

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$100(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)I

    move-result v0

    .line 110
    .local v0, "t":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 112
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-eqz v1, :cond_1

    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-ne v1, v7, :cond_5

    .line 116
    :cond_1
    const/16 v1, 0x1388

    if-le v0, v1, :cond_4

    .line 117
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/ImageViewer;->getImageStableCounter()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 122
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcn/com/magnity/magnitycx/ImageViewer;->setImageStableCounter(I)V

    .line 161
    :cond_3
    :goto_1
    const v1, 0x9c40

    if-le v0, v1, :cond_f

    .line 162
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitycx/ImageViewer;->setTempStableFlag(Z)V

    goto/16 :goto_0

    .line 124
    :cond_4
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/com/magnity/magnitycx/ImageViewer;->setImageStableCounter(I)V

    goto :goto_1

    .line 126
    :cond_5
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-eq v1, v3, :cond_6

    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    if-ne v1, v6, :cond_3

    .line 128
    :cond_6
    const/16 v1, 0x6590

    if-le v0, v1, :cond_8

    .line 129
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/ImageViewer;->getImageStableCounter()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 130
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 131
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 132
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 134
    :cond_7
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcn/com/magnity/magnitycx/ImageViewer;->setImageStableCounter(I)V

    goto :goto_1

    .line 135
    :cond_8
    const/16 v1, 0x4c2c

    if-le v0, v1, :cond_a

    .line 136
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/ImageViewer;->getImageStableCounter()I

    move-result v1

    if-ne v1, v6, :cond_9

    .line 137
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 138
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 139
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 141
    :cond_9
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitycx/ImageViewer;->setImageStableCounter(I)V

    goto :goto_1

    .line 142
    :cond_a
    const/16 v1, 0x32c8

    if-le v0, v1, :cond_c

    .line 143
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/ImageViewer;->getImageStableCounter()I

    move-result v1

    if-ne v1, v7, :cond_b

    .line 144
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 145
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 146
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 148
    :cond_b
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcn/com/magnity/magnitycx/ImageViewer;->setImageStableCounter(I)V

    goto/16 :goto_1

    .line 149
    :cond_c
    const/16 v1, 0x1964

    if-le v0, v1, :cond_e

    .line 150
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/ImageViewer;->getImageStableCounter()I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 151
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 152
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 153
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 155
    :cond_d
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcn/com/magnity/magnitycx/ImageViewer;->setImageStableCounter(I)V

    goto/16 :goto_1

    .line 157
    :cond_e
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/com/magnity/magnitycx/ImageViewer;->setImageStableCounter(I)V

    goto/16 :goto_1

    .line 164
    :cond_f
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/UsbCommunication$1;->this$0:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->access$200(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)Lcn/com/magnity/magnitycx/ImageViewer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcn/com/magnity/magnitycx/ImageViewer;->setTempStableFlag(Z)V

    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
