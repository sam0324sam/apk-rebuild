.class Lcn/com/magnity/magnitymx/login/LoginPresenter$1;
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
        "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
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
    .line 146
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginPresenter$1;->this$0:Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;)V
    .locals 0
    .param p1, "getUserDevicesResponse"    # Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    check-cast p1, Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/login/LoginPresenter$1;->accept(Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;)V

    return-void
.end method
