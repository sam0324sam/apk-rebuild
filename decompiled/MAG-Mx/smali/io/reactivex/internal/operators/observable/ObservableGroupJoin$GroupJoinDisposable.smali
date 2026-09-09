.class final Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableGroupJoin.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/observable/ObservableGroupJoin$JoinSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupJoinDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$JoinSupport;"
    }
.end annotation


# static fields
.field static final LEFT_CLOSE:Ljava/lang/Integer;

.field static final LEFT_VALUE:Ljava/lang/Integer;

.field static final RIGHT_CLOSE:Ljava/lang/Integer;

.field static final RIGHT_VALUE:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x54414b546f40e739L


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicInteger;

.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final leftEnd:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TT",
            "Left;",
            "+",
            "Lio/reactivex/ObservableSource",
            "<TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field leftIndex:I

.field final lefts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TTRight;>;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final resultSelector:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-TT",
            "Left;",
            "-",
            "Lio/reactivex/Observable",
            "<TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field final rightEnd:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TTRight;+",
            "Lio/reactivex/ObservableSource",
            "<TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field rightIndex:I

.field final rights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->LEFT_VALUE:Ljava/lang/Integer;

    .line 122
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->RIGHT_VALUE:Ljava/lang/Integer;

    .line 124
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->LEFT_CLOSE:Ljava/lang/Integer;

    .line 126
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->RIGHT_CLOSE:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TR;>;",
            "Lio/reactivex/functions/Function",
            "<-TT",
            "Left;",
            "+",
            "Lio/reactivex/ObservableSource",
            "<TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/functions/Function",
            "<-TTRight;+",
            "Lio/reactivex/ObservableSource",
            "<TTRightEnd;>;>;",
            "Lio/reactivex/functions/BiFunction",
            "<-TT",
            "Left;",
            "-",
            "Lio/reactivex/Observable",
            "<TTRight;>;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "leftEnd":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TTLeft;+Lio/reactivex/ObservableSource<TTLeftEnd;>;>;"
    .local p3, "rightEnd":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TTRight;+Lio/reactivex/ObservableSource<TTRightEnd;>;>;"
    .local p4, "resultSelector":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TTLeft;-Lio/reactivex/Observable<TTRight;>;+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 133
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->actual:Lio/reactivex/Observer;

    .line 134
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 135
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/Observable;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 136
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rights:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 139
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->leftEnd:Lio/reactivex/functions/Function;

    .line 140
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rightEnd:Lio/reactivex/functions/Function;

    .line 141
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->resultSelector:Lio/reactivex/functions/BiFunction;

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    return-void
.end method


# virtual methods
.method cancelAll()V
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 164
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelled:Z

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelAll()V

    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    goto :goto_0
.end method

