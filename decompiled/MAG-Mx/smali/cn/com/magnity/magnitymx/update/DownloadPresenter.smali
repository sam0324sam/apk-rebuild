.class public Lcn/com/magnity/magnitymx/update/DownloadPresenter;
.super Ljava/lang/Object;
.source "DownloadPresenter.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

.field private mObserver:Lio/reactivex/Observer;

.field private mUrl:Ljava/lang/String;

.field private mView:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "DownloadPresenter"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->TAG:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mFileName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mUrl:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mView:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    .line 26
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mView:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    invoke-interface {v0, p0}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;->setPresenter(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/update/DownloadPresenter$1;-><init>(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mObserver:Lio/reactivex/Observer;

    .line 50
    new-instance v0, Lcn/com/magnity/magnitymx/update/DownloadPresenter$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/update/DownloadPresenter$2;-><init>(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/update/DownloadPresenter;)Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    .prologue
    .line 14
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mView:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    return-object v0
.end method


# virtual methods
.method public download()V
    .locals 6

    .prologue
    .line 81
    iget-object v3, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;->onStart()V

    .line 82
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v3

    invoke-static {v3}, Lcn/com/magnity/magnitymx/util/FileUtils;->getOthersStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 83
    .local v1, "storagePath":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .local v2, "targetFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mView:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;

    invoke-interface {v3}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;->finish()V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

    const-string v3, ""

    iget-object v4, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    invoke-direct {v0, v3, v4}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;-><init>(Ljava/lang/String;Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;)V

    .line 88
    .local v0, "request":Lcn/com/magnity/magnitymx/http/download/DownloadRequest;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mObserver:Lio/reactivex/Observer;

    invoke-virtual {v0, v3, v4, v1, v5}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lio/reactivex/Observer;)V

    goto :goto_0
.end method

.method public install()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/update/DownloadPresenter;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/Utils;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
