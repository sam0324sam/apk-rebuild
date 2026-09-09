.class public Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/download/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileDownloadInterceptor"
.end annotation


# instance fields
.field private fileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/download/DownloadRequest;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/download/DownloadRequest;
    .param p2, "listener"    # Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;->this$0:Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;->fileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    .line 74
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 78
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 79
    .local v0, "response":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v2, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

    .line 80
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;->fileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    invoke-direct {v2, v3, v4}, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;-><init>(Lokhttp3/ResponseBody;Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;)V

    .line 79
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 79
    return-object v1
.end method
