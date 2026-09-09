.class public final Lokhttp3/Cache$urls$1;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$urls$1\n*L\n1#1,779:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0013\u001a\u00020\u0004H\u0096\u0002J\t\u0010\u0014\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u000c\u0012\u0008\u0012\u00060\nR\u00020\u000b0\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "okhttp3/Cache$urls$1",
        "",
        "",
        "canRemove",
        "",
        "getCanRemove",
        "()Z",
        "setCanRemove",
        "(Z)V",
        "delegate",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "getDelegate",
        "()Ljava/util/Iterator;",
        "nextUrl",
        "getNextUrl",
        "()Ljava/lang/String;",
        "setNextUrl",
        "(Ljava/lang/String;)V",
        "hasNext",
        "next",
        "remove",
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
.field private canRemove:Z

.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 1
    .param p1, "$outer"    # Lokhttp3/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Lokhttp3/Cache$urls$1;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-virtual {p1}, Lokhttp3/Cache;->getCache$okhttp()Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final getCanRemove()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    return v0
.end method

.method public final getDelegate()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getNextUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 298
    iget-object v4, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v4, v6

    .line 314
    :goto_0
    return v4

    .line 300
    :cond_0
    iput-boolean v7, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    .line 301
    :goto_1
    iget-object v4, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    nop

    .line 303
    :try_start_0
    iget-object v4, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    move-object v0, v4

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-object v3, v0

    .local v3, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    .line 304
    .local v1, "$i$a$-use-Cache$urls$1$hasNext$1":I
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    .line 305
    .local v2, "metadata":Lokio/BufferedSource;
    invoke-interface {v2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v6

    goto :goto_0

    .line 303
    .end local v1    # "$i$a$-use-Cache$urls$1$hasNext$1":I
    .end local v2    # "metadata":Lokio/BufferedSource;
    .end local v3    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    move-object v9, v8

    move-object v8, v5

    move-object v5, v9

    :try_start_4
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 308
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_1
    move v4, v7

    .line 314
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lokhttp3/Cache$urls$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lokhttp3/Cache$urls$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 319
    :cond_0
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 320
    .local v0, "result":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    .line 322
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 326
    iget-boolean v1, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .local v0, "$i$a$-check-Cache$urls$1$remove$1":I
    const-string v2, "remove() before next()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 327
    .end local v0    # "$i$a$-check-Cache$urls$1$remove$1":I
    :cond_0
    iget-object v1, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 328
    return-void
.end method

.method public final setCanRemove(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    return-void
.end method

.method public final setNextUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    iput-object p1, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    return-void
.end method
