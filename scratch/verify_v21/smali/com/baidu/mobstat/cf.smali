.class Lcom/baidu/mobstat/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/SessionAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/SessionAnalysis;

    iput-object p2, p0, Lcom/baidu/mobstat/cf;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 667
    iget-object v2, p0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v2}, Lcom/baidu/mobstat/SessionAnalysis;->b(Lcom/baidu/mobstat/SessionAnalysis;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-static {v2}, Lcom/baidu/mobstat/SessionAnalysis;->b(Lcom/baidu/mobstat/SessionAnalysis;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionPeriod()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/SessionAnalysis;

    iget-object v1, p0, Lcom/baidu/mobstat/cf;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;Z)V

    .line 670
    :cond_0
    return-void
.end method
