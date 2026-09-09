.class public Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;
.super Ljava/lang/Object;
.source "GetUserTaskListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field private ctime:D

.field private id:I

.field private is_set:Z

.field private mtime:D

.field private name:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private storage_id:I

.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;

.field private user_id:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;ILjava/lang/String;Ljava/lang/String;ZIIDD)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "is_set"    # Z
    .param p6, "user_id"    # I
    .param p7, "storage_id"    # I
    .param p8, "ctime"    # D
    .param p10, "mtime"    # D

    .prologue
    .line 17
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->this$0:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->id:I

    .line 19
    iput-object p3, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->name:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->status:Ljava/lang/String;

    .line 21
    iput-boolean p5, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->is_set:Z

    .line 22
    iput p6, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->user_id:I

    .line 23
    iput p7, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->storage_id:I

    .line 24
    iput-wide p8, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->ctime:D

    .line 25
    iput-wide p10, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->mtime:D

    .line 26
    return-void
.end method


# virtual methods
.method public getCtime()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->ctime:D

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->id:I

    return v0
.end method

.method public getMtime()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->mtime:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage_id()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->storage_id:I

    return v0
.end method

.method public getUser_id()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->user_id:I

    return v0
.end method

.method public isIs_set()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->is_set:Z

    return v0
.end method

.method public setCtime(D)V
    .locals 1
    .param p1, "ctime"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->ctime:D

    .line 82
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 33
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->id:I

    .line 34
    return-void
.end method

.method public setIs_set(Z)V
    .locals 0
    .param p1, "is_set"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->is_set:Z

    .line 58
    return-void
.end method

.method public setMtime(D)V
    .locals 1
    .param p1, "mtime"    # D

    .prologue
    .line 89
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->mtime:D

    .line 90
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->status:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setStorage_id(I)V
    .locals 0
    .param p1, "storage_id"    # I

    .prologue
    .line 73
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->storage_id:I

    .line 74
    return-void
.end method

.method public setUser_id(I)V
    .locals 0
    .param p1, "user_id"    # I

    .prologue
    .line 65
    iput p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;->user_id:I

    .line 66
    return-void
.end method
