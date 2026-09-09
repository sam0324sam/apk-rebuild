.class Lcn/com/magnity/magnitymx/login/LoginPresenter$4;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/login/LoginPresenter;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/LoginResponse;",
        "Lio/reactivex/ObservableSource",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

.field final synthetic val$apiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;

    .prologue
    .line 111
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$4;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$4;->val$apiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcn/com/magnity/magnitymx/http/api/LoginResponse;)Lio/reactivex/ObservableSource;
    .locals 3
    .param p1, "response"    # Lcn/com/magnity/magnitymx/http/api/LoginResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/magnity/magnitymx/http/api/LoginResponse;",
            ")",
            "Lio/reactivex/ObservableSource",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse;->getCode()I

    move-result v0

    .line 118
    .local v0, "code":I
    const v2, 0x30da8

    if-ne v0, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$4;->val$apiRequest:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$4;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$100(Lcn/com/magnity/magnitymx/login/LoginPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/http/api/ApiRequest;->userDevicesGetRx(I)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    check-cast p1, Lcn/com/magnity/magnitymx/http/api/LoginResponse;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/login/LoginPresenter$4;->apply(Lcn/com/magnity/magnitymx/http/api/LoginResponse;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
