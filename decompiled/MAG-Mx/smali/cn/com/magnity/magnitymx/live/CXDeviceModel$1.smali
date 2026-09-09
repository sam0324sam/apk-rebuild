.class Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;
.super Ljava/lang/Object;
.source "CXDeviceModel.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/live/CXDeviceModel;
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
    .line 55
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 76
    :goto_1
    return v0

    .line 60
    :pswitch_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$000(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V

    .line 61
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$100(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 62
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v2

    const v3, 0x7f0e00d6

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$200(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$000(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)V

    .line 67
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$100(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->access$100(Lcn/com/magnity/magnitymx/live/CXDeviceModel;)Lcn/com/magnity/magnitymx/live/LivePresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/live/LivePresenter;->onDeviceConnectedChanged(Z)V

    .line 71
    sget-boolean v0, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "start play ir"

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
