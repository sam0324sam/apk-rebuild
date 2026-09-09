.class Lcom/baidu/mobstat/bw;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/bt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/mobstat/bw;->b:Lcom/baidu/mobstat/bt;

    iput-object p2, p0, Lcom/baidu/mobstat/bw;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/DataCore;->isPartEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->b:Lcom/baidu/mobstat/bt;

    iget-object v1, p0, Lcom/baidu/mobstat/bw;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V

    .line 138
    :cond_0
    return-void
.end method
