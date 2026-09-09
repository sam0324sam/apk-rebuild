.class Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;
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

.field final synthetic val$lists:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;[[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    .prologue
    .line 136
    iput-object p1, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->val$lists:[[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(D)V
    .locals 0
    .param p1, "progress"    # D

    .prologue
    .line 138
    return-void
.end method

.method public onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V
    .locals 30
    .param p1, "serverResponse"    # Lcn/com/magnity/magnitymx/server/ServerResponse;
    .param p2, "action"    # I

    .prologue
    .line 141
    if-eqz p1, :cond_8

    move-object/from16 v22, p1

    .line 142
    check-cast v22, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    .line 143
    .local v22, "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    invoke-virtual/range {v22 .. v22}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getHttpResponseCode()I

    move-result v21

    .line 144
    .local v21, "res_code":I
    const/16 v25, 0xc8

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 145
    invoke-virtual/range {v22 .. v22}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v20

    .line 146
    .local v20, "payload":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 149
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v15, "jsonPayload":Lorg/json/JSONObject;
    const-string v25, "code"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 151
    .local v7, "code":I
    const v25, 0x30d42

    move/from16 v0, v25

    if-ne v7, v0, :cond_6

    .line 152
    const-string v25, "data"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "file_list"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 153
    .local v10, "file_list":Lorg/json/JSONArray;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_0

    .line 155
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 156
    .local v11, "file_obj":Lorg/json/JSONObject;
    const-string v25, "file_name"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "md5"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 160
    .end local v11    # "file_obj":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v25

    .line 161
    invoke-virtual/range {v25 .. v25}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    .line 160
    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;

    move-result-object v25

    .line 161
    invoke-virtual/range {v25 .. v25}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceRoomDatabase;->cloudDeviceDao()Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;

    move-result-object v5

    .line 162
    .local v5, "cloudDeviceDao":Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->userInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v5, v0}, Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;->loadUserDevices(I)[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;

    move-result-object v6

    .line 163
    .local v6, "cloudDevices":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->val$lists:[[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->val$lists:[[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aget-object v18, v25, v14

    .line 165
    .local v18, "name":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$100(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 166
    .local v19, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v9, "file":Ljava/io/File;
    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/ParseUtils;->calcMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v17

    .line 168
    .local v17, "md5":Ljava/lang/String;
    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/ParseUtils;->calcSn(Ljava/io/File;)Ljava/lang/String;

    move-result-object v23

    .line 169
    .local v23, "sn":Ljava/lang/String;
    const/16 v24, -0x1

    .line 170
    .local v24, "upload_status":I
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 171
    const/16 v24, 0x1

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$200(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$200(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->insertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v28, v14, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->val$lists:[[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$300(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;[Ljava/lang/Object;)V

    .line 163
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 173
    :cond_2
    const/16 v24, -0x2

    .line 174
    array-length v0, v6

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    aget-object v13, v6, v25

    .line 175
    .local v13, "item":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    iget-object v0, v13, Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;->serialNumber:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 176
    const/16 v24, 0x0

    .line 174
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 183
    .end local v13    # "item":Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$200(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->updateAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 195
    .end local v5    # "cloudDeviceDao":Lcn/com/magnity/magnitymx/database/cloud/CloudDeviceDao;
    .end local v6    # "cloudDevices":[Lcn/com/magnity/magnitymx/database/cloud/CloudDevice;
    .end local v7    # "code":I
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "file_list":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v14    # "j":I
    .end local v15    # "jsonPayload":Lorg/json/JSONObject;
    .end local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "md5":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "path":Ljava/lang/String;
    .end local v23    # "sn":Ljava/lang/String;
    .end local v24    # "upload_status":I
    :catch_0
    move-exception v8

    .line 197
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v25

    if-eqz v25, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onError(I)V

    .line 200
    :cond_5
    const-string v25, "Fail to parse getUserDevices payload"

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    .line 214
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v20    # "payload":Ljava/lang/String;
    .end local v21    # "res_code":I
    .end local v22    # "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :cond_6
    :goto_4
    return-void

    .line 204
    .restart local v21    # "res_code":I
    .restart local v22    # "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onError(I)V

    goto :goto_4

    .line 209
    .end local v21    # "res_code":I
    .end local v22    # "response":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$2;->this$0:Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;->access$000(Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask;)Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcn/com/magnity/magnitymx/asynctask/CloudSyncTask$CloudSyncTaskListener;->onError(I)V

    goto :goto_4
.end method
