.class Lcom/baidu/mobstat/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Lcom/baidu/mobstat/EventAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/EventAnalysis;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/mobstat/bi;->i:Lcom/baidu/mobstat/EventAnalysis;

    iput-object p2, p0, Lcom/baidu/mobstat/bi;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/bi;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/bi;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/bi;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/bi;->e:J

    iput-object p8, p0, Lcom/baidu/mobstat/bi;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/mobstat/bi;->g:Ljava/lang/String;

    iput p10, p0, Lcom/baidu/mobstat/bi;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 70
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->waitForLoadCache()V

    .line 72
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v3

    .line 74
    iget-object v1, p0, Lcom/baidu/mobstat/bi;->i:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, p0, Lcom/baidu/mobstat/bi;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/bi;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/mobstat/bi;->c:Ljava/lang/String;

    iget v7, p0, Lcom/baidu/mobstat/bi;->d:I

    iget-wide v8, p0, Lcom/baidu/mobstat/bi;->e:J

    const-wide/16 v10, 0x0

    iget-object v12, p0, Lcom/baidu/mobstat/bi;->f:Ljava/lang/String;

    iget-object v13, p0, Lcom/baidu/mobstat/bi;->g:Ljava/lang/String;

    iget v14, p0, Lcom/baidu/mobstat/bi;->h:I

    invoke-virtual/range {v1 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)V

    .line 75
    return-void
.end method
