.class public Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;
.super Lcn/com/magnity/magnitymx/http/api/CommonResponse;
.source "UploadFileResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;
    }
.end annotation


# instance fields
.field private data:Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "data"    # Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcn/com/magnity/magnitymx/http/api/CommonResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;->data:Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;

    .line 26
    return-void
.end method


# virtual methods
.method public getData()Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;->data:Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;

    return-object v0
.end method

.method public setData(Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;)V
    .locals 0
    .param p1, "data"    # Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;->data:Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;

    .line 34
    return-void
.end method
