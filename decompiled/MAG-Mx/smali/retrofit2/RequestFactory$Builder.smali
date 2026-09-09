.class final Lretrofit2/RequestFactory$Builder;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field gotBody:Z

.field gotField:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotQueryMap:Z

.field gotQueryName:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field httpMethod:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field isFormEncoded:Z

.field isKotlinSuspendFunction:Z

.field isMultipart:Z

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 134
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 163
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    .line 164
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 165
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 166
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    .line 167
    return-void
.end method

.method private static boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    .line 802
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p0

    .line 795
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 796
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 797
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 798
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 799
    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 800
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 801
    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Short;

    goto :goto_0
.end method

.method private parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 11
    .param p1, "headers"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 278
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 279
    .local v0, "builder":Lokhttp3/Headers$Builder;
    array-length v8, p1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v3, p1, v6

    .line 280
    .local v3, "header":Ljava/lang/String;
    const/16 v9, 0x3a

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 281
    .local v1, "colon":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_1

    .line 282
    :cond_0
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v8, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v3, v9, v7

    invoke-static {v6, v8, v9}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 285
    :cond_1
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "headerName":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "headerValue":Ljava/lang/String;
    const-string v9, "Content-Type"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 289
    :try_start_0
    invoke-static {v5}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    iput-object v9, p0, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v8, "Malformed content type: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v7

    invoke-static {v6, v2, v8, v9}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 294
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {v0, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 297
    .end local v1    # "colon":I
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerName":Ljava/lang/String;
    .end local v5    # "headerValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v6

    return-object v6
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "hasBody"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 250
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v4, "Only one HTTP method is allowed. Found: %s and %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {v3, v4, v5}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 254
    :cond_0
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 255
    iput-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    .line 257
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    :goto_0
    return-void

    .line 262
    :cond_1
    const/16 v3, 0x3f

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 263
    .local v2, "question":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 265
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "queryParams":Ljava/lang/String;
    sget-object v3, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 267
    .local v0, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v4, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 273
    .end local v0    # "queryParamMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "queryParams":Ljava/lang/String;
    :cond_2
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 274
    invoke-static {p2}, Lretrofit2/RequestFactory$Builder;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    goto :goto_0
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .locals 6
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    instance-of v2, p1, Lretrofit2/http/DELETE;

    if-eqz v2, :cond_1

    .line 214
    const-string v2, "DELETE"

    check-cast p1, Lretrofit2/http/DELETE;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    instance-of v2, p1, Lretrofit2/http/GET;

    if-eqz v2, :cond_2

    .line 216
    const-string v2, "GET"

    check-cast p1, Lretrofit2/http/GET;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 217
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    instance-of v2, p1, Lretrofit2/http/HEAD;

    if-eqz v2, :cond_3

    .line 218
    const-string v2, "HEAD"

    check-cast p1, Lretrofit2/http/HEAD;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 219
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    instance-of v2, p1, Lretrofit2/http/PATCH;

    if-eqz v2, :cond_4

    .line 220
    const-string v2, "PATCH"

    check-cast p1, Lretrofit2/http/PATCH;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 221
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4
    instance-of v2, p1, Lretrofit2/http/POST;

    if-eqz v2, :cond_5

    .line 222
    const-string v2, "POST"

    check-cast p1, Lretrofit2/http/POST;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 223
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_5
    instance-of v2, p1, Lretrofit2/http/PUT;

    if-eqz v2, :cond_6

    .line 224
    const-string v2, "PUT"

    check-cast p1, Lretrofit2/http/PUT;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 225
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_6
    instance-of v2, p1, Lretrofit2/http/OPTIONS;

    if-eqz v2, :cond_7

    .line 226
    const-string v2, "OPTIONS"

    check-cast p1, Lretrofit2/http/OPTIONS;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 227
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_7
    instance-of v2, p1, Lretrofit2/http/HTTP;

    if-eqz v2, :cond_8

    move-object v1, p1

    .line 228
    check-cast v1, Lretrofit2/http/HTTP;

    .line 229
    .local v1, "http":Lretrofit2/http/HTTP;
    invoke-interface {v1}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 230
    .end local v1    # "http":Lretrofit2/http/HTTP;
    :cond_8
    instance-of v2, p1, Lretrofit2/http/Headers;

    if-eqz v2, :cond_a

    .line 231
    check-cast p1, Lretrofit2/http/Headers;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "headersToParse":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_9

    .line 233
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Headers annotation is empty."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 235
    :cond_9
    invoke-direct {p0, v0}, Lretrofit2/RequestFactory$Builder;->parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    goto/16 :goto_0

    .line 236
    .end local v0    # "headersToParse":[Ljava/lang/String;
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_a
    instance-of v2, p1, Lretrofit2/http/Multipart;

    if-eqz v2, :cond_c

    .line 237
    iget-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v2, :cond_b

    .line 238
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Only one encoding annotation is allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 240
    :cond_b
    iput-boolean v5, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    goto/16 :goto_0

    .line 241
    :cond_c
    instance-of v2, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz v2, :cond_0

    .line 242
    iget-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v2, :cond_d

    .line 243
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Only one encoding annotation is allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 245
    :cond_d
    iput-boolean v5, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    goto/16 :goto_0
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/ParameterHandler;
    .locals 6
    .param p1, "p"    # I
    .param p2, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "allowContinuation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    if-eqz p3, :cond_2

    .line 304
    array-length v5, p3

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, p3, v3

    .line 306
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, p1, p2, p3, v0}, Lretrofit2/RequestFactory$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v1

    .line 308
    .local v1, "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    if-nez v1, :cond_0

    .line 304
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    :cond_0
    if-eqz v2, :cond_1

    .line 313
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Multiple Retrofit annotations found, only one allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v5, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 317
    :cond_1
    move-object v2, v1

    goto :goto_1

    .line 321
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_2
    if-nez v2, :cond_3

    .line 322
    if-eqz p4, :cond_4

    .line 324
    :try_start_0
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lkotlin/coroutines/Continuation;

    if-ne v3, v5, :cond_4

    .line 325
    const/4 v3, 0x1

    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->isKotlinSuspendFunction:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/4 v2, 0x0

    .line 334
    .end local v2    # "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_3
    return-object v2

    .line 328
    .restart local v2    # "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :catch_0
    move-exception v3

    .line 331
    :cond_4
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "No Retrofit annotation found."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v5, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .locals 32
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 340
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Url;

    if-eqz v2, :cond_8

    .line 341
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 342
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-eqz v2, :cond_0

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Multiple @Url method annotations found."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 345
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    if-eqz v2, :cond_1

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Path parameters may not be used with @Url."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 348
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-eqz v2, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "A @Url parameter must not come after a @Query."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 351
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-eqz v2, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "A @Url parameter must not come after a @QueryName."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 354
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-eqz v2, :cond_4

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "A @Url parameter must not come after a @QueryMap."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 357
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Url cannot be used with @%s URL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v4, v7

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 361
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 363
    const-class v2, Lokhttp3/HttpUrl;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_6

    const-class v2, Ljava/lang/String;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_6

    const-class v2, Ljava/net/URI;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_6

    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_7

    const-string v2, "android.net.Uri"

    check-cast p2, Ljava/lang/Class;

    .line 366
    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 367
    :cond_6
    new-instance v2, Lretrofit2/ParameterHandler$RelativeUrl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move/from16 v0, p1

    invoke-direct {v2, v3, v0}, Lretrofit2/ParameterHandler$RelativeUrl;-><init>(Ljava/lang/reflect/Method;I)V

    .line 759
    .end local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :goto_0
    return-object v2

    .line 369
    .restart local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 373
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_8
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Path;

    if-eqz v2, :cond_e

    .line 374
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 375
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-eqz v2, :cond_9

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "A @Path parameter must not come after a @Query."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 378
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-eqz v2, :cond_a

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "A @Path parameter must not come after a @QueryName."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 381
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-eqz v2, :cond_b

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "A @Path parameter must not come after a @QueryMap."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 384
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-eqz v2, :cond_c

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Path parameters may not be used with @Url."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 387
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Path can only be used with relative url on @%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v4, v7

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 391
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    move-object/from16 v24, p4

    .line 393
    check-cast v24, Lretrofit2/http/Path;

    .line 394
    .local v24, "path":Lretrofit2/http/Path;
    invoke-interface/range {v24 .. v24}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lretrofit2/RequestFactory$Builder;->validatePathName(ILjava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 398
    .local v6, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-interface/range {v24 .. v24}, Lretrofit2/http/Path;->encoded()Z

    move-result v7

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 400
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v24    # "path":Lretrofit2/http/Path;
    :cond_e
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Query;

    if-eqz v2, :cond_12

    .line 401
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    move-object/from16 v25, p4

    .line 402
    check-cast v25, Lretrofit2/http/Query;

    .line 403
    .local v25, "query":Lretrofit2/http/Query;
    invoke-interface/range {v25 .. v25}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v5

    .line 404
    .restart local v5    # "name":Ljava/lang/String;
    invoke-interface/range {v25 .. v25}, Lretrofit2/http/Query;->encoded()Z

    move-result v11

    .line 406
    .local v11, "encoded":Z
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 407
    .local v26, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    .line 408
    const-class v2, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 409
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_f

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must include generic type (e.g., "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 412
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<String>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 410
    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_f
    move-object/from16 v20, p2

    .line 415
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 416
    .local v20, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v16

    .line 417
    .local v16, "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 418
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 419
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v2, v5, v6, v11}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Query;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 420
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v16    # "iterableType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_10
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 421
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 422
    .local v8, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 423
    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 424
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v2, v5, v6, v11}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Query;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 426
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 427
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 428
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v2, v5, v6, v11}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 431
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v11    # "encoded":Z
    .end local v25    # "query":Lretrofit2/http/Query;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/QueryName;

    if-eqz v2, :cond_16

    .line 432
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    move-object/from16 v25, p4

    .line 433
    check-cast v25, Lretrofit2/http/QueryName;

    .line 434
    .local v25, "query":Lretrofit2/http/QueryName;
    invoke-interface/range {v25 .. v25}, Lretrofit2/http/QueryName;->encoded()Z

    move-result v11

    .line 436
    .restart local v11    # "encoded":Z
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 437
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    .line 438
    const-class v2, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 439
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_13

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must include generic type (e.g., "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 442
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<String>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 440
    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_13
    move-object/from16 v20, p2

    .line 445
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 446
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v16

    .line 447
    .restart local v16    # "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 448
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 449
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v6, v11}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$QueryName;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 450
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v16    # "iterableType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_14
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 451
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 452
    .restart local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 453
    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 454
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v6, v11}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$QueryName;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 456
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 457
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 458
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v6, v11}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 461
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v11    # "encoded":Z
    .end local v25    # "query":Lretrofit2/http/QueryName;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/QueryMap;

    if-eqz v2, :cond_1a

    .line 462
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 463
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 464
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    .line 465
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@QueryMap parameter type must be Map."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 468
    :cond_17
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 469
    .local v18, "mapType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_18

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Map must include generic types (e.g., Map<String, String>)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_18
    move-object/from16 v20, v18

    .line 473
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 474
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 475
    .local v17, "keyType":Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_19

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@QueryMap keys must be of type String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 478
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v30

    .line 479
    .local v30, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 480
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v28

    .line 482
    .local v28, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$QueryMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/http/QueryMap;

    .line 483
    .end local p4    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface/range {p4 .. p4}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result v4

    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-direct {v2, v3, v0, v1, v4}, Lretrofit2/ParameterHandler$QueryMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 485
    .end local v17    # "keyType":Ljava/lang/reflect/Type;
    .end local v18    # "mapType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v30    # "valueType":Ljava/lang/reflect/Type;
    .restart local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1a
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Header;

    if-eqz v2, :cond_1e

    .line 486
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    move-object/from16 v13, p4

    .line 487
    check-cast v13, Lretrofit2/http/Header;

    .line 488
    .local v13, "header":Lretrofit2/http/Header;
    invoke-interface {v13}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v5

    .line 490
    .restart local v5    # "name":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 491
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 492
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_1b

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must include generic type (e.g., "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 495
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<String>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 493
    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1b
    move-object/from16 v20, p2

    .line 498
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 499
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v16

    .line 500
    .restart local v16    # "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 501
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 502
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v2, v5, v6}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Header;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 503
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v16    # "iterableType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_1c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 504
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 505
    .restart local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 506
    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 507
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v2, v5, v6}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Header;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 509
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 510
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 511
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v2, v5, v6}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    goto/16 :goto_0

    .line 514
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v13    # "header":Lretrofit2/http/Header;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/HeaderMap;

    if-eqz v2, :cond_23

    .line 515
    const-class v2, Lokhttp3/Headers;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1f

    .line 516
    new-instance v2, Lretrofit2/ParameterHandler$Headers;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move/from16 v0, p1

    invoke-direct {v2, v3, v0}, Lretrofit2/ParameterHandler$Headers;-><init>(Ljava/lang/reflect/Method;I)V

    goto/16 :goto_0

    .line 519
    :cond_1f
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 520
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 521
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@HeaderMap parameter type must be Map."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 524
    :cond_20
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 525
    .restart local v18    # "mapType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_21

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Map must include generic types (e.g., Map<String, String>)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_21
    move-object/from16 v20, v18

    .line 529
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 530
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 531
    .restart local v17    # "keyType":Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_22

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@HeaderMap keys must be of type String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 534
    :cond_22
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v30

    .line 535
    .restart local v30    # "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 536
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v28

    .line 538
    .restart local v28    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$HeaderMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-direct {v2, v3, v0, v1}, Lretrofit2/ParameterHandler$HeaderMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    goto/16 :goto_0

    .line 540
    .end local v17    # "keyType":Ljava/lang/reflect/Type;
    .end local v18    # "mapType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v30    # "valueType":Ljava/lang/reflect/Type;
    :cond_23
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Field;

    if-eqz v2, :cond_28

    .line 541
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 542
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v2, :cond_24

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Field parameters can only be used with form encoding."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_24
    move-object/from16 v12, p4

    .line 545
    check-cast v12, Lretrofit2/http/Field;

    .line 546
    .local v12, "field":Lretrofit2/http/Field;
    invoke-interface {v12}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v5

    .line 547
    .restart local v5    # "name":Ljava/lang/String;
    invoke-interface {v12}, Lretrofit2/http/Field;->encoded()Z

    move-result v11

    .line 549
    .restart local v11    # "encoded":Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 551
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 552
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 553
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_25

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must include generic type (e.g., "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 556
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<String>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 554
    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_25
    move-object/from16 v20, p2

    .line 559
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 560
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v16

    .line 561
    .restart local v16    # "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 562
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 563
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v2, v5, v6, v11}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Field;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 564
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v16    # "iterableType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_26
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 565
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 566
    .restart local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 567
    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 568
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v2, v5, v6, v11}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Field;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 570
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 571
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 572
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v2, v5, v6, v11}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 575
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v11    # "encoded":Z
    .end local v12    # "field":Lretrofit2/http/Field;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_28
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/FieldMap;

    if-eqz v2, :cond_2d

    .line 576
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 577
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v2, :cond_29

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@FieldMap parameters can only be used with form encoding."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 581
    :cond_29
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 582
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@FieldMap parameter type must be Map."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 585
    :cond_2a
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 586
    .restart local v18    # "mapType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_2b

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Map must include generic types (e.g., Map<String, String>)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2b
    move-object/from16 v20, v18

    .line 590
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 591
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 592
    .restart local v17    # "keyType":Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_2c

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@FieldMap keys must be of type String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 595
    :cond_2c
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v30

    .line 596
    .restart local v30    # "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 597
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v28

    .line 599
    .restart local v28    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 600
    new-instance v2, Lretrofit2/ParameterHandler$FieldMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/http/FieldMap;

    .line 601
    .end local p4    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface/range {p4 .. p4}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result v4

    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-direct {v2, v3, v0, v1, v4}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 603
    .end local v17    # "keyType":Ljava/lang/reflect/Type;
    .end local v18    # "mapType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v30    # "valueType":Ljava/lang/reflect/Type;
    .restart local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2d
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Part;

    if-eqz v2, :cond_3c

    .line 604
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v2, :cond_2e

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Part parameters can only be used with multipart encoding."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2e
    move-object/from16 v21, p4

    .line 609
    check-cast v21, Lretrofit2/http/Part;

    .line 610
    .local v21, "part":Lretrofit2/http/Part;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 612
    invoke-interface/range {v21 .. v21}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v23

    .line 613
    .local v23, "partName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 614
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 615
    const-class v2, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 616
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_2f

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must include generic type (e.g., "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 619
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<String>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 617
    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2f
    move-object/from16 v20, p2

    .line 622
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 623
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v16

    .line 624
    .restart local v16    # "iterableType":Ljava/lang/reflect/Type;
    const-class v2, Lokhttp3/MultipartBody$Part;

    invoke-static/range {v16 .. v16}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 628
    :cond_30
    sget-object v2, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$RawPart;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 629
    .end local v16    # "iterableType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_31
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 630
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 631
    .restart local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 635
    :cond_32
    sget-object v2, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$RawPart;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 636
    .end local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_33
    const-class v2, Lokhttp3/MultipartBody$Part;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 637
    sget-object v2, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    goto/16 :goto_0

    .line 639
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 643
    :cond_35
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Content-Disposition"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form-data; name=\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Content-Transfer-Encoding"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 645
    invoke-interface/range {v21 .. v21}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 644
    invoke-static {v2}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v14

    .line 647
    .local v14, "headers":Lokhttp3/Headers;
    const-class v2, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 648
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_36

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must include generic type (e.g., "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 651
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<String>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 649
    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_36
    move-object/from16 v20, p2

    .line 654
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 655
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v16

    .line 656
    .restart local v16    # "iterableType":Ljava/lang/reflect/Type;
    const-class v2, Lokhttp3/MultipartBody$Part;

    invoke-static/range {v16 .. v16}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 661
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 662
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v9

    .line 663
    .local v9, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Part;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move/from16 v0, p1

    invoke-direct {v2, v3, v0, v14, v9}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Part;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 664
    .end local v9    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v16    # "iterableType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_38
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 665
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 666
    .restart local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 671
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 672
    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v9

    .line 673
    .restart local v9    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Part;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move/from16 v0, p1

    invoke-direct {v2, v3, v0, v14, v9}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Part;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    goto/16 :goto_0

    .line 674
    .end local v8    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_3a
    const-class v2, Lokhttp3/MultipartBody$Part;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 679
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 680
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v9

    .line 681
    .restart local v9    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Part;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move/from16 v0, p1

    invoke-direct {v2, v3, v0, v14, v9}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    goto/16 :goto_0

    .line 685
    .end local v9    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v14    # "headers":Lokhttp3/Headers;
    .end local v21    # "part":Lretrofit2/http/Part;
    .end local v23    # "partName":Ljava/lang/String;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3c
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/PartMap;

    if-eqz v2, :cond_42

    .line 686
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 687
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v2, :cond_3d

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@PartMap parameters can only be used with multipart encoding."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 691
    :cond_3d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 692
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v26

    .line 693
    .restart local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@PartMap parameter type must be Map."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 696
    :cond_3e
    const-class v2, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 697
    .restart local v18    # "mapType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_3f

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Map must include generic types (e.g., Map<String, String>)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_3f
    move-object/from16 v20, v18

    .line 701
    check-cast v20, Ljava/lang/reflect/ParameterizedType;

    .line 703
    .restart local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 704
    .restart local v17    # "keyType":Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_40

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@PartMap keys must be of type String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 708
    :cond_40
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v30

    .line 709
    .restart local v30    # "valueType":Ljava/lang/reflect/Type;
    const-class v2, Lokhttp3/MultipartBody$Part;

    invoke-static/range {v30 .. v30}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 714
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 715
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v29

    .local v29, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    move-object/from16 v22, p4

    .line 717
    check-cast v22, Lretrofit2/http/PartMap;

    .line 718
    .local v22, "partMap":Lretrofit2/http/PartMap;
    new-instance v2, Lretrofit2/ParameterHandler$PartMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-interface/range {v22 .. v22}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-direct {v2, v3, v0, v1, v4}, Lretrofit2/ParameterHandler$PartMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    .end local v17    # "keyType":Ljava/lang/reflect/Type;
    .end local v18    # "mapType":Ljava/lang/reflect/Type;
    .end local v20    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v22    # "partMap":Lretrofit2/http/PartMap;
    .end local v26    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v30    # "valueType":Ljava/lang/reflect/Type;
    :cond_42
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Body;

    if-eqz v2, :cond_46

    .line 721
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 722
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v2, :cond_43

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v2, :cond_44

    .line 723
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Body parameters cannot be used with form or multi-part encoding."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 726
    :cond_44
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-eqz v2, :cond_45

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Multiple @Body method annotations found."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 732
    :cond_45
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 737
    .restart local v9    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    .line 738
    new-instance v2, Lretrofit2/ParameterHandler$Body;

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move/from16 v0, p1

    invoke-direct {v2, v3, v0, v9}, Lretrofit2/ParameterHandler$Body;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    goto/16 :goto_0

    .line 733
    .end local v9    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :catch_0
    move-exception v10

    .line 735
    .local v10, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Unable to create @Body converter for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    move/from16 v0, p1

    invoke-static {v2, v10, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 740
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_46
    move-object/from16 v0, p4

    instance-of v2, v0, Lretrofit2/http/Tag;

    if-eqz v2, :cond_49

    .line 741
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 743
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v27

    .line 744
    .local v27, "tagType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v15, p1, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_48

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    aget-object v19, v2, v15

    .line 746
    .local v19, "otherHandler":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    move-object/from16 v0, v19

    instance-of v2, v0, Lretrofit2/ParameterHandler$Tag;

    if-eqz v2, :cond_47

    check-cast v19, Lretrofit2/ParameterHandler$Tag;

    .end local v19    # "otherHandler":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    move-object/from16 v0, v19

    iget-object v2, v0, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    .line 747
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@Tag type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 749
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is duplicate of parameter #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and would always overwrite its value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 748
    move/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 744
    :cond_47
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 756
    :cond_48
    new-instance v2, Lretrofit2/ParameterHandler$Tag;

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Lretrofit2/ParameterHandler$Tag;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 759
    .end local v15    # "i":I
    .end local v27    # "tagType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    sget-object v2, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 786
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 787
    .local v1, "patterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_0
    return-object v1
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 6
    .param p1, "p"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 770
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@Path parameter name must match %s. Found: %s"

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 772
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    .line 771
    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 775
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "URL \"%s\" does not contain \"{%s}\"."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 778
    :cond_1
    return-void
.end method

.method private validateResolvableType(ILjava/lang/reflect/Type;)V
    .locals 4
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 763
    invoke-static {p2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Parameter type must not include a type variable or wildcard: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 767
    :cond_0
    return-void
.end method


# virtual methods
.method build()Lretrofit2/RequestFactory;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 170
    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v8, v7

    move v4, v6

    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v0, v7, v4

    .line 171
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v0}, Lretrofit2/RequestFactory$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 175
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 178
    :cond_1
    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v4, :cond_3

    .line 179
    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v4, :cond_2

    .line 180
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 183
    :cond_2
    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v4, :cond_3

    .line 184
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 189
    :cond_3
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v3, v4

    .line 190
    .local v3, "parameterCount":I
    new-array v4, v3, [Lretrofit2/ParameterHandler;

    iput-object v4, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    .line 191
    const/4 v2, 0x0

    .local v2, "p":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "lastParameter":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 192
    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v8, v4, v2

    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v9, v4, v2

    if-ne v2, v1, :cond_4

    move v4, v5

    .line 193
    :goto_2
    invoke-direct {p0, v2, v8, v9, v4}, Lretrofit2/RequestFactory$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/ParameterHandler;

    move-result-object v4

    aput-object v4, v7, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v4, v6

    .line 192
    goto :goto_2

    .line 196
    :cond_5
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez v4, :cond_6

    .line 197
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v7, "Missing either @%s URL or @Url parameter."

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    aput-object v8, v5, v6

    invoke-static {v4, v7, v5}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 199
    :cond_6
    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-eqz v4, :cond_7

    .line 200
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Non-body HTTP method cannot contain @Body."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 202
    :cond_7
    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    if-nez v4, :cond_8

    .line 203
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Form-encoded method must contain at least one @Field."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 205
    :cond_8
    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    if-nez v4, :cond_9

    .line 206
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Multipart method must contain at least one @Part."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 209
    :cond_9
    new-instance v4, Lretrofit2/RequestFactory;

    invoke-direct {v4, p0}, Lretrofit2/RequestFactory;-><init>(Lretrofit2/RequestFactory$Builder;)V

    return-object v4
.end method
