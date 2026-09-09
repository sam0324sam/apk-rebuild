.class Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMonitorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;Lcn/com/magnity/magnitymx/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/MainActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/MainActivity$1;

    .prologue
    .line 1146
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;-><init>(Lcn/com/magnity/magnitymx/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$2000(Lcn/com/magnity/magnitymx/MainActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$2100(Lcn/com/magnity/magnitymx/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1151
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1152
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1153
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$ActionMonitorTimerTask;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$2200(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1156
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
