.class public final Lokhttp3/Cache$RealCacheRequest$1;
.super Lokio/ForwardingSink;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$RealCacheRequest;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$RealCacheRequest$1\n*L\n1#1,779:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/Cache$RealCacheRequest$1",
        "Lokio/ForwardingSink;",
        "close",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache$RealCacheRequest;


# direct methods
.method constructor <init>(Lokhttp3/Cache$RealCacheRequest;Lokio/Sink;)V
    .locals 0
    .param p1, "$outer"    # Lokhttp3/Cache$RealCacheRequest;
    .param p2, "$super_call_param$1"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    iget-object v2, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    monitor-enter v2

    nop

    const/4 v0, 0x0

    .line 396
    .local v0, "$i$a$-synchronized-Cache$RealCacheRequest$1$close$1":I
    :try_start_0
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->getDone$okhttp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 402
    :goto_0
    return-void

    .line 397
    :cond_0
    :try_start_1
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lokhttp3/Cache$RealCacheRequest;->setDone$okhttp(Z)V

    .line 398
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    iget-object v1, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    invoke-virtual {v1}, Lokhttp3/Cache;->getWriteSuccessCount$okhttp()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lokhttp3/Cache;->setWriteSuccessCount$okhttp(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    monitor-exit v2

    .line 400
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    .line 401
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    invoke-static {v1}, Lokhttp3/Cache$RealCacheRequest;->access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
