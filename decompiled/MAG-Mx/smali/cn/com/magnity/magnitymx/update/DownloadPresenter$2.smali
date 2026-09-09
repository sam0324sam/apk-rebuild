.class Lcn/com/magnity/magnitymx/update/DownloadPresenter$2;
.super Ljava/lang/Object;
.source "DownloadPresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;


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
    .line 50
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$2;->this$0:Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onProgress(JJ)V
    .locals 1
    .param p1, "downloaded"    # J
    .param p3, "total"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$2;->this$0:Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->access$000(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;->progress(JJ)V

    .line 59
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$2;->this$0:Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->access$000(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;->start()V

    .line 54
    return-void
.end method
