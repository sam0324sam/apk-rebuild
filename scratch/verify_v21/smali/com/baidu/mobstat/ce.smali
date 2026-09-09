.class Lcom/baidu/mobstat/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/SessionAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/SessionAnalysis;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/baidu/mobstat/ce;->a:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->waitForLoadCache()V

    .line 457
    return-void
.end method
