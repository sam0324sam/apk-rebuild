.class Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;
.super Lokio/ForwardingSource;
.source "FileResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/download/FileResponseBody;Lokio/Source;)V
    .locals 2
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/download/FileResponseBody;
    .param p2, "arg0"    # Lokio/Source;

    .prologue
    .line 46
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->this$0:Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 50
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 52
    .local v0, "bytesRead":J
    iget-wide v4, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->totalBytesRead:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    move-wide v2, v0

    :goto_0
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->totalBytesRead:J

    .line 53
    iget-object v2, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->this$0:Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->access$000(Lcn/com/magnity/magnitymx/http/download/FileResponseBody;)Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->this$0:Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->access$000(Lcn/com/magnity/magnitymx/http/download/FileResponseBody;)Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    move-result-object v2

    iget-wide v4, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->totalBytesRead:J

    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/download/FileResponseBody$1;->this$0:Lcn/com/magnity/magnitymx/http/download/FileResponseBody;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/http/download/FileResponseBody;->access$100(Lcn/com/magnity/magnitymx/http/download/FileResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    invoke-interface {v2, v4, v5, v6, v7}, Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;->onProgress(JJ)V

    .line 58
    :cond_0
    return-wide v0

    .line 52
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
