.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLokhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n1#1,569:1\n377#2,9:570\n663#3,2:579\n*E\n"
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
.field final synthetic $clearPrevious$inlined:Z

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $settings$inlined:Lokhttp3/internal/http2/Settings;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;ZLokhttp3/internal/http2/Settings;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-boolean p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->$clearPrevious$inlined:Z

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->$settings$inlined:Lokhttp3/internal/http2/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 390
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    .local v4, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 570
    .local v2, "$i$f$threadName":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 571
    .local v3, "currentThread$iv":Ljava/lang/Thread;
    const-string v6, "currentThread"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "oldName$iv":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 573
    nop

    .line 574
    const/4 v0, 0x0

    .line 391
    .local v0, "$i$a$-threadName-Util$execute$1$1":I
    const/4 v1, 0x0

    .line 579
    .local v1, "$i$a$-tryExecute-Http2Connection$ReaderRunnable$settings$1":I
    :try_start_0
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-boolean v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->$clearPrevious$inlined:Z

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;->$settings$inlined:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v6, v7, v8}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLokhttp3/internal/http2/Settings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    nop

    .line 392
    nop

    .line 576
    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 578
    nop

    .line 393
    return-void

    .line 577
    :catchall_0
    move-exception v6

    .line 576
    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v6
.end method
