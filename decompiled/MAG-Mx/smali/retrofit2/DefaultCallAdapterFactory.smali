.class final Lretrofit2/DefaultCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "DefaultCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;
    }
.end annotation


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 32
    iput-object p1, p0, Lretrofit2/DefaultCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 4
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {p1}, Lretrofit2/DefaultCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lretrofit2/Call;

    if-eq v2, v3, :cond_0

    .line 50
    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 40
    .restart local p1    # "returnType":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_1

    .line 41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Call return type must be parameterized as Call<Foo> or Call<? extends Foo>"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_1
    const/4 v2, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v2, p1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 46
    .local v1, "responseType":Ljava/lang/reflect/Type;
    const-class v2, Lretrofit2/SkipCallbackExecutor;

    invoke-static {p2, v2}, Lretrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    .local v0, "executor":Ljava/util/concurrent/Executor;
    :goto_1
    new-instance v2, Lretrofit2/DefaultCallAdapterFactory$1;

    invoke-direct {v2, p0, v1, v0}, Lretrofit2/DefaultCallAdapterFactory$1;-><init>(Lretrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V

    move-object v0, v2

    goto :goto_0

    .line 48
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    :cond_2
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1
.end method
