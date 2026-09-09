.class public final Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "RxJava2CallAdapterFactory.java"


# instance fields
.field private final isAsync:Z

.field private final scheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/reactivex/Scheduler;Z)V
    .locals 0
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isAsync"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 89
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/Scheduler;

    .line 90
    iput-boolean p2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->isAsync:Z

    .line 91
    return-void
.end method

.method public static create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/Scheduler;Z)V

    return-object v0
.end method

.method public static createAsync()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/Scheduler;Z)V

    return-object v0
.end method

.method public static createWithScheduler(Lio/reactivex/Scheduler;)Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 2
    .param p0, "scheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 81
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/Scheduler;Z)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 14
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v13

    .line 97
    .local v13, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lio/reactivex/Completable;

    if-ne v13, v0, :cond_0

    .line 100
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;

    const-class v1, Ljava/lang/Void;

    iget-object v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/Scheduler;

    iget-boolean v3, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->isAsync:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V

    .line 142
    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 104
    .restart local p1    # "returnType":Ljava/lang/reflect/Type;
    :cond_0
    const-class v0, Lio/reactivex/Flowable;

    if-ne v13, v0, :cond_1

    const/4 v6, 0x1

    .line 105
    .local v6, "isFlowable":Z
    :goto_1
    const-class v0, Lio/reactivex/Single;

    if-ne v13, v0, :cond_2

    const/4 v7, 0x1

    .line 106
    .local v7, "isSingle":Z
    :goto_2
    const-class v0, Lio/reactivex/Maybe;

    if-ne v13, v0, :cond_3

    const/4 v8, 0x1

    .line 107
    .local v8, "isMaybe":Z
    :goto_3
    const-class v0, Lio/reactivex/Observable;

    if-eq v13, v0, :cond_4

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-nez v8, :cond_4

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    .end local v6    # "isFlowable":Z
    .end local v7    # "isSingle":Z
    .end local v8    # "isMaybe":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 105
    .restart local v6    # "isFlowable":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 106
    .restart local v7    # "isSingle":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 111
    .restart local v8    # "isMaybe":Z
    :cond_4
    const/4 v4, 0x0

    .line 112
    .local v4, "isResult":Z
    const/4 v5, 0x0

    .line 114
    .local v5, "isBody":Z
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_8

    .line 115
    if-eqz v6, :cond_5

    const-string v10, "Flowable"

    .line 118
    .local v10, "name":Ljava/lang/String;
    :goto_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return type must be parameterized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Foo> or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<? extends Foo>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    .end local v10    # "name":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    const-string v10, "Single"

    goto :goto_4

    .line 117
    :cond_6
    if-eqz v8, :cond_7

    const-string v10, "Maybe"

    goto :goto_4

    :cond_7
    const-string v10, "Observable"

    goto :goto_4

    .line 122
    :cond_8
    const/4 v0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v0, p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 123
    .local v11, "observableType":Ljava/lang/reflect/Type;
    invoke-static {v11}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    .line 124
    .local v12, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lretrofit2/Response;

    if-ne v12, v0, :cond_a

    .line 125
    instance-of v0, v11, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_9

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_9
    const/4 v0, 0x0

    check-cast v11, Ljava/lang/reflect/ParameterizedType;

    .end local v11    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v0, v11}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 142
    .local v1, "responseType":Ljava/lang/reflect/Type;
    :goto_5
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;

    iget-object v2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/Scheduler;

    iget-boolean v3, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->isAsync:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V

    goto/16 :goto_0

    .line 130
    .end local v1    # "responseType":Ljava/lang/reflect/Type;
    .restart local v11    # "observableType":Ljava/lang/reflect/Type;
    :cond_a
    const-class v0, Lretrofit2/adapter/rxjava2/Result;

    if-ne v12, v0, :cond_c

    .line 131
    instance-of v0, v11, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_b

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_b
    const/4 v0, 0x0

    check-cast v11, Ljava/lang/reflect/ParameterizedType;

    .end local v11    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v0, v11}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 136
    .restart local v1    # "responseType":Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    goto :goto_5

    .line 138
    .end local v1    # "responseType":Ljava/lang/reflect/Type;
    .restart local v11    # "observableType":Ljava/lang/reflect/Type;
    :cond_c
    move-object v1, v11

    .line 139
    .restart local v1    # "responseType":Ljava/lang/reflect/Type;
    const/4 v5, 0x1

    goto :goto_5
.end method
