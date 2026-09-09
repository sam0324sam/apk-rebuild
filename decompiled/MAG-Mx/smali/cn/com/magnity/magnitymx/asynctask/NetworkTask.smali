.class public Lcn/com/magnity/magnitymx/asynctask/NetworkTask;
.super Landroid/os/AsyncTask;
.source "NetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Lcn/com/magnity/magnitymx/media/NetworkItem;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkTask"


# instance fields
.field private mCurrentIndex:I

.field private mRunning:Z

.field private mTaskItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/media/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskListener:Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

.field private mUploadProcessedBytes:J

.field private mUploadTotalBytes:J

.field private mUploadTotalItemsNum:I


# direct methods
.method public constructor <init>(Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;)V
    .locals 4
    .param p1, "listener"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mCurrentIndex:I

    .line 26
    iput v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalItemsNum:I

    .line 27
    iput-wide v2, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadProcessedBytes:J

    .line 28
    iput-wide v2, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalBytes:J

    .line 29
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mRunning:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskItemList:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskListener:Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    .prologue
    .line 20
    iget v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)J
    .locals 2
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    .prologue
    .line 20
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadProcessedBytes:J

    return-wide v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;J)J
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask;
    .param p1, "x1"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadProcessedBytes:J

    return-wide p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)J
    .locals 2
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    .prologue
    .line 20
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskListener:Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    return-object v0
.end method


# virtual methods
.method public addItems([Lcn/com/magnity/magnitymx/media/NetworkItem;)V
    .locals 8
    .param p1, "itemList"    # [Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "uploadNewNum":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    .line 142
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    iget-object v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    iget-wide v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalBytes:J

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalBytes:J

    .line 147
    :cond_0
    iget-object v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_2
    iget v2, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalItemsNum:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalItemsNum:I

    .line 152
    return-void
.end method

.method public deleteItem(Lcn/com/magnity/magnitymx/media/NetworkItem;)V
    .locals 4
    .param p1, "item"    # Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    .line 155
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 157
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-wide v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalBytes:J

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalBytes:J

    .line 161
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([[Lcn/com/magnity/magnitymx/media/NetworkItem;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "itemList"    # [[Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 49
    iput-boolean v6, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mRunning:Z

    .line 51
    aget-object v3, p1, v7

    .line 52
    .local v3, "tempItemList":[Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->addItems([Lcn/com/magnity/magnitymx/media/NetworkItem;)V

    .line 54
    new-instance v1, Lcn/com/magnity/magnitymx/server/MagHttpClient;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/server/MagHttpClient;-><init>()V

    .line 55
    .local v1, "client":Lcn/com/magnity/magnitymx/server/MagHttpClient;
    new-instance v0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;-><init>(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)V

    .line 114
    .local v0, "callback":Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    :cond_0
    :goto_0
    iget v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mCurrentIndex:I

    iget v5, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mUploadTotalItemsNum:I

    if-ge v4, v5, :cond_4

    .line 115
    iget-object v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mTaskItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 116
    .local v2, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 117
    :cond_1
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v1, v4, v5, v0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->uploadSmallFile(Ljava/io/File;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z

    .line 118
    invoke-virtual {v2, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 120
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 121
    :cond_3
    iget v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mCurrentIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mCurrentIndex:I

    goto :goto_0

    .line 124
    .end local v2    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [[Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->doInBackground([[Lcn/com/magnity/magnitymx/media/NetworkItem;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mRunning:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->mRunning:Z

    .line 136
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 130
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
