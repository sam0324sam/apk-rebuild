.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->headers(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n1#1,569:1\n377#2,9:570\n370#2,2:584\n372#2,3:588\n635#3,5:579\n640#3,2:586\n642#3,2:591\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "okhttp3/internal/Util$execute$1",
        "okhttp3/internal/http2/Http2Connection$ReaderRunnable$$special$$inlined$execute$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $headerBlock$inlined:Ljava/util/List;

.field final synthetic $inFinished$inlined:Z

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $newStream$inlined:Lokhttp3/internal/http2/Http2Stream;

.field final synthetic $stream$inlined:Lokhttp3/internal/http2/Http2Stream;

.field final synthetic $streamId$inlined:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Stream;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Lokhttp3/internal/http2/Http2Stream;ILjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$newStream$inlined:Lokhttp3/internal/http2/Http2Stream;

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$stream$inlined:Lokhttp3/internal/http2/Http2Stream;

    iput p5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$streamId$inlined:I

    iput-object p6, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$headerBlock$inlined:Ljava/util/List;

    iput-boolean p7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$inFinished$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 390
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$name:Ljava/lang/String;

    .local v8, "name$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 570
    .local v5, "$i$f$threadName":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 571
    .local v6, "currentThread$iv":Ljava/lang/Thread;
    const-string v10, "currentThread"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    .line 572
    .local v9, "oldName$iv":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 573
    nop

    .line 574
    const/4 v3, 0x0

    .line 391
    .local v3, "$i$a$-threadName-Util$execute$1$1":I
    const/4 v1, 0x0

    .line 579
    .local v1, "$i$a$-execute-Http2Connection$ReaderRunnable$headers$1$1":I
    nop

    .line 580
    :try_start_0
    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Connection;->getListener$okhttp()Lokhttp3/internal/http2/Http2Connection$Listener;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$newStream$inlined:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v10, v11}, Lokhttp3/internal/http2/Http2Connection$Listener;->onStream(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :goto_0
    nop

    nop

    .line 392
    nop

    .line 576
    invoke-virtual {v6, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 578
    nop

    .line 393
    return-void

    .line 581
    :catch_0
    move-exception v7

    .line 582
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v10, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v10}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v11

    const/4 v12, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Http2Connection.Listener failure for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v13, v13, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v7

    check-cast v0, Ljava/lang/Throwable;

    move-object v10, v0

    invoke-virtual {v11, v12, v13, v10}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    const/4 v4, 0x0

    .line 584
    .local v4, "$i$f$ignoreIoExceptions":I
    nop

    .line 585
    const/4 v2, 0x0

    .line 586
    .local v2, "$i$a$-ignoreIoExceptions-Http2Connection$ReaderRunnable$headers$1$1$1":I
    :try_start_2
    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;->$newStream$inlined:Lokhttp3/internal/http2/Http2Stream;

    sget-object v11, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v10, v11, v7}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    :goto_1
    nop

    goto :goto_0

    .line 577
    .end local v2    # "$i$a$-ignoreIoExceptions-Http2Connection$ReaderRunnable$headers$1$1$1":I
    .end local v4    # "$i$f$ignoreIoExceptions":I
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 576
    invoke-virtual {v6, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v10

    .line 588
    .restart local v2    # "$i$a$-ignoreIoExceptions-Http2Connection$ReaderRunnable$headers$1$1$1":I
    .restart local v4    # "$i$f$ignoreIoExceptions":I
    .restart local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    goto :goto_1
.end method
