.class Lcom/baidu/mobstat/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mobstat/EventAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/EventAnalysis;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/mobstat/bl;->d:Lcom/baidu/mobstat/EventAnalysis;

    iput-wide p2, p0, Lcom/baidu/mobstat/bl;->a:J

    iput-object p4, p0, Lcom/baidu/mobstat/bl;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mobstat/bl;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->waitForLoadCache()V

    .line 118
    new-instance v0, Lcom/baidu/mobstat/bo;

    invoke-direct {v0}, Lcom/baidu/mobstat/bo;-><init>()V

    .line 119
    iget-wide v2, p0, Lcom/baidu/mobstat/bl;->a:J

    iput-wide v2, v0, Lcom/baidu/mobstat/bo;->c:J

    .line 120
    iget-object v1, p0, Lcom/baidu/mobstat/bl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bo;->a:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/baidu/mobstat/bl;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bo;->b:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/baidu/mobstat/bl;->d:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, p0, Lcom/baidu/mobstat/bl;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mobstat/bl;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mobstat/EventAnalysis;->generateKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/baidu/mobstat/bl;->d:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, v2, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventStat: event_id["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/bl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with label["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/bl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is duplicated, older is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/bl;->d:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, v2, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put a keyword["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] into durationlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 131
    return-void
.end method
