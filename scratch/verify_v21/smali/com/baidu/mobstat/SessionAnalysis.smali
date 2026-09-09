.class public Lcom/baidu/mobstat/SessionAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/baidu/mobstat/SessionAnalysis;

.field private static o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/cg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/baidu/mobstat/ch;

.field private c:Lcom/baidu/mobstat/ch;

.field private d:Lcom/baidu/mobstat/ch;

.field private e:Lcom/baidu/mobstat/ch;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Lcom/baidu/mobstat/ca;

.field private j:I

.field private volatile k:I

.field private volatile l:J

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/SessionAnalysis;->a:Lcom/baidu/mobstat/SessionAnalysis;

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/baidu/mobstat/ch;

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    .line 46
    new-instance v0, Lcom/baidu/mobstat/ch;

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    .line 48
    new-instance v0, Lcom/baidu/mobstat/ch;

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    .line 50
    new-instance v0, Lcom/baidu/mobstat/ch;

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Lcom/baidu/mobstat/ch;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Z

    .line 67
    new-instance v0, Lcom/baidu/mobstat/ca;

    invoke-direct {v0}, Lcom/baidu/mobstat/ca;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->n:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 93
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static a(Ljava/lang/Object;)Landroid/content/Context;
    .locals 4

    .prologue
    .line 978
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 979
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 980
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 981
    const-string v3, "getActivity"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 982
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-object v0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 987
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/SessionAnalysis;)Lcom/baidu/mobstat/ca;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ca;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:I

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 952
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 955
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 956
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 686
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ca;->c()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ca;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 695
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0, v4, v5}, Lcom/baidu/mobstat/ca;->d(J)V

    .line 700
    :cond_0
    if-eqz p2, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->resetSession()V

    .line 704
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/mobstat/DataCore;->saveLogDataToSend(Landroid/content/Context;ZZ)V

    .line 705
    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;)V

    .line 707
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->clearLastSessionCache(Landroid/content/Context;)V

    .line 708
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 999
    sget-object v1, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    monitor-enter v1

    .line 1000
    if-nez p1, :cond_0

    .line 1001
    :try_start_0
    const-string v0, "page Object is null"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 1002
    monitor-exit v1

    .line 1009
    :goto_0
    return-void

    .line 1004
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/cg;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/cg;-><init>(Ljava/lang/String;)V

    .line 1005
    sget-object v2, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1006
    sget-object v2, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Z

    .line 152
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Z

    return v0
.end method

.method private b()I
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 253
    const/4 v4, 0x3

    .line 258
    :try_start_0
    const-string v0, "android.app.Fragment"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 264
    :goto_0
    :try_start_1
    const-string v0, "android.support.v4.app.Fragment"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 269
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 270
    const/4 v2, 0x0

    :goto_2
    array-length v5, v7

    if-ge v2, v5, :cond_4

    .line 271
    aget-object v5, v7, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 272
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "onResume"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 270
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 259
    :catch_0
    move-exception v0

    move-object v6, v1

    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 279
    :cond_1
    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 284
    :goto_3
    if-eqz v5, :cond_0

    .line 288
    const-class v8, Landroid/app/Activity;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 289
    const/4 v0, 0x1

    .line 300
    :goto_4
    return v0

    .line 280
    :catch_2
    move-exception v5

    move-object v5, v1

    goto :goto_3

    .line 291
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v3

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 296
    goto :goto_4

    :cond_4
    move v0, v4

    goto :goto_4
.end method

