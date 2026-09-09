.class public Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private group:Ljava/lang/String;

.field private groupid:I

.field private name:Ljava/lang/String;

.field private rank:I

.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/LoginResponse;

.field private userid:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/http/api/LoginResponse;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/LoginResponse;
    .param p2, "groupid"    # I
    .param p3, "userid"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "rank"    # I

    .prologue
    .line 12
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->this$0:Lcn/com/magnity/magnitymx/http/api/LoginResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->groupid:I

    .line 14
    iput p3, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->userid:I

    .line 15
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->name:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->group:Ljava/lang/String;

    .line 17
    iput p6, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->rank:I

    .line 18
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupid()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->groupid:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->rank:I

    return v0
.end method

.method public getUserid()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->userid:I

    return v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->group:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setGroupid(I)V
    .locals 0
    .param p1, "groupid"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->groupid:I

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .param p1, "rank"    # I

    .prologue
    .line 57
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->rank:I

    .line 58
    return-void
.end method

.method public setUserid(I)V
    .locals 0
    .param p1, "userid"    # I

    .prologue
    .line 33
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/LoginResponse$Data;->userid:I

    .line 34
    return-void
.end method
