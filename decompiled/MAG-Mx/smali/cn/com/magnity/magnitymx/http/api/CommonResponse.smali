.class public Lcn/com/magnity/magnitymx/http/api/CommonResponse;
.super Ljava/lang/Object;
.source "CommonResponse.java"


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->code:I

    .line 11
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->msg:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->desc:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 20
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->code:I

    .line 21
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->desc:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/CommonResponse;->msg:Ljava/lang/String;

    .line 29
    return-void
.end method
