.class public Lcn/com/magnity/magnitymx/asynctask/UploadTask;
.super Landroid/os/AsyncTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcn/com/magnity/magnitymx/media/NetworkItem;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadTask"


# instance fields
.field private mRunning:Z

.field private mTaskItem:Lcn/com/magnity/magnitymx/media/NetworkItem;

.field private mTaskListener:Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mRunning:Z

    .line 27
    iput-object p1, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mTaskListener:Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mTaskItem:Lcn/com/magnity/magnitymx/media/NetworkItem;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mTaskListener:Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcn/com/magnity/magnitymx/media/NetworkItem;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "itemList"    # [Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    iput-boolean v5, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mRunning:Z

    .line 45
    aget-object v2, p1, v4

    iput-object v2, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mTaskItem:Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 47
    new-instance v1, Lcn/com/magnity/magnitymx/server/MagHttpClient;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/server/MagHttpClient;-><init>()V

    .line 48
    .local v1, "client":Lcn/com/magnity/magnitymx/server/MagHttpClient;
    new-instance v0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;-><init>(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)V

    .line 103
    .local v0, "callback":Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mTaskItem:Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v1, v2, v3, v0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->uploadSmallFile(Ljava/io/File;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z

    .line 104
    iget-object v2, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mTaskItem:Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {v2, v4}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 105
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->doInBackground([Lcn/com/magnity/magnitymx/media/NetworkItem;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mRunning:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mRunning:Z

    .line 117
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->mRunning:Z

    .line 39
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 111
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
