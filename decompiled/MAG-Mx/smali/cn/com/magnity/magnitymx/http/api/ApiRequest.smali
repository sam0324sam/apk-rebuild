.class public Lcn/com/magnity/magnitymx/http/api/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;,
        Lcn/com/magnity/magnitymx/http/api/ApiRequest$AddCookieInterceptor;,
        Lcn/com/magnity/magnitymx/http/api/ApiRequest$ReceivedCookieInterceptor;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://cloudapi.magnity.com.cn"

.field public static final GENERAL_GET_SUCCESS:I = 0x30d42

.field public static final GENERAL_INVALID_DATA:I = 0x61a80

.field private static final TAG:Ljava/lang/String; = "ApiRequest"

.field public static final USER_LOGIN_FAILED:I = 0x61ae8

.field public static final USER_LOGIN_SUCCESS:I = 0x30da8


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mBaseUrl"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    :cond_0
    const-string v0, "https://cloudapi.magnity.com.cn"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mBaseUrl:Ljava/lang/String;

    .line 47
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_1

    .line 48
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->init()V

    .line 50
    :cond_1
    return-void

    .line 45
    :cond_2
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 91
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 93
    .local v1, "logging":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 94
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 95
    .local v0, "httpClient":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 96
    new-instance v2, Lcn/com/magnity/magnitymx/http/api/ApiRequest$AddCookieInterceptor;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$AddCookieInterceptor;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    new-instance v2, Lcn/com/magnity/magnitymx/http/api/ApiRequest$ReceivedCookieInterceptor;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$ReceivedCookieInterceptor;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 99
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mBaseUrl:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 101
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 102
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRetrofit:Lretrofit2/Retrofit;

    .line 105
    iget-object v2, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRetrofit:Lretrofit2/Retrofit;

    const-class v3, Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    .line 106
    return-void
.end method


