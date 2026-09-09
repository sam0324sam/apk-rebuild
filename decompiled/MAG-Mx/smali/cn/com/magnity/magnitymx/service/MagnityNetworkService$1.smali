.class Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;
.super Ljava/lang/Object;
.source "MagnityNetworkService.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(IILjava/lang/String;)V
    .locals 12
    .param p1, "action"    # I
    .param p2, "resultCode"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v4, "tempUploadItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 127
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v7

    if-ne v7, p1, :cond_0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$200(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$100(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 128
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$900(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$902(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I

    .line 129
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1002(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I

    .line 130
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$900(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$902(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I

    .line 131
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 132
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v8, v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmProgress(D)V

    .line 133
    invoke-virtual {v0, p2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmResultCode(I)V

    .line 134
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getmMagSQLiteUtils()Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v5

    .line 135
    .local v5, "utils":Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
    const v7, 0x30e6e

    if-ne p2, v7, :cond_1

    .line 136
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1100(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1102(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I

    .line 139
    const-string v7, ""

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    :goto_1
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1200(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$302(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I

    .line 146
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$300(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v2

    .line 147
    .local v2, "remainedNum":I
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$400(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/NetworkServiceListener;

    .line 148
    .local v1, "listener":Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
    const/4 v8, 0x0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9, p2, v2}, Lcn/com/magnity/magnitymx/media/NetworkServiceListener;->onFinished(ILjava/lang/String;II)V

    goto :goto_2

    .line 141
    .end local v1    # "listener":Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
    .end local v2    # "remainedNum":I
    :cond_1
    const-string v7, ""

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, -0x2

    invoke-virtual {v5, v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 150
    .restart local v2    # "remainedNum":I
    :cond_2
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$300(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v7

    if-lez v7, :cond_3

    .line 151
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->mUploadItemListChange()V

    goto/16 :goto_0

    .line 153
    :cond_3
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e0148

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "result":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1100(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v9

    iget-object v10, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1100(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$602(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 157
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$800(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/app/NotificationManager;

    move-result-object v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$700(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v8

    iget-object v9, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v9}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$600(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 158
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$002(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 159
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1002(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I

    .line 160
    iget-object v7, p0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$1102(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;I)I

    goto/16 :goto_0

    .line 164
    .end local v0    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    .end local v2    # "remainedNum":I
    .end local v3    # "result":Ljava/lang/String;
    .end local v5    # "utils":Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;
    :cond_4
    return-void
.end method

.method public onProgress(ILjava/lang/String;D)V
    .locals 17
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "taskCurrentProgress"    # D

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$000(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 95
    .local v11, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v11}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_0

    invoke-virtual {v11}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$100(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$200(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 97
    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmProgress(D)V

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$300(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    .line 99
    .local v10, "remainedNum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$400(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitymx/media/NetworkServiceListener;

    .line 100
    .local v3, "listener":Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
    const/4 v4, 0x0

    invoke-virtual {v11}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p3

    invoke-interface/range {v3 .. v10}, Lcn/com/magnity/magnitymx/media/NetworkServiceListener;->onProgressUpdate(ILjava/lang/String;DDI)V

    goto :goto_1

    .line 102
    .end local v3    # "listener":Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
    :cond_1
    const-string v12, ""

    .line 103
    .local v12, "title":Ljava/lang/String;
    if-lez v10, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e014b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0147

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "uploadRemained":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/16 v5, 0x64

    move-wide/from16 v0, p3

    double-to-int v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    .end local v2    # "content":Ljava/lang/String;
    .end local v13    # "uploadRemained":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$602(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$800(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/app/NotificationManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$700(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$600(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 110
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0143

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/16 v5, 0x64

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$1;->this$0:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->access$500(Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 121
    .end local v10    # "remainedNum":I
    .end local v11    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    .end local v12    # "title":Ljava/lang/String;
    :cond_3
    return-void
.end method
