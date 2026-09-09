.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$8;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->downloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 412
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$8;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 412
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$8;->accept(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public accept(Lokhttp3/ResponseBody;)V
    .locals 6
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v4

    invoke-static {v4}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 416
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 429
    :goto_0
    return-void

    .line 420
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    .line 421
    .local v0, "binaryContent":[B
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$8;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    iget-object v4, v4, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->downloadTaskNames:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .local v3, "taskFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 424
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v0    # "binaryContent":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "taskFile":Ljava/io/File;
    :goto_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$8;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$900(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    goto :goto_0

    .line 425
    :catch_0
    move-exception v4

    goto :goto_1
.end method
