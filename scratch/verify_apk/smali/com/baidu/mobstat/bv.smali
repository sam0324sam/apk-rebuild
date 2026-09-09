.class Lcom/baidu/mobstat/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bu;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bu;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/mobstat/bv;->a:Lcom/baidu/mobstat/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->a:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->b:Lcom/baidu/mobstat/bt;

    iget-object v1, p0, Lcom/baidu/mobstat/bv;->a:Lcom/baidu/mobstat/bu;

    iget-object v1, v1, Lcom/baidu/mobstat/bu;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bt;->a(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V

    .line 117
    return-void
.end method