.method drain()V
    .locals 23

    .prologue
    .line 188
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->getAndIncrement()I

    move-result v21

    if-eqz v21, :cond_0

    .line 337
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v11, 0x1

    .line 193
    .local v11, "missed":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 194
    .local v15, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->actual:Lio/reactivex/Observer;

    .line 198
    .local v3, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 199
    invoke-virtual {v15}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    goto :goto_0

    .line 203
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 204
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_3

    .line 205
    invoke-virtual {v15}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelAll()V

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->errorAll(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 211
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v21

    if-nez v21, :cond_4

    const/4 v4, 0x1

    .line 213
    .local v4, "d":Z
    :goto_2
    invoke-virtual {v15}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 215
    .local v12, "mode":Ljava/lang/Integer;
    if-nez v12, :cond_5

    const/4 v5, 0x1

    .line 217
    .local v5, "empty":Z
    :goto_3
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lio/reactivex/subjects/UnicastSubject;

    .line 219
    .local v17, "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<*>;"
    invoke-virtual/range {v17 .. v17}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_4

    .line 211
    .end local v4    # "d":Z
    .end local v5    # "empty":Z
    .end local v12    # "mode":Ljava/lang/Integer;
    .end local v17    # "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<*>;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 215
    .restart local v4    # "d":Z
    .restart local v12    # "mode":Ljava/lang/Integer;
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 222
    .restart local v5    # "empty":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rights:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 226
    invoke-interface {v3}, Lio/reactivex/Observer;->onComplete()V

    goto/16 :goto_0

    .line 230
    :cond_7
    if-eqz v5, :cond_8

    .line 332
    neg-int v0, v11

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->addAndGet(I)I

    move-result v11

    .line 333
    if-nez v11, :cond_1

    goto/16 :goto_0

    .line 234
    :cond_8
    invoke-virtual {v15}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v19

    .line 236
    .local v19, "val":Ljava/lang/Object;
    sget-object v21, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->LEFT_VALUE:Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_a

    .line 238
    move-object/from16 v10, v19

    .line 240
    .local v10, "left":Ljava/lang/Object;, "TTLeft;"
    invoke-static {}, Lio/reactivex/subjects/UnicastSubject;->create()Lio/reactivex/subjects/UnicastSubject;

    move-result-object v18

    .line 241
    .local v18, "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    move-object/from16 v0, p0

    iget v9, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->leftIndex:I

    add-int/lit8 v21, v9, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->leftIndex:I

    .line 242
    .local v9, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->leftEnd:Lio/reactivex/functions/Function;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    const-string v22, "The leftEnd returned a null ObservableSource"

    invoke-static/range {v21 .. v22}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/reactivex/ObservableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .local v13, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTLeftEnd;>;"
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v6, v0, v1, v9}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$JoinSupport;ZI)V

    .line 254
    .local v6, "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 256
    invoke-interface {v13, v6}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ex":Ljava/lang/Throwable;
    check-cast v7, Ljava/lang/Throwable;

    .line 259
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_9

    .line 260
    invoke-virtual {v15}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelAll()V

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->errorAll(Lio/reactivex/Observer;)V

    goto/16 :goto_0

    .line 248
    .end local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    .end local v13    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTLeftEnd;>;"
    :catch_0
    move-exception v8

    .line 249
    .local v8, "exc":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v15}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->fail(Ljava/lang/Throwable;Lio/reactivex/Observer;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    goto/16 :goto_0

    .line 269
    .end local v8    # "exc":Ljava/lang/Throwable;
    .restart local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    .restart local v13    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTLeftEnd;>;"
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->resultSelector:Lio/reactivex/functions/BiFunction;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v10, v1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    const-string v22, "The resultSelector returned a null value"

    invoke-static/range {v21 .. v22}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 275
    .local v20, "w":Ljava/lang/Object;, "TR;"
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rights:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 278
    .local v16, "right":Ljava/lang/Object;, "TTRight;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 270
    .end local v16    # "right":Ljava/lang/Object;, "TTRight;"
    .end local v20    # "w":Ljava/lang/Object;, "TR;"
    :catch_1
    move-exception v8

    .line 271
    .restart local v8    # "exc":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v15}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->fail(Ljava/lang/Throwable;Lio/reactivex/Observer;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    goto/16 :goto_0

    .line 281
    .end local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    .end local v8    # "exc":Ljava/lang/Throwable;
    .end local v9    # "idx":I
    .end local v10    # "left":Ljava/lang/Object;, "TTLeft;"
    .end local v13    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTLeftEnd;>;"
    .end local v18    # "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    :cond_a
    sget-object v21, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->RIGHT_VALUE:Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_c

    .line 283
    move-object/from16 v16, v19

    .line 285
    .restart local v16    # "right":Ljava/lang/Object;, "TTRight;"
    move-object/from16 v0, p0

    iget v9, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rightIndex:I

    add-int/lit8 v21, v9, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rightIndex:I

    .line 287
    .restart local v9    # "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rights:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rightEnd:Lio/reactivex/functions/Function;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    const-string v22, "The rightEnd returned a null ObservableSource"

    invoke-static/range {v21 .. v22}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/reactivex/ObservableSource;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 298
    .local v14, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTRightEnd;>;"
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v6, v0, v1, v9}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$JoinSupport;ZI)V

    .line 299
    .restart local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 301
    invoke-interface {v14, v6}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ex":Ljava/lang/Throwable;
    check-cast v7, Ljava/lang/Throwable;

    .line 304
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_b

    .line 305
    invoke-virtual {v15}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelAll()V

    .line 307
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->errorAll(Lio/reactivex/Observer;)V

    goto/16 :goto_0

    .line 293
    .end local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    .end local v14    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTRightEnd;>;"
    :catch_2
    move-exception v8

    .line 294
    .restart local v8    # "exc":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v15}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->fail(Ljava/lang/Throwable;Lio/reactivex/Observer;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    goto/16 :goto_0

    .line 311
    .end local v8    # "exc":Ljava/lang/Throwable;
    .restart local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    .restart local v14    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTRightEnd;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lio/reactivex/subjects/UnicastSubject;

    .line 312
    .restart local v18    # "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_6

    .line 315
    .end local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    .end local v9    # "idx":I
    .end local v14    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TTRightEnd;>;"
    .end local v16    # "right":Ljava/lang/Object;, "TTRight;"
    .end local v18    # "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    :cond_c
    sget-object v21, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->LEFT_CLOSE:Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_d

    move-object/from16 v6, v19

    .line 316
    check-cast v6, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    .line 318
    .restart local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    move-object/from16 v21, v0

    iget v0, v6, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;->index:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lio/reactivex/subjects/UnicastSubject;

    .line 319
    .restart local v18    # "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 320
    if-eqz v18, :cond_1

    .line 321
    invoke-virtual/range {v18 .. v18}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto/16 :goto_1

    .line 324
    .end local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    .end local v18    # "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    :cond_d
    sget-object v21, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->RIGHT_CLOSE:Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_1

    move-object/from16 v6, v19

    .line 325
    check-cast v6, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    .line 327
    .restart local v6    # "end":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rights:Ljava/util/Map;

    move-object/from16 v21, v0

    iget v0, v6, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;->index:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    goto/16 :goto_1
