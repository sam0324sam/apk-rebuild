.class Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;
.super Ljava/lang/Object;
.source "CXDeviceModel.java"

# interfaces
.implements Lcn/com/magnity/coresdk/MagDevice$IPrepareTransferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/live/CXDeviceModel;->startPlay2()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    .prologue
    .line 207
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareInBackground(II)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$100(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onPrepareProgressInBackground(II)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 212
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$300(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$300(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v0, v3}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$402(Lcn/com/magnity/magnitymx/live/CXDeviceModel;Z)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$300(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$300(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$3;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v0, v3}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$402(Lcn/com/magnity/magnitymx/live/CXDeviceModel;Z)Z

    goto :goto_0
.end method
