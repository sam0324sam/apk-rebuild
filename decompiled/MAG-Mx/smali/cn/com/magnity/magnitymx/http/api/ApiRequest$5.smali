.class Lcn/com/magnity/magnitymx/http/api/ApiRequest$5;
.super Ljava/lang/Object;
.source "ApiRequest.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/http/api/ApiRequest;->userDevicesGetRx(I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe",
        "<",
        "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/api/ApiRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    .prologue
    .line 214
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/ApiRequest$5;->this$0:Lcn/com/magnity/magnitymx/http/api/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter",
            "<",
            "Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "e":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lcn/com/magnity/magnitymx/http/api/GetUserDevicesResponse;>;"
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 218
    return-void
.end method
