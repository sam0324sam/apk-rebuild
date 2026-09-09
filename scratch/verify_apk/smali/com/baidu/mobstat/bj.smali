.class Lcom/baidu/mobstat/bj;
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

.field final synthetic f:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Lcom/baidu/mobstat/EventAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/EventAnalysis;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/baidu/mobstat/bj;->h:Lcom/baidu/mobstat/EventAnalysis;

    iput-object p2, p0, Lcom/baidu/mobstat/bj;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/bj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/bj;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/bj;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/bj;->e:J

    iput-object p8, p0, Lcom/baidu/mobstat/bj;->f:Lcom/baidu/mobstat/ExtraInfo;

    iput-object p9, p0, Lcom/baidu/mobstat/bj;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 85
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->waitForLoadCache()V

    .line 87
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v3

    .line 89
    iget-object v1, p0, Lcom/baidu/mobstat/bj;->h:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, p0, Lcom/baidu/mobstat/bj;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/bj;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/mobstat/bj;->c:Ljava/lang/String;

    iget v7, p0, Lcom/baidu/mobstat/bj;->d:I

    iget-wide v8, p0, Lcom/baidu/mobstat/bj;->e:J

    const-wide/16 v10, 0x0

    iget-object v12, p0, Lcom/baidu/mobstat/bj;->f:Lcom/baidu/mobstat/ExtraInfo;

    iget-object v13, p0, Lcom/baidu/mobstat/bj;->g:Ljava/util/Map;

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 90
    return-void
.end method
