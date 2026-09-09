.class public Lcom/baidu/mobstat/LoadCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/baidu/mobstat/LoadCache;


# instance fields
.field private b:Landroid/content/Context;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/baidu/mobstat/LoadCache;

    invoke-direct {v0}, Lcom/baidu/mobstat/LoadCache;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/LoadCache;->a:Lcom/baidu/mobstat/LoadCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->c:Z

    .line 31
    iput-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->e:Z

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dataAnalyzeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/LoadCache;->f:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/LoadCache;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/mobstat/LoadCache;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->c:Z

    if-nez v0, :cond_0

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->c:Z

    if-eqz v0, :cond_2

    .line 124
    monitor-exit p0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/LoadCache;->b:Landroid/content/Context;

    .line 128
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/LoadCache;->a(Z)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->c:Z

    .line 131
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/bs;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/bs;-><init>(Lcom/baidu/mobstat/LoadCache;Z)V

    .line 145
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bs;->setPriority(I)V

    .line 146
    invoke-virtual {v0}, Lcom/baidu/mobstat/bs;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LoadCache;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/baidu/mobstat/LoadCache;->e:Z

    return p1
.end method

.method public static instance()Lcom/baidu/mobstat/LoadCache;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/mobstat/LoadCache;->a:Lcom/baidu/mobstat/LoadCache;

    return-object v0
.end method


# virtual methods
.method public checkStartLoadCache(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;Z)V

    .line 69
    return-void
.end method

.method public checkStartLoadCache(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/LoadCache;->doDataAnalyze(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/LoadCache;->a(Landroid/content/Context;Z)V

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doDataAnalyze(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->e:Z

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/mobstat/LoadCache;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/baidu/mobstat/LoadCache;->f:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/br;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/br;-><init>(Lcom/baidu/mobstat/LoadCache;Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->e:Z

    goto :goto_0
.end method

.method public declared-synchronized hasBeenStarted()Z
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasFinished()Z
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initNeededData(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/baidu/mobstat/PrefOperate;->loadMetaDataConfig(Landroid/content/Context;)V

    .line 192
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadStatData(Landroid/content/Context;)V

    .line 194
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadLastSession(Landroid/content/Context;)V

    .line 196
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    .line 198
    if-eqz p2, :cond_1

    .line 200
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p3}, Lcom/baidu/mobstat/DataCore;->saveLogDataToSend(Landroid/content/Context;ZZ)V

    .line 203
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForLoadCache()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->d:Z

    if-nez v0, :cond_1

    .line 153
    monitor-enter p0

    .line 154
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/LoadCache;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 156
    const-wide/16 v0, 0x32

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :cond_1
    return-void
.end method
