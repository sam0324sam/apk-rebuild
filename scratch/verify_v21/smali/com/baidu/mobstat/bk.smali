.class Lcom/baidu/mobstat/bk;
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

.field final synthetic f:Lorg/json/JSONArray;

.field final synthetic g:Lorg/json/JSONArray;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/util/Map;

.field final synthetic l:Lcom/baidu/mobstat/EventAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/EventAnalysis;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/mobstat/bk;->l:Lcom/baidu/mobstat/EventAnalysis;

    iput-object p2, p0, Lcom/baidu/mobstat/bk;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/bk;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/bk;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/bk;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/bk;->e:J

    iput-object p8, p0, Lcom/baidu/mobstat/bk;->f:Lorg/json/JSONArray;

    iput-object p9, p0, Lcom/baidu/mobstat/bk;->g:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/baidu/mobstat/bk;->h:Ljava/lang/String;

    iput-object p11, p0, Lcom/baidu/mobstat/bk;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/baidu/mobstat/bk;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/baidu/mobstat/bk;->k:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 101
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->waitForLoadCache()V

    .line 103
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v2

    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/bk;->l:Lcom/baidu/mobstat/EventAnalysis;

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/mobstat/bk;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/bk;->c:Ljava/lang/String;

    iget v6, p0, Lcom/baidu/mobstat/bk;->d:I

    iget-wide v7, p0, Lcom/baidu/mobstat/bk;->e:J

    iget-object v9, p0, Lcom/baidu/mobstat/bk;->f:Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/baidu/mobstat/bk;->g:Lorg/json/JSONArray;

    iget-object v11, p0, Lcom/baidu/mobstat/bk;->h:Ljava/lang/String;

    iget-object v12, p0, Lcom/baidu/mobstat/bk;->i:Ljava/lang/String;

    iget-object v13, p0, Lcom/baidu/mobstat/bk;->j:Ljava/lang/String;

    iget-object v14, p0, Lcom/baidu/mobstat/bk;->k:Ljava/util/Map;

    invoke-virtual/range {v0 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    return-void
.end method
