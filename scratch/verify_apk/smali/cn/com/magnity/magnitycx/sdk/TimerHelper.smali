.class public abstract Lcn/com/magnity/magnitycx/sdk/TimerHelper;
.super Ljava/lang/Object;
.source "TimerHelper.java"


# instance fields
.field private timer_:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->timer_:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method public start(JJ)V
    .locals 7
    .param p1, "delay"    # J
    .param p3, "period"    # J

    .prologue
    .line 11
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->stop()V

    .line 13
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->timer_:Ljava/util/Timer;

    .line 14
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->timer_:Ljava/util/Timer;

    new-instance v1, Lcn/com/magnity/magnitycx/sdk/TimerHelper$1;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitycx/sdk/TimerHelper$1;-><init>(Lcn/com/magnity/magnitycx/sdk/TimerHelper;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 20
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->timer_:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->timer_:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->timer_:Ljava/util/Timer;

    .line 28
    :cond_0
    return-void
.end method
