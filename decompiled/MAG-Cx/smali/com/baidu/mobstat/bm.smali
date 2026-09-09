.class Lcom/baidu/mobstat/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lcom/baidu/mobstat/EventAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/EventAnalysis;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/mobstat/bm;->g:Lcom/baidu/mobstat/EventAnalysis;

    iput-object p2, p0, Lcom/baidu/mobstat/bm;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bm;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mobstat/bm;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/bm;->d:Landroid/content/Context;

    iput-object p7, p0, Lcom/baidu/mobstat/bm;->e:Lcom/baidu/mobstat/ExtraInfo;

    iput-object p8, p0, Lcom/baidu/mobstat/bm;->f:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 140
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->waitForLoadCache()V

    .line 142
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v3

    .line 144
    iget-object v0, p0, Lcom/baidu/mobstat/bm;->g:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v1, p0, Lcom/baidu/mobstat/bm;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/bm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/EventAnalysis;->generateKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/baidu/mobstat/bm;->g:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v0, v0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/bo;

    .line 146
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventStat: event_id["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] with label["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is not started or alread done."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/bm;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/mobstat/bo;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/mobstat/bm;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/mobstat/bo;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    :cond_1
    const-string v0, "EventStat: Wrong Case, eventId/label pair not match"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/baidu/mobstat/bm;->g:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, v2, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-wide v6, p0, Lcom/baidu/mobstat/bm;->c:J

    iget-wide v8, v0, Lcom/baidu/mobstat/bo;->c:J

    sub-long v10, v6, v8

    .line 157
    const-wide/16 v6, 0x0

    cmp-long v1, v10, v6

    if-gtz v1, :cond_3

    .line 158
    const-string v0, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/bm;->g:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, p0, Lcom/baidu/mobstat/bm;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/bm;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/mobstat/bm;->b:Ljava/lang/String;

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/baidu/mobstat/bo;->c:J

    iget-object v12, p0, Lcom/baidu/mobstat/bm;->e:Lcom/baidu/mobstat/ExtraInfo;

    iget-object v13, p0, Lcom/baidu/mobstat/bm;->f:Ljava/util/Map;

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    goto :goto_0
.end method
