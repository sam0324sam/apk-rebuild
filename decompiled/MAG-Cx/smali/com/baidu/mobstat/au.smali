.class public Lcom/baidu/mobstat/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/l;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/mobstat/l;
    .locals 5

    .prologue
    .line 26
    const-class v4, Lcom/baidu/mobstat/au;

    monitor-enter v4

    :try_start_0
    const-string v0, "getBPStretegyController begin"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-nez v1, :cond_1

    .line 34
    :try_start_1
    const-string v0, "com.baidu.bottom.remote.BPStretegyController2"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 37
    new-instance v0, Lcom/baidu/mobstat/aw;

    invoke-direct {v0, v2}, Lcom/baidu/mobstat/aw;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    const-string v1, "Get BPStretegyController load remote class v2"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_0
    if-nez v0, :cond_0

    .line 48
    :try_start_3
    new-instance v0, Lcom/baidu/mobstat/av;

    invoke-direct {v0}, Lcom/baidu/mobstat/av;-><init>()V

    .line 49
    const-string v1, "Get BPStretegyController load local class"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 52
    :cond_0
    sput-object v0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/l;

    .line 55
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;Lcom/baidu/mobstat/l;)V

    .line 58
    const-string v1, "getBPStretegyController end"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    monitor-exit v4

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    .line 41
    :goto_1
    :try_start_4
    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 40
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/baidu/mobstat/au;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
