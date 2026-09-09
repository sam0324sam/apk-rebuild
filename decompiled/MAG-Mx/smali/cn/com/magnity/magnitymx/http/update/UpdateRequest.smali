.class public Lcn/com/magnity/magnitymx/http/update/UpdateRequest;
.super Ljava/lang/Object;
.source "UpdateRequest.java"


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mRequest:Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;

.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mBaseUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    const-string v0, "http://www.magnity.com.cn/"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mBaseUrl:Ljava/lang/String;

    .line 42
    :goto_0
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->init()V

    .line 43
    return-void

    .line 40
    :cond_1
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 46
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 48
    .local v1, "logging":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 49
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 50
    .local v0, "httpClient":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 52
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mBaseUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 54
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 55
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mRetrofit:Lretrofit2/Retrofit;

    .line 58
    iget-object v2, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mRetrofit:Lretrofit2/Retrofit;

    const-class v3, Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mRequest:Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;

    .line 59
    return-void
.end method


# virtual methods
.method public checkForUpdate()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "/APPs/mx"

    .line 70
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mRequest:Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;->checkForUpdate(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public checkForUpdate(Lio/reactivex/Observer;)V
    .locals 3
    .param p1, "observer"    # Lio/reactivex/Observer;

    .prologue
    .line 74
    const-string v0, "/APPs/mx"

    .line 82
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest;->mRequest:Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/http/update/IUpdateRequest;->checkForUpdate(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;-><init>(Lcn/com/magnity/magnitymx/http/update/UpdateRequest;)V

    .line 83
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 114
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 115
    return-void
.end method
