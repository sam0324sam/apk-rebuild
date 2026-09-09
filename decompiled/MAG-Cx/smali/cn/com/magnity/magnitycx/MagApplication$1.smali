.class Lcn/com/magnity/magnitycx/MagApplication$1;
.super Ljava/lang/Object;
.source "MagApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/MagApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MagApplication;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/MagApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/MagApplication;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MagApplication$1;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->deinit(Z)V

    .line 37
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->setCallbackReceiver(Lcn/com/magnity/magnitycx/FragmentMainCenter;)V

    .line 38
    return-void
.end method