# virtual methods
.method public userDevicesGet(ILcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V
    .locals 5
    .param p1, "userId1"    # I
    .param p2, "apiCallback"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    .prologue
    .line 188
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    .line 189
    .local v2, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v3

    .line 190
    .local v3, "userId":I
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCsrfToken()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "csrfToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v4, v0, p1}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userDevicesGet(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v1

    .line 195
    .local v1, "getUserDevicesResponseCall":Lretrofit2/Call;, "Lretrofit2/Call<Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;>;"
    new-instance v4, Lcn/com/magnity/magnitymx/http/api/ApiRequest$4;

    invoke-direct {v4, p0, p2}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$4;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V

    invoke-interface {v1, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method public userDevicesGetRx(I)Lio/reactivex/Observable;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 212
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCsrfToken()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "csrfToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    new-instance v2, Lcn/com/magnity/magnitymx/http/api/ApiRequest$5;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$5;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V

    invoke-static {v2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v2

    .line 221
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v2, v0, p1}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userDevicesGetRx(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v2

    goto :goto_0
.end method

.method public userFileUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .param p2, "task_id"    # Ljava/lang/String;
    .param p3, "parent_path"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "callback"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    .prologue
    .line 158
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v11

    .line 159
    .local v11, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v11}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCsrfToken()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "csrfToken":Ljava/lang/String;
    invoke-virtual {v11}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v3

    .line 161
    .local v3, "userId":I
    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v1, "text/plain"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    .line 165
    .local v12, "textType":Lokhttp3/MediaType;
    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    .line 166
    .local v9, "binaryType":Lokhttp3/MediaType;
    invoke-static {v9, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v10

    .line 167
    .local v10, "fileBody":Lokhttp3/RequestBody;
    invoke-static {v10}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v5

    .line 168
    .local v5, "filePart":Lokhttp3/MultipartBody$Part;
    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 169
    .local v6, "taskIdBody":Lokhttp3/RequestBody;
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 170
    .local v7, "parentPathBody":Lokhttp3/RequestBody;
    move-object/from16 v0, p4

    invoke-static {v12, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v8

    .line 171
    .local v8, "nameBody":Lokhttp3/RequestBody;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    const-string v4, "upload"

    invoke-interface/range {v1 .. v8}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userFileUpload(Ljava/lang/String;ILjava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v13

    .line 173
    .local v13, "uploadFileResponseCall":Lretrofit2/Call;, "Lretrofit2/Call<Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;>;"
    new-instance v1, Lcn/com/magnity/magnitymx/http/api/ApiRequest$3;

    move-object/from16 v0, p5

    invoke-direct {v1, p0, v0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$3;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V

    invoke-interface {v13, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method public userLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "gps_latitude"    # Ljava/lang/String;
    .param p4, "gps_longitude"    # Ljava/lang/String;
    .param p5, "gps_altitude"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "callback"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    .prologue
    .line 110
    new-instance v0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/magnitymx/http/api/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "loginRequest":Lcn/com/magnity/magnitymx/http/api/LoginRequest;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userLogin(Lcn/com/magnity/magnitymx/http/api/LoginRequest;)Lretrofit2/Call;

    move-result-object v7

    .line 113
    .local v7, "loginResponseCall":Lretrofit2/Call;, "Lretrofit2/Call<Lcn/com/magnity/magnitymx/http/api/LoginResponse;>;"
    new-instance v1, Lcn/com/magnity/magnitymx/http/api/ApiRequest$1;

    invoke-direct {v1, p0, p7}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$1;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V

    invoke-interface {v7, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 123
    return-void
.end method

.method public userLoginRx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "gps_latitude"    # Ljava/lang/String;
    .param p4, "gps_longitude"    # Ljava/lang/String;
    .param p5, "gps_altitude"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/LoginResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcn/com/magnity/magnitymx/http/api/LoginRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/com/magnity/magnitymx/http/api/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v0, "loginRequest":Lcn/com/magnity/magnitymx/http/api/LoginRequest;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userLoginRx(Lcn/com/magnity/magnitymx/http/api/LoginRequest;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public userLogout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V
    .locals 4
    .param p1, "gps_latitude"    # Ljava/lang/String;
    .param p2, "gps_longitude"    # Ljava/lang/String;
    .param p3, "gps_altitude"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "callback"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    .prologue
    .line 135
    new-instance v1, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/http/api/LogoutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v1, "logoutRequest":Lcn/com/magnity/magnitymx/http/api/LogoutRequest;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCsrfToken()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "csrfToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v3, v0, v1}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userLogout(Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/LogoutRequest;)Lretrofit2/Call;

    move-result-object v2

    .line 142
    .local v2, "logoutResponseCall":Lretrofit2/Call;, "Lretrofit2/Call<Lcn/com/magnity/magnitymx/http/api/CommonResponse;>;"
    new-instance v3, Lcn/com/magnity/magnitymx/http/api/ApiRequest$2;

    invoke-direct {v3, p0, p5}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$2;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method public userTaskDownloadRx(I)Lio/reactivex/Observable;
    .locals 4
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 263
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v2

    .line 264
    .local v2, "userId":I
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCsrfToken()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "csrfToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 266
    :cond_0
    new-instance v3, Lcn/com/magnity/magnitymx/http/api/ApiRequest$8;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$8;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V

    invoke-static {v3}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v3

    .line 273
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v3, v0, p1}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userTaskDownloadRx(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v3

    goto :goto_0
.end method

.method public userTaskListGet(Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V
    .locals 5
    .param p1, "apiCallback"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    .prologue
    .line 226
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    .line 227
    .local v2, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v3

    .line 228
    .local v3, "userId":I
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCsrfToken()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "csrfToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v4, v0, v3}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userTaskListGet(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v1

    .line 233
    .local v1, "getUserTaskListResponseCall":Lretrofit2/Call;, "Lretrofit2/Call<Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;>;"
    new-instance v4, Lcn/com/magnity/magnitymx/http/api/ApiRequest$6;

    invoke-direct {v4, p0, p1}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$6;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V

    invoke-interface {v1, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method public userTaskListGetRx()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 248
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v2

    .line 249
    .local v2, "userId":I
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCsrfToken()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "csrfToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 251
    :cond_0
    new-instance v3, Lcn/com/magnity/magnitymx/http/api/ApiRequest$7;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$7;-><init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V

    invoke-static {v3}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v3

    .line 258
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->mRequest:Lcn/com/magnity/magnitymx/http/api/IApiRequest;

    invoke-interface {v3, v0, v2}, Lcn/com/magnity/magnitymx/http/api/IApiRequest;->userTaskListGetRx(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v3

    goto :goto_0
.end method