.end method

.method errorAll(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    .local p1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<*>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 169
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 170
    .local v1, "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v1    # "up":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TTRight;>;"
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->lefts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 174
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->rights:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 176
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method fail(Ljava/lang/Throwable;Lio/reactivex/Observer;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 1
    .param p1, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Observer",
            "<*>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    .local p2, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<*>;"
    .local p3, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<*>;"
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 182
    invoke-virtual {p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 183
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelAll()V

    .line 184
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->errorAll(Lio/reactivex/Observer;)V

    .line 185
    return-void
.end method

.method public innerClose(ZLio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;)V
    .locals 2
    .param p1, "isLeft"    # Z
    .param p2, "index"    # Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    .prologue
    .line 366
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz p1, :cond_0

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->LEFT_CLOSE:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1, v0, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->drain()V

    .line 370
    return-void

    .line 367
    :cond_0
    :try_start_1
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->RIGHT_CLOSE:Ljava/lang/Integer;

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public innerCloseError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 374
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->drain()V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public innerComplete(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightObserver;)V
    .locals 1
    .param p1, "sender"    # Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightObserver;

    .prologue
    .line 351
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    .line 352
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 353
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->drain()V

    .line 354
    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 341
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 343
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->drain()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public innerValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "isLeft"    # Z
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 358
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    if-eqz p1, :cond_0

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->LEFT_VALUE:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1, v0, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->drain()V

    .line 362
    return-void

    .line 359
    :cond_0
    :try_start_1
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->RIGHT_VALUE:Ljava/lang/Integer;

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable<TTLeft;TTRight;TTLeftEnd;TTRightEnd;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->cancelled:Z

    return v0
.end method
