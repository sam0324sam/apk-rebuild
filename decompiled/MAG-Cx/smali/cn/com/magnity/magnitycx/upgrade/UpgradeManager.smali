.class public Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;
.super Ljava/lang/Object;
.source "UpgradeManager.java"


# instance fields
.field private ctx_:Landroid/content/Context;

.field private task_:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

.field private thread_:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->ctx_:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static checkNetWorkStatus(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    :try_start_0
    const-string v4, "connectivity"

    .line 58
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 60
    .local v2, "netinfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    const/4 v3, 0x1

    .line 67
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netinfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 63
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "netinfo":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    .local v3, "result":Z
    goto :goto_0

    .line 66
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netinfo":Landroid/net/NetworkInfo;
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getLocalVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 44
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 46
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get packet name("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    .line 49
    const/16 v3, 0x64

    goto :goto_0
.end method


# virtual methods
.method public start()Z
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->ctx_:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->checkNetWorkStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->ctx_:Landroid/content/Context;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->ctx_:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->getLocalVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->task_:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .line 23
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->task_:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->thread_:Ljava/lang/Thread;

    .line 24
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->task_:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->task_:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->stopDownload()V

    .line 34
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->thread_:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    iput-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->thread_:Ljava/lang/Thread;

    .line 38
    iput-object v1, p0, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->task_:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .line 40
    :cond_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method
