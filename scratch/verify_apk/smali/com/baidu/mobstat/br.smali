.class Lcom/baidu/mobstat/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/LoadCache;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LoadCache;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/mobstat/br;->b:Lcom/baidu/mobstat/LoadCache;

    iput-object p2, p0, Lcom/baidu/mobstat/br;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/br;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/mobstat/ao;->a(I)Lcom/baidu/mobstat/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/br;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ao;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/br;->b:Lcom/baidu/mobstat/LoadCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LoadCache;->a(Lcom/baidu/mobstat/LoadCache;Z)Z

    .line 103
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
