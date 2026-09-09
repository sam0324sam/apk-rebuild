.class public Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;
.super Lcn/com/magnity/magnitymx/http/api/CommonResponse;
.source "GetUserTaskListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;,
        Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;
    }
.end annotation


# instance fields
.field private data:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "data"    # Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/http/api/CommonResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;->data:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;

    .line 112
    return-void
.end method


# virtual methods
.method public getData()Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;->data:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;

    return-object v0
.end method

.method public setData(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;)V
    .locals 0
    .param p1, "data"    # Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;

    .prologue
    .line 119
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;->data:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;

    .line 120
    return-void
.end method
