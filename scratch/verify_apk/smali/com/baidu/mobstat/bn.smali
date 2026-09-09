.class Lcom/baidu/mobstat/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lcom/baidu/mobstat/EventAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/EventAnalysis;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/baidu/mobstat/bn;->g:Lcom/baidu/mobstat/EventAnalysis;

    iput-wide p2, p0, Lcom/baidu/mobstat/bn;->a:J

    iput-object p4, p0, Lcom/baidu/mobstat/bn;->b:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/mobstat/bn;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/mobstat/bn;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/mobstat/bn;->e:Lcom/baidu/mobstat/ExtraInfo;

    iput-object p8, p0, Lcom/baidu/mobstat/bn;->f:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 172
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->waitForLoadCache()V

    .line 174
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v3

    .line 176
    iget-wide v0, p0, Lcom/baidu/mobstat/bn;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    .line 177
    const-string v0, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/bn;->g:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v2, p0, Lcom/baidu/mobstat/bn;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/bn;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/mobstat/bn;->d:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/baidu/mobstat/bn;->a:J

    iget-object v12, p0, Lcom/baidu/mobstat/bn;->e:Lcom/baidu/mobstat/ExtraInfo;

    iget-object v13, p0, Lcom/baidu/mobstat/bn;->f:Ljava/util/Map;

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    goto :goto_0
.end method
