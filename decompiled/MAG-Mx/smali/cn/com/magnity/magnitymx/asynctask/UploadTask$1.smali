.class Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/server/MagHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/asynctask/UploadTask;->doInBackground([Lcn/com/magnity/magnitymx/media/NetworkItem;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(D)V
    .locals 3
    .param p1, "progress"    # D

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmProgress(D)V

    .line 52
    iget-object v0, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onProgress(ILjava/lang/String;D)V

    .line 53
    return-void
.end method

.method public onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V
    .locals 13
    .param p1, "serverResponse"    # Lcn/com/magnity/magnitymx/server/ServerResponse;
    .param p2, "action"    # I

    .prologue
    const v12, 0x61bae

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 57
    move-object v4, p1

    check-cast v4, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    .line 58
    .local v4, "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getHttpResponseCode()I

    move-result v5

    .line 59
    .local v5, "responseCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 60
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 61
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 62
    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v7

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-interface {v6, v10, v12, v7}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onFinished(IILjava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "payload":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 68
    .local v1, "jsonPayload":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 69
    .local v3, "resCode":I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 71
    :sswitch_0
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x30e6e

    iget-object v9, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 72
    invoke-static {v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v9

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-interface {v6, v7, v8, v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onFinished(IILjava/lang/String;)V

    .line 73
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1    # "jsonPayload":Lorg/json/JSONObject;
    .end local v3    # "resCode":I
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v6

    iget-object v7, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 98
    invoke-static {v7}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v7

    invoke-virtual {v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-interface {v6, v10, v12, v7}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onFinished(IILjava/lang/String;)V

    .line 99
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_0

    .line 76
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "jsonPayload":Lorg/json/JSONObject;
    .restart local v3    # "resCode":I
    :sswitch_1
    :try_start_1
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x61bb3

    iget-object v9, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 77
    invoke-static {v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v9

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-interface {v6, v7, v8, v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onFinished(IILjava/lang/String;)V

    .line 78
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_0

    .line 81
    :sswitch_2
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x61bc6

    iget-object v9, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 82
    invoke-static {v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v9

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-interface {v6, v7, v8, v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onFinished(IILjava/lang/String;)V

    .line 83
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto/16 :goto_0

    .line 86
    :sswitch_3
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x61c10

    iget-object v9, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 87
    invoke-static {v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v9

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-interface {v6, v7, v8, v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onFinished(IILjava/lang/String;)V

    .line 88
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto/16 :goto_0

    .line 91
    :sswitch_4
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x61bae

    iget-object v9, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    .line 92
    invoke-static {v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v9

    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-interface {v6, v7, v8, v9}, Lcn/com/magnity/magnitymx/asynctask/UploadTask$UploadTaskListener;->onFinished(IILjava/lang/String;)V

    .line 93
    iget-object v6, p0, Lcn/com/magnity/magnitymx/asynctask/UploadTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/UploadTask;

    invoke-static {v6}, Lcn/com/magnity/magnitymx/asynctask/UploadTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/UploadTask;)Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 69
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
