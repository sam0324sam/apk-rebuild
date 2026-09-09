.class public Lcn/com/magnity/magnitymx/task/ParseDataLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ParseDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcn/com/magnity/magnitymx/task/TaskData;",
        ">;"
    }
.end annotation


# instance fields
.field private mTaskFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "taskFileName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->mTaskFileName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public deliverResult(Lcn/com/magnity/magnitymx/task/TaskData;)V
    .locals 0
    .param p1, "data"    # Lcn/com/magnity/magnitymx/task/TaskData;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcn/com/magnity/magnitymx/task/TaskData;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->deliverResult(Lcn/com/magnity/magnitymx/task/TaskData;)V

    return-void
.end method

.method public loadInBackground()Lcn/com/magnity/magnitymx/task/TaskData;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v3, 0x0

    .line 43
    .local v3, "taskData":Lcn/com/magnity/magnitymx/task/TaskData;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 44
    .local v1, "f":Ljava/io/File;
    if-nez v1, :cond_0

    .line 45
    const-string v5, "Fail to get task file"

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 47
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->mTaskFileName:Ljava/lang/String;

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;

    invoke-direct {v5}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;-><init>()V

    invoke-virtual {v5, v2}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;->parse(Ljava/io/File;)Lcn/com/magnity/magnitymx/task/TaskData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 55
    :goto_0
    if-nez v3, :cond_1

    .line 57
    :try_start_1
    new-instance v5, Lcn/com/magnity/magnitymx/task/XmlTaskParser;

    invoke-direct {v5}, Lcn/com/magnity/magnitymx/task/XmlTaskParser;-><init>()V

    invoke-virtual {v5, v2}, Lcn/com/magnity/magnitymx/task/XmlTaskParser;->parse(Ljava/io/File;)Lcn/com/magnity/magnitymx/task/TaskData;

    move-result-object v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can not be parsed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :goto_1
    return-object v4

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can not be parsed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_1
    move-object v4, v3

    .line 68
    goto :goto_1

    .line 52
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->loadInBackground()Lcn/com/magnity/magnitymx/task/TaskData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 36
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->forceLoad()V

    .line 20
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->cancelLoad()Z

    .line 30
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/task/ParseDataLoader;->cancelLoadInBackground()V

    .line 31
    return-void
.end method
