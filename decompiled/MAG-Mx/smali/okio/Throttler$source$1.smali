.class public final Lokio/Throttler$source$1;
.super Lokio/ForwardingSource;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Throttler;->source(Lokio/Source;)Lokio/Source;
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "okio/Throttler$source$1",
        "Lokio/ForwardingSource;",
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
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Throttler;Lokio/Source;Lokio/Source;)V
    .locals 0
    .param p1, "$outer"    # Lokio/Throttler;
    .param p2, "$captured_local_variable$1"    # Lokio/Source;
    .param p3, "$super_call_param$2"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            "Lokio/Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    iput-object p2, p0, Lokio/Throttler$source$1;->$source:Lokio/Source;

    invoke-direct {p0, p3}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "byteCount"    # J

    .prologue
    const-string v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    nop

    .line 139
    :try_start_0
    iget-object v1, p0, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    invoke-virtual {v1, p2, p3}, Lokio/Throttler;->take$jvm(J)J

    move-result-wide v2

    .line 140
    .local v2, "toRead":J
    invoke-super {p0, p1, v2, v3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 141
    .end local v2    # "toRead":J
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 143
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v4, "interrupted"

    invoke-direct {v1, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
