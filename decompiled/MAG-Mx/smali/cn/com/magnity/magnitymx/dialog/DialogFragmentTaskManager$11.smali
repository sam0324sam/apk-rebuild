.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$11;
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
        "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;",
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
    .line 384
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$11;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;)V
    .locals 3
    .param p1, "getUserTaskListResponse"    # Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$11;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$700(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Lcn/com/magnity/magnitymx/util/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$11;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0133

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    .line 388
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 384
    check-cast p1, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$11;->accept(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;)V

    return-void
.end method
