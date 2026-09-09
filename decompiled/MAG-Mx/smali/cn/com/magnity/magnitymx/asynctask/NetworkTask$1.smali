.class Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;
.super Ljava/lang/Object;
.source "NetworkTask.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/server/MagHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->doInBackground([[Lcn/com/magnity/magnitymx/media/NetworkItem;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(D)V
    .locals 11
    .param p1, "progress"    # D

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 58
    iget-object v1, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 59
    .local v0, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v0, p1, p2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmProgress(D)V

    .line 60
    iget-object v1, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$200(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, p1

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    mul-double/2addr v2, v8

    iget-object v1, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$300(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v6, v2, v4

    .line 61
    .local v6, "totalProgress":D
    iget-object v1, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-interface/range {v1 .. v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onProgress(ILjava/lang/String;DD)V

    .line 62
    return-void
.end method

.method public onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V
    .locals 12
    .param p1, "serverResponse"    # Lcn/com/magnity/magnitymx/server/ServerResponse;
    .param p2, "action"    # I

    .prologue
    .line 66
    move-object v5, p1

    check-cast v5, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    .line 67
    .local v5, "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getHttpResponseCode()I

    move-result v6

    .line 68
    .local v6, "responseCode":I
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 69
    .local v1, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 70
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 71
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x61bae

    .line 72
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-interface {v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onFinished(IILjava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "payload":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 78
    .local v2, "jsonPayload":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 79
    .local v4, "resCode":I
    sparse-switch v4, :sswitch_data_0

    .line 111
    .end local v2    # "jsonPayload":Lorg/json/JSONObject;
    .end local v4    # "resCode":I
    :goto_1
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    iget-object v8, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$200(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)J

    move-result-wide v8

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$202(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;J)J

    goto :goto_0

    .line 81
    .restart local v2    # "jsonPayload":Lorg/json/JSONObject;
    .restart local v4    # "resCode":I
    :sswitch_0
    :try_start_1
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x30e6e

    .line 82
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v10

    .line 81
    invoke-interface {v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onFinished(IILjava/lang/String;)V

    .line 83
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 106
    .end local v2    # "jsonPayload":Lorg/json/JSONObject;
    .end local v4    # "resCode":I
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x61bae

    .line 108
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v10

    .line 107
    invoke-interface {v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onFinished(IILjava/lang/String;)V

    .line 109
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v8}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/com/magnity/magnitymx/media/NetworkItem;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_1

    .line 86
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "jsonPayload":Lorg/json/JSONObject;
    .restart local v4    # "resCode":I
    :sswitch_1
    :try_start_2
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x61bb3

    .line 87
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-interface {v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onFinished(IILjava/lang/String;)V

    .line 88
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_1

    .line 91
    :sswitch_2
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x61bc6

    .line 92
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-interface {v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onFinished(IILjava/lang/String;)V

    .line 93
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_1

    .line 96
    :sswitch_3
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x61c10

    .line 97
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-interface {v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onFinished(IILjava/lang/String;)V

    .line 98
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto/16 :goto_1

    .line 101
    :sswitch_4
    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/NetworkTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask;->access$400(Lcn/com/magnity/magnitymx/asynctask/NetworkTask;)Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x61bae

    .line 102
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-interface {v7, v8, v9, v10}, Lcn/com/magnity/magnitymx/asynctask/NetworkTask$NetworkTaskListener;->onFinished(IILjava/lang/String;)V

    .line 103
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x30e6e -> :sswitch_0
        0x61bae -> :sswitch_4
        0x61bb3 -> :sswitch_1
        0x61bc6 -> :sswitch_2
        0x61c10 -> :sswitch_3
    .end sparse-switch
.end method
