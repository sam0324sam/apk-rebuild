.class Lcn/com/magnity/magnitymx/http/api/ApiRequest$4;
.super Ljava/lang/Object;
.source "ApiRequest.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/http/api/ApiRequest;->userDevicesGet(ILcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

.field final synthetic val$apiCallback:Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    .prologue
    .line 195
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest$4;->this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest$4;->val$apiCallback:Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;>;"
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest$4;->val$apiCallback:Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    invoke-interface {v0, p2}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;->fail(Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;>;"
    iget-object v1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest$4;->val$apiCallback:Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;

    invoke-interface {v1, v0}, Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;->success(Lcn/com/magnity/magnitymx/http/api/CommonResponse;)V

    .line 199
    return-void
.end method
