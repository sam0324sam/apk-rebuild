.class Lcn/com/magnity/magnitymx/live/DeviceModel$1;
.super Ljava/lang/Object;
.source "DeviceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/live/DeviceModel;-><init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/DeviceModel;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/DeviceModel;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/live/DeviceModel;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/DeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/DeviceModel$1;->this$0:Lcn/com/magnity/magnitymx/live/DeviceModel;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/DeviceModel;->startPlay()Z

    .line 62
    return-void
.end method
