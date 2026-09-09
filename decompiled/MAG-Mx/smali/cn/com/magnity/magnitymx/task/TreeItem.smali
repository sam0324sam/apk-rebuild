.class public Lcn/com/magnity/magnitymx/task/TreeItem;
.super Ljava/lang/Object;
.source "TreeItem.java"


# instance fields
.field private mChilds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/task/TreeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mId:J

.field private mName:Ljava/lang/String;

.field private mNextSibling:Lcn/com/magnity/magnitymx/task/TreeItem;

.field private mUserData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcn/com/magnity/magnitymx/task/TreeItem;)V
    .locals 1
    .param p1, "parent"    # Lcn/com/magnity/magnitymx/task/TreeItem;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1, p0}, Lcn/com/magnity/magnitymx/task/TreeItem;->addChild(Lcn/com/magnity/magnitymx/task/TreeItem;)V

    .line 20
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "userData"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mName:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mId:J

    .line 25
    iput-object p4, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mUserData:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public addChild(Lcn/com/magnity/magnitymx/task/TreeItem;)V
    .locals 2
    .param p1, "child"    # Lcn/com/magnity/magnitymx/task/TreeItem;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    iput-object p1, v0, Lcn/com/magnity/magnitymx/task/TreeItem;->mNextSibling:Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 77
    instance-of v2, p1, Lcn/com/magnity/magnitymx/task/TreeItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 79
    .local v0, "treeItem":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 85
    .end local v0    # "treeItem":Lcn/com/magnity/magnitymx/task/TreeItem;
    :cond_0
    return v1
.end method

.method public getChild(I)Lcn/com/magnity/magnitymx/task/TreeItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    return-object v0
.end method

.method public getChilds()Ljava/util/List;
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
    .line 53
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mChilds:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mId:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public nextSibling()Lcn/com/magnity/magnitymx/task/TreeItem;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mNextSibling:Lcn/com/magnity/magnitymx/task/TreeItem;

    return-object v0
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mId:J

    .line 42
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/Object;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/magnity/magnitymx/task/TreeItem;->mUserData:Ljava/lang/Object;

    .line 50
    return-void
.end method
