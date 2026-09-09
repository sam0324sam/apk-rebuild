.class public final Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,569:1\n377#2,9:570\n332#3,6:579\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "okhttp3/internal/Util$execute$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $streamId$inlined:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 390
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    .local v5, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 570
    .local v2, "$i$f$threadName":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 571
    .local v3, "currentThread$iv":Ljava/lang/Thread;
    const-string v7, "currentThread"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, "oldName$iv":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 573
    nop

    .line 574
    const/4 v0, 0x0

    .line 391
    .local v0, "$i$a$-threadName-Util$execute$1$1":I
    const/4 v1, 0x0

    .line 579
    .local v1, "$i$a$-tryExecute-Http2Connection$writeSynResetLater$1":I
    nop

    .line 580
    :try_start_0
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v8, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iget-object v9, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :goto_0
    nop

    nop

    .line 392
    nop

    .line 576
    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 578
    nop

    .line 393
    return-void

    .line 581
    :catch_0
    move-exception v4

    .line 582
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v7, v4}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 576
    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v7
.end method
