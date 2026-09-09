.class Lcn/com/magnity/magnitymx/login/LoginPresenter$5;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/login/LoginPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/login/LoginPresenter;

    .prologue
    .line 88
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcn/com/magnity/magnitymx/http/api/LoginResponse;)V
    .locals 5
    .param p1, "response"    # Lcn/com/magnity/magnitymx/http/api/LoginResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse;->getCode()I

    move-result v0

    .line 92
    .local v0, "code":I
    const v2, 0x30da8

    if-eq v0, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$000(Lcn/com/magnity/magnitymx/login/LoginPresenter;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    move-result-object v2

    invoke-interface {v2, v4}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;->onResponse(I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse;->getData()Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;

    move-result-object v1

    .line 97
    .local v1, "loginData":Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;
    if-eqz v1, :cond_0

    .line 100
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$202(Lcn/com/magnity/magnitymx/login/LoginPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->getRank()I

    move-result v3

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$302(Lcn/com/magnity/magnitymx/login/LoginPresenter;I)I

    .line 102
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->getUserid()I

    move-result v3

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$102(Lcn/com/magnity/magnitymx/login/LoginPresenter;I)I

    .line 103
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->getGroupid()I

    move-result v3

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$402(Lcn/com/magnity/magnitymx/login/LoginPresenter;I)I

    .line 104
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$502(Lcn/com/magnity/magnitymx/login/LoginPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v2, v4}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$602(Lcn/com/magnity/magnitymx/login/LoginPresenter;Z)Z

    .line 108
    iget-object v2, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$000(Lcn/com/magnity/magnitymx/login/LoginPresenter;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;->onResponse(I)V

    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    check-cast p1, Lcn/com/magnity/magnitymx/http/api/LoginResponse;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/login/LoginPresenter$5;->accept(Lcn/com/magnity/magnitymx/http/api/LoginResponse;)V

    return-void
.end method
