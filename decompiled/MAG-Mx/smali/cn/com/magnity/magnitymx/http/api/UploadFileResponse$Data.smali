.class Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;
.super Ljava/lang/Object;
.source "UploadFileResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Data"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;->this$0:Lcn/com/magnity/magnitymx/http/api/UploadFileResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;->name:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/UploadFileResponse$Data;->name:Ljava/lang/String;

    .line 18
    return-void
.end method