.method static synthetic b(Lcom/baidu/mobstat/SessionAnalysis;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;)Lcom/baidu/mobstat/cg;
    .locals 2

    .prologue
    .line 1012
    sget-object v1, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    monitor-enter v1

    .line 1013
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)V

    .line 1017
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cg;

    monitor-exit v1

    return-object v0

    .line 1018
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/baidu/mobstat/SessionAnalysis;->a()Z

    move-result v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirstResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 448
    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Z)V

    .line 451
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/ce;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ce;-><init>(Lcom/baidu/mobstat/SessionAnalysis;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1022
    sget-object v1, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    monitor-enter v1

    .line 1023
    if-nez p1, :cond_0

    .line 1024
    :try_start_0
    const-string v0, "pageName is null"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 1025
    monitor-exit v1

    .line 1032
    :goto_0
    return-void

    .line 1028
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    sget-object v0, Lcom/baidu/mobstat/SessionAnalysis;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static instance()Lcom/baidu/mobstat/SessionAnalysis;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/baidu/mobstat/SessionAnalysis;->a:Lcom/baidu/mobstat/SessionAnalysis;

    return-object v0
.end method


# virtual methods
.method public analysisPageEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 22

    .prologue
    .line 310
    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 313
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->h:Z

    .line 315
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    const-string v4, "\u81ea\u5b9a\u4e49\u9875\u9762 pageName \u65e0\u6548\u503c"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 320
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cg;

    move-result-object v21

    .line 321
    if-nez v21, :cond_1

    .line 322
    const-string v4, "get page info, PageInfo null"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_1
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/baidu/mobstat/cg;->b:Z

    if-nez v4, :cond_2

    .line 328
    const-string v4, "Please check (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart()"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/baidu/mobstat/cg;->b:Z

    .line 333
    move-wide/from16 v0, p2

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/baidu/mobstat/cg;->d:J

    .line 335
    new-instance v4, Lcom/baidu/mobstat/ci;

    const/4 v9, 0x0

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/baidu/mobstat/cg;->c:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    iget-object v5, v5, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 337
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p1

    move-object/from16 v15, p5

    move-object/from16 v18, p4

    move-object/from16 v20, p6

    invoke-direct/range {v4 .. v21}, Lcom/baidu/mobstat/ci;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cg;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->c(Ljava/lang/String;)V

    .line 345
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    goto :goto_0
.end method

.method public analysisPageStart(Landroid/content/Context;JLjava/lang/String;)V
    .locals 16

    .prologue
    .line 215
    const-string v2, "AnalysisPageStart"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 217
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-string v2, "\u81ea\u5b9a\u4e49\u9875\u9762 pageName \u4e3a null"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cg;

    move-result-object v2

    .line 223
    if-nez v2, :cond_1

    .line 224
    const-string v2, "get page info, PageInfo null"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-boolean v3, v2, Lcom/baidu/mobstat/cg;->b:Z

    if-eqz v3, :cond_2

    .line 230
    const-string v3, "\u9057\u6f0fStatService.onPageEnd() || missing StatService.onPageEnd()"

    invoke-static {v3}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 233
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/mobstat/cg;->b:Z

    .line 234
    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/baidu/mobstat/cg;->c:J

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/SessionAnalysis;->c()V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->h:Z

    if-nez v2, :cond_3

    .line 239
    new-instance v2, Lcom/baidu/mobstat/cj;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/mobstat/SessionAnalysis;->l:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/SessionAnalysis;->b()I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v14}, Lcom/baidu/mobstat/cj;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JJJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;II)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->h:Z

    .line 248
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/baidu/mobstat/ch;->a:J

    goto :goto_0
.end method

.method public analysisPause(Landroid/app/Fragment;J)V
    .locals 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 643
    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    iget-boolean v4, v4, Lcom/baidu/mobstat/ch;->c:Z

    if-nez v4, :cond_0

    .line 645
    const-string v4, "\u9057\u6f0fandroid.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 651
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/baidu/mobstat/ch;->c:Z

    .line 653
    new-instance v4, Lcom/baidu/mobstat/ci;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    iget-wide v10, v5, Lcom/baidu/mobstat/ch;->a:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    iget-object v5, v5, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 655
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v17, p1

    invoke-direct/range {v4 .. v21}, Lcom/baidu/mobstat/ci;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cg;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    goto :goto_0
.end method

.method public analysisPause(Landroid/content/Context;JZLcom/baidu/mobstat/ExtraInfo;)V
    .locals 22

    .prologue
    .line 570
    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 573
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->h:Z

    .line 575
    if-eqz p4, :cond_0

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Lcom/baidu/mobstat/ch;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/baidu/mobstat/ch;->c:Z

    .line 578
    new-instance v4, Lcom/baidu/mobstat/ci;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Lcom/baidu/mobstat/ch;

    iget-wide v10, v5, Lcom/baidu/mobstat/ch;->a:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Lcom/baidu/mobstat/ch;

    iget-object v5, v5, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 580
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p1

    move/from16 v19, p4

    move-object/from16 v20, p5

    invoke-direct/range {v4 .. v21}, Lcom/baidu/mobstat/ci;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cg;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 607
    :goto_0
    return-void

    .line 590
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    iget-boolean v4, v4, Lcom/baidu/mobstat/ch;->c:Z

    if-nez v4, :cond_1

    .line 592
    const-string v4, "\u9057\u6f0fStatService.onResume() || missing StatService.onResume()"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/baidu/mobstat/ch;->c:Z

    .line 599
    new-instance v4, Lcom/baidu/mobstat/ci;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    iget-wide v10, v5, Lcom/baidu/mobstat/ch;->a:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    iget-object v5, v5, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 601
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p1

    move/from16 v19, p4

    move-object/from16 v20, p5

    invoke-direct/range {v4 .. v21}, Lcom/baidu/mobstat/ci;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cg;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    goto :goto_0
.end method

.method public analysisPause(Landroid/support/v4/app/Fragment;J)V
    .locals 22

    .prologue
    .line 616
    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    iget-boolean v4, v4, Lcom/baidu/mobstat/ch;->c:Z

    if-nez v4, :cond_0

    .line 618
    const-string v4, "\u9057\u6f0fandroid.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()"

    invoke-static {v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 633
    :goto_0
    return-void

    .line 624
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/baidu/mobstat/ch;->c:Z

    .line 626
    new-instance v4, Lcom/baidu/mobstat/ci;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    iget-wide v10, v5, Lcom/baidu/mobstat/ch;->a:J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    iget-object v5, v5, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 628
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v21}, Lcom/baidu/mobstat/ci;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cg;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    goto :goto_0
.end method

