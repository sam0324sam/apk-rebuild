.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Lio/reactivex/Observer;


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
        "Lio/reactivex/Observer",
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
    .line 436
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$700(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Lcn/com/magnity/magnitymx/util/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0132

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    .line 455
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 450
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 436
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .locals 0
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;

    .prologue
    .line 445
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 439
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$6;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$602(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 440
    return-void
.end method
