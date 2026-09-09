.class Lcn/com/magnity/magnitymx/update/DownloadPresenter$1;
.super Ljava/lang/Object;
.source "DownloadPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/update/DownloadPresenter;-><init>(Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/update/DownloadPresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$1;->this$0:Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$1;->this$0:Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->access$000(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;->finish()V

    .line 48
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    const-string v0, "DownloadPresenter"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$1;->this$0:Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->access$000(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;->error()V

    .line 42
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 36
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 31
    return-void
.end method
