.class Lcom/baidu/mobstat/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/baidu/mobstat/SessionAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/SessionAnalysis;J)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/SessionAnalysis;

    iput-wide p2, p0, Lcom/baidu/mobstat/cc;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/SessionAnalysis;

    iget-wide v2, p0, Lcom/baidu/mobstat/cc;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->setTrackStartTime(J)V

    .line 174
    return-void
.end method
