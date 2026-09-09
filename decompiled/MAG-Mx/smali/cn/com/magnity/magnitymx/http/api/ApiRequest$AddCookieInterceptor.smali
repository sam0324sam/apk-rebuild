.class Lcn/com/magnity/magnitymx/http/api/ApiRequest$AddCookieInterceptor;
.super Ljava/lang/Object;
.source "ApiRequest.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddCookieInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest$AddCookieInterceptor;->this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 70
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCookiesSet()Ljava/util/HashSet;

    move-result-object v4

    .line 71
    .local v4, "cookiesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v3, "cookiesBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 74
    .local v5, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "cookie":Ljava/lang/String;
    const-string v6, "; "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "cookieParts":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 78
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    const-string v6, "; "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v2    # "cookieParts":[Ljava/lang/String;
    :cond_2
    const-string v6, "Cookie"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 86
    .end local v3    # "cookiesBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    invoke-interface {p1, v6}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v6

    return-object v6
.end method
