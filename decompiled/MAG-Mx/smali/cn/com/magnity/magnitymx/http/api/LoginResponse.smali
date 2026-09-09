.class public Lcn/com/magnity/magnitymx/http/api/LoginResponse;
.super Lcn/com/magnity/magnitymx/http/api/CommonResponse;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;
    }
.end annotation


# instance fields
.field private data:Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "data"    # Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/http/api/CommonResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse;->data:Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;

    .line 66
    return-void
.end method


# virtual methods
.method public getData()Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse;->data:Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;

    return-object v0
.end method

.method public setData(Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;)V
    .locals 0
    .param p1, "data"    # Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;

    .prologue
    .line 73
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse;->data:Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;

    .line 74
    return-void
.end method
