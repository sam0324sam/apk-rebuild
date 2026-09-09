.class Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lio/reactivex/Observer;)V
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
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$storagePath:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

    .prologue
    .line 92
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;->this$0:Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;->val$storagePath:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;->this$0:Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;->val$storagePath:Ljava/io/File;

    invoke-static {v0, v1, v2, p1}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->access$000(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V

    .line 96
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
    .line 92
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;->accept(Ljava/io/InputStream;)V

    return-void
.end method
