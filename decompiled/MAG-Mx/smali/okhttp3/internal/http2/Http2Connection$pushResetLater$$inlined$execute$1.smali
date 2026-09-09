.class public final Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,569:1\n377#2,9:570\n882#3,5:579\n*E\n"
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

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->$streamId$inlined:I

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 390
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->$name:Ljava/lang/String;

    .local v5, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 570
    .local v3, "$i$f$threadName":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 571
    .local v4, "currentThread$iv":Ljava/lang/Thread;
    const-string v7, "currentThread"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, "oldName$iv":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 573
    nop

    .line 574
    const/4 v2, 0x0

    .line 391
    .local v2, "$i$a$-threadName-Util$execute$1$1":I
    const/4 v0, 0x0

    .line 579
    .local v0, "$i$a$-execute-Http2Connection$pushResetLater$1":I
    :try_start_0
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v7}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;

    move-result-object v7

    iget v8, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->$streamId$inlined:I

    iget-object v9, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    invoke-interface {v7, v8, v9}, Lokhttp3/internal/http2/PushObserver;->onReset(ILokhttp3/internal/http2/ErrorCode;)V

    .line 580
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    const/4 v1, 0x0

    .line 581
    .local v1, "$i$a$-synchronized-Http2Connection$pushResetLater$1$1":I
    :try_start_1
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v7}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v7

    iget v9, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;->$streamId$inlined:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 583
    nop

    .line 392
    nop

    .line 576
    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 578
    nop

    .line 393
    return-void

    .line 580
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 577
    .end local v1    # "$i$a$-synchronized-Http2Connection$pushResetLater$1$1":I
    :catchall_1
    move-exception v7

    .line 576
    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v7
.end method
