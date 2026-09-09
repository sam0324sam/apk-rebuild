.class final Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowablePublish.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field private static final serialVersionUID:J = -0x2cec618a478db7eL


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field volatile terminalEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    new-array v0, v1, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 143
    new-array v0, v1, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    .line 173
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    const/4 v3, 0x0

    .line 266
    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 269
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    sget-object v4, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-ne v0, v4, :cond_1

    .line 279
    :goto_0
    return v3

    .line 273
    :cond_1
    array-length v1, v0

    .line 274
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 275
    .local v2, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    aput-object p1, v2, v1

    .line 278
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    const/4 v3, 0x1

    goto :goto_0
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .locals 8
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 345
    if-eqz p1, :cond_4

    .line 347
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    if-eqz p2, :cond_4

    .line 352
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, p0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v6, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v3, v5

    .line 366
    .local v1, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v7}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 365
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    :cond_0
    move v3, v4

    .line 392
    :goto_1
    return v3

    .line 372
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    .line 375
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, p0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 379
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v6, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 380
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    array-length v3, v0

    if-eqz v3, :cond_2

    .line 381
    array-length v3, v0

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v1, v0, v5

    .line 382
    .restart local v1    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v6, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 381
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 385
    .end local v1    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    :cond_2
    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_3
    move v3, v4

    .line 388
    goto :goto_1

    .end local v0    # "a":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    move v3, v5

    .line 392
    goto :goto_1
.end method

.method dispatch()V
    .locals 26

    .prologue
    .line 403
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->getAndIncrement()I

    move-result v20

    if-eqz v20, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v12, 0x1

    .line 416
    .local v12, "missed":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 423
    .local v15, "term":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 425
    .local v14, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v14, :cond_3

    invoke-interface {v14}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    :cond_3
    const/4 v6, 0x1

    .line 429
    .local v6, "empty":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v20

    if-nez v20, :cond_0

    .line 436
    if-nez v6, :cond_c

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 442
    .local v13, "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    array-length v9, v13

    .line 444
    .local v9, "len":I
    const-wide v10, 0x7fffffffffffffffL

    .line 446
    .local v10, "maxRequested":J
    const/4 v4, 0x0

    .line 451
    .local v4, "cancelled":I
    array-length v0, v13

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    aget-object v8, v13, v20

    .line 452
    .local v8, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-virtual {v8}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v16

    .line 455
    .local v16, "r":J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-ltz v22, :cond_6

    .line 456
    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 451
    :cond_4
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 425
    .end local v4    # "cancelled":I
    .end local v6    # "empty":Z
    .end local v8    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v9    # "len":I
    .end local v10    # "maxRequested":J
    .end local v13    # "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v16    # "r":J
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 459
    .restart local v4    # "cancelled":I
    .restart local v6    # "empty":Z
    .restart local v8    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .restart local v9    # "len":I
    .restart local v10    # "maxRequested":J
    .restart local v13    # "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .restart local v16    # "r":J
    :cond_6
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v22, v16, v22

    if-nez v22, :cond_4

    .line 460
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 467
    .end local v8    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v16    # "r":J
    :cond_7
    if-ne v9, v4, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 473
    :try_start_0
    invoke-interface {v14}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 482
    :goto_5
    if-nez v18, :cond_8

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v20

    if-nez v20, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/reactivestreams/Subscription;

    const-wide/16 v22, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto/16 :goto_1

    .line 474
    :catch_0
    move-exception v7

    .line 475
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/reactivestreams/Subscription;

    invoke-interface/range {v20 .. v20}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 477
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v15

    .line 478
    move-object/from16 v0, p0

    iput-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 479
    const/16 v18, 0x0

    .local v18, "v":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .line 482
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v18    # "v":Ljava/lang/Object;, "TT;"
    :cond_8
    const/16 v20, 0x0

    goto :goto_6

    .line 495
    :cond_9
    const/4 v5, 0x0

    .line 496
    .local v5, "d":I
    :goto_7
    int-to-long v0, v5

    move-wide/from16 v20, v0

    cmp-long v20, v20, v10

    if-gez v20, :cond_a

    .line 497
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 501
    :try_start_1
    invoke-interface {v14}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 510
    :goto_8
    if-nez v18, :cond_d

    const/4 v6, 0x1

    .line 512
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v20

    if-nez v20, :cond_0

    .line 516
    if-eqz v6, :cond_e

    .line 538
    :cond_a
    if-lez v5, :cond_b

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/reactivestreams/Subscription;

    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 546
    :cond_b
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-eqz v20, :cond_c

    if-eqz v6, :cond_2

    .line 551
    .end local v4    # "cancelled":I
    .end local v5    # "d":I
    .end local v9    # "len":I
    .end local v10    # "maxRequested":J
    .end local v13    # "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :cond_c
    neg-int v0, v12

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->addAndGet(I)I

    move-result v12

    .line 552
    if-nez v12, :cond_2

    goto/16 :goto_0

    .line 502
    .restart local v4    # "cancelled":I
    .restart local v5    # "d":I
    .restart local v9    # "len":I
    .restart local v10    # "maxRequested":J
    .restart local v13    # "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :catch_1
    move-exception v7

    .line 503
    .restart local v7    # "ex":Ljava/lang/Throwable;
    invoke-static {v7}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/reactivestreams/Subscription;

    invoke-interface/range {v20 .. v20}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 505
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v15

    .line 506
    move-object/from16 v0, p0

    iput-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 507
    const/16 v18, 0x0

    .restart local v18    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_8

    .line 510
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v18    # "v":Ljava/lang/Object;, "TT;"
    :cond_d
    const/4 v6, 0x0

    goto :goto_9

    .line 520
    :cond_e
    invoke-static/range {v18 .. v18}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 522
    .local v19, "value":Ljava/lang/Object;, "TT;"
    array-length v0, v13

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    aget-object v8, v13, v20

    .line 527
    .restart local v8    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-virtual {v8}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_f

    .line 528
    iget-object v0, v8, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 530
    const-wide/16 v22, 0x1

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->produced(J)J

    .line 522
    :cond_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 534
    .end local v8    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :cond_10
    add-int/lit8 v5, v5, 0x1

    .line 535
    goto/16 :goto_7
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 177
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-eq v1, v2, :cond_0

    .line 178
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 179
    .local v0, "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 184
    .end local v0    # "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .prologue
    .line 188
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 254
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 235
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 236
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Prefetch queue is full?!"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    goto :goto_0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 193
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    instance-of v2, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 196
    check-cast v1, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 198
    .local v1, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v0

    .line 199
    .local v0, "m":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 200
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 201
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 202
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 218
    .end local v0    # "m":I
    .end local v1    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0    # "m":I
    .restart local v1    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 207
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 208
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 209
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 214
    .end local v0    # "m":I
    .end local v1    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    :cond_2
    new-instance v2, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    invoke-direct {v2, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 216
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    const/4 v7, 0x0

    .line 294
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 295
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    array-length v3, v0

    .line 297
    .local v3, "len":I
    if-nez v3, :cond_2

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    const/4 v2, -0x1

    .line 303
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 304
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    move v2, v1

    .line 310
    :cond_3
    if-ltz v2, :cond_1

    .line 317
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 318
    sget-object v4, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 328
    .local v4, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    :goto_2
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 303
    .end local v4    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 323
    .restart local v4    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
