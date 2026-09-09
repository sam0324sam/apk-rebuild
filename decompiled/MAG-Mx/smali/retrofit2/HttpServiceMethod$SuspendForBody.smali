.class final Lretrofit2/HttpServiceMethod$SuspendForBody;
.super Lretrofit2/HttpServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuspendForBody"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/HttpServiceMethod",
        "<TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final callAdapter:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter",
            "<TResponseT;",
            "Lretrofit2/Call",
            "<TResponseT;>;>;"
        }
    .end annotation
.end field

.field private final isNullable:Z


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V
    .locals 0
    .param p1, "requestFactory"    # Lretrofit2/RequestFactory;
    .param p2, "callFactory"    # Lokhttp3/Call$Factory;
    .param p5, "isNullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lretrofit2/CallAdapter",
            "<TResponseT;",
            "Lretrofit2/Call",
            "<TResponseT;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lretrofit2/HttpServiceMethod$SuspendForBody;, "Lretrofit2/HttpServiceMethod$SuspendForBody<TResponseT;>;"
    .local p3, "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TResponseT;>;"
    .local p4, "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<TResponseT;Lretrofit2/Call<TResponseT;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/HttpServiceMethod;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 180
    iput-object p4, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lretrofit2/CallAdapter;

    .line 181
    iput-boolean p5, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    .line 182
    return-void
.end method


# virtual methods
.method protected adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lretrofit2/HttpServiceMethod$SuspendForBody;, "Lretrofit2/HttpServiceMethod$SuspendForBody<TResponseT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TResponseT;>;"
    iget-object v2, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v2, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "call":Lretrofit2/Call;, "Lretrofit2/Call<TResponseT;>;"
    check-cast p1, Lretrofit2/Call;

    .line 188
    .restart local p1    # "call":Lretrofit2/Call;, "Lretrofit2/Call<TResponseT;>;"
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, p2, v2

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 199
    .local v0, "continuation":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<TResponseT;>;"
    :try_start_0
    iget-boolean v2, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    if-eqz v2, :cond_0

    .line 200
    invoke-static {p1, v0}, Lretrofit2/KotlinExtensions;->awaitNullable(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 203
    :goto_0
    return-object v2

    .line 201
    :cond_0
    invoke-static {p1, v0}, Lretrofit2/KotlinExtensions;->await(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lretrofit2/KotlinExtensions;->yieldAndThrow(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
