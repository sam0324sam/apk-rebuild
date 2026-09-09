.class Lcn/com/magnity/magnitymx/login/LoginPresenter$2;
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
        "Ljava/lang/Throwable;",
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
    .line 151
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$2;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/login/LoginPresenter$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$2;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$000(Lcn/com/magnity/magnitymx/login/LoginPresenter;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;->onResponse(I)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$2;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/login/LoginPresenter;->access$000(Lcn/com/magnity/magnitymx/login/LoginPresenter;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;->onResponse(I)V

    goto :goto_0
.end method
