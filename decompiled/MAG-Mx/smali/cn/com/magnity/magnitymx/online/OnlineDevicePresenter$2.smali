.class Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$2;
.super Ljava/util/TimerTask;
.source "OnlineDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    .prologue
    .line 110
    iput-object p1, p0, Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter$2;->this$0:Lcn/com/magnity/magnitymx/online/OnlineDevicePresenter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "ENUM_ONLINE_DEVICE"

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MsgBus;->postEmptytMsg(Ljava/lang/String;)V

    .line 114
    return-void
.end method
