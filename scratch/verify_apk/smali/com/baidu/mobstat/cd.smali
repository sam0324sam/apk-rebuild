.class Lcom/baidu/mobstat/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mobstat/SessionAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/baidu/mobstat/cd;->c:Lcom/baidu/mobstat/SessionAnalysis;

    iput-wide p2, p0, Lcom/baidu/mobstat/cd;->a:J

    iput-object p4, p0, Lcom/baidu/mobstat/cd;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/mobstat/cd;->c:Lcom/baidu/mobstat/SessionAnalysis;

    iget-wide v2, p0, Lcom/baidu/mobstat/cd;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->setTrackEndTime(J)V

    .line 197
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->hasFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/baidu/mobstat/cd;->c:Lcom/baidu/mobstat/SessionAnalysis;

    iget-object v1, p0, Lcom/baidu/mobstat/cd;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V

    .line 201
    :cond_0
    return-void
.end method