.method public analysisResume(Landroid/app/Fragment;J)V
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 382
    const-string v2, "post resume job"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    iget-boolean v2, v2, Lcom/baidu/mobstat/ch;->c:Z

    if-eqz v2, :cond_0

    .line 384
    const-string v2, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/mobstat/ch;->c:Z

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/SessionAnalysis;->c()V

    .line 392
    new-instance v2, Lcom/baidu/mobstat/cj;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/mobstat/SessionAnalysis;->l:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x3

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    move-object/from16 v12, p1

    invoke-direct/range {v2 .. v14}, Lcom/baidu/mobstat/cj;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JJJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;II)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/ch;

    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/baidu/mobstat/ch;->a:J

    .line 399
    return-void
.end method

.method public analysisResume(Landroid/content/Context;JZ)V
    .locals 16

    .prologue
    .line 408
    if-eqz p4, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Lcom/baidu/mobstat/ch;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/mobstat/ch;->c:Z

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Lcom/baidu/mobstat/ch;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Lcom/baidu/mobstat/ch;

    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/baidu/mobstat/ch;->a:J

    .line 415
    :cond_0
    const-string v2, "AnalysisResume job"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 418
    if-nez p4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    iget-boolean v2, v2, Lcom/baidu/mobstat/ch;->c:Z

    if-eqz v2, :cond_1

    .line 419
    const-string v2, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 423
    :cond_1
    if-nez p4, :cond_2

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/mobstat/ch;->c:Z

    .line 427
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/SessionAnalysis;->c()V

    .line 430
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->h:Z

    if-nez v2, :cond_3

    .line 431
    new-instance v2, Lcom/baidu/mobstat/cj;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/mobstat/SessionAnalysis;->l:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v14}, Lcom/baidu/mobstat/cj;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JJJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;II)V

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->h:Z

    .line 439
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->b:Lcom/baidu/mobstat/ch;

    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/baidu/mobstat/ch;->a:J

    .line 441
    return-void
.end method

.method public analysisResume(Landroid/support/v4/app/Fragment;J)V
    .locals 16

    .prologue
    .line 355
    const-string v2, "post resume job"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    iget-boolean v2, v2, Lcom/baidu/mobstat/ch;->c:Z

    if-eqz v2, :cond_0

    .line 357
    const-string v2, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/mobstat/ch;->c:Z

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/SessionAnalysis;->c()V

    .line 365
    new-instance v2, Lcom/baidu/mobstat/cj;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/mobstat/SessionAnalysis;->l:J

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v14}, Lcom/baidu/mobstat/cj;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JJJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;II)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/baidu/mobstat/ch;->b:Ljava/lang/ref/WeakReference;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/ch;

    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/baidu/mobstat/ch;->a:J

    .line 372
    return-void
.end method

.method public autoTrackSessionEndTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/baidu/mobstat/cd;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/baidu/mobstat/cd;-><init>(Lcom/baidu/mobstat/SessionAnalysis;JLandroid/content/Context;)V

    .line 204
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public autoTrackSessionStartTime(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/baidu/mobstat/cc;

    invoke-direct {v0, p0, p2, p3}, Lcom/baidu/mobstat/cc;-><init>(Lcom/baidu/mobstat/SessionAnalysis;J)V

    .line 177
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_0
    iput-wide p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:J

    .line 181
    return-void
.end method

.method public cancelSendLogCheck()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->n:Ljava/lang/Runnable;

    .line 678
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->n:Ljava/lang/Runnable;

    .line 680
    if-eqz v0, :cond_0

    .line 681
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 683
    :cond_0
    return-void
.end method

.method public clearLastSessionCache(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 964
    if-nez p1, :cond_0

    .line 965
    const-string v0, "clearLastSession context is null, invalid"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 974
    :goto_0
    return-void

    .line 969
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 973
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public doSendLogCheck(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 663
    new-instance v0, Lcom/baidu/mobstat/cf;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/cf;-><init>(Lcom/baidu/mobstat/SessionAnalysis;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->n:Ljava/lang/Runnable;

    .line 673
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->n:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionPeriod()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    return-void
.end method

.method public getSessionAsJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ca;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPeriod()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:I

    .line 109
    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:I

    return v0
.end method

.method public getSessionSize()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:I

    return v0
.end method

.method public getSessionStartTime()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ca;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSession()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ca;->a()V

    .line 118
    return-void
.end method

.method public setInvokeType(I)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ca;->a(I)V

    .line 130
    return-void
.end method

.method public setSessionPeriod(I)V
    .locals 1

    .prologue
    .line 113
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:I

    .line 114
    return-void
.end method

.method public setSessionStartTime(J)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ca;->c(J)V

    .line 139
    return-void
.end method

.method public setTrackEndTime(J)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ca;->b(J)V

    .line 126
    return-void
.end method

.method public setTrackStartTime(J)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:Lcom/baidu/mobstat/ca;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ca;->a(J)V

    .line 122
    return-void
.end method
