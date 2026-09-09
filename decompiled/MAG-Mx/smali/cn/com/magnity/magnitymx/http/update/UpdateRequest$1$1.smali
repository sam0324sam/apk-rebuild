.class Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1$1;
.super Ljava/lang/Object;
.source "UpdateRequest.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;->apply(Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;

.field final synthetic val$hasNew:Z


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1$1;->this$1:Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1;

    iput-boolean p2, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1$1;->val$hasNew:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "e":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Ljava/lang/Boolean;>;"
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/http/update/UpdateRequest$1$1;->val$hasNew:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 107
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 108
    return-void
.end method
