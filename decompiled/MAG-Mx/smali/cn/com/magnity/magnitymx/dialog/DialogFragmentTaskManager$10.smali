.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$10;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;",
        "Lio/reactivex/ObservableSource",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 390
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$10;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;)Lio/reactivex/ObservableSource;
    .locals 9
    .param p1, "getUserTaskListResponse"    # Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;",
            ")",
            "Lio/reactivex/ObservableSource",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 393
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;->getCode()I

    move-result v0

    .line 394
    .local v0, "code":I
    const v5, 0x30d42

    if-eq v0, v5, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-object v4

    .line 397
    :cond_1
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;->getData()Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;

    move-result-object v1

    .line 398
    .local v1, "data":Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;->getTask_file_list()[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

    move-result-object v3

    .line 399
    .local v3, "tasks":[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 400
    .local v2, "task":Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;
    iget-object v7, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$10;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    iget-object v7, v7, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->downloadTaskNames:Ljava/util/List;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 402
    .end local v2    # "task":Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;
    :cond_2
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 405
    invoke-static {v3}, Lio/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v4

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 390
    check-cast p1, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$10;->apply(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
