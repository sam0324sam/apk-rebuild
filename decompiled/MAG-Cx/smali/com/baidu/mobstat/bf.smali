.class Lcom/baidu/mobstat/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ActivityLifeObserver;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ActivityLifeObserver;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 85
    invoke-interface {v0, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 121
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 76
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 67
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 112
    invoke-interface {v0, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 94
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 103
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method
