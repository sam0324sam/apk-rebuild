.class Lcom/baidu/mobstat/bs;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/LoadCache;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/LoadCache;Z)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/mobstat/bs;->a:Lcom/baidu/mobstat/LoadCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 169
    iput-boolean p2, p0, Lcom/baidu/mobstat/bs;->b:Z

    .line 170
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/mobstat/bs;->a:Lcom/baidu/mobstat/LoadCache;

    iget-object v1, p0, Lcom/baidu/mobstat/bs;->a:Lcom/baidu/mobstat/LoadCache;

    invoke-static {v1}, Lcom/baidu/mobstat/LoadCache;->a(Lcom/baidu/mobstat/LoadCache;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/baidu/mobstat/bs;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/LoadCache;->initNeededData(Landroid/content/Context;ZZ)V

    .line 174
    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bs;->a:Lcom/baidu/mobstat/LoadCache;

    invoke-static {v1}, Lcom/baidu/mobstat/LoadCache;->a(Lcom/baidu/mobstat/LoadCache;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;)V

    .line 175
    return-void
.end method
