.class public Lcn/com/magnity/magnitymx/server/MagHttpClient;
.super Ljava/lang/Object;
.source "MagHttpClient.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/server/MagHttpClientInterface;


# static fields
.field private static final FILE:Ljava/lang/String; = "file"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PARENT_PATH:Ljava/lang/String; = "parent_path"

.field private static final TASK_ID:Ljava/lang/String; = "task_id"


# instance fields
.field private mBasicURL:Ljava/lang/String;

.field private mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

.field private mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/server/MagHttpClient;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/server/MagHttpClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/Set;
    .param p5, "x5"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->postJsonPayload(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/server/MagHttpClient;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/server/MagHttpClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Ljava/util/Set;
    .param p5, "x5"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->postFormPayload(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/server/MagHttpClient;ILjava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/server/MagHttpClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Set;
    .param p4, "x4"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->getResponse(ILjava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    return-void
.end method

.method private generateUniqueString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 283
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmssSSS"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 285
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "dt":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v2, v6, :cond_0

    .line 288
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 289
    .local v5, "v":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v5    # "v":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getBasicURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x1bb

    .line 267
    const-string v0, ""

    .line 268
    .local v0, "url":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_1
    return-object v0

    .line 272
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getResponse(ILjava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p4, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/magnity/magnitymx/server/MagHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2, p3}, Lcn/com/magnity/magnitymx/server/HttpUtil;->createGetConnection(Ljava/lang/String;Ljava/util/Set;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 167
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {v0}, Lcn/com/magnity/magnitymx/server/HttpUtil;->get(Ljava/net/HttpURLConnection;)Lcn/com/magnity/magnitymx/server/ServerResponse;

    move-result-object v1

    .line 168
    .local v1, "serverResponse":Lcn/com/magnity/magnitymx/server/ServerResponse;
    invoke-interface {p4, v1, p1}, Lcn/com/magnity/magnitymx/server/MagHttpCallback;->onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V

    .line 169
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    .line 45
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getServerBasicURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mBasicURL:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mBasicURL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "https://cloudapi.magnity.com.cn"

    iput-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mBasicURL:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    .line 50
    return-void
.end method

.method private postFormPayload(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 32
    .param p1, "action"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/magnity/magnitymx/server/MagHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p4, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v18, "--"

    .line 182
    .local v18, "lineStart":Ljava/lang/String;
    const-string v17, "\r\n"

    .line 183
    .local v17, "lineEnd":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 184
    .local v15, "keys":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->generateUniqueString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "boundary":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "form"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-object/from16 v2, p4

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/server/HttpUtil;->createPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 187
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 188
    .local v7, "dos":Ljava/io/DataOutputStream;
    const/16 v23, 0x0

    .line 190
    .local v23, "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :try_start_0
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 191
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .local v8, "dos":Ljava/io/DataOutputStream;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    :try_start_1
    array-length v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_5

    .line 192
    aget-object v29, v15, v14

    const-string v30, "file"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 193
    aget-object v29, v15, v14

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 194
    .local v19, "path":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v11, "file":Ljava/io/File;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 197
    aget-object v10, v15, v14

    .line 198
    .local v10, "fieldName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 201
    .local v12, "filename":Ljava/lang/String;
    :try_start_2
    const-string v29, "utf-8"

    move-object/from16 v0, v29

    invoke-static {v12, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v12

    .line 204
    :goto_1
    :try_start_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\"; filename=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 205
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Type: application/octet-stream"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 209
    const/16 v29, 0x2000

    move/from16 v0, v29

    new-array v5, v0, [B

    .line 210
    .local v5, "buf":[B
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v26, v0

    .line 211
    .local v26, "totalLenght":D
    const/16 v22, 0x0

    .line 212
    .local v22, "readLength":I
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 213
    .local v13, "fis":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v13, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    .local v16, "len":I
    const/16 v29, -0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 214
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 215
    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x2000

    move/from16 v22, v0

    .line 216
    mul-int/lit8 v29, v22, 0x64

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v20, v30, v26

    .line 217
    .local v20, "progress":D
    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    cmpl-double v29, v20, v30

    if-ltz v29, :cond_0

    .line 218
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 220
    :cond_0
    const-wide/16 v30, 0xa

    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V

    .line 221
    move-object/from16 v0, p5

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcn/com/magnity/magnitymx/server/MagHttpCallback;->onProgressUpdate(D)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 248
    .end local v5    # "buf":[B
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "len":I
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "progress":D
    .end local v22    # "readLength":I
    .end local v26    # "totalLenght":D
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 250
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .end local v14    # "i":I
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    .local v9, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    new-instance v24, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    invoke-direct/range {v24 .. v24}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 251
    .end local v23    # "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    .local v24, "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :try_start_5
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v29, v0

    if-eqz v29, :cond_6

    .line 252
    const/16 v29, 0x198

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V

    .line 256
    :goto_4
    if-eqz v7, :cond_1

    .line 257
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    move-object/from16 v23, v24

    .line 261
    .end local v24    # "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    .restart local v23    # "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :goto_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "http post error, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 263
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_6
    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcn/com/magnity/magnitymx/server/MagHttpCallback;->onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V

    .line 264
    return-void

    .line 223
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "buf":[B
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fieldName":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "i":I
    .restart local v16    # "len":I
    .restart local v19    # "path":Ljava/lang/String;
    .restart local v22    # "readLength":I
    .restart local v26    # "totalLenght":D
    :cond_2
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 224
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 240
    .end local v5    # "buf":[B
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "len":I
    .end local v19    # "path":Ljava/lang/String;
    .end local v22    # "readLength":I
    .end local v26    # "totalLenght":D
    :goto_7
    array-length v0, v15

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_3

    .line 241
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 191
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 226
    :cond_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 227
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v15, v14

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 229
    const-string v25, ""

    .line 230
    .local v25, "value":Ljava/lang/String;
    aget-object v29, v15, v14

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "value":Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 235
    .restart local v25    # "value":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    .line 236
    .local v28, "valueBytes":[B
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 237
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 247
    .end local v25    # "value":Ljava/lang/String;
    .end local v28    # "valueBytes":[B
    :cond_5
    invoke-static {v6}, Lcn/com/magnity/magnitymx/server/HttpUtil;->post(Ljava/net/HttpURLConnection;)Lcn/com/magnity/magnitymx/server/ServerResponse;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    move-object/from16 v23, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v7, v8

    .line 262
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .line 254
    .end local v14    # "i":I
    .end local v23    # "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    .restart local v9    # "ex":Ljava/lang/Exception;
    .restart local v24    # "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :cond_6
    const/16 v29, -0x1

    :try_start_7
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 259
    :catch_1
    move-exception v29

    move-object/from16 v23, v24

    .end local v24    # "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    .restart local v23    # "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    goto/16 :goto_5

    :catch_2
    move-exception v29

    goto/16 :goto_5

    .line 248
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto/16 :goto_3

    .line 202
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "fieldName":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v19    # "path":Ljava/lang/String;
    :catch_4
    move-exception v29

    goto/16 :goto_1
.end method

.method private postJsonPayload(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonPayload"    # Ljava/lang/String;
    .param p5, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/magnity/magnitymx/server/MagHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p4, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "json"

    const/4 v3, 0x0

    invoke-static {p2, p3, p4, v2, v3}, Lcn/com/magnity/magnitymx/server/HttpUtil;->createPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 175
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {v0}, Lcn/com/magnity/magnitymx/server/HttpUtil;->post(Ljava/net/HttpURLConnection;)Lcn/com/magnity/magnitymx/server/ServerResponse;

    move-result-object v1

    .line 176
    .local v1, "serverResponse":Lcn/com/magnity/magnitymx/server/ServerResponse;
    invoke-interface {p5, v1, p1}, Lcn/com/magnity/magnitymx/server/MagHttpCallback;->onResponse(Lcn/com/magnity/magnitymx/server/ServerResponse;I)V

    .line 177
    return-void
.end method


# virtual methods
.method public getUserDevices(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    .line 134
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->init()V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mBasicURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/device/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?from=0&to=10000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "url":Ljava/lang/String;
    const v0, 0x150203

    .line 139
    .local v0, "action":I
    iget-object v3, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCookiesSet()Ljava/util/HashSet;

    move-result-object v1

    .line 140
    .local v1, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcn/com/magnity/magnitymx/server/MagHttpClient$4;

    invoke-direct {v4, p0, v2, v1, p1}, Lcn/com/magnity/magnitymx/server/MagHttpClient$4;-><init>(Lcn/com/magnity/magnitymx/server/MagHttpClient;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v3}, Ljava/lang/Thread;->run()V

    .line 146
    const/4 v3, 0x1

    return v3
.end method

.method public getUserFiles(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    .line 151
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->init()V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mBasicURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/file/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v4}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?path=/&from=0&to=10000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "url":Ljava/lang/String;
    const v0, 0x150204

    .line 155
    .local v0, "action":I
    iget-object v3, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCookiesSet()Ljava/util/HashSet;

    move-result-object v1

    .line 156
    .local v1, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcn/com/magnity/magnitymx/server/MagHttpClient$5;

    invoke-direct {v4, p0, v2, v1, p1}, Lcn/com/magnity/magnitymx/server/MagHttpClient$5;-><init>(Lcn/com/magnity/magnitymx/server/MagHttpClient;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v3}, Ljava/lang/Thread;->run()V

    .line 162
    const/4 v3, 0x1

    return v3
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
    .locals 8
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPwd"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "port"    # Ljava/lang/String;
    .param p5, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 57
    .local v3, "location":Landroid/location/Location;
    :try_start_0
    const-string v5, "name"

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v5, "password"

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    if-eqz v3, :cond_0

    .line 60
    const-string v5, "gps_latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 61
    const-string v5, "gps_longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 62
    const-string v5, "gps_altitude"

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 63
    const-string v5, "location"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p3, p4}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->getBasicURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/v1/account/login"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "jsonPayload":Ljava/lang/String;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;

    invoke-direct {v6, p0, v4, v2, p5}, Lcn/com/magnity/magnitymx/server/MagHttpClient$1;-><init>(Lcn/com/magnity/magnitymx/server/MagHttpClient;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 76
    const/4 v5, 0x1

    .end local v2    # "jsonPayload":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return v5

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public logout(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
    .locals 12
    .param p1, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    .line 81
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v7, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v0

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcn/com/magnity/magnitymx/util/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/util/LocationUtils;->getLocation()Landroid/location/Location;

    move-result-object v8

    .line 84
    .local v8, "location":Landroid/location/Location;
    if-eqz v8, :cond_0

    .line 85
    :try_start_0
    const-string v0, "gps_latitude"

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 86
    const-string v0, "gps_longitude"

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v7, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 87
    const-string v0, "gps_altitude"

    invoke-virtual {v8}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v7, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 88
    const-string v0, "location"

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->init()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mBasicURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v1/account/logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "url":Ljava/lang/String;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCookiesSet()Ljava/util/HashSet;

    move-result-object v4

    .line 98
    .local v4, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "jsonPayload":Ljava/lang/String;
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/server/MagHttpClient$2;-><init>(Lcn/com/magnity/magnitymx/server/MagHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 105
    const/4 v0, 0x1

    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "jsonPayload":Ljava/lang/String;
    .end local v4    # "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v6

    .line 91
    .local v6, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uploadSmallFile(Ljava/io/File;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "parentPath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcn/com/magnity/magnitymx/server/MagHttpCallback;

    .prologue
    const/4 v9, 0x1

    .line 110
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->init()V

    .line 111
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mUserInfo:Lcn/com/magnity/magnitymx/data/UserInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/UserInfo;->getUserId()I

    move-result v7

    .line 112
    .local v7, "userId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mBasicURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v1/file/user/%d?method=upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v0, "file"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "magnity_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->generateUniqueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "task_id":Ljava/lang/String;
    const-string v0, "task_id"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "parent_path"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcn/com/magnity/magnitymx/server/MagHttpClient;->mLocalConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getmCookiesSet()Ljava/util/HashSet;

    move-result-object v4

    .line 122
    .local v4, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcn/com/magnity/magnitymx/server/MagHttpClient$3;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitymx/server/MagHttpClient$3;-><init>(Lcn/com/magnity/magnitymx/server/MagHttpClient;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 129
    return v9
.end method
