.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$9;
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
        "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;",
        "Lio/reactivex/ObservableSource",
        "<",
        "Lokhttp3/ResponseBody;",
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
    .line 407
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$9;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;)Lio/reactivex/ObservableSource;
    .locals 2
    .param p1, "task"    # Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;",
            ")",
            "Lio/reactivex/ObservableSource",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$9;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->userTaskDownloadRx(I)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    check-cast p1, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$9;->apply(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
