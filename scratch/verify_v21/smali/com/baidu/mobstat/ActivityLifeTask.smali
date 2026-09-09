.class public Lcom/baidu/mobstat/ActivityLifeTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    const-class v1, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 47
    new-instance v0, Lcom/baidu/mobstat/autotrace/AutoTrace$LifecycleCallbacks;

    invoke-direct {v0}, Lcom/baidu/mobstat/autotrace/AutoTrace$LifecycleCallbacks;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 48
    new-instance v0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v1

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerActivityLifeCallback(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 22
    const-class v1, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    monitor-exit v1

    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/ActivityLifeTask;->a(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->clearObservers()V

    .line 32
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    sget-object v2, Lcom/baidu/mobstat/ActivityLifeTask;->b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    .line 35
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    sget-object v2, Lcom/baidu/mobstat/ActivityLifeTask;->c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    .line 38
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    sget-object v2, Lcom/baidu/mobstat/ActivityLifeTask;->d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    .line 40
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ActivityLifeObserver;->registerActivityLifeCallback(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
