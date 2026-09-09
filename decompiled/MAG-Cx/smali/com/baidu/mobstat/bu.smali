.class Lcom/baidu/mobstat/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/bt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    iput-object p2, p0, Lcom/baidu/mobstat/bu;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {v0}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {v0}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 101
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;Ljava/util/Timer;)Ljava/util/Timer;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/bu;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getSendStrategy(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->getSendStrategyTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;I)I

    .line 106
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->getOnlyWifiChannel(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;Z)Z

    .line 108
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {v0}, Lcom/baidu/mobstat/bt;->b(Lcom/baidu/mobstat/bt;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bt;->b(Landroid/content/Context;)V

    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {v0}, Lcom/baidu/mobstat/bt;->d(Lcom/baidu/mobstat/bt;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/bv;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/bv;-><init>(Lcom/baidu/mobstat/bu;)V

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    .line 118
    invoke-static {v2}, Lcom/baidu/mobstat/bt;->c(Lcom/baidu/mobstat/bt;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    invoke-static {v0}, Lcom/baidu/mobstat/bt;->b(Lcom/baidu/mobstat/bt;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bt;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
