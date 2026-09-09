.class Lcn/com/magnity/magnitymx/http/download/DownloadRequest$2;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function",
        "<",
        "Lokhttp3/ResponseBody;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/download/DownloadRequest;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$2;->this$0:Lcn/com/magnity/magnitymx/http/download/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lokhttp3/ResponseBody;)Ljava/io/InputStream;
    .locals 1
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

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
    .line 87
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$2;->apply(Lokhttp3/ResponseBody;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
