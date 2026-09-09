.class Lcn/com/magnity/magnitymx/settings/AccountActivity$1;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/http/api/ApiRequest$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/settings/AccountActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/settings/AccountActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/settings/AccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/settings/AccountActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/com/magnity/magnitymx/settings/AccountActivity$1;->this$0:Lcn/com/magnity/magnitymx/settings/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public fail(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    const-string v0, "AccountActivity"

    const-string v1, "logout fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public success(Lcn/com/magnity/magnitymx/http/api/CommonResponse;)V
    .locals 2
    .param p1, "response"    # Lcn/com/magnity/magnitymx/http/api/CommonResponse;

    .prologue
    .line 82
    const-string v0, "AccountActivity"

    const-string v1, "logout success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
