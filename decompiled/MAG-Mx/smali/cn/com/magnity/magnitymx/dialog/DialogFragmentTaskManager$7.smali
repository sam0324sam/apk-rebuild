.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;
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
    .line 430
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

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
    .line 430
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;->accept(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public accept(Lokhttp3/ResponseBody;)V
    .locals 3
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->downloadTaskNames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$800(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$7;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->downloadTaskNames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 435
    return-void
.end method
