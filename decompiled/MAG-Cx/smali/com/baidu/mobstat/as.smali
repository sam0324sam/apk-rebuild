.class final enum Lcom/baidu/mobstat/as;
.super Lcom/baidu/mobstat/ao;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/ao;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/ap;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;)Lcom/baidu/mobstat/l;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/baidu/mobstat/be;

    invoke-direct {v2}, Lcom/baidu/mobstat/be;-><init>()V

    .line 75
    iput-boolean v4, v2, Lcom/baidu/mobstat/be;->a:Z

    .line 76
    const-string v3, "E"

    iput-object v3, v2, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;

    .line 77
    iput-boolean v4, v2, Lcom/baidu/mobstat/be;->c:Z

    .line 80
    invoke-virtual {v2}, Lcom/baidu/mobstat/be;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 81
    return-void
.end method
