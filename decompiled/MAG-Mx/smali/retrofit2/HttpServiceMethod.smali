.class abstract Lretrofit2/HttpServiceMethod;
.super Lretrofit2/ServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/HttpServiceMethod$SuspendForBody;,
        Lretrofit2/HttpServiceMethod$SuspendForResponse;,
        Lretrofit2/HttpServiceMethod$CallAdapted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ServiceMethod",
        "<TReturnT;>;"
    }
.end annotation


# instance fields
.field private final callFactory:Lokhttp3/Call$Factory;

.field private final requestFactory:Lretrofit2/RequestFactory;

.field private final responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0
    .param p1, "requestFactory"    # Lretrofit2/RequestFactory;
    .param p2, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lretrofit2/HttpServiceMethod;, "Lretrofit2/HttpServiceMethod<TResponseT;TReturnT;>;"
    .local p3, "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TResponseT;>;"
    invoke-direct {p0}, Lretrofit2/ServiceMethod;-><init>()V

    .line 125
    iput-object p1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    .line 126
    iput-object p2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    .line 127
    iput-object p3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    .line 128
    return-void
.end method

.method private static createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .locals 4
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "returnType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter",
            "<TResponseT;TReturnT;>;"
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Unable to create call adapter for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p1, v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;
    .locals 5
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "responseType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 113
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Unable to create converter for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {p1, v1, v2, v3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Lretrofit2/RequestFactory;)Lretrofit2/HttpServiceMethod;
    .locals 15
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "requestFactory"    # Lretrofit2/RequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Lretrofit2/RequestFactory;",
            ")",
            "Lretrofit2/HttpServiceMethod",
            "<TResponseT;TReturnT;>;"
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p2

    iget-boolean v10, v0, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    .line 39
    .local v10, "isKotlinSuspendFunction":Z
    const/4 v9, 0x0

    .line 40
    .local v9, "continuationWantsResponse":Z
    const/4 v6, 0x0

    .line 42
    .local v6, "continuationBodyNullable":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 44
    .local v8, "annotations":[Ljava/lang/annotation/Annotation;
    if-eqz v10, :cond_1

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 46
    .local v11, "parameterTypes":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v11, v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2, v1}, Lretrofit2/Utils;->getParameterLowerBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 48
    .local v12, "responseType":Ljava/lang/reflect/Type;
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit2/Response;

    if-ne v1, v2, :cond_0

    instance-of v1, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x0

    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .end local v12    # "responseType":Ljava/lang/reflect/Type;
    invoke-static {v1, v12}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 51
    .restart local v12    # "responseType":Ljava/lang/reflect/Type;
    const/4 v9, 0x1

    .line 59
    :cond_0
    new-instance v7, Lretrofit2/Utils$ParameterizedTypeImpl;

    const/4 v1, 0x0

    const-class v2, Lretrofit2/Call;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/reflect/Type;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-direct {v7, v1, v2, v13}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 60
    .local v7, "adapterType":Ljava/lang/reflect/Type;
    invoke-static {v8}, Lretrofit2/SkipCallbackExecutorImpl;->ensurePresent([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 66
    .end local v11    # "parameterTypes":[Ljava/lang/reflect/Type;
    .end local v12    # "responseType":Ljava/lang/reflect/Type;
    :goto_0
    move-object/from16 v0, p1

    invoke-static {p0, v0, v7, v8}, Lretrofit2/HttpServiceMethod;->createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v5

    .line 67
    .local v5, "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<TResponseT;TReturnT;>;"
    invoke-interface {v5}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 68
    .restart local v12    # "responseType":Ljava/lang/reflect/Type;
    const-class v1, Lokhttp3/Response;

    if-ne v12, v1, :cond_2

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 62
    .end local v5    # "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<TResponseT;TReturnT;>;"
    .end local v7    # "adapterType":Ljava/lang/reflect/Type;
    .end local v12    # "responseType":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    .restart local v7    # "adapterType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 73
    .restart local v5    # "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<TResponseT;TReturnT;>;"
    .restart local v12    # "responseType":Ljava/lang/reflect/Type;
    :cond_2
    const-class v1, Lretrofit2/Response;

    if-ne v12, v1, :cond_3

    .line 74
    const-string v1, "Response must include generic type (e.g., Response<String>)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 77
    :cond_3
    move-object/from16 v0, p2

    iget-object v1, v0, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    const-string v1, "HEAD method must use Void as response type."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 82
    :cond_4
    move-object/from16 v0, p1

    invoke-static {p0, v0, v12}, Lretrofit2/HttpServiceMethod;->createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;

    move-result-object v4

    .line 84
    .local v4, "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TResponseT;>;"
    iget-object v3, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    .line 85
    .local v3, "callFactory":Lokhttp3/Call$Factory;
    if-nez v10, :cond_5

    .line 86
    new-instance v1, Lretrofit2/HttpServiceMethod$CallAdapted;

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v3, v4, v5}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    .line 93
    :goto_1
    return-object v1

    .line 87
    :cond_5
    if-eqz v9, :cond_6

    .line 89
    new-instance v1, Lretrofit2/HttpServiceMethod$SuspendForResponse;

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v3, v4, v5}, Lretrofit2/HttpServiceMethod$SuspendForResponse;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    goto :goto_1

    .line 93
    :cond_6
    new-instance v1, Lretrofit2/HttpServiceMethod$SuspendForBody;

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$SuspendForBody;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lretrofit2/HttpServiceMethod;, "Lretrofit2/HttpServiceMethod<TResponseT;TReturnT;>;"
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    iget-object v3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    invoke-direct {v0, v1, p1, v2, v3}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 132
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<TResponseT;>;"
    invoke-virtual {p0, v0, p1}, Lretrofit2/HttpServiceMethod;->adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
