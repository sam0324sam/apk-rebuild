.class public Lcn/com/magnity/magnitymx/http/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadRequest"


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mFileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

.field private mRequest:Lcn/com/magnity/magnitymx/http/download/IDownloadRequest;

.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;
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

    iput-object v0, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mBaseUrl:Ljava/lang/String;

    .line 42
    :goto_0
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mFileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    .line 43
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->init()V

    .line 44
    return-void

    .line 40
    :cond_1
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/http/download/DownloadRequest;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Ljava/io/InputStream;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->writeToFile(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 47
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 50
    .local v1, "httpClient":Lokhttp3/OkHttpClient$Builder;
    new-instance v2, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 51
    .local v2, "logging":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 52
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 56
    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mFileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    if-eqz v3, :cond_0

    .line 57
    new-instance v0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mFileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    invoke-direct {v0, p0, v3}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;-><init>(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;)V

    .line 58
    .local v0, "fileDownloadInterceptor":Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 61
    .end local v0    # "fileDownloadInterceptor":Lcn/com/magnity/magnitymx/http/download/DownloadRequest$FileDownloadInterceptor;
    :cond_0
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v4, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mBaseUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 63
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 64
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 65
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    iput-object v3, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mRetrofit:Lretrofit2/Retrofit;

    .line 67
    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mRetrofit:Lretrofit2/Retrofit;

    const-class v4, Lcn/com/magnity/magnitymx/http/download/IDownloadRequest;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/http/download/IDownloadRequest;

    iput-object v3, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mRequest:Lcn/com/magnity/magnitymx/http/download/IDownloadRequest;

    .line 68
    return-void
.end method

.method private writeToFile(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 101
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 105
    :cond_0
    const/4 v3, 0x0

    .line 107
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 112
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 113
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 118
    .end local v0    # "b":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 119
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v6, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mFileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    const-string v7, "FileNotFoundException"

    invoke-interface {v6, v7}, Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;->onFail(Ljava/lang/String;)V

    .line 124
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 115
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 116
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 122
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 120
    .end local v0    # "b":[B
    .end local v5    # "len":I
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    iget-object v6, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mFileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    const-string v7, "IOException"

    invoke-interface {v6, v7}, Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;->onFail(Ljava/lang/String;)V

    goto :goto_2

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 118
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lio/reactivex/Observer;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/io/File;
    .param p4, "observer"    # Lio/reactivex/Observer;

    .prologue
    .line 85
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mFileDownloadListener:Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/http/download/FileDownloadListener;->onStart()V

    .line 86
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/download/DownloadRequest;->mRequest:Lcn/com/magnity/magnitymx/http/download/IDownloadRequest;

    invoke-interface {v0, p1}, Lcn/com/magnity/magnitymx/http/download/IDownloadRequest;->download(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$2;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$2;-><init>(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 92
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;

    invoke-direct {v1, p0, p2, p3}, Lcn/com/magnity/magnitymx/http/download/DownloadRequest$1;-><init>(Lcn/com/magnity/magnitymx/http/download/DownloadRequest;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 97
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 98
    return-void
.end method
