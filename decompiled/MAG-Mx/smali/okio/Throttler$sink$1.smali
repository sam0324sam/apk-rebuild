.class public final Lokio/Throttler$sink$1;
.super Lokio/ForwardingSink;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Throttler;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "okio/Throttler$sink$1",
        "Lokio/ForwardingSink;",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
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
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Throttler;Lokio/Sink;Lokio/Sink;)V
    .locals 0
    .param p1, "$outer"    # Lokio/Throttler;
    .param p2, "$captured_local_variable$1"    # Lokio/Sink;
    .param p3, "$super_call_param$2"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    iput-object p2, p0, Lokio/Throttler$sink$1;->$sink:Lokio/Sink;

    invoke-direct {p0, p3}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    nop

    .line 155
    move-wide v2, p2

    .line 156
    .local v2, "remaining":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    invoke-virtual {v1, v2, v3}, Lokio/Throttler;->take$jvm(J)J

    move-result-wide v4

    .line 158
    .local v4, "toWrite":J
    invoke-super {p0, p1, v4, v5}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    sub-long/2addr v2, v4

    .line 156
    goto :goto_0

    .line 161
    .end local v4    # "toWrite":J
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 163
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v6, "interrupted"

    invoke-direct {v1, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 164
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
