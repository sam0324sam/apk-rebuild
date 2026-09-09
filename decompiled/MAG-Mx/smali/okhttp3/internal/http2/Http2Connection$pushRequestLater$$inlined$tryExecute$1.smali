.class public final Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushRequestLater$okhttp(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,569:1\n377#2,9:570\n370#2,2:581\n372#2,3:590\n817#3,2:579\n819#3,7:583\n826#3:593\n*E\n"
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
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $requestHeaders$inlined:Ljava/util/List;

.field final synthetic $streamId$inlined:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$requestHeaders$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 390
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    .local v8, "name$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 570
    .local v5, "$i$f$threadName":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 571
    .local v7, "currentThread$iv":Ljava/lang/Thread;
    const-string v10, "currentThread"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    .line 572
    .local v9, "oldName$iv":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 573
    nop

    .line 574
    const/4 v2, 0x0

    .line 391
    .local v2, "$i$a$-threadName-Util$execute$1$1":I
    const/4 v3, 0x0

    .line 579
    .local v3, "$i$a$-tryExecute-Http2Connection$pushRequestLater$2":I
    :try_start_0
    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v10}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;

    move-result-object v10

    iget v11, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iget-object v12, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$requestHeaders$inlined:Ljava/util/List;

    invoke-interface {v10, v11, v12}, Lokhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    .line 580
    .local v6, "cancel":Z
    const/4 v4, 0x0

    .line 581
    .local v4, "$i$f$ignoreIoExceptions":I
    nop

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "$i$a$-ignoreIoExceptions-Http2Connection$pushRequestLater$2$1":I
    if-eqz v6, :cond_0

    .line 584
    :try_start_1
    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v10}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v10

    iget v11, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$streamId$inlined:I

    sget-object v12, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v10, v11, v12}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 585
    iget-object v11, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    const/4 v1, 0x0

    .line 586
    .local v1, "$i$a$-synchronized-Http2Connection$pushRequestLater$2$1$1":I
    :try_start_2
    iget-object v10, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v10}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v10

    iget v12, p0, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;->$streamId$inlined:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 591
    .end local v1    # "$i$a$-synchronized-Http2Connection$pushRequestLater$2$1$1":I
    :cond_0
    :goto_0
    nop

    .line 593
    nop

    nop

    .line 392
    nop

    .line 576
    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 578
    nop

    .line 393
    return-void

    .line 585
    .restart local v1    # "$i$a$-synchronized-Http2Connection$pushRequestLater$2$1$1":I
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11

    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 590
    .end local v1    # "$i$a$-synchronized-Http2Connection$pushRequestLater$2$1$1":I
    :catch_0
    move-exception v10

    goto :goto_0

    .line 577
    .end local v0    # "$i$a$-ignoreIoExceptions-Http2Connection$pushRequestLater$2$1":I
    .end local v4    # "$i$f$ignoreIoExceptions":I
    .end local v6    # "cancel":Z
    :catchall_1
    move-exception v10

    .line 576
    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v10
.end method
