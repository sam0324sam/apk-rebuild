.class public Lcn/com/magnity/magnitymx/task/TaskData;
.super Ljava/lang/Object;
.source "TaskData.java"


# instance fields
.field private mBaseName:Ljava/lang/String;

.field private mIsSqliteTask:Z

.field private mRootItem:Lcn/com/magnity/magnitymx/task/TreeItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/task/TaskData;->mRootItem:Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 12
    return-void
.end method


# virtual methods
.method public addParent(Lcn/com/magnity/magnitymx/task/TreeItem;)V
    .locals 1
    .param p1, "parent"    # Lcn/com/magnity/magnitymx/task/TreeItem;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TaskData;->mRootItem:Lcn/com/magnity/magnitymx/task/TreeItem;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/task/TreeItem;->addChild(Lcn/com/magnity/magnitymx/task/TreeItem;)V

    .line 35
    return-void
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TaskData;->mBaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/TreeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TaskData;->mRootItem:Lcn/com/magnity/magnitymx/task/TreeItem;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getChilds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSqliteTask()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/task/TaskData;->mIsSqliteTask:Z

    return v0
.end method

.method public setBaseName(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/magnity/magnitymx/task/TaskData;->mBaseName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSqliteFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/task/TaskData;->mIsSqliteTask:Z

    .line 16
    return-void
.end method
