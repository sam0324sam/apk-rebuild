.class Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;
.super Ljava/lang/Thread;
.source "CheckVersionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->startDownloadApk(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 289
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iput-object p2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 293
    :try_start_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->val$version:Ljava/lang/String;

    const/16 v4, 0x2710

    const/16 v5, 0x7530

    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v6, v6, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    invoke-static {v2, v3, v4, v5, v6}, Lcn/com/magnity/magnitycx/upgrade/HttpHelper;->getRemoteApk(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)Ljava/io/File;

    move-result-object v1

    .line 294
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 295
    iget-object v2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 297
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading error("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$5;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->handler_:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
