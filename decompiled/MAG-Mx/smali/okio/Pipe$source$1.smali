.class public final Lokio/Pipe$source$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$source$1\n*L\n1#1,216:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "okio/Pipe$source$1",
        "Lokio/Source;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1
    .param p1, "$outer"    # Lokio/Pipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v1

    monitor-enter v1

    nop

    .line 140
    :try_start_0
    iget-object v0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lokio/Pipe;->setSourceClosed$jvm(Z)V

    .line 141
    iget-object v0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_0
    :try_start_1
    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 142
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit v1

    .line 143
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J

    .prologue
    const-string v2, "sink"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v3

    monitor-enter v3

    nop

    .line 125
    :try_start_0
    iget-object v2, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getSourceClosed$jvm()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    const-string v4, "closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 125
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 129
    :cond_1
    :try_start_1
    iget-object v2, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    iget-object v4, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 127
    :cond_2
    iget-object v2, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 128
    iget-object v2, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getSinkClosed$jvm()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, -0x1

    monitor-exit v3

    .line 134
    :goto_1
    return-wide v0

    .line 132
    :cond_3
    :try_start_2
    iget-object v2, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 133
    .local v0, "result":J
    iget-object v2, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    check-cast v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    monitor-exit v3

    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    return-object v0
.end method
