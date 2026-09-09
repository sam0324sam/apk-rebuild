.class Lcn/com/magnity/magnitycx/FragmentMainBottom$2;
.super Lcn/com/magnity/magnitycx/sdk/TimerHelper;
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
    .line 380
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$2;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-direct {p0}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom$2;->this$0:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->access$200(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    return-void
.end method
