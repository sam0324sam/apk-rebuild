.class public Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 34
    iget v0, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->autoTrackSessionEndTime(Landroid/content/Context;J)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget v0, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->doSendLogCheck(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 23
    iget v0, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->autoTrackSessionStartTime(Landroid/content/Context;J)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget v0, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 28
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->cancelSendLogCheck()V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
