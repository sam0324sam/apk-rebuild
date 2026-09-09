.class final Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1\n*L\n1#1,1004:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 169
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v3

    nop

    const/4 v0, 0x0

    .line 170
    .local v0, "$i$a$-synchronized-DiskLruCache$cleanupRunnable$1$1":I
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache;->access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->getClosed$okhttp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    monitor-exit v3

    .line 190
    :goto_0
    return-void

    .line 174
    :cond_1
    nop

    .line 175
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_1
    nop

    .line 181
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache;->access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal$okhttp()V

    .line 183
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lokhttp3/internal/cache/DiskLruCache;->access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    :cond_2
    :goto_2
    nop

    :try_start_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    monitor-exit v3

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "_":Ljava/io/IOException;
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 169
    .end local v1    # "_":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 185
    :catch_1
    move-exception v1

    .line 186
    .restart local v1    # "_":Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V

    .line 187
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    invoke-static {v2, v4}, Lokhttp3/internal/cache/DiskLruCache;->access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
