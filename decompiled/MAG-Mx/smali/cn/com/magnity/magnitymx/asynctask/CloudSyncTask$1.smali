.class Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;
.super Ljava/lang/Object;
.source "CloudSyncTask.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/server/MagHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->doInBackground([[Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(D)V
    .locals 0
    .param p1, "progress"    # D

    .prologue
    .line 85
    return-void
.end method

.method public onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V
    .locals 13
    .param p1, "serverResponse"    # Lcn/com/magnity/magnitymx/server/ServerResponse;
    .param p2, "action"    # I

    .prologue
    const/4 v12, 0x1

    .line 88
    if-eqz p1, :cond_6

    move-object v9, p1

    .line 89
    check-cast v9, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    .line 90
    .local v9, "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getHttpResponseCode()I

    move-result v1

    .line 92
    .local v1, "code":I
    const/16 v10, 0xc8

    if-ne v1, v10, :cond_5

    .line 93
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "payload":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 96
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, "jsonPayload":Lorg/json/JSONObject;
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "device_list"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 98
    .local v3, "device_list":Lorg/json/JSONArray;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_4

    .line 100
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 101
    .local v2, "device":Lorg/json/JSONObject;
    const-string v10, "serial_number"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, "device_sn":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "device":Lorg/json/JSONObject;
    .end local v3    # "device_list":Lorg/json/JSONArray;
    .end local v4    # "device_sn":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "jsonPayload":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 115
    .local v5, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 116
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v10

    invoke-interface {v10, v12}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onError(I)V

    .line 118
    :cond_2
    const-string v10, "Fail to parse getUserDevices payload"

    invoke-static {v10}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    .line 132
    .end local v1    # "code":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "payload":Ljava/lang/String;
    .end local v9    # "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :cond_3
    :goto_2
    return-void

    .line 112
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "code":I
    .restart local v3    # "device_list":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v7    # "jsonPayload":Lorg/json/JSONObject;
    .restart local v8    # "payload":Ljava/lang/String;
    .restart local v9    # "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    iget-object v10, v10, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->userInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/com/magnity/magnitymx/data/UserInfo;->setDevices(Ljava/lang/String;)V

    .line 113
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    iget-object v10, v10, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->userInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/data/UserInfo;->save()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 122
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "device_list":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "jsonPayload":Lorg/json/JSONObject;
    .end local v8    # "payload":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 123
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v10

    invoke-interface {v10, v12}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onError(I)V

    goto :goto_2

    .line 127
    .end local v1    # "code":I
    .end local v9    # "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :cond_6
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 128
    iget-object v10, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$1;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v10

    invoke-interface {v10, v12}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onError(I)V

    goto :goto_2
.end method
