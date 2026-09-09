.class Lcn/com/magnity/magnitymx/live/CXDeviceModel$2;
.super Ljava/lang/Object;
.source "CXDeviceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/live/CXDeviceModel;-><init>(Lcn/com/magnity/magnitymx/live/LivePresenter;)V
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
    .line 84
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$2;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/CXDeviceModel$2;->this$0:Lcn/com/magnity/magnitymx/live/CXDeviceModel;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/live/CXDeviceModel;->startPlay()Z

    .line 88
    return-void
.end method
