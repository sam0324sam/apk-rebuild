.class public Lcn/com/magnity/magnitymx/http/download/FileResponseBody;
.super Lokhttp3/ResponseBody;
.source "FileResponseBody.java"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private fileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

.field private responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;)V
    .locals 0
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .param p2, "fileDownloadListener"    # Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    .prologue
    .line 20
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 22
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->fileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/http/download/FileResponseBody;)Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->fileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/http/download/FileResponseBody;)Lokhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1, "source"    # Lokio/Source;

    .prologue
    .line 46
    new-instance v0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;-><init>(Lcn/com/magnity/magnitymx/http/download/FileResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
