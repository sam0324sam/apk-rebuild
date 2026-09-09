.class public Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;
.super Landroid/os/AsyncTask;
.source "CloudSyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final NETWORK_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CloudSyncTask"


# instance fields
.field private cloudSyncTaskListener:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

.field private context:Landroid/content/Context;

.field localConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

.field private magSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

.field private startTime:J

.field userInfo:Lcn/com/magnity/magnitymx/data/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->localConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 76
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->localConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->userInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    .line 37
    iput-object p2, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cloudSyncTaskListener:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    .line 38
    iput-object p1, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->context:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getmMagSQLiteUtils()Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->magSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cloudSyncTaskListener:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->magSQLiteUtils:Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->doInBackground([[Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "lists"    # [[Ljava/lang/String;

    .prologue
    .line 81
    new-instance v2, Lcn/com/magnity/magnitymx/server/MagHttpClient;

    invoke-direct {v2}, Lcn/com/magnity/magnitymx/server/MagHttpClient;-><init>()V

    .line 82
    .local v2, "client1":Lcn/com/magnity/magnitymx/server/MagHttpClient;
    new-instance v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;-><init>(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)V

    .line 136
    .local v0, "callback1":Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    new-instance v1, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;

    invoke-direct {v1, p0, p1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;-><init>(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;[[Ljava/lang/String;)V

    .line 216
    .local v1, "callback2":Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    new-instance v3, Lcn/com/magnity/magnitymx/server/MagHttpClient;

    invoke-direct {v3}, Lcn/com/magnity/magnitymx/server/MagHttpClient;-><init>()V

    .line 217
    .local v3, "client2":Lcn/com/magnity/magnitymx/server/MagHttpClient;
    invoke-virtual {v3, v1}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->getUserFiles(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z

    .line 219
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->startTime:J

    sub-long v0, v2, v4

    .line 61
    .local v0, "time":J
    iget-object v2, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cloudSyncTaskListener:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cloudSyncTaskListener:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onFinished()V

    .line 65
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->startTime:J

    .line 54
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cloudSyncTaskListener:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cloudSyncTaskListener:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onProgress(II)V

    .line 73
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
