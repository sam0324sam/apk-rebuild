.class Lcn/com/magnity/magnitymx/http/api/ApiRequest$ReceivedCookieInterceptor;
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
    name = "ReceivedCookieInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest$ReceivedCookieInterceptor;->this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-interface {p1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 56
    .local v2, "originalResponse":Lokhttp3/Response;
    const-string v3, "Set-Cookie"

    invoke-virtual {v2, v3}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "cookiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v1, "cookiesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setmCookiesSet(Ljava/util/HashSet;)V

    .line 62
    .end local v1    # "cookiesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method
