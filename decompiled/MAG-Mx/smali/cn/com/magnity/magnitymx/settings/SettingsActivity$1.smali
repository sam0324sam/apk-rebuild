.class Lcn/com/magnity/magnitymx/settings/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasNew"    # Ljava/lang/Boolean;

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->access$000(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/settings/SettingsActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->access$000(Lcn/com/magnity/magnitymx/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/settings/SettingsActivity$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 69
    return-void
.end method
