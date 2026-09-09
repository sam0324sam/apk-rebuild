.class public Lcn/com/magnity/magnitymx/server/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field public static final FORM_TYPE:Ljava/lang/String; = "form"

.field public static final JSON_TYPE:Ljava/lang/String; = "json"

.field public static final TIMEOUT:I = 0xea60


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGetConnection(Ljava/lang/String;Ljava/util/Set;)Ljava/net/HttpURLConnection;
    .locals 14
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .local p1, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 135
    sget-boolean v11, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v11, :cond_0

    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "url: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", cookies: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 144
    const v11, 0xea60

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 145
    const v11, 0xea60

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 146
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 147
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 148
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 149
    const-string v11, "GET"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 150
    const-string v11, "Connection"

    const-string v13, "Keep-Alive"

    invoke-virtual {v1, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v11, "Accept"

    const-string v13, "*/*"

    invoke-virtual {v1, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz p1, :cond_2

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v3, "cookiesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 155
    .local v6, "item":Ljava/lang/String;
    const-string v13, "; "

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "itemArray":[Ljava/lang/String;
    array-length v13, v7

    if-lez v13, :cond_1

    .line 157
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v13, "; "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v3    # "cookiesBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "item":Ljava/lang/String;
    .end local v7    # "itemArray":[Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 173
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http create error, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 175
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v1

    .line 161
    .restart local v3    # "cookiesBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "cookies":Ljava/lang/String;
    const-string v11, "Cookie"

    invoke-virtual {v1, v11, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v11, "; "

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "pieces":[Ljava/lang/String;
    const-string v4, ""

    .line 165
    .local v4, "csrftoken":Ljava/lang/String;
    array-length v13, v9

    move v11, v12

    :goto_2
    if-ge v11, v13, :cond_5

    aget-object v8, v9, v11

    .line 166
    .local v8, "piece":Ljava/lang/String;
    const-string v12, "csrftoken="

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 167
    const/16 v12, 0xa

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 170
    .end local v8    # "piece":Ljava/lang/String;
    :cond_5
    const-string v11, "X-CSRFToken"

    invoke-virtual {v1, v11, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static createPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 12
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "cookieSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v9, Lcn/com/magnity/magnitymx/MagApp;->mIsInDeveloping:Z

    if-eqz v9, :cond_0

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", payload: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cookies: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 33
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 36
    const v9, 0xea60

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 37
    const v9, 0xea60

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 39
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 40
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 41
    const-string v9, "POST"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    const-string v9, "Charset"

    const-string v10, "UTF-8"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v9, "Connection"

    const-string v10, "Keep-Alive"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v9, "Accept"

    const-string v10, "application/json, text/plain, */*"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v9, "json"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 47
    const-string v9, "Content-Type"

    const-string v10, "application/json"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    :goto_0
    if-eqz p2, :cond_6

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v3, "cookiesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 55
    .local v5, "item":Ljava/lang/String;
    const-string v10, "; "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "itemArray":[Ljava/lang/String;
    array-length v10, v6

    if-lez v10, :cond_2

    .line 57
    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v10, "; "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    .end local v3    # "cookiesBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "item":Ljava/lang/String;
    .end local v6    # "itemArray":[Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 72
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http create error, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V

    .line 74
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-object v1

    .line 48
    .restart local v8    # "url":Ljava/net/URL;
    :cond_4
    :try_start_1
    const-string v9, "form"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 49
    const-string v9, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multipart/form-data; boundary="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .restart local v3    # "cookiesBuilder":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "cookies":Ljava/lang/String;
    const-string v9, "Cookie"

    invoke-virtual {v1, v9, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v2    # "cookies":Ljava/lang/String;
    .end local v3    # "cookiesBuilder":Ljava/lang/StringBuilder;
    :cond_6
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 66
    const-string v9, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 68
    .local v7, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V

    .line 69
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static get(Ljava/net/HttpURLConnection;)Lcn/com/magnity/magnitymx/server/ServerResponse;
    .locals 11
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v9, -0x1

    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v7, 0x0

    .line 232
    :goto_0
    return-object v7

    .line 183
    :cond_0
    const/4 v4, 0x0

    .line 184
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 185
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    invoke-direct {v7}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;-><init>()V

    .line 188
    .local v7, "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 190
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 192
    .local v6, "responsCode":I
    invoke-virtual {v7, v6}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V

    .line 193
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHeader(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const/16 v8, 0xc8

    if-eq v6, v8, :cond_1

    .line 230
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 199
    :cond_1
    const/16 v8, 0x200

    :try_start_1
    new-array v2, v8, [B

    .line 201
    .local v2, "buffer":[B
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 202
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, -0x1

    .line 204
    .local v5, "len":I
    :goto_1
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v9, :cond_4

    .line 205
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 212
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 213
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "responsCode":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    instance-of v8, v3, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_5

    .line 214
    const/16 v8, 0x198

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :goto_3
    if-eqz v0, :cond_2

    .line 221
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 223
    :cond_2
    if-eqz v4, :cond_3

    .line 224
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    :cond_3
    :goto_4
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http get error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 207
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "len":I
    .restart local v6    # "responsCode":I
    :cond_4
    :try_start_6
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setPayload(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 209
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 211
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 230
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 231
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0

    .line 216
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "responsCode":I
    .restart local v3    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v8, -0x1

    :try_start_7
    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 230
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "len":I
    .restart local v6    # "responsCode":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 226
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "responsCode":I
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_4

    .line 212
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public static post(Ljava/net/HttpURLConnection;)Lcn/com/magnity/magnitymx/server/ServerResponse;
    .locals 11
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v9, -0x1

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v7, 0x0

    .line 131
    :goto_0
    return-object v7

    .line 82
    :cond_0
    const/4 v4, 0x0

    .line 83
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 84
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Lcn/com/magnity/magnitymx/server/MagHttpResponse;

    invoke-direct {v7}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;-><init>()V

    .line 87
    .local v7, "serverResponse":Lcn/com/magnity/magnitymx/server/MagHttpResponse;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 89
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 91
    .local v6, "responsCode":I
    invoke-virtual {v7, v6}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V

    .line 92
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHeader(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/16 v8, 0xc8

    if-eq v6, v8, :cond_1

    .line 129
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 98
    :cond_1
    const/16 v8, 0x200

    :try_start_1
    new-array v2, v8, [B

    .line 100
    .local v2, "buffer":[B
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 101
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, -0x1

    .line 103
    .local v5, "len":I
    :goto_1
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v9, :cond_4

    .line 104
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 111
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 112
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "responsCode":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    instance-of v8, v3, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_5

    .line 113
    const/16 v8, 0x198

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :goto_3
    if-eqz v0, :cond_2

    .line 120
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 122
    :cond_2
    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :cond_3
    :goto_4
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http post error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->e(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 106
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "len":I
    .restart local v6    # "responsCode":I
    :cond_4
    :try_start_6
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setPayload(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 110
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 129
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 130
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0

    .line 115
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "responsCode":I
    .restart local v3    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v8, -0x1

    :try_start_7
    invoke-virtual {v7, v8}, Lcn/com/magnity/magnitymx/server/MagHttpResponse;->setHttpResponseCode(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 129
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "len":I
    .restart local v6    # "responsCode":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 125
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    .end local v6    # "responsCode":I
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_4

    .line 111
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_2
.end method
