.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lokhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReaderRunnable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,933:1\n389#2,6:934\n398#2,2:940\n389#2,14:942\n389#2,6:958\n544#2:964\n398#2,2:965\n389#2,14:967\n544#2:983\n37#3,2:956\n37#3,2:981\n*E\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n616#1,6:934\n662#1,2:940\n662#1,14:942\n707#1,6:958\n722#1:964\n728#1,2:965\n728#1,14:967\n761#1:983\n683#1,2:956\n745#1,2:981\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J8\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000cH\u0016J \u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0010H\u0016J.\u0010$\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000c2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J \u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u000cH\u0016J(\u0010-\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\u0017H\u0016J&\u00101\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u000c2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\u0018\u00104\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u00105\u001a\u00020\tH\u0016J\u0018\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u00106\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\u0014H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u00068"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;",
        "Ljava/lang/Runnable;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "reader",
        "Lokhttp3/internal/http2/Http2Reader;",
        "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V",
        "getReader$okhttp",
        "()Lokhttp3/internal/http2/Http2Reader;",
        "ackSettings",
        "",
        "alternateService",
        "streamId",
        "",
        "origin",
        "",
        "protocol",
        "Lokio/ByteString;",
        "host",
        "port",
        "maxAge",
        "",
        "applyAndAckSettings",
        "clearPrevious",
        "",
        "settings",
        "Lokhttp3/internal/http2/Settings;",
        "data",
        "inFinished",
        "source",
        "Lokio/BufferedSource;",
        "length",
        "goAway",
        "lastGoodStreamId",
        "errorCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "debugData",
        "headers",
        "associatedStreamId",
        "headerBlock",
        "",
        "Lokhttp3/internal/http2/Header;",
        "ping",
        "ack",
        "payload1",
        "payload2",
        "priority",
        "streamDependency",
        "weight",
        "exclusive",
        "pushPromise",
        "promisedStreamId",
        "requestHeaders",
        "rstStream",
        "run",
        "windowUpdate",
        "windowSizeIncrement",
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
.field private final reader:Lokhttp3/internal/http2/Http2Reader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 1
    .param p1, "$outer"    # Lokhttp3/internal/http2/Http2Connection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "reader"    # Lokhttp3/internal/http2/Http2Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Reader;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "protocol"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "host"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public final applyAndAckSettings(ZLokhttp3/internal/http2/Settings;)V
    .locals 21
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v17, "settings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    const-wide/16 v8, 0x0

    .line 682
    .local v8, "delta":J
    const/4 v15, 0x0

    check-cast v15, [Lokhttp3/internal/http2/Http2Stream;

    .line 683
    .local v15, "streamsToNotify":[Lokhttp3/internal/http2/Http2Stream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v18

    monitor-enter v18

    nop

    const/4 v2, 0x0

    .line 684
    .local v2, "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    const/4 v3, 0x0

    .line 685
    .local v3, "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getPeerSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v13

    .line 686
    .local v13, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getPeerSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Settings;->clear()V

    .line 687
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getPeerSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getPeerSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v12

    .line 689
    .local v12, "peerInitialWindowSize":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_3

    if-eq v12, v13, :cond_3

    .line 690
    sub-int v17, v12, v13

    move/from16 v0, v17

    int-to-long v8, v0

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x1

    :goto_0
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .local v7, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 956
    .local v6, "$i$f$toTypedArray":I
    move-object/from16 v16, v7

    .line 957
    .local v16, "thisCollection$iv":Ljava/util/Collection;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_2

    new-instance v17, Lkotlin/TypeCastException;

    const-string v20, "null cannot be cast to non-null type kotlin.Array<T>"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    .end local v6    # "$i$f$toTypedArray":I
    .end local v7    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v12    # "peerInitialWindowSize":I
    .end local v13    # "priorWriteWindowSize":I
    .end local v16    # "thisCollection$iv":Ljava/util/Collection;
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v19

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 683
    .end local v3    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    .line 691
    .restart local v3    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    .restart local v12    # "peerInitialWindowSize":I
    .restart local v13    # "priorWriteWindowSize":I
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 957
    .restart local v6    # "$i$f$toTypedArray":I
    .restart local v7    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v16    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    :try_start_3
    check-cast v17, [Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v15, v17

    .line 693
    .end local v6    # "$i$f$toTypedArray":I
    .end local v7    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v16    # "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    :goto_1
    nop

    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 694
    nop

    .line 695
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/internal/http2/Http2Connection;->getPeerSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 698
    :goto_2
    nop

    :try_start_6
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 683
    monitor-exit v18

    .line 700
    if-eqz v15, :cond_6

    .line 701
    if-nez v15, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-object v14, v15, v17

    .line 702
    .local v14, "stream":Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v14

    nop

    const/4 v4, 0x0

    .line 703
    .local v4, "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$2":I
    :try_start_7
    invoke-virtual {v14, v8, v9}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 704
    sget-object v19, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 702
    monitor-exit v14

    .line 701
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 691
    .end local v4    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$2":I
    .end local v14    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 696
    :catch_0
    move-exception v10

    .line 697
    .local v10, "e":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 702
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$2":I
    .restart local v14    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_2
    move-exception v17

    monitor-exit v14

    throw v17

    .line 707
    .end local v4    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$2":I
    .end local v14    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_6
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->access$getListenerExecutor$cp()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/Executor;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OkHttp "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " settings"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "name$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 958
    .local v5, "$i$f$execute":I
    new-instance v18, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$execute$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v11, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$execute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;)V

    check-cast v18, Ljava/lang/Runnable;

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 963
    nop

    .line 710
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "source"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater$okhttp(ILokio/BufferedSource;IZ)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 593
    .local v0, "dataStream":Lokhttp3/internal/http2/Http2Stream;
    if-nez v0, :cond_2

    .line 594
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V

    .line 595
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 596
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    .line 600
    if-eqz p1, :cond_0

    .line 601
    sget-object v1, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    goto :goto_0
.end method

.method public final getReader$okhttp()Lokhttp3/internal/http2/Http2Reader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    return-object v0
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 11
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "debugData"    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const-string v7, "errorCode"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "debugData"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 744
    :cond_0
    const/4 v5, 0x0

    .line 745
    .local v5, "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    iget-object v9, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v9

    nop

    const/4 v1, 0x0

    .line 746
    .local v1, "$i$a$-synchronized-Http2Connection$ReaderRunnable$goAway$1":I
    :try_start_0
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v7}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 981
    .local v2, "$i$f$toTypedArray":I
    move-object v6, v3

    .line 982
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    new-array v7, v7, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    .line 982
    .restart local v2    # "$i$f$toTypedArray":I
    .restart local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    :try_start_1
    move-object v0, v7

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    move-object v5, v0

    .line 747
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lokhttp3/internal/http2/Http2Connection;->setShutdown$okhttp(Z)V

    .line 748
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    monitor-exit v9

    .line 751
    array-length v9, v5

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v4, v5, v7

    .line 752
    .local v4, "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v8

    if-le v8, p1, :cond_2

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 753
    sget-object v8, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v4, v8}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 754
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    .line 751
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 757
    .end local v4    # "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_3
    return-void
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 20
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .param p4, "headerBlock"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v4, "headerBlock"

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater$okhttp(ILjava/util/List;Z)V

    .line 650
    :goto_0
    return-void

    .line 615
    :cond_0
    const/4 v13, 0x0

    .line 616
    .local v13, "stream":Lokhttp3/internal/http2/Http2Stream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move-object/from16 v19, v0

    monitor-enter v19

    nop

    const/16 v17, 0x0

    .line 617
    .local v17, "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v13

    .line 619
    if-nez v13, :cond_4

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Connection;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v19

    goto :goto_0

    .line 624
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Connection;->getLastGoodStreamId$okhttp()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    move/from16 v0, p2

    if-gt v0, v4, :cond_2

    monitor-exit v19

    goto :goto_0

    .line 627
    :cond_2
    :try_start_2
    rem-int/lit8 v4, p2, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Connection;->getNextStreamId$okhttp()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v5, :cond_3

    monitor-exit v19

    goto :goto_0

    .line 630
    :cond_3
    :try_start_3
    invoke-static/range {p4 .. p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v8

    .line 631
    .local v8, "headers":Lokhttp3/Headers;
    new-instance v3, Lokhttp3/internal/http2/Http2Stream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x0

    move/from16 v4, p2

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 632
    .local v3, "newStream":Lokhttp3/internal/http2/Http2Stream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lokhttp3/internal/http2/Http2Connection;->setLastGoodStreamId$okhttp(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->access$getListenerExecutor$cp()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OkHttp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "name$iv":Ljava/lang/String;
    const/16 v18, 0x0

    .line 934
    .local v18, "$i$f$execute":I
    new-instance v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;

    move-object v11, v3

    move-object/from16 v12, p0

    move/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Stream;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Lokhttp3/internal/http2/Http2Stream;ILjava/util/List;Z)V

    check-cast v9, Ljava/lang/Runnable;

    invoke-interface {v4, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 939
    nop

    .line 644
    monitor-exit v19

    goto/16 :goto_0

    .line 646
    .end local v3    # "newStream":Lokhttp3/internal/http2/Http2Stream;
    .end local v8    # "headers":Lokhttp3/Headers;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$execute":I
    :cond_4
    nop

    :try_start_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 616
    monitor-exit v19

    .line 649
    invoke-static/range {p4 .. p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    goto/16 :goto_0

    .line 616
    :catchall_0
    move-exception v4

    monitor-exit v19

    throw v4
.end method

.method public ping(ZII)V
    .locals 10
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 721
    if-eqz p1, :cond_1

    .line 722
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v8

    nop

    const/4 v0, 0x0

    .line 723
    .local v0, "$i$a$-synchronized-Http2Connection$ReaderRunnable$ping$1":I
    :try_start_0
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lokhttp3/internal/http2/Http2Connection;->access$setAwaitingPong$p(Lokhttp3/internal/http2/Http2Connection;Z)V

    .line 724
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .local v5, "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    const/4 v2, 0x0

    .line 964
    .local v2, "$i$f$notifyAll":I
    if-nez v5, :cond_0

    new-instance v7, Lkotlin/TypeCastException;

    const-string v9, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v7, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    .end local v2    # "$i$f$notifyAll":I
    .end local v5    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 964
    .restart local v2    # "$i$f$notifyAll":I
    .restart local v5    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    :cond_0
    :try_start_1
    check-cast v5, Ljava/lang/Object;

    .end local v5    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 725
    nop

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    monitor-exit v8

    .line 731
    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$ping$1":I
    .end local v2    # "$i$f$notifyAll":I
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v7}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterExecutor$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OkHttp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 965
    .local v3, "$i$f$tryExecute":I
    nop

    .line 966
    .local v4, "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    .line 967
    .local v1, "$i$f$execute":I
    :try_start_2
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$tryExecute$1;

    invoke-direct {v7, v6, p0, p2, p3}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;II)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-interface {v4, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 979
    :goto_1
    nop

    goto :goto_0

    .line 978
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 782
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .param p3, "requestHeaders"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "requestHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater$okhttp(ILjava/util/List;)V

    .line 790
    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "errorCode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 658
    .local v0, "rstStream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 562
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 563
    .local v1, "connectionErrorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 564
    .local v4, "streamErrorCode":Lokhttp3/internal/http2/ErrorCode;
    const/4 v3, 0x0

    check-cast v3, Ljava/io/IOException;

    .line 565
    .local v3, "errorException":Ljava/io/IOException;
    nop

    .line 566
    :try_start_0
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    move-object v0, p0

    check-cast v0, Lokhttp3/internal/http2/Http2Reader$Handler;

    move-object v5, v0

    invoke-virtual {v6, v5}, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 567
    :cond_0
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    const/4 v7, 0x0

    move-object v0, p0

    check-cast v0, Lokhttp3/internal/http2/Http2Reader$Handler;

    move-object v5, v0

    invoke-virtual {v6, v7, v5}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 569
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 570
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5, v1, v4, v3}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 577
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 578
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Ljava/io/IOException;
    move-object v3, v2

    .line 573
    :try_start_1
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 574
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5, v1, v4, v3}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 577
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 578
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    move-object v6, v5

    .line 576
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5, v1, v4, v3}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 577
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
    .locals 6
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v4, "settings"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v4}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterExecutor$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OkHttp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ACK Settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "name$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 940
    .local v1, "$i$f$tryExecute":I
    nop

    .line 941
    .local v2, "$this$execute$iv$iv":Ljava/util/concurrent/Executor;
    const/4 v0, 0x0

    .line 942
    .local v0, "$i$f$execute":I
    :try_start_0
    new-instance v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;

    invoke-direct {v4, v3, p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;ZLokhttp3/internal/http2/Settings;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_0
    nop

    .line 665
    return-void

    .line 953
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public windowUpdate(IJ)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 760
    if-nez p1, :cond_2

    .line 761
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v6

    nop

    const/4 v0, 0x0

    .line 762
    .local v0, "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$1":I
    :try_start_0
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Connection;->getWriteBytesMaximum()J

    move-result-wide v8

    add-long/2addr v8, p2

    invoke-static {v5, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->access$setWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 763
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .local v3, "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    const/4 v2, 0x0

    .line 983
    .local v2, "$i$f$notifyAll":I
    if-nez v3, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v5, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    .end local v2    # "$i$f$notifyAll":I
    .end local v3    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 983
    .restart local v2    # "$i$f$notifyAll":I
    .restart local v3    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    :cond_0
    :try_start_1
    check-cast v3, Ljava/lang/Object;

    .end local v3    # "$this$notifyAll$iv":Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 764
    nop

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    monitor-exit v6

    .line 772
    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$1":I
    .end local v2    # "$i$f$notifyAll":I
    :cond_1
    :goto_0
    return-void

    .line 766
    :cond_2
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v5, p1}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v4

    .line 767
    .local v4, "stream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v4, :cond_1

    .line 768
    monitor-enter v4

    nop

    const/4 v1, 0x0

    .line 769
    .local v1, "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$2":I
    :try_start_2
    invoke-virtual {v4, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 770
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 768
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v4

    throw v5
.end method
