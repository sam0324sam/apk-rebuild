.class public Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
.super Landroid/app/Service;
.source "MagnityNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MagnityNetworkService"


# instance fields
.field private isCancelled:Z

.field isNetworkErrorToasted:Z

.field private isPaused:Z

.field private mBinder:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mCloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

.field private mNetworkServiceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/magnity/magnitymx/media/NetworkServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotification:Landroid/app/Notification;

.field private mNotificationId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mUploadBytes:I

.field private mUploadItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/media/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadItemNum:I

.field private mUploadSuccessItemNum:I

.field private mUploadTask:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

.field private mUploadTaskListener:Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

.field private mUploadedBytes:I

.field private mUploadedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/media/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadedItemNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;-><init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBinder:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNetworkServiceListeners:Ljava/util/List;

    .line 41
    iput v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    .line 42
    iput v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemNum:I

    .line 43
    iput v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadSuccessItemNum:I

    .line 44
    iput v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadBytes:I

    .line 45
    iput v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedBytes:I

    .line 46
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isPaused:Z

    .line 47
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isCancelled:Z

    .line 48
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isNetworkErrorToasted:Z

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isCancelled:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemNum:I

    return v0
.end method

.method static synthetic access$1002(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemNum:I

    return p1
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadSuccessItemNum:I

    return v0
.end method

.method static synthetic access$1102(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadSuccessItemNum:I

    return p1
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isPaused:Z

    return v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    return v0
.end method

.method static synthetic access$302(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    return p1
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNetworkServiceListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$602(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotificationId:I

    return v0
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 33
    iget v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedBytes:I

    return v0
.end method

.method static synthetic access$902(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedBytes:I

    return p1
.end method


# virtual methods
.method public addListener(Lcn/com/magnity/magnitymx/media/NetworkServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/com/magnity/magnitymx/media/NetworkServiceListener;

    .prologue
    .line 247
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNetworkServiceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public addUploadItems([Lcn/com/magnity/magnitymx/media/NetworkItem;II)V
    .locals 12
    .param p1, "items"    # [Lcn/com/magnity/magnitymx/media/NetworkItem;
    .param p2, "sucNum"    # I
    .param p3, "failNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 252
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isCancelled:Z

    .line 253
    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isPaused:Z

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, "uploadNewNum":I
    const/4 v3, 0x0

    .line 257
    .local v3, "uploadOldNum":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v7, "newItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    array-length v5, p1

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, p1, v4

    .line 260
    .local v6, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 261
    add-int/lit8 v3, v3, 0x1

    .line 259
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v8

    if-nez v8, :cond_1

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 265
    iget v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadBytes:I

    int-to-long v8, v8

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadBytes:I

    .line 266
    iget v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    .line 268
    :cond_1
    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    .end local v6    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_2
    if-gtz v2, :cond_3

    if-gtz v3, :cond_3

    if-gtz p2, :cond_3

    if-lez p3, :cond_4

    .line 273
    :cond_3
    iget-object v4, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNetworkServiceListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkServiceListener;

    .local v0, "listener":Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
    move v4, p2

    move v5, p3

    .line 274
    invoke-interface/range {v0 .. v5}, Lcn/com/magnity/magnitymx/media/NetworkServiceListener;->onItemsAdded(IIIII)V

    goto :goto_2

    .line 277
    .end local v0    # "listener":Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
    :cond_4
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemListChange()V

    .line 278
    return-void
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isCancelled:Z

    .line 358
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemListChange()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    .line 365
    return-void
.end method

.method public cloudSyncBackground(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;)V
    .locals 5
    .param p1, "listener"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    .prologue
    const/4 v4, 0x0

    .line 209
    new-instance v1, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;-><init>(Landroid/content/Context;Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mCloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "file_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/com/magnity/magnitymx/media/MediaUtils;->updateFileList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 212
    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mCloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    const/4 v1, 0x1

    new-array v3, v1, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method

.method public continueAll()V
    .locals 3

    .prologue
    .line 348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isPaused:Z

    .line 349
    iget-object v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 350
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_0

    .line 352
    .end local v0    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemListChange()V

    .line 353
    return-void
.end method

.method public deleteUploadItem(Lcn/com/magnity/magnitymx/media/NetworkItem;)V
    .locals 4
    .param p1, "item"    # Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    .line 283
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadBytes:I

    int-to-long v0, v0

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadBytes:I

    .line 288
    iget v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemNum:I

    .line 291
    :cond_0
    return-void
.end method

.method public deleteUploadedItem(Lcn/com/magnity/magnitymx/media/NetworkItem;)V
    .locals 1
    .param p1, "item"    # Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    .line 296
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    return-void
.end method

.method public getUploadItems()[Lcn/com/magnity/magnitymx/media/NetworkItem;
    .locals 4

    .prologue
    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v1, "uploadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 306
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v0    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    return-object v2
.end method

.method public getUploadedItems()[Lcn/com/magnity/magnitymx/media/NetworkItem;
    .locals 4

    .prologue
    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v1, "uploadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 318
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v0    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    return-object v2
.end method

.method public mUploadItemListChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 327
    iget-boolean v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isCancelled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isPaused:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 328
    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 329
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 330
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmStatus()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 331
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    aput-object v0, v1, v4

    .line 332
    .local v1, "tempList":[Lcn/com/magnity/magnitymx/media/NetworkItem;
    new-instance v2, Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadTaskListener:Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    invoke-direct {v2, v3}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;-><init>(Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadTask:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 333
    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadTask:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-virtual {v2, v1}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 336
    .end local v0    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    .end local v1    # "tempList":[Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 231
    const-string v2, "itemList"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 232
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    if-eqz v0, :cond_0

    .line 233
    new-array v2, v3, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 234
    .local v1, "tempItemList":[Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {p0, v1, v3, v3}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->addUploadItems([Lcn/com/magnity/magnitymx/media/NetworkItem;II)V

    .line 236
    .end local v1    # "tempItemList":[Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_0
    iget-object v2, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBinder:Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    return-object v2
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 72
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 73
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e014b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e014c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "content":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x2

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x7f0c0006

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 80
    .local v2, "pIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    iget-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v6, 0x64

    invoke-virtual {v5, v6, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    iget-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 83
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 84
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    iput v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotificationId:I

    .line 85
    iget-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 86
    iget-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iput-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotification:Landroid/app/Notification;

    .line 91
    new-instance v5, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;

    invoke-direct {v5, p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;-><init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)V

    iput-object v5, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadTaskListener:Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    .line 166
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 167
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 219
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mCloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mCloudSyncTask:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->cancel(Z)Z

    .line 222
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->close()V

    .line 223
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 224
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 179
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 180
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v2

    .line 181
    .local v2, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    new-instance v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$2;-><init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)V

    .line 203
    .local v0, "listener":Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;
    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->cloudSyncBackground(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;)V

    .line 205
    .end local v0    # "listener":Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pauseAll()V
    .locals 3

    .prologue
    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->isPaused:Z

    .line 341
    iget-object v1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 342
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_0

    .line 344
    .end local v0    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_0
    return-void
.end method
