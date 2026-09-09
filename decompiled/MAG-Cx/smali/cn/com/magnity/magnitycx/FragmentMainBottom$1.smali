.class Lcn/com/magnity/magnitycx/FragmentMainBottom$1;
.super Landroid/os/Handler;
.source "FragmentMainBottom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/FragmentMainBottom;->blinkWhenRecordingStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/FragmentMainBottom;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;

    .prologue
    .line 365
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 368
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$100(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$100(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$100(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
