.class public Lcn/com/magnity/magnitymx/server/MagHttpResponse;
.super Lcn/com/magnity/magnitymx/server/ServerResponse;
.source "MagHttpResponse.java"


# static fields
.field public static final FILE_CREATE_DEVICE_NOT_ALLOWED:I = 0x61bb3

.field public static final FILE_UPLOAD_FAILED:I = 0x61bae

.field public static final FILE_UPLOAD_SUCCESS:I = 0x30e6e

.field public static final FILE_USER_STORAGE_SPACE_USED_UP:I = 0x61bc6

.field public static final GENERAL_INVALID_DATA:I = 0x61a80

.field public static final SYSTEM_STORAGE_SPACE_USED_UP:I = 0x61c10

.field public static final USER_PERMISSION_DENIED:I = 0x61ae6

.field public static final USER_UNAUTHENTICATED:I = 0x61ae4


# instance fields
.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpResponseCode:I

.field private mPayload:Ljava/lang/String;

.field private mServerResponseCode:I

.field private mServerResponseDesc:Ljava/lang/String;

.field private mServerResponseMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/server/ServerResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpResponseCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mHttpResponseCode:I

    return v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getServerResponseCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseCode:I

    return v0
.end method

.method public getServerResponseDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getServerResponseMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mHeader:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public setHttpResponseCode(I)V
    .locals 0
    .param p1, "httpResponseCode"    # I

    .prologue
    .line 30
    iput p1, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mHttpResponseCode:I

    .line 31
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mPayload:Ljava/lang/String;

    .line 51
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mPayload:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseCode:I

    .line 57
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseMsg:Ljava/lang/String;

    .line 58
    const-string v1, "desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseDesc:Ljava/lang/String;

    .line 59
    sget-boolean v1, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", desc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->mServerResponseDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
