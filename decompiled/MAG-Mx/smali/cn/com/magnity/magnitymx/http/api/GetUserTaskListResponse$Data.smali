.class public Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;
.super Ljava/lang/Object;
.source "GetUserTaskListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private task_file_list:[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

.field final synthetic this$0:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;
    .param p2, "tasks"    # [Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

    .prologue
    .line 96
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;->this$0:Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;->task_file_list:[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

    .line 98
    return-void
.end method


# virtual methods
.method public getTask_file_list()[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;->task_file_list:[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

    return-object v0
.end method

.method public setTask_file_list([Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;)V
    .locals 0
    .param p1, "task_file_list"    # [Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Data;->task_file_list:[Lcn/com/magnity/magnitymx/http/api/GetUserTaskListResponse$Task;

    .line 106
    return-void
.end method
